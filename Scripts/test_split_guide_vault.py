"""Regression checks for vault filtering and safe regeneration."""

import json
from pathlib import Path
import tempfile
import unittest
from collections import Counter

import split_guide_vault as vault


class GuideVaultTests(unittest.TestCase):
    def test_condition_boolean_rules(self):
        dwarf = ("Dwarf", "Warrior")
        gnome = ("Gnome", "Warlock")
        for expression in ("Alliance !Hunter", "Dwarf Warrior/Gnome Warlock",
                           "(Dwarf/Gnome) (Warrior/Warlock/Paladin)"):
            self.assertTrue(vault.applies(expression, dwarf))
            self.assertTrue(vault.applies(expression, gnome))
        self.assertFalse(vault.applies("Dwarf Warlock", dwarf))
        self.assertFalse(vault.applies("!(Dwarf/Gnome)", dwarf))
        self.assertFalse(vault.applies("skip", dwarf))
        self.assertFalse(vault.applies("fRogue", dwarf))
        self.assertFalse(vault.applies("Mage SoD", dwarf))
        self.assertTrue(vault.applies("Warrior SoD", dwarf))
        with self.assertRaises(ValueError):
            vault.applies("Warrior/", dwarf)

    def test_extraction_preserves_preamble_and_lua_delimiters(self):
        source = 'if not RXPGuides then return end\nRXPGuides.RegisterGuide([=[#name Demo\n+literal ]] text\n]=])\n'
        prefix, guides = vault.extract_guides(source)
        self.assertEqual(prefix, "if not RXPGuides then return end\n")
        self.assertEqual(len(guides), 1)
        self.assertIn("literal ]]", guides[0].content)
        self.assertEqual(guides[0].closing, "]=])")
        with self.assertRaises(ValueError):
            vault.extract_guides(source + "unexpected()")

    def filter(self, content, **overrides):
        options = dict(targets=vault.DEFAULT_TARGETS, filter_lines=True,
                       remove_hardcoreserver=True, exclude_sod=False,
                       stats=Counter(), unknown=set())
        options.update(overrides)
        result = vault.filter_guide(vault.Guide("RXPGuides.RegisterGuide([[", content, "]])"), **options)
        return result[2] if result else None

    def test_line_conditions_respect_guide_and_step_context(self):
        content = """#forever
#group Demo
#name Context
<< Alliance Warlock
step << Gnome
+Warlock instructions << Warlock
+Wrong class << Warrior
+Wrong race << Dwarf
+Gnome instructions << Gnome
step << Dwarf
+Dwarf instructions << Dwarf
+Wrong race again << Gnome
step << Mage
+Mage only
"""
        result = self.filter(content)
        self.assertIn("Warlock instructions << Warlock", result)
        self.assertIn("Gnome instructions << Gnome", result)
        self.assertIn("Dwarf instructions << Dwarf", result)
        self.assertNotIn("Wrong", result)
        self.assertNotIn("Mage only", result)

    def test_skip_conditions_remove_guides_steps_and_lines(self):
        header = "#forever\n#group Demo\n#name Skip filtering\n"
        self.assertIsNone(self.filter(header + "<< Alliance Skip/Warrior\nstep\n+Remove guide"))
        result = self.filter(header + """<< Alliance
step << SKIP/Warrior
+Remove step
step
+Remove line << skip/Warlock
+Remove negated skip line << !Skip
+Keep instructions to skip a quest if needed
.zoneskip Stormwind City
.goto 1,2,3 -- << skip
""", filter_lines=False)
        self.assertNotIn("Remove", result)
        self.assertIn("Keep instructions to skip a quest if needed", result)
        self.assertIn(".zoneskip Stormwind City", result)
        self.assertIn(".goto 1,2,3 -- << skip", result)
        self.assertIsNone(self.filter(header + "<< Alliance\nstep\n+Only line << Skip/Warrior"))

    def test_modes_remove_blocks_and_clean_headers(self):
        content = """#forever
#group Demo
#name Modes
<< Alliance
step
#hardcore
+Hardcore only
step
#som
+Som only
step
#hardcoreserver
+Hardcore server only
step
#phase 4-6
#era
#softcore
#season 0,1
#xprate <1.99
+Keep this
"""
        result = self.filter(content)
        self.assertNotIn("Hardcore", result)
        self.assertNotIn("Som only", result)
        self.assertNotIn("#phase", result)
        self.assertNotIn("#era", result)
        self.assertNotIn("#softcore\n", result)
        self.assertIn("#season 0,1", result)
        self.assertNotIn("#xprate", result)
        self.assertIn("Keep this", result)

    def test_xprate_rejects_guides_steps_and_ranges(self):
        header = "#forever\n#group Demo\n#name Rates\n<< Alliance\n"
        self.assertIsNone(self.filter(header + "#xprate >1.99\nstep\n+Guide excluded"))
        self.assertIsNone(self.filter(header + "step\n#xprate >1.49\n+Only step excluded"))
        content = header + """step
#xprate >1.49
+Fast rate
step
#xprate <1.5
+Normal rate
step
#xprate 1.1-1.3
+Wrong range
step
#xprate 1-1.3
+Matching range
"""
        result = self.filter(content)
        self.assertNotIn("Fast rate", result)
        self.assertNotIn("Wrong range", result)
        self.assertIn("Normal rate", result)
        self.assertIn("Matching range", result)
        self.assertNotIn("#xprate", result)
        self.assertFalse(vault.xprate_matches("#xprate >0.5"))
        self.assertTrue(vault.xprate_matches("#xprate <1.2/#som"))
        with self.assertRaises(ValueError):
            vault.xprate_matches("#xprate invalid")

    def test_conditional_xprate_preserves_remaining_character_scope(self):
        content = """#forever
#group Demo
#name Conditional rates
<< Alliance
step
#xprate >1.99 << !Warlock
+Warlock only after rate filtering << Warlock
+Wrong class after rate filtering << Warrior
step
#xprate >1.99 << Mage
+All target classes
"""
        result = self.filter(content)
        self.assertIn("Warlock only after rate filtering", result)
        self.assertNotIn("Wrong class", result)
        steps = [line for line in result.splitlines() if vault.STEP.match(line)]
        self.assertTrue(vault.applies(vault.condition(steps[0]), ("Gnome", "Warlock")))
        self.assertFalse(vault.applies(vault.condition(steps[0]), ("Dwarf", "Warrior")))
        self.assertIsNone(vault.condition(steps[1]))
        result = self.filter(content.replace("<< Alliance\n", "<< Alliance\n#xprate >1.99 << !Warlock\n", 1))
        header_condition = next(vault.condition(line) for line in result.splitlines() if line.startswith("<<"))
        self.assertFalse(vault.applies(header_condition, ("Dwarf", "Paladin")))
        self.assertTrue(vault.applies(header_condition, ("Gnome", "Warlock")))

    def test_step_formatting(self):
        content = "#forever\n#group Demo\n#name Formatting\n<< Alliance\n\n\nstep\n .goto 1,2,3  \n\t+First\n\n\nstep << Warlock\n+Second\n"
        result = self.filter(content)
        self.assertIn("<< Alliance\n\nstep\n    .goto 1,2,3\n    +First\n\nstep << Warlock\n    +Second\n", result)
        self.assertNotIn("\n\n\n", result)

    def test_irrelevant_guide_and_empty_steps_are_removed(self):
        header = "#forever\n#group Demo\n#name Empty\n<< Alliance"
        self.assertIsNone(self.filter(header + " Mage\nstep\n+Mage"))
        result = self.filter(header + "\nstep\n#label Empty\n+Mage << Mage\nstep\n+Keep")
        self.assertNotIn("#label Empty", result)
        self.assertEqual(result.count("step\n"), 1)

    def test_optional_sod_exclusion(self):
        content = """#forever
#group Demo
#name Seasons
<< Alliance
step << SoD
+Season condition
step
#season 2
+Season tag
step
#season 0,1
+Other seasons
"""
        result = self.filter(content, exclude_sod=True)
        self.assertNotIn("Season condition", result)
        self.assertNotIn("Season tag", result)
        self.assertIn("Other seasons", result)
        self.assertIn("Season condition", self.filter(content))
        self.assertIsNone(self.filter(content.replace("#name Seasons", "#name Seasons SoD"), exclude_sod=True))

    def test_rerun_removes_stale_owned_files_and_preserves_other_files(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory)
            def write(files):
                vault.write_output(output, files, {"generator": vault.GENERATOR})
            (output / "personal.lua").write_text("mine", encoding="utf-8")
            write({"old.lua": "old", "current.lua": "version 1"})
            write({"current.lua": "version 2"})
            self.assertFalse((output / "old.lua").exists())
            self.assertEqual((output / "personal.lua").read_text(), "mine")
            self.assertEqual((output / "current.lua").read_text(), "version 2")
            before = (output / vault.MANIFEST).read_bytes()
            write({"current.lua": "version 2"})
            self.assertEqual((output / vault.MANIFEST).read_bytes(), before)
            (output / "current.lua").write_text("manual edit", encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "edited file"):
                write({"current.lua": "version 3"})
            self.assertEqual((output / "current.lua").read_text(), "manual edit")
            saved = json.loads((output / vault.MANIFEST).read_text())
            saved["files"]["../outside.lua"] = "malicious"
            (output / vault.MANIFEST).write_text(json.dumps(saved))
            with self.assertRaises(ValueError):
                write({})


if __name__ == "__main__":
    unittest.main()
