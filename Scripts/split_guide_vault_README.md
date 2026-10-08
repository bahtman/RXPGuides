# GuideVault splitter

Run from the RXPGuides directory with Python 3.10 or newer:

```powershell
python .\Scripts\split_guide_vault.py
```

The default source is `Guides/Forever/GuideVault_001.lua`. Output goes to
`Guides/Forever/GuideVault_Filtered/`, with one `RXPGuides.RegisterGuide` call per
Lua file. Filenames combine the guide group and name. Paths default relative to
the script, so it also works when invoked from another directory.

The source vault and addon's loading list are left untouched. Every generated
Lua file includes the source's initial addon/game guards. The generated files
are output artifacts; they are not automatically loaded by the addon.

## Filtering

- Keep guides, steps and individual lines applicable to at least one of all
  six Alliance Dwarf/Gnome × Warrior/Warlock/Paladin combinations.
- Evaluate spaces as AND, `/` as OR and `!` as NOT, including parentheses.
- Remove guides, steps and individual lines whose `<<` condition contains the
  standalone word `skip`, case-insensitively, even in combined conditions such
  as `skip/Warrior`. Guide conditions remove the whole guide; step conditions
  remove the whole step; other conditional lines are removed individually.
  This rule also applies with `--whole-steps-only`. Ordinary prose and commands
  such as `.zoneskip` are preserved.
- Evaluate each line within its guide and step's eligible characters. Keep
  original conditions on surviving content so race/class alternatives still
  work in the addon.
- Remove entire steps carrying `#hardcore`, `#hardcoreserver` or `#som`.
- Remove SoD-only conditional content, `#season 2` steps and guides with a
  standalone `SoD` in their `#name`.
- Remove all `#phase ...`, `#era` and `#softcore` marker lines, keeping the
  remaining step. Compact `#phase1-4`-style markers are also supported.
- Filter guide and step `#xprate` restrictions for XP rate **1**. Remove every
  applicable `#xprate >...` block, plus ranges or upper limits that exclude 1.
  Conditional XP-rate tags only restrict their matching characters; remaining
  character restrictions are preserved on the guide or step. Strip all
  surviving `#xprate` tags after filtering, including header tags.
- Preserve other markers, including `#season 0,1`, `#softcoreserver`,
  quest checks and dungeon requirements. Remove steps left without content.
- Put one blank line before each step and indent its contents with four spaces.
  Keep the `step` line unindented and strip trailing whitespace.

Mode markers remove a whole step whenever present, including conditionally
marked mode lines. Class/race conditions are resolved for filtering; unrelated
runtime conditions such as gender, level and locale stay in the output.
Unrecognized literal conditions such as the source's `fRogue` typo do not match,
following the addon's condition evaluator.

This is structural filtering, not a rewrite of quest routes or their existing
labels, `#requires`, `#completewith`, or `#next` links. Unmarked prose is retained;
the script does not guess game modes from quest descriptions or NPC names.

## Reruns and options

`manifest.json` records generated filenames, hashes, settings and counts.
Reruns update unchanged generated files and remove stale files previously
recorded in that manifest. Unrelated files remain untouched. The script stops
before writing if a generated file has been manually edited or a filename
would collide with an unowned file. Keep manual variants under a different
filename or in a separate directory. Keep the manifest with the output.

```powershell
# Preview counts without writing anything.
python .\Scripts\split_guide_vault.py --dry-run

# Use a replacement vault or a separate output directory.
python .\Scripts\split_guide_vault.py --source .\Guides\Forever\GuideVault_002.lua --output .\Guides\Forever\Other_Filtered

# Optional: restrict to specific character combinations.
python .\Scripts\split_guide_vault.py --target "Dwarf Warrior" --target "Gnome Warlock"

# Run regression checks.
python -B -m unittest discover -s Scripts -p test_split_guide_vault.py -v
```

`--keep-sod`, `--keep-hardcoreserver`, and `--whole-steps-only` opt out of their
respective default filtering rules. Run `--help` for all options. Unsupported
Lua registration wrappers or malformed conditions cause an error before the
output is written.
