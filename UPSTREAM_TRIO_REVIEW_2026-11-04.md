# Upstream merge and Forever trio review — 2026-11-04

## Merge scope

- Source: `https://github.com/RestedXP/RXPGuides`, `main` at `72c9a047f2477c6ea4ec4ac4be135f65c6589a84`.
- Previous shared upstream ancestor: `ea9989b660797e8144fa9ffcec86bc3bf28f85c4`; 118 upstream commits since that point.
- Merged into local `main`. No push performed.
- Upstream changes span 564 files, largely localized guides, plus Forever routes, retail routes, databases, UI and parser fixes. Review concentrated on the English Forever Alliance routes, shared chapters and engine changes affecting the Dwarf/Gnome Paladin/Warrior/Warlock trio.
- Resolved upstream's `Guides/Forever` → `Guides/forever` directory rename for all 23 custom files. Their contents are unchanged, ignoring checkout newline conversion. Existing lowercase manifest paths remain valid for these files.
- Six Skyborne content conflicts were whitespace-only; retained local formatting. Forty retail Starting Zones conflict blocks were resolved with upstream content, retaining the automatically merged local changes outside those blocks. These include upstream Chromie fragment reuse and item/gate changes.

## Recommended trio improvements

### 1. Adopt the Phial of Scrying self-target macro — highest value

Upstream `Guides/forever/Alliance-11-20.lua:3884` and `:6865` now use:

```text
.macro Phial of Scrying,134715 >>/use [@player] item:5251
```

The trio still uses `.use 5251` at `Guides/forever/Custom-Forever-18-21-Darkshore.lua:475` and `:484`, with a separate `.cast 5809` and `GlaiveBowl` completion endpoint. Port the self-targeted button while preserving that cast objective, quest gate and endpoint. This can simplify bowl placement for all three players; that usability improvement is inferred from the macro, not measured in game.

Confirmed installed behavior: `functions.lua:6062` implements `.macro name,icon >>body` and registers a text-only macro element. A macro alone does not replace the cast/quest objective that advances the step.

### 2. Consider an optional Ruins of Lordaeron return shortcut

Upstream `Guides/forever/dungeon/Alliance-11-20.lua:2829` adds a deliberate death after collecting dungeon objectives, followed by a corpse run through the instance portal to return to Captain Truman. It explicitly says not to spirit resurrect.

The trio currently walks back at `Guides/forever/Custom-Forever-21-22-Ruins-of-Lordaeron.lua:68`. This is a candidate time save after every character has the head, insignias and crest. Keep normal travel available, and confirm the graveyard/portal behavior and whole-party recovery in game before making it the default. The upstream route is evidence of the convention, not proof that it is faster for this trio.

### 3. Coordinate migration is useful maintenance, not a route redesign

The upstream Dwarf/Gnome starter's non-whitespace diff consists of coordinate conversions. Much of the Human and 11–20 route diff also changes percentage coordinates to `map/continent,worldX,worldY`, often retaining the original location in `--c:` comments. The trio already mixes both forms; for example its Coldridge trainer and Anvilmar approach still use percentage coordinates.

Confirmed installed behavior: `functions.lua:1908` accepts both forms, resolving slash-form coordinates through `addon.GetMapInfo` and HereBeDragons. Conversion alone does not establish a corrected destination or faster path. Reuse upstream conversions only for matching locations; preserve custom detours, radii, conditions and objective order. No wholesale conversion is necessary for this merge.

## Changes already inherited or not worth copying

- `functions.lua:3080` now checks the loot recipient against `addon.player.name` before using its special loot-message item-count handling. This is relevant to a group and is inherited automatically; it does not require guide edits. This is a limited event-handler fix, not a general guarantee about all shared loot/objective behavior.
- `GuideLoader.lua:679` and the game-tag checks around `:1170` now recognize Forever-tagged guides for Classic as well. This changes compatibility, not the trio's quest order.
- `SettingsPanel.lua:4528` and `UI/V2/GuideConfigurator.lua` make dungeon settings aware of guide groups and forced dungeon choices. The custom trio does not acquire those rules merely by using a custom group; do not retrofit selectable dungeons without designing alternate quest/XP/travel paths.
- The dungeon guide fixes its Darkshore/Loch Modan include ranges, adds an optional Bashal'Aran turn-in (957), abandons incomplete 2138/1002 at the Darkshore exit, and reorders Night Elf Stormwind deliveries. Trio uses its own itinerary: 2138 is explicitly completed and turned in (`Custom-Forever-18-21-Darkshore.lua:336`), and it does not author 957/1002. Copying these cleanup actions adds no benefit to the normal trio route.
- The new Find Bingles breadcrumb (2039) in the default Loch route is not a new trio prerequisite. Evaluate it separately as optional XP against the custom Loch path rather than importing the full default segment.
- Hunter reward changes, Rogue lockpicking corrections, Horde missing turn-ins, and Skyborne hazards/tornado locations do not apply to this trio's authored 1–34 itinerary.
- The registered shared `32-33 Hillsbrad/Arathi` chapter, its `fly2` include endpoint, and the `33-34 Thousand Needles` handoff are unchanged in the merged Skyborne file. The trio inherits no new route changes there.

## Existing issues discovered during validation

These predate this merge and were left for separate changes:

1. `Custom-Forever-12-15-Loch-Modan.lua:300` and `:338` refer to `HallOfThanesEntry`, but no step declares it. `GuideWindow.lua:698–714` resolves named completion endpoints through `guide.labels`; an unresolved label cannot provide its intended automatic endpoint. Add a reachable entry label when revising Hall of Thanes flow.
2. `Guides/GuideList-forever.xml:4` references absent `Guides/forever/RestedXP-Skyborne_01.lua`. The same reference and absence exist before the merge. All other script references in that manifest resolve. Determine whether this optional/additional guide source is still intended before removing the entry or restoring content.
3. `Scripts/audit_trio_branching.py` cannot run its full audit because its expected generated `Guides/Forever/GuideVault_Filtered/RestedXP-Forever-Guide-A__32-33-Hillsbrad-Arathi.lua` is absent. The actual loaded shared guide exists in `RestedXP-Skyborne.lua`; this failure is an audit-input problem, not evidence of a missing runtime handoff.
4. AGENTS.md's `docs/route-authoring/` references are absent. Used the existing root `CUSTOM_GUIDE_REFERENCE.md` and `EXISTING_GUIDE_RESEARCH.md` instead.

## Validation

- All merge conflicts resolved; custom trio contents compared with the pre-merge Git versions.
- Trio lint results identical before/after: zero errors; two missing-label warnings and four computed-registration limitations across the 23 files. Computed city templates need runtime validation.
- Compared lint diagnostics for the Dwarf/Gnome starter, Alliance 11–20, dungeon Alliance 11–20 and shared Skyborne against their pre-merge versions: no added diagnostics. Existing vendor diagnostics remain; Alliance 11–20 improves from two errors to one. Static lint is not an in-game parser execution.
- Shared Hillsbrad and Thousand Needles registered guide blocks compared equal before/after; `fly2` remains present.
- Guide-tools core and CLI tests: 18 passed.
- Git whitespace checking reports trailing whitespace imported from upstream. No broad vendor formatting cleanup performed.
- No in-game reload, fresh-character test, partially progressed character test, or dungeon timing validation was available.

Recommendation: keep this merge's trio content unchanged, then make a small follow-up for the Phial macro and missing Hall of Thanes endpoint. Treat the Ruins shortcut and any XP/coordinate changes as separate, testable route decisions.
