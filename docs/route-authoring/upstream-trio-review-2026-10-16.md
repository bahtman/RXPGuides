# Upstream review for the Forever trio — 2026-10-16

Reviewed upstream additions from merge base `2f0d3353` to `6165a3f4`: 176 commits. Local main before the merge was `0996e34a`; the completed merge is `59deb0a1`.

Scope: the Alliance Forever trio (Warlock, Paladin, Warrior), its custom chapters and city modules, the Forever manifest, shared Hillsbrad handoff, upstream Alliance quest/dungeon routes, and changed engine code. The custom route includes the user's pending edits. No trio route changes were made as part of this review.

**Implementation update, 2026-10-16:** the user subsequently requested items 1–3 below. Those changes are now applied; the original findings and line references below describe the review snapshot before implementation. Westfall pacing remains unchanged at the user's request.

## Relevant route follow-ups

### 1. High priority: Kerlonian now finishes his escort at his bag in Darkshore

Upstream changes `dec30bf0` and `854e7b27` replace the Maestra's Post escort destination with `.goto 1439/1,206.400,4402.500` and track objective `5321,2` there. The separate turn-in to Liladris in Ashenvale remains.

- Upstream example: `Guides/forever/Alliance-11-20.lua:6236` and `:7010`; the new dungeon route also uses the bag at `Guides/Forever/dungeon/Alliance-11-20.lua:4250`.
- Trio still says to head directly to Maestra's Post at `Guides/Forever/Custom-Forever-18-21-Darkshore.lua:1129`, then places `SleeperEnd` and objective `5321,2` in Ashenvale at `:1169`.
- Recommended adaptation: finish the escort at the bag before leaving Darkshore; preserve the subsequent Ashenvale travel and Liladris turn-in. Keep the existing quest-state gates so skipped/already-completed escorts do not hold up travel. Reconsider the Volcor interleave around that endpoint.

This destination change is confirmed in upstream route text and coordinates. Server behavior and the exact best ordering around Volcor have not been tested in game.

### 2. Medium priority: trio misses the Stolen Blasting Powder follow-up

Upstream now picks up the Empty Powder Keg from quarry Skullthumpers/Bonesnappers as well as Ambushers, turns in `95213` earlier, accepts `95214`, and collects 16 Stolen Blasting Powder from Ambushers while doing the existing spy-map circuit. It also handles players who have already turned in `95213` and late keg drops.

- Upstream: `Guides/forever/Alliance-1-14_DwarfGnome.lua:1916`, `:1980`, `:2024`, and `:2074`.
- Trio only seeks the keg from Ambushers at `Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:1069` and ends the chain at its `95213` turn-in at `:1102`. There are no trio instructions for `95214`.
- Recommended adaptation: offer the keg opportunistically during the quarry objectives, take the follow-up before the Ambusher circuit when possible, and add gated completion/turn-in plus already-turned-in/late-drop recovery. Preserve the low-drop-rate escape path; finding a keg should not become a mandatory grind.

This is an additional route opportunity established by the upstream guide, rather than a parser regression or proof that `95214` is mandatory for later trio quests.

### 3. Medium priority: quarry turn-in target helpers are swapped

Upstream fixes the paired turn-in targets: quest `433` belongs to Senator Mehr Stonehallow, and `432` to Foreman Stonebrow (`Guides/forever/Alliance-1-14_DwarfGnome.lua:1967`). Trio has the correct coordinates but attaches Senator to `432` and Foreman to `433` at `Guides/Forever/Custom-Forever-5-11-Dun-Morogh.lua:1029` and `:1033`.

Recommended adaptation: attach `.target +Foreman Stonebrow` to `432` and `.target +Senator Mehr Stonehallow` to `433`, keeping each helper beside its objective. Trio's pickup helpers already use the correct NPCs.

Confirmed parser behavior: `functions.lua:4985` makes the leading `+` a parent attachment, and `GuideLoader.lua:919` attaches it to the preceding objective. The mismatched helpers therefore affect targeting context; they are not just decorative text.

### 4. Optional pacing changes: Westfall drop quests

The upstream dungeon route now abandons/skips Patrolling Westfall (`102`) at `Guides/Forever/dungeon/Alliance-11-20.lua:798`. It also permits abandoning Red Leather Bandanas (`153`) after the required militia kills if drops are far behind (`:1109`, with cleanup at `:1268`).

Trio still requires `102` and multiple full `153` objective gates in `Guides/Forever/Custom-Forever-16-18-Westfall-Redridge.lua:348`, `:686`, `:698`, and `:720`. The bandana drop burden is worth reconsidering for three players. Making it optional also requires conditional turn-ins and rechecking XP expectations. This is a route preference, not a confirmed blocker, so it was not changed automatically.

The dungeon route also stops actively accepting Nip 'Em in the Bud (`96390`), while the ordinary upstream Dwarf/Gnome route still accepts it. Trio's inclusion is therefore not an upstream correctness conflict.

## Relevant fixes supplied by the merge

| Area | Relevance to the trio |
|---|---|
| Trainer purchases | `RXPGuides.lua:575` now buys services in reverse index order on Forever so each purchase cannot shift the remaining service indices. This benefits the trio's trainer stops. |
| Coordinates and arrows | `functions.lua` and `map.lua` correct map/instance conversion for the `/0` and `/1` coordinate forms used throughout the trio. No command-signature migration was found. |
| Inventory | InventoryManager is reorganized, including bag-addon handling and emergency-item highlighting. `.destroy` delegates through the manager, affecting the trio's Darkshore cleanup at `Custom-Forever-18-21-Darkshore.lua:959`. |
| Quest-log planning | `QuestLog.lua:26` now defaults Forever to 40 quests, with a profile override. This is relevant to the trio's carried deliveries and dungeon pickups; actual server capacity was not tested. |
| Gamepad interactions | The merged engine avoids some unreliable gamepad interaction callbacks, gossip closure and automated `.buy` calls. The concurrent Simple Wood purchase in Dun Morogh uses `.buy`; its accompanying `.collect` still tracks a manually completed purchase. |
| Loading/UI | Nil guards, empty-guide handling, map refresh and guide-window improvements apply to custom guides too. |

The stock Forever spell-list changes chiefly affect Druid, Shaman, Rogue and Priest. Our committed Paladin/Warrior training customizations were retained. The local Warlock default-spell list remains intentionally commented out.

## Already handled or not applicable

- Wilder Thistlenettle and Shoni coordinates: upstream corrected these to approximately `501.2,-8468.6` and `634.8,-8390.9`. Trio already uses those locations for Deadmines pickups and deliveries (`Custom-Forever-16-18-Westfall-Redridge.lua:250` and `Custom-Forever-22-24-Deadmines.lua:178`).
- Ruins of Lordaeron travel: upstream replaced a subzone-only gate with a proximity objective. Trio already uses a 100-yard proximity objective at `Custom-Forever-21-22-Ruins-of-Lordaeron.lua:28`; the specific stuck-subzone issue is not present.
- Weightstone linen removal: trio's remaining linen reserve is explicitly for the Paladin resurrection quest. It should not be removed as though it were the old weightstone requirement.
- Human class letters, Priest/Druid/Hunter training, Night Elf Loch routing, Skyborne island changes, Horde death skips and Horde Sleeping Bag additions do not directly apply to these character profiles or this custom route. The trio explicitly defers the Sleeping Bag chain.
- Forever's dungeon configurator remains restricted; the trio's authored dungeon chapters have no `.dungeon` gates and therefore do not rely on that selector. The shared `32-33 Hillsbrad/Arathi@fly2` source and label were not changed by upstream.
- Upstream changes no `Custom-Forever` files. Merging stock guide updates does not transplant the route follow-ups above into the custom trio.

## Merge and validation

- Upstream merged without Git conflicts. `upstream/main` is an ancestor of local main at merge commit `59deb0a1`; its parents are `0996e34a` and `6165a3f4`. The merge has not been pushed.
- Syntax checking exposed existing local errors in `DB/forever/spells.lua`: two missing commas and C-style comments around the disabled Warlock block. The merge includes the minimal repairs: commas at `:359` and `:819`, and Lua block-comment delimiters. Spell choices and the disabled Warlock state were preserved.
- All 65 changed non-localized Lua files passed syntax checking after those repairs. The 22 custom Lua files and restored `Targeting.lua` also passed. This checks Lua syntax, not a complete simulated game session.
- All 48 command names used by the trio have definitions in the installed command table. Target-helper behavior was checked in the parser and compared with the updated shipped quarry route.
- Every file referenced by the Forever XML manifest exists. The trio's shared handoff source still contains `fly2`.
- The original staged index was restored exactly. Saved working files match the preserved versions, with the separately preserved concurrent seven-line Simple Wood purchase added back to Dun Morogh. The untracked City Supplies file was also restored.
- Upstream includes existing whitespace warnings; no broad whitespace rewrite was performed. No in-game reload, fresh-character test or partially progressed character test was available.

## Applied trio changes

- Kerlonian: `Custom-Forever-18-21-Darkshore.lua` now finishes `5321,2` at his bag (`1439/1,206.400,4402.500`) after the short Volcor stop and before entering Ashenvale. The separate Liladris turn-in remains in Ashenvale. Existing quest-state gates handle absent or already-delivered escorts, and the sticky reminder ends at `SleeperEnd`.
- Quarry targeting: `Custom-Forever-5-11-Dun-Morogh.lua` now attaches Foreman Stonebrow to turn-in `432` and Senator Mehr Stonehallow to `433`.
- Powder chain: the keg is offered during quarry kills without extending the grind. Quest `95213` is delivered early when possible, with `95214` accepted before the spy circuit. A late-keg recovery and follow-up pickup precede one finishing loop and the `95214` turn-in. Missing kegs and already-delivered quests skip through their gates; the 16-powder objective is required only for players who accepted the follow-up. The keg and powder sticky objectives have reachable endpoints.
- The two edited guide revisions were increased. Concurrent Ashenvale chapter/handoff edits were preserved separately from these changes.
- Validation: Lua syntax passes for both edited guides. The installed line parser, command constructors and quest-state gate callbacks were exercised with stubbed game APIs for Dwarf Paladin, Dwarf Warrior, Gnome Warrior and Gnome Warlock. Target attachments and the changed label references passed. Eight powder states and four escort states passed, including no keg, a carried late keg, first quest already delivered, follow-up accepted/completed/delivered, escort skipped and escort already delivered. These checks do not simulate player movement, drop rates or live server quest behavior.
- Westfall's pacing file matches its contents before this implementation, and the staged index was left intact. No in-game reload or character walkthrough was available.
