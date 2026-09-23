# RestedXP Existing-Guide Research

This is a practical authoring companion to [CUSTOM_GUIDE_REFERENCE.md](CUSTOM_GUIDE_REFERENCE.md). It is based on the installed RestedXP parser and guide corpus, with emphasis on the Mists Classic manifest used by this addon build.

## Scope

- The addon contains 243 `.lua` guide files across Classic, TBC, Cataclysm, Mists, retail, daily, farming, and survival content.
- The Mists manifest loads 39 files containing about 345 registered guides across 28 guide groups.
- The most common Mists-route primitives are `.goto`, `.target`, `.complete`, `.turnin`, `.mob`, `.accept`, `#completewith`, `.isOnQuest`, `.waypoint`, `#loop`, `#label`, `.use`, and `#optional`.
- `Guides/mop/Custom.lua` is the clearest local model for an Alliance leveling route; the Cataclysm zone files supply most of the 1–25 routes loaded for Mists.

Counts include conditional and alternate versions, so they describe authoring coverage rather than the number visible to one character.

## Best local guides to study

| File | Best source for |
|---|---|
| [`Guides/mop/Custom.lua`](Guides/mop/Custom.lua) | The current MoP Alliance 25–80 route style: overlapping objectives, partial kills, equipment checks, loops, labels, and optional turn-ins. |
| [`Guides/mop/N-Pandaren_The Wandering Isle.lua`](Guides/mop/N-Pandaren_The%20Wandering%20Isle.lua) | Class-conditional steps, equipped-item objectives, vehicles, spell use, and a self-contained starting-zone route. |
| [`Guides/cata/A-01-10_ElwynnForest.lua`](Guides/cata/A-01-10_ElwynnForest.lua) | A mature Alliance questing route with loops, grouped target lists, and Mists-specific condition branches. |
| [`Guides/cata/H-Cataclysm-01-10 Durotar.lua`](Guides/cata/H-Cataclysm-01-10%20Durotar.lua) | Horde starting-zone structure and quest-cycle pacing. |
| [`Guides/Dailies/Cataclysm/Molten Front.lua`](Guides/Dailies/Cataclysm/Molten%20Front.lua) | Daily quest alternatives, conditional availability, and repeatable-route organization. |
| [`Guides/farmguides.lua`](Guides/farmguides.lua) | Hidden steps and reusable farming guide registration. |

For a new normal leveling route, copy conventions from `Custom.lua` and the appropriate faction starting-zone file. Treat old Classic/Forever files as idea sources only because some of their commands and game assumptions differ from Mists.

## Minimal guide structure

```lua
RXPGuides.RegisterGuide([[
#version 1
#group My Routes
#mop
#name 20-25 Example Zone
#displayname 20-25 Example Zone
#next 25-30 Next Zone
<< Alliance

step
    .goto 123,45.67,89.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Example NPC|r
    .accept 12345 >>Accept Example Quest
    .target Example NPC
]])
```

Core guide headers:

| Header | Meaning |
|---|---|
| `#version N` | Revision used when duplicate guide keys exist. Increase it when replacing an imported copy. |
| `#group Name` | Top-level guide menu group. Prefixing a group with `+` marks a farming-style group. |
| `#subgroup Name` | Optional submenu/category. |
| `#name Name` | Required internal guide name; group + subgroup + name identify the guide. |
| `#displayname Name` | Optional user-facing name. |
| `#next Name` | Guide to load next. A semicolon-separated list can supply faction/route alternatives. |
| `#mop`, `#cata`, etc. | Game-version compatibility. This build recognizes game tags before loading the guide. |
| `#defaultfor condition` | Makes the guide preferred for characters matching the condition. |
| `#title Text` | Overrides the window title. |

A standalone `<< condition` before the first `step` filters the entire guide. A condition on a `step`, command, or text line filters only that entry.

## How steps really behave

Each `step` is a collection of objectives. It normally advances when all non-text objectives complete. Therefore:

- Give every normal step at least one measurable completion condition: quest state, objective progress, item count, zone/subzone, proximity, spell cast, aura, equipment, or explicit flow control.
- Plain `>>` and `*` text does not complete a step.
- A step with no parsed objectives becomes optional automatically.
- `#completewith` also makes its step sticky internally.
- Use `#optional` for work that may be skipped; combine it with `#completewith label` when it should remain visible during a route segment.
- Use `#hidewindow` for invisible bookkeeping or skip logic, not ordinary player instructions.

## High-value patterns from shipped routes

### 1. Safe optional turn-ins

A negative quest ID on `.turnin` means “turn this in if the player has it; otherwise complete/skip the objective.”

```text
.turnin -26838 >>Turn in Rebels Without a Clue
```

This is useful when earlier route variants may or may not have accepted the quest. A positive reward index on a negative turn-in also requires the quest to be complete before attempting it.

### 2. Multiple actions in one step

Commands can share one step. Prefix later `.target`, `.mob`, or `.unitscan` values with `+` to attach them to the previous objective instead of replacing its targeting context.

```text
>>Talk to Kaleb and Nimetz
.accept 26740 >>Accept Krazek's Cookery
.target +Corporal Kaleb
.goto 50,47.10,10.70
.accept 26732 >>Accept Bad Medicine
.target +Brother Nimetz
.goto 50,47.25,11.10
```

Use unprefixed `.target Name` for a single objective. These commands may also take semicolon-separated names or NPC IDs; `Name::npcId` preserves a readable English name with an ID fallback.

### 3. Partial quest-objective gates

`.complete questId,objective,max` completes at a chosen partial count instead of the quest's full requirement.

```text
.complete 190,1,5
```

This supports route splitting such as “kill five now, finish the rest later.” Without `max`, the full objective is required.

### 4. Travel breadcrumbs

Shipped routes chain hidden proximity points before the visible destination:

```text
#completewith next
.goto 50,47.74,12.69,30,0
.goto 50,47.87,11.86,60 >>Travel to the Rebel Camp
.subzoneskip 99
```

The `radius,0` form silently advances the arrow. The final point supplies the visible instruction and completion radius. `#completewith next` prevents a pure-travel step from lingering.

### 5. Farming loops

Use `#loop` with several `.goto` points for patrol or respawn circuits. Existing routes commonly give intermediate points a radius and make the last coordinate a zero-radius map point.

```text
step
#loop
    .goto 50,45.97,20.58,40,0
    .goto 50,43.88,18.04,40,0
    .goto 50,41.96,17.77,0
    >>Kill the required enemies
    .complete 185,1
    .mob Young Stranglethorn Tiger
```

There is also a `.loop minDist,zone,x1,y1,...` drawing command. `#loop` is the common step-level route behavior; `.loop` builds a connected map loop.

### 6. Sticky side objectives

Labels make long-lived objectives predictable:

```text
step
#sticky
#label CollectSupplies
    >>Collect supplies while following the main route
    .collect 12345,8

step
#completewith CollectSupplies
    >>Do another task along the way
    .complete 23456,1
```

Useful combinations:

- `#label Name`: reference point.
- `#completewith next`: finish with the following step.
- `#completewith Name`: finish with a labeled step.
- `#requires Name`: hide until the labeled step completes.
- `#optional`: player may ignore it.

Labels are local to the processed guide.

### 7. Reusing route fragments

`#include` can insert another guide or only a labeled range:

```text
step
#include Shared Guide Name

step
#include Other Group\Shared Guide@StartLabel-EndLabel
```

Use includes for repeated travel, capital-city chores, or shared faction-neutral sequences. The parser prevents direct recursive inclusion. A range begins/ends on matching labels (or internal step IDs).

### 8. Silent eligibility gates

These commands are widely used to skip irrelevant steps without displaying a checkbox:

| Command | Step remains relevant when… |
|---|---|
| `.isOnQuest id1,id2` | At least one listed quest is in the log. |
| `.isNotOnQuest id` | The quest is not in the log. |
| `.isQuestComplete id` | The quest is complete. |
| `.isQuestNotComplete id` | The quest is not complete. |
| `.isQuestTurnedIn id1,id2` | At least one listed quest was turned in. Add `account` for account-wide state where supported. |
| `.isQuestAvailable id` | The quest has not already been turned in. |
| `.zoneskip zoneOrId` | The player is not already in the zone. `+` separates alternate zones; `,1` reverses the test. |
| `.subzoneskip areaId` | The player is not already in the subzone; `,1` reverses it. |
| `.maxlevel N` | Player is not above N. |
| `.itemcount id,N` | Player has enough of the item. |
| `.itemStat slot,stat,comparison` | Equipped item passes the comparison. |

These operate by auto-skipping the step, so avoid contradictory gates in the same step.

### 9. Conditions are more capable than the public table suggests

`<<` conditions can test class, race, faction, game version, locale, gender, and minimum character level. Supported aliases include `DK` for Death Knight and `Undead` for Scourge.

```text
step << Alliance !Druid
.accept 12345 << Warrior/Paladin
>>Only shown at level 30+ << 30
>>Male-only text << Male
```

Rules:

- `/` means OR.
- A space means AND.
- `!` negates the next term.
- Parentheses are supported.
- Numeric terms mean “player level is at least this number.”

Keep conditions simple even though the parser permits nesting; complex expressions are hard to review in a route file.

### 10. Objective helpers

These are common in existing Mists-loaded routes but absent from the public quick table:

| Syntax | Use |
|---|---|
| `.target name` | Add an NPC target button/context to the current objective. |
| `.mob name` | Add enemy targeting context. |
| `.unitscan nameOrId` | Scan for a rare or required unit. |
| `.cast spellId` | Complete when the player successfully casts the spell. Multiple IDs are allowed. |
| `.usespell spellId` | Alias/variant for spell-use tracking. |
| `.aura spellId,duration,target` | Gate on an aura; negative IDs or `<` conditions reverse the check. |
| `.equip slot,itemId` | Complete when an item (or any item if omitted) is equipped in the slot. Negative slot reverses the test. |
| `.vehicle id` | Complete when the vehicle UI appears. |
| `.exitvehicle` | Complete after leaving a vehicle. |
| `.subzone areaId` | Complete upon entering the named area ID. |
| `.bindlocation location` | Complete when the hearthstone is bound there. |
| `.openmap mapId` | Complete when the specified map opens. |
| `.questcount N` | Gate on quest-log count. |
| `.mountcount range,comparison` | Gate on collected mount count. |

### 11. Quest and gossip details

- `.accept id,1` disables automatic acceptance for that quest.
- `.turnin id,rewardIndex` selects a reward; flag `1` disables automatic turn-in.
- `.daily` / `.dailyturnin` accept lists and complete after any listed quest is accepted/turned in.
- `.acceptmultiple` / `.turninmultiple` are aliases for those list forms.
- `.gossipoption gossipOptionId` selects a specific gossip choice and completes after it is chosen.
- `.skipgossip` skips ordinary dialogue; `.skipgossipid npcId` scopes this behavior to an NPC.
- `.convertquest sourceId,destinationId` maps faction or version variants to one logical quest.
- `.mirrorquest sourceId,id1,id2,...` relates multiple quest versions.

### 12. Rich guide text

Existing routes consistently use WoW inline markup:

```text
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_NPC Name|r
>>Kill |cRXP_ENEMY_Enemy Name|r. Loot it for |cRXP_LOOT_Item Name|r
>>Click the |cRXP_PICK_Object Name|r
>>|cRXP_BUY_Buy an item|r
>>|cRXP_WARN_Do not leave yet|r
```

Useful color prefixes are `RXP_FRIENDLY`, `RXP_ENEMY`, `RXP_LOOT`, `RXP_PICK`, `RXP_BUY`, and `RXP_WARN`. Always close a color with `|r`. `|TtexturePath:size|t` embeds an icon.

`#arrowtext Text\nSecond line` overrides the navigation-arrow text where supported.

## Less-common supported commands

These appear in shipped files and may be useful for specialized routes:

| Area | Commands |
|---|---|
| Travel | `.waypoint`, `.wpradius`, `.flygoto`, `.noflyable`, `.flyable`, `.pin`, `.line`, `.openmap` |
| Character | `.talent`, `.skill`, `.train`, `.trainer`, `.cooldown`, `.aura`, `.equip`, `.itemStat`, `.reputation` |
| Items | `.collectmultiple`, `.questitemcount`, `.collectcurrency`, `.bankdeposit`, `.bankwithdraw`, `.destroy`, `.buy`, `.use` |
| Interaction | `.gossip`, `.gossipoption`, `.emote`, `.macro`, `.logout`, `.countdown`, `.timer` |
| Route choice | `.group`, `.solo`, `.dungeon`, `.profession`, `.pvp`, `.pve`, `.skipOnQuest`, `.skipto` |
| Achievements/collections | `.achievement`, `.achievementComplete`, `.achievementIncomplete`, `.collectmount`, `.collectpet`, `.collecttoy` |

Some commands are expansion-specific or depend on APIs not present in every client. Prefer commands already used by a route loaded through `GuideList-mop.xml`.

## Common failure modes

1. **A step never completes.** It contains only text, targets, or map points without a completion radius. Add a real objective or intentional `#completewith` relationship.
2. **A sticky step never disappears.** Every sticky needs an objective that can finish or a valid `#completewith` endpoint.
3. **A label reference fails.** Labels are case-sensitive strings and must exist in the processed guide after conditions/includes are applied.
4. **The wrong expansion loads.** Add `#mop` and use a guide-level faction condition. Shared Cataclysm/Mists routes in this build commonly declare both `#cata` and `#mop`.
5. **A coordinate uses the wrong map.** Prefer numeric map IDs for ambiguous or renamed zones; zone names are resolved through the current client database.
6. **A helper attaches to the wrong objective.** `.target`, `.mob`, `.timer`, and other helpers can depend on the preceding objective. Keep related lines adjacent.
7. **An optional chain lingers.** Pair `#optional` with `#completewith` or a concrete skip/completion gate.
8. **Quest automation behaves unexpectedly.** Use positive IDs for required actions, negative `.turnin` IDs for optional turn-ins, and flags only when manual interaction is intended.
9. **A copied command parses but does nothing.** Step headers accept arbitrary `#key value` fields, but only fields consumed by the installed step logic have behavior. Copy known headers, not typos found in old routes.

## Recommended route-writing workflow

1. Start with the minimal header and one short zone segment.
2. Build each quest cycle as accept → travel/objectives → turn-in.
3. Add `.target`/`.mob` helpers and rich text after completion logic works.
4. Add `#label`, `#completewith`, and `#optional` only where objectives overlap.
5. Add class/faction/version conditions last, then test both matching and excluded characters.
6. Reload the UI and walk the route in order; also test starting midway with quests already accepted, completed, or turned in.
7. Test death, full bags, missing optional quests, already-known flight paths, and entering the zone from an unexpected direction.

The best next artifact for a new route is a small skeleton file with the final guide headers, zone/map IDs, and quest IDs. That gives us something the addon can parse and lets us validate route flow before writing hundreds of steps.
