# RestedXP Custom Guide Quick Reference

Condensed from the [RestedXP custom guides page](https://community.restedxp.com/custom-guides/) and its linked [command reference](https://docs.google.com/spreadsheets/d/1lbkJzhOq6VgE535J9-e7Wm2RGJQBJJLisoNFoYyAOeE/edit?gid=2110791261). A route step should eventually complete automatically; give each step a `.goto` where practical.

For patterns found in the installed route corpus and parser, see [EXISTING_GUIDE_RESEARCH.md](EXISTING_GUIDE_RESEARCH.md).

## Text and conditions

| Syntax | Purpose |
|---|---|
| `*Text` | Note shown in the step window, but not in the guide/map objective. |
| `"+Text"` | Objective text box. |
| `>> Text` | Default instruction text; may follow a command or stand alone. |
| `<< Class` / `<< Race` | Show only for that class or race. |
| `<< Class/Class` | Show for either class/race. |
| `<< !Class` | Exclude that class/race. |
| `<< tbc << wotlk` | Show only on the listed game versions. |

Conditions use `!` for NOT, spaces for AND, and `/` for OR. Precedence is NOT, AND, then OR.

## Navigation

| Syntax | Purpose |
|---|---|
| `.goto zone,x,y` | Map waypoint and navigation arrow. |
| `.goto zone,x,y,radius` | Completes when the player is within `radius` yards. |
| `.goto zone,x,y,radius,0` | Hidden proximity objective, useful for updating the waypoint. |
| `.goto zone,x,y,0` | Map waypoint without a navigation arrow. |
| `.goto zone,x,y,-1` | Select nearest point; use several coordinates in the step. |
| `.zone zoneName` | Completes upon entering the zone. |
| `.zoneskip zoneNameOrID` | Skip when already in the zone. Add `,1` to show only in that zone. |
| `.groundgoto` | Ground waypoint that disappears when flying is available. |
| `.line zone,x1,y1,x2,y2,...` | Draw connected map lines; negative x/y pairs create dashed segments. |
| `.loop minDist,zone,x1,y1,x2,y2,...` | Draw a loop; points count as visited within `minDist` yards. |

## Experience

| Syntax | Purpose |
|---|---|
| `.xp 10` | Grind to level 10. |
| `.xp 10+200` | Grind to level 10 plus 200 XP. |
| `.xp 10-300` | Grind until 300 XP short of level 10. |
| `.xp 10.5` | Grind to 50% through level 10. |
| `.xp 10.5,1` | Skip when already above 50% through level 10. |
| `.xp <10,1` | Complete when below level 10. |
| `.maxlevel X` | Skip above level X. |
| `#level N` | Show at level N or higher; use only with sticky steps. Prefer `.maxlevel` otherwise. |
| `#xprate <N` / `#xprate >N` | Show based on XP rate, useful for events or heirlooms. |

## Quests

| Syntax | Purpose |
|---|---|
| `.accept id,n,npcId` | Accept a quest. |
| `.complete id,objective` | Track a quest objective. |
| `.turnin id,n` | Turn in a quest; `n` selects the nth reward. |
| `.abandon id` | Abandon a quest. |
| `.collect itemId,amount,questId,skipIfTurnedIn` | Complete at the item count; optional quest handling can skip a turned-in quest. |
| `.collect itemId,amount,questId,objectiveBitMask,-1` | Track a specific collection objective. |
| `.isQuestComplete id` | Skip unless the quest is complete. |
| `.isQuestTurnedIn id` | Skip unless the quest was turned in. |
| `.isQuestAvailable id` | Skip unless the quest can be accepted. |
| `.isOnQuest id` | Skip unless the quest is in the log. A negative ID on another command applies this check, e.g. `.turnin -1234`. |
| `.daily id1,id2,...` | Complete after accepting at least one listed daily. |
| `.dailyturnin id1,id2,...` | Complete after turning in at least one listed daily. |
| `.reputation factionId,standing,value` | Complete at the required reputation. |
| `.unitscan npcId` | Scan for the specified NPC/enemy. |

## Items and money

| Syntax | Purpose |
|---|---|
| `.buy itemId,amount` | Buy an item from a vendor. |
| `.use itemId` | Create a clickable item objective. |
| `.bankwithdraw id1,id2,...` | Withdraw listed items. |
| `.bankdeposit id1,id2,...` | Deposit listed items. |
| `.money <0.01` / `.money >0.01` | Skip based on money; `0.01` is one silver. |
| `.destroy itemId` | Complete after destroying the item. |
| `.itemcount itemId,amount` | Skip without at least the specified count. |
| `.bronzetube` | Skip with a Bronze Tube or the relevant Duskwood quest complete. |

## NPC interactions

| Syntax | Purpose |
|---|---|
| `.trainer` | Complete upon talking to a class trainer. |
| `.train spellId` | Train a specific spell. |
| `.fly destination` | Use a flight master to fly to the destination. |
| `.fp` | Acquire a flight path. |
| `.stable npcId` | Complete upon talking to a stable master; ID is optional. |
| `.skipgossip` | Skip NPC dialogue. |
| `.home` / `.hs` | Set the hearthstone / cast the hearthstone. |
| `.vehicle id` | Complete when the vehicle UI appears. |
| `.emote EmoteToken,npcId` | Perform an emote at an NPC. |

## Other actions

| Syntax | Purpose |
|---|---|
| `.link url` | Add a clickable link. |
| `.deathskip` | Instruct a death skip; complete upon spirit resurrection. |
| `.skill Name,amount,skipStep` | Complete at or above the required skill level. |
| `.cooldown type,id,timeRemaining,updateOnlyOnce` | Track a cooldown. |
| `.timer seconds,text` | Attach a timer bar to the `.accept` or `.turnin` immediately above. |
| `.tame npcId` | Instruct a hunter to tame the specified creature. |

## Step flow and headers

| Syntax | Purpose |
|---|---|
| `#sticky` | Keep the step visible until it completes. |
| `#label Name` | Name a step for references. |
| `#completewith next` | Complete with the following step. |
| `#completewith Name` | Complete when the labeled step completes. |
| `#requires Name` | Show only after the labeled step completes. |
| `#scryer` / `#aldor` | Require Friendly reputation with that TBC faction. |
| `#phase1-4` / `#phase5` | Show during Vanilla phases 1–4 / phase 5 or later. |
| `#era` / `#som` | Show only on Era / Season of Mastery servers. |
| `#softcore` / `#hardcore` | Show only in the selected ruleset. |
