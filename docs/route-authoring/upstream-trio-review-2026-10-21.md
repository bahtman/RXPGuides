# Upstream review for the Forever trio - 2026-10-21

Reviewed the GitHub comparison from `6165a3f4e31089e382795b4a5ddc2d8685f8df5f` through `2dd54ecbafb2da62421f7a55c913c13be5581aa4`: 68 commits. Local HEAD was `11e9b56b`, on `main`, with a clean working tree before this report. There is no local Rxp branch.

Source: https://github.com/RestedXP/RXPGuides/compare/6165a3f4...2dd54ecbafb2da62421f7a55c913c13be5581aa4

## Merge status

Not merged. GitHub authentication now works, but local `git fetch upstream main` still fails with `cannot open '.git/FETCH_HEAD': Permission denied`. Session permissions make this repository's Git metadata read-only. No route or engine files were modified. The older upstream revision is already an ancestor of local HEAD. A successful comparison download does not update the local upstream ref or prove a conflict-free merge.

## Trio recommendations

No required trio route transplant was identified in this batch. Retain the current route order pending gameplay evidence. These are source-based findings, not live-server validation.

| Upstream change | Current trio evidence | Recommendation |
|---|---|---|
| Murloc Gills may be skipped when drops lag; its turn-in is separated from Testing the Wells and an optional abandon is added | `Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:452` requires Gills; `:662` combines its turn-in with Testing the Wells | Optional pacing improvement for three players. If adopted, update objective, turn-in and cleanup together. Leave unchanged for now, respecting the previous Westfall pacing decision. |
| Remove AH purchases of Golem Isospring and Harvester Gyrostabilizer because the latter became unique (`1190fea9`) | No item-ID purchase/collection instructions for 255007 or 255010 exist in custom chapters. Harvesting the Harvesters acceptance is already disabled with `step << skip` at Westfall `:360` | No change needed. This is not a reason to remove the existing Harvest Watcher kills for other quests. |
| Remove early Knowledge in the Deeps acceptance (`2612de90`) | `Custom-Forever-12-15-Loch-Modan.lua:382-387` deliberately accepts 971; `Custom-Forever-28-30-Blackfathom-Deeps.lua` collects its manuscript and returns to Ironforge | Keep the planned pickup. Upstream provides no explanation establishing that early acceptance is invalid. Moving it requires a verified replacement before BFD and a travel/log-capacity benefit. |
| Blackwood bowl filling accommodates already-accepted quests | `Custom-Forever-18-21-Darkshore.lua:323,379-381` accepts 4763 and fills the bowl before the objectives | Already covered. |
| Add Gyromast key cleanup | Darkshore `:959-960` destroys 7442 only after 2078 is delivered | Already covered with a quest-state gate. |
| Replace the dungeon route's southern turtle pickup with creature 4728 and move Onu later | Darkshore `:617,624` includes both 4728 and 4722. Its earlier Onu visit at `:516-522` unlocks Mathystra Relics and the adjacent Arbal pickup | Preserve the custom interleave. Upstream's different itinerary does not establish a missing quest or invalid custom order. |
| Correct non-Human Report to Gryan pickup | `Custom-Forever-11-12-Elwynn-Forest.lua:52,74,648` already covers pickup and delivery | No transplant needed. |
| Fix missing dot on `.use 6776` for the Paladin tome | `Custom-Forever-20-21-Redridge.lua:64` already uses `.use 6776` | Already covered. |
| Deliver The Unsent Letter and accept Bazil Thredd after Deadmines | `Custom-Forever-24-26-Deadmines.lua:180-198` already covers this sequence | Already covered. |
| Guard Deadmines turn-ins separately | Trio requires its authored final-boss objective and uses an optional negative Red Silk Bandanas turn-in | No required flow change for the planned complete run; consider additional recovery gates only if supporting abandoned/partial runs explicitly. |
| Ruins of Lordaeron approach video and Hillsbrad waypoints | `Custom-Forever-21-22-Ruins-of-Lordaeron.lua` arrives from Grom'gol by zeppelin | Hillsbrad approach does not apply to this itinerary. |

## Engine changes and compatibility

Confirmed from the incoming code diff:

- `functions.lua` adds `.enabledungeon TAG` and `!TAG` overrides. The constructor writes group-scoped overrides during parsing; it is not a dungeon-entry completion objective.
- `RXPGuides.lua` changes dungeon step filtering to use group overrides, guide-level `#disabledungeons`, and then profile selection. `IsStepShown` forwards non-string arguments to checks. `GuideWindow.lua` passes guide context while processing includes.
- `SettingsPanel.lua` exposes Forever dungeon selection and displays overrides. `DB/forever/db.lua` adds tags for Hall of Thanes, Ruins of Lordaeron, Excavation Site, City of Dalaran and other new dungeons.
- Ordinary upstream Forever leveling guides gain `#disabledungeons`; dungeon chapters drop their WIP/beta headings and repair includes and next-guide references.

The custom trio has no `.dungeon`, `.enabledungeon` or `#disabledungeons` entries. Do not add the solo-guide disabling header to the trio or copy `.enabledungeon` as if it were a travel gate. Its authored dungeon chapters remain explicit. The shared `32-33 Hillsbrad/Arathi@fly2` source is not among the incoming changed files. Include filtering should still be checked after the engine merge.

Other incoming content chiefly concerns Skyborne, Horde routes, Rogue poisons, Shaman water totems, Druid aquatic form, Hunter routing and translations. The early-dungeon-pickup commit `20b7b4dd` changes the Horde Barrens route, not Alliance trio pickups. Chol'aruk (`7c2d1b0f`) is likewise a Horde route addition. Split-pulling advice is re-enabled in stock routes; it does not require changing the trio's quest order.

## Validation and remaining work

- Read the repository authoring references and inspected the applicable Forever manifest, custom chapters, incoming Alliance route patches and engine patches.
- Fetched the complete GitHub comparison and inspected the specific commits for unique-item shopping, Knowledge in the Deeps, earlier dungeon pickups and Chol'aruk.
- No upstream merge, merged Lua syntax check, simulated parser run, UI reload or fresh/partially progressed character walkthrough was possible in this session.
- Complete the actual Git merge before claiming the engine fixes are installed. Then validate Lua syntax, manifest references, custom includes and dungeon filtering. Preserve local training customizations and custom route files when resolving any conflicts.
