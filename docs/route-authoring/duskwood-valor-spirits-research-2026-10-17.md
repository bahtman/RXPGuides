# Duskwood Valor spirits: research and proposed trio integration

Researched on Wowhead Forever on 2026-10-17 against the current working trio chapters. The initial proposal is retained below; the implementation update records subsequent authorized route changes.

## Implementation update after user routing decisions

The route now implements the user's subsequent instructions. The research and original proposal below are retained as background; this update supersedes their acquisition/completion schedule.

- **Grant:** one required pickup at Tranquil Gardens on the first east-to-west trek. The earlier cemetery acquisition/completion copies and Deadmines delivery were removed. Mace tracking and a finishing step now belong to the level-27 Raven Hill visit, followed by one Sirra delivery on that chapter's Darkshire return.
- **Silvia:** an opportunistic check from Darkshire toward Tranquil Gardens, then one required pickup at Sven's mound in Yorgen Farmstead (49.9,77.8), following the user's location correction. The earlier mandatory Rotting Orchard detour was removed. Defias kills are tracked while clearing Sven's Revenge guards; a finishing step at Addle's Stead follows. One delivery is scheduled at the level-27 Sirra stop. The public sightings below remain background reports, not additional mandatory stops.
- **Merrick:** opportunistic checks on the Redridge-to-Darkshire road and throughout the first southern crossing toward Rotting Orchard/Raven Hill. Ogre kills are tracked during Ogre Thieves and the monocle cave visit, with a finishing step before leaving Vul'Gol. One delivery is scheduled at the level-27 Sirra stop.
- **Ira:** opportunistic checks on arrival from Redridge, during the Shadow Weaver and western wolf travel, during the level-27 Dark Runner circuit and Eastvale departure, and during the later Backus/Mistmantle circuit. No claim of a single guaranteed spawn is encoded. Remaining Ravager kills are finished in the woods west of Darkshire, around the reported black-wolf area at 51,62, after the northern post-Stockades checks and before the southern worgen leg. One delivery is scheduled during that circuit's final Darkshire return.
- Required Knight/Defender pickups deliberately wait until the quest is accepted, as requested. All other encounter checks have forward `#completewith` endpoints. Completion steps require the relevant active quest; deliveries have independent completion gates. Silvia's counters are read dynamically rather than hard-coding the conflicting Enchanter count.
- Targeting helpers now follow the agreed convention: `.unitscan +Name::id` for spirit encounters, `.mob +Name` for quest-kill objectives, and `.target +Sirra Von'Indi` for deliveries. Each helper is attached to its preceding quest action so it retires with that action. Grant's two skeleton types share one semicolon-separated helper. The modern-client proximity scanner remains disabled by the installed addon; these declarations use its existing targeting and encounter-attention behavior.
- All six edited guides had their versions increased. Static checks passed for all local label references, supported command names, guide string boundaries, one delivery owner per spirit quest, both required pickup locations, bounded opportunistic acquisition checks, and action eligibility across the four trio profiles. Gate behavior was checked against the installed parser/functions; the full addon was not executed. No in-game movement, spawn, group-loot or live quest test was available.

## What exists

Four documented spirit-drop quests match Grant's Shield. Each starts from an item and returns to Sirra Von'Indi in Darkshire. I found no confirmed fifth Valor-family spirit-drop quest. The later investigation involving Ol' Sandy is a separate quest, with uncertain availability.

| Spirit | NPC ID | Starter item | Item ID | Quest | Quest ID | Objective |
|---|---:|---|---:|---|---:|---|
| Lost Knight / Grant | 272291 | Grant's Shield | 281147 | Grant's Shield | 79362 | Recover Grant's Mace (281146) from cemetery skeletons. |
| Lost Stalker / Ira | 272260 | Ira's Dagger | 281143 | Ira's Dagger | 96137 | Kill 10 Young Black Ravagers and 7 Black Ravagers. |
| Lost Watcher / Merrick | 272273 | Merrick's Bow | 281142 | Merrick's Bow | 96138 | Kill 8 Splinter Fist Warriors and 4 Splinter Fist Taskmasters. |
| Lost Defender / Silvia | 272284 | Silvia's Sword | 281145 | Silvia's Sword | 79363 | Addle's Stead: objective counters list 7 Defias Night Blades and 2 Defias Enchanters; prose instead says 7 of each. Use the live quest objective, not the prose count. |

Quest and item evidence:

- Grant: [quest](https://www.wowhead.com/forever/quest=79362/grants-shield), [starter](https://www.wowhead.com/forever/item=281147/grants-shield), [mace](https://www.wowhead.com/forever/item=281146/grants-mace), [NPC](https://www.wowhead.com/forever/npc=272291/lost-knight).
- Ira: [quest](https://www.wowhead.com/forever/quest=96137/iras-dagger), [starter](https://www.wowhead.com/forever/item=281143/iras-dagger), [NPC](https://www.wowhead.com/forever/npc=272260/lost-stalker).
- Merrick: [quest](https://www.wowhead.com/forever/quest=96138/merricks-bow), [starter](https://www.wowhead.com/forever/item=281142/merricks-bow), [NPC](https://www.wowhead.com/forever/npc=272273/lost-watcher).
- Silvia: [quest](https://www.wowhead.com/forever/quest=79363/silvias-sword), [starter](https://www.wowhead.com/forever/item=281145/silvias-sword), [NPC](https://www.wowhead.com/forever/npc=272284/lost-defender).

The item pages identify the corresponding spirit as the drop source. Quest descriptions identify the enemies and Sirra as the destination. These are firmer evidence than spawn anecdotes. Wowhead's zone list does not label these new spirits as Rare in the way it labels old silver-dragon rares; do not assume a specific rare-spawn timer from their names.

## Where to watch

These are **player-reported sightings**, not guaranteed positions or a verified patrol route. Use them as nearby scan areas rather than mandatory destination pins.

| Spirit | Reported areas | Relevant existing route |
|---|---|---|
| Lost Knight | Tranquil Gardens around 78,65–80,67; Raven Hill Cemetery around 22,43; also a Manor Mistmantle sighting | Level-24 Tranquil Gardens and Raven Hill; level-25 cemetery work; later Mistmantle visit. |
| Lost Stalker | Central/southern woods around 49–56,60–66; north/east woods around 67,33; several western sightings | Southern crossing after Tranquil Gardens, later Shadow Weaver/Dark Runner work and western travel. |
| Lost Watcher | Roads near the Rotting Orchard around 62,65; southwest crossroads around 36,63; reports elsewhere along roads | East-to-west southern travel and approach to Vul'Gol. |
| Lost Defender | Rotting Orchard around 63–64,70; Yorgen Farmstead around 50,75 | Level-24 Sven's Revenge stop at 49.9,77.8, and the later southern worgen/Defias circuit. |

Sources: [Lost Knight comments](https://www.wowhead.com/forever/npc=272291/lost-knight), [Lost Stalker comments](https://www.wowhead.com/forever/npc=272260/lost-stalker), [The Valor Family comments](https://www.wowhead.com/forever/quest=96139/the-valor-family), [Merrick's Bow comments](https://www.wowhead.com/forever/quest=96138/merricks-bow), [Lost Defender comments](https://www.wowhead.com/forever/fr/npc=272284/d%C3%A9fenseuse-perdue).

One Merrick comment mentions using a Night Watchman's Torch before encountering the ghost. It does not establish that the torch or nighttime is required. Do not route either as a prerequisite.

## Current trio coverage

Only Grant's Shield is explicitly authored. Ira, Merrick and Silvia have no custom trio quest actions.

- [Duskwood Return](../../Guides/Forever/Custom-Forever-22-Duskwood-Return.lua) accepts The Valor Family 96139 from Sirra, visits Tranquil Gardens, crosses south through Yorgen Farmstead, loots the Raven Hill Tome at 21.2,55.7 and visits the cemetery. It has two Grant acquisition opportunities and a mace objective. Its Raven Hill accept step still lacks an automatic escape when the starter is absent.
- [Deadmines](../../Guides/Forever/Custom-Forever-24-26-Deadmines.lua) returns to Sirra with the tome and can deliver an early-completed Grant quest.
- [Duskwood Third Pass](../../Guides/Forever/Custom-Forever-24-25-Duskwood-Third-Pass.lua) repeats Raven Hill work for Night Watch, Rot Blossoms and Sven's skeleton objectives. This is a good final planned mace-completion visit.
- [Darkshire, Eastvale & Tower Turn-ins](../../Guides/Forever/Custom-Forever-27-Darkshire-Eastvale-Tower-Turnins.lua) offers another Sirra stop, works Dark Runners, and visits Vul'Gol for Abercrombie's crate and Zzarc'Vul.
- [Wetlands Second Loop](../../Guides/Forever/Custom-Forever-27-28-Wetlands-Second-Loop.lua) includes the later Duskwood circuit after Stockades: Backus/Mistmantle, southern worgen, the Defias strongbox, western elites, and a combined Darkshire return.

## Recommended integration

### Acquisition: ongoing opportunities, not four scheduled hunts

Watch for all four spirits from the first Duskwood visit onward. Add encounters to existing travel/objective segments, especially the level-24 southern crossing. Kill together if encountered, have each player loot and use their own starter, and continue if absent. Do not rely on sharing a starter quest from one party member.

Keep the lore introduction 96139 and existing tome pickup/delivery. Do not make it a mandatory gate on spirit drops without evidence that it is required.

Implement item acceptance with a starter-item gate and already-accepted/turned-in handling. Keep nearby spirit checks bounded with a segment endpoint. A plain `.isQuestAvailable` plus `.accept` is insufficient when no starter drops. Optional acquisition does not mean an accepted quest's objective must be silently abandoned; acquired quests can be completed at their planned area.

Repeated acquisition reminders are an explicit exception to a one-pickup-source audit: they represent the same carried item and opportunistic world encounters. Prefer one maintained definition if factoring them into a shared module is worthwhile; do not duplicate independent versions of the quest logic across every pass.

### Completion and delivery schedule

| Quest | Recommended completion window | Delivery owner | Cost/constraint |
|---|---|---|---|
| Grant 79362 | Level-24 cemetery kills if acquired early; otherwise the level-25 Night Watch/Rot Blossom/Sven cemetery circuit | Sirra on the level-27 Darkshire arrival, after both cemetery opportunities | Best overlap. Remove the earlier Deadmines delivery if enforcing one authored delivery per quest. Retain the current acquisition opportunities with safe exits. |
| Ira 96137 | Add conditional Ravager objectives during southern crossings; finish at the level-27 central/southern woods visit if acquired | Sirra on the combined post-Stockades Darkshire return | **Does not overlap Lars's Wolves at Our Heels targets**: Starving/Rabid Dire Wolves are different enemies. Expect up to 17 extra kills, reduced only by deliberately overlapping incidental Ravager kills after accepting. |
| Merrick 96138 | Level-27 Vul'Gol visit alongside the crate and ogre-cave objectives | Sirra on the combined post-Stockades Darkshire return | Same area, but crate/Zzarc'Vul do not guarantee 8 Warriors and 4 Taskmasters. Add conditional kills while already there; up to 12 extra kills. |
| Silvia 79363 | Post-Stockades Addle's Stead visit for the Missing Diplomat strongbox | Sirra on that same circuit's final Darkshire return | Strong geographic fit; the strongbox does not require the full kill list. Track objective 1 and 2 dynamically; roughly 9 kills by the listed counters, pending live verification. |

This gives each quest one planned delivery owner and keeps every delivery at Sirra, at existing town visits. Ira/Merrick/Silvia can share one adjacent turn-in section with independent completion gates, so a missing or unfinished quest never suppresses another player's completed one.

There must be a late-acquisition policy: if a starter drops after its planned objective area has been passed, keep the quest for a later suitable visit rather than automatically returning across the zone. Grant found after the level-27 arrival and Merrick found after leaving Vul'Gol are examples. Initial implementation should name this limitation rather than claim all encounter timings are fully routed. A same-NPC recovery delivery can be added deliberately if the user values handling every late state over strict single authored ownership.

### Later investigation: investigate availability before making it required

[The Valor Family 98447](https://www.wowhead.com/forever/quest=98447/the-valor-family) asks for Raven Hill to be investigated after the ghosts have been put down. Wowhead comments associate the objective with Ol' Sandy near 17.4,54.0 and report being unable to obtain the quest even after all four spirit quests. Cassandra's identity and connection to Ol' Sandy remain speculation.

Do not add a mandatory trip, turn-in, or all-four prerequisite based on those comments. First check whether Sirra actually offers it after the four deliveries on the current build. If confirmed, a later existing Raven Hill visit is preferable to an immediate extra round trip. Preserve any weapons that the live quest requires rather than adding speculative cleanup instructions.

## Evidence limits before implementation

- Silvia's page contains leftover Horde/Shaman/Bath'rah metadata and contradictory objective prose. Grant's page also retains unrelated old text. The new item-drop relationships and Duskwood objective counters are stronger evidence than the contaminated class/faction fields. Do not introduce a Shaman-only selector or an Alterac trip.
- Spawn sightings do not establish spawn timers, a complete patrol path, or a torch requirement.
- Confirm per-player loot in the trio; an item page's observed 100% drop rate does not prove every party member receives it on every kill.
- No live game test was performed. This proposal changes no route files and adds no mandatory rare farming.
