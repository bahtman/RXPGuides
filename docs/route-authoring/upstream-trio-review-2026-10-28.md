# Upstream merge and Trio review — 28 October 2026

## Result

Merged RestedXP main through `ea9989b660797e8144fa9ffcec86bc3bf28f85c4` into local main at `e1128dfd`. The previous shared upstream revision was `9536b5a9`; this review covers 34 incoming commits. Source: [upstream comparison](https://github.com/RestedXP/RXPGuides/compare/9536b5a9...ea9989b6).

Recommendation: **keep the current Alliance Dwarf/Gnome Warrior / Paladin / Warlock Trio route. No additional route edits are justified by this incoming range.** The engine fixes are already present after the merge. Selection and startup deserve an in-game smoke test, but there is no confirmed route regression.

The five pre-existing custom guide edits were verified byte-for-byte after merging and excluded from the final merge commit. The user subsequently committed them as `756dc07c`. No custom route was edited during this review. This session did not push.

## Route decisions

| Incoming commit/change | Current Trio evidence | Decision |
| --- | --- | --- |
| [`a1208a12`](https://github.com/RestedXP/RXPGuides/commit/a1208a12): Night Elf Stormwind pickups and deliveries | `Custom-Forever-16-18-Westfall-Redridge.lua:223` already accepts 167/168; `:237` accepts 2040. `Custom-Forever-24-26-Deadmines.lua:158` onward handles 95195, 95189 and the orphan delivery chain. | Retain the Trio's combined city visits. No new quest pickup is needed. |
| Same commit: flight-path handling and early Encroaching Gnolls for NightElf/Skyborne/Dwarf Hunter | Stock additions are at `dungeon/Alliance-11-20.lua:3111`. Trio already accepts/turns in 244 at `Custom-Forever-11-12-Elwynn-Forest.lua:282`/`:287`, gets Redridge flight at `:292`, and Sentinel Hill at `:565`. | Do not duplicate the prerequisite or import walking branches intended for other starting routes. The Trio contains no Hunter or Night Elf. |
| Same commit: optional Stormwind home before stock Deadmines | `Custom-Forever-16-18-Westfall-Redridge.lua:627` sets Stormwind for Darkshore/Ashenvale, then `Custom-Forever-20-21-Redridge.lua:97` deliberately switches to Lakeshire for the Ruins return. | Preserve the custom hearth schedule; copying the stock reset would interfere with it. |
| Same commit: Guns / 2h Maces training | `dungeon/Alliance-11-20.lua:2679` limits this to Hunter/Druid. | No adaptation for Warrior/Paladin/Warlock. |
| [`cbfb4233`](https://github.com/RestedXP/RXPGuides/commit/cbfb4233): Aquatic Form sequencing | Stock now collects the second pendant at `dungeon/Alliance-11-20.lua:4302` before combining it at `:4314`; also adds the return flight. | Druid-only; no Trio detour. |
| [`48498a23`](https://github.com/RestedXP/RXPGuides/commit/48498a23), `1333be42`, `8e74eee3`: route and loop improvements | Changed routes are Horde and/or Skyborne. No custom Trio file or shared Hillsbrad source is changed in this range. | Do not transplant these route segments. |
| Remaining guide changes | Retail, other expansions, professions/endgame metadata, localization and text corrections. The ordinary English Forever Alliance starter routes are unchanged. | No additional level 1–34 Trio route content identified. |

These are comparisons against upstream authored routes and current local guide text, not live measurements of quest availability, NPC positions or XP pacing.

## Confirmed engine behavior and implications

- **Era-only unused-guide change.** [`d4e4ba24`](https://github.com/RestedXP/RXPGuides/commit/d4e4ba24) does not move/delete Forever route files. `GuideLoader.lua:702`, `:920` and `:1272` apply the new low-priority rule only when `addon.game == "CLASSIC"` and the guide is Forever without Classic compatibility. It does not newly hide Trio on the Forever client. Do not add `#classic` to work around it.
- **Configurator overhaul.** [`d586eda2`](https://github.com/RestedXP/RXPGuides/commit/d586eda2) adds shared selection helpers in `GuideLoader.lua:207` onward. `UI/v2/GuideConfigurator.lua:2002` requests the two stock Forever dungeon groups; `Forever Trio Launch` is a separate group. Continue selecting Trio through the ordinary guide menu. Adding a dedicated Trio configurator option would be an optional UI enhancement, not a route correction. `GuideWindow.lua` still builds its ordinary menu from active guide groups.
- **Fresh-character startup.** The custom guarded `LoadDefaultGuide` hook at `Custom-Forever-1-5-Coldridge-Valley.lua:3` remains intact, and `RXPGuides.lua:1795` still calls it. New `GuideLoader.lua:966` refuses default selection above level 1 or over an existing non-empty guide; configurator `FinishFlow` at `UI/v2/GuideConfigurator.lua:1364` reloads an existing guide. These guards support retaining the current startup arrangement. Actual login/configurator timing remains untested.
- **Sticky automation.** [`fcf117db`](https://github.com/RestedXP/RXPGuides/commit/fcf117db) changes `GuideWindow.lua:827` to release v2 step children, clear active-item caches and clear event watchers when changing steps. This is an engine fix; do not rewrite Trio sticky steps to compensate for the older bug.
- **API compatibility.** `787ac649` adds item-quality fallback handling in `functions.lua:7417`; `e669f53b` corrects the legacy profession API fallback in `RXPGuides.lua:405`. Daily/turn-in nil guards and other runtime fixes also arrive automatically. They require no guide syntax migration.
- **Target macro markers.** `7b3389f0` adds `/tm !7` on Forever/Retail in `Targeting.lua:241`, with a reduced target-list budget. It changes the generated targeting macro, not Trio quest requirements or custom `.macro` text.

## Merge resolutions and validation

Only two files conflicted: Retail `Endgame/War Within/Storylines.lua` and `Leveling/Conventional/Starting Zones.lua`. Resolutions retain existing local route choices/coordinates and combine compatible upstream arrow text and equipment-use additions. Non-conflicting upstream changes merged normally. The Forever manifest merged automatically and retains all custom registrations alongside the new endgame script entries.

Verified:

- Upstream `ea9989b6` is an ancestor of the completed merge, whose parents are `61e86fe9` and `ea9989b6`.
- All five previously edited custom files retained their original SHA-256 hashes after merging.
- Forever manifest XML parses; all 60 listed script files exist, including all 22 custom files.
- No conflict markers remain in merged Lua/XML. Whitespace checks pass for both resolved files and the merged Forever manifest. The broader incoming diff has upstream localization whitespace warnings, which were not reformatted.
- A scoped scan using the existing branching scanner's parser reads all 22 custom registrations and 1,033 quest actions across 488 quest IDs. Repeated actions are candidate findings, not proof of errors; this scan does not simulate quest state or route reachability.

The full `Scripts/audit_trio_branching.py` run cannot finish because its hard-coded extracted source `Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__32-33-Hillsbrad-Arathi.lua` is absent. The custom chapter still references the installed/imported guide by name at `Custom-Forever-32-34-Dalaran-Hillsbrad.lua:511`. This limitation predates the merge; confirm that the shared guide is available in game before testing that handoff.

No Lua compiler, full addon-parser simulation or in-game test was available. Suggested in-game checks: reload with a saved Trio chapter; test a fresh level-1 matching character; open/close the configurator while retaining Trio; complete a sticky quest step; verify the Hillsbrad `fly2` include with the installed guide collection.
