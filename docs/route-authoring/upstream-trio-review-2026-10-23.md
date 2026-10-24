# Upstream review for the Forever trio - 2026-10-23

Local main: `758ae2d73f2b455a8df1114762d52307679cb59e`. Working tree was clean before this report. The last locally recorded upstream main is `6165a3f4e31089e382795b4a5ddc2d8685f8df5f`, which is already an ancestor of local HEAD.

Current upstream main from GitHub: `9536b5a9ee7e55745618a57dad43df2c4312ea16`. The comparison contains 85 commits since the last merged upstream revision, including 17 after the October 21 review endpoint `2dd54ecb`.

Sources:

- Full pending range: https://github.com/RestedXP/RXPGuides/compare/6165a3f4...9536b5a9
- New since the previous review: https://github.com/RestedXP/RXPGuides/compare/2dd54ecb...9536b5a9
- Previous findings: [October 21 review](upstream-trio-review-2026-10-21.md).

## Merge remains blocked

GitHub authentication works. Local `git fetch upstream main` still fails with `cannot open '.git/FETCH_HEAD': Permission denied`; the session explicitly has read-only access to this repository's `.git` directory. No merge was performed, no remote branch was changed, and no route or engine files were modified. This report is the only new file.

The GitHub comparison establishes the pending upstream content, not a successful merge or absence of conflicts. The local upstream tracking ref remains stale.

## Recommended small trio updates

These are proposed adaptations, not applied changes. None requires reordering the route.

### 1. Correct two Stormwind flight-master waypoints

Upstream commit `eedaf197` changes Dungar Longdrink's world coordinate from `1453/0,490.03,-8835.82` (and the nearby `489.99,-8835.76` variant) to `1453/0,484.200,-8832.500`. Both stock speedrun and dungeon routes use the correction.

The old exact coordinate remains at:

- `Guides/Forever/Custom-Forever-11-12-Elwynn-Forest.lua:16` (get the flight path).
- `Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:292` (fly to Westfall).

Recommendation: update these two coordinates. Other trio Dungar stops use percentage coordinates and should not be converted without checking their map context. This is a navigation precision fix established by the upstream source, not a live NPC-location measurement.

### 2. Add the Coldridge graveyard warning

Commit `3fcc7e67` warns Warlocks to remain in the Coldridge Valley subzone when dying, otherwise they may respawn at Kharanos. The trio's return deathskip at `Custom-Forever-1-5-Coldridge-Valley.lua:213` has no such warning and leads to Coldridge tasks, including the Warlock's Beginnings turn-in.

Recommendation: add a short warning beside this deathskip. Do not apply it to `Custom-Forever-5-11-Dun-Morogh.lua:28`: that later skip deliberately dies after leaving Coldridge to reach Kharanos. The upstream warning supports the graveyard boundary concern; the trio normally dies inside the troll cave, so this is preventive guidance rather than a confirmed route failure.

### 3. Use the rat-targeting macro

Commit `f0b332d3` replaces the flute-only helper with:

```text
.macro Rat Catcher's Flute,133942 >>/targetexact Deeprun Rat\n/use item:17117
```

Trio still uses `.use 17117` at `Custom-Forever-5-11-Dun-Morogh.lua:1646`, immediately after `.complete 6661,1`.

Recommendation: use the upstream macro to simplify targeting, retaining the quest objective as the completion condition. Confirmed installed-parser behavior: `functions.lua:6053` accepts `.macro name,icon >> body` and returns a text-only helper; the macro itself does not complete the quest step. No new parser command is required.

## Already covered or retain current behavior

| Incoming change | Trio comparison and decision |
|---|---|
| Early The Troll Cave pickup for Warlocks (`0eed3ea6`) | Coldridge `:137-140` accepts 182 and tells players to share it before the combined troll/Feather Charm objectives at `:155-156`. Already covered by the custom party flow. |
| Extra A Lost Master and Volcor recovery checks (`ed34292d`) | Darkshore already gates all pelt objectives on 986, splits the later 986 turn-in and 993 acceptance (`:1006-1018`), and has a separate 995 pickup for 993 already delivered (`:1134-1149`). Already covered. The earlier optional 986 delivery also has a completion gate (`:674-681`). |
| Set Stormwind home immediately before stock Deadmines (`cce966a5`) | Trio deliberately uses Lakeshire for the Ruins return and subsequent Wetlands batch hearth. Do not copy the stock home reset into the custom Deadmines chapter. |
| Skip Patrolling Westfall in the speedrun route (`85e08b86`) | This extends the earlier dungeon-route pacing decision to the speedrun route. It strengthens the optional skip recommendation, but does not establish a quest bug. Keep the user's existing Westfall choice; changing it requires adjusting pickup, kill, turn-in and XP expectations together. |
| Night Elf routing polish and Dwarf Hunter flight conditions | The trio uses Gnome/Dwarf Warlock, Paladin and Warrior profiles. These stock branches do not justify moving the custom Darkshore/Ashenvale sequence. |
| Rogue lockpicking quest chain (`d661ea7a`) | No Rogue in this trio. Do not add its Redridge detour. |
| Latest dungeon update (`9536b5a9`) | Its non-localized content changes concern Horde/Skyborne files, not the custom Alliance trio. |

The October 21 conclusions remain applicable: no active custom AH purchase of the newly unique Harvester Gyrostabilizer; keep the intentional early Knowledge in the Deeps pickup unless a replacement is verified; optional Murloc Gills pacing remains a choice rather than a required correction.

## Engine and merge compatibility

The full pending range still includes the dungeon-selection changes described in the previous review: group overrides via `.enabledungeon`, stock solo-guide `#disabledungeons`, exposed dungeon selection, new Forever dungeon tags, and guide context passed to include filtering. Those changes are not yet installed by this session.

Compared with the previous review, the engine diffs in `RXPGuides.lua`, `GuideWindow.lua` and `functions.lua` are unchanged. Local main has no changes relative to `6165a3f4` in those files or in `GuideLoader.lua`, `SettingsPanel.lua`, `DB/forever/db.lua` and stock `Guides/forever/Alliance-11-20.lua`. This reduces direct overlap for those files but is not a conflict test for the whole merge.

No custom trio file is in the incoming upstream changed-file list. The Forever manifest still loads the trio chapters. Preserve custom default-selection headers, training changes, manifest additions and the shared Hillsbrad include during the eventual merge. Do not add the stock solo `#disabledungeons` header to the trio as a blanket compatibility change.

## Validation

- Re-read repository authoring instructions and references, the prior report and the current Forever manifest.
- Retrieved the complete 85-commit comparison and the separate 17-commit delta; inspected relevant individual commits where the aggregate Alliance diff omitted its patch.
- Matched proposed changes against current custom chapters and inspected the installed macro constructor.
- Confirmed a clean starting working tree and ancestry of the last known upstream revision.
- No route implementation, Git merge, merged Lua syntax check, full parser simulation or in-game validation was performed. Those checks remain necessary after the Git metadata permission blocker is removed.

## Applied after review

The user approved the three recommendations. Dungar's two world-coordinate waypoints now use `1453/0,484.200,-8832.500`; the Coldridge return deathskip now warns about the subzone boundary; and Deeprun Rat Roundup now uses the exact-target flute macro while retaining `.complete 6661,1`. All four edited guide revisions were incremented.

Reviewed the final diff and the installed macro constructor/runtime: `.macro` accepts the name and numeric icon, preserves the literal `\n` separator in the guide, and converts it to a newline when activating the macro. The existing quest objective still controls completion. All edits are within existing guide strings. `git diff --check` passes. No Lua compiler is available in this session, and no in-game test was performed.

The merge was retried and remains blocked by `.git/FETCH_HEAD` write permissions. The report was already staged when implementation began; the index was left untouched and this update is unstaged.
