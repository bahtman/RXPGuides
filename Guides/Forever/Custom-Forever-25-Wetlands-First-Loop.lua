RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 5
#group Forever Trio Launch
#name 25 Wetlands First Loop
#displayname 25 Wetlands First Loop
#next 25-27 Redridge Return
<< Alliance (Warlock/Priest/Warrior)

-- Agreed Wetlands route, 2026-10-04. New beta NPC locations use text when unverified.

step
    .goto Wetlands,9.49,59.69
    >>Get the flight path. Keep your home in Lakeshire until the batch hearth at the end.
    .fp Menethil Harbor

step
    .goto Wetlands,10.585,60.592
    >>Deliver Sven's message to Glorin if carried.
    .isOnQuest 270
    .turnin 270 >> Turn in The Doomed Fleet

step
    .goto Wetlands,10.585,60.592
    >>Accept Lightforge Iron after the delivery; save the coast chain for the last visit.
    .accept 321 >> Accept Lightforge Iron

step
    .goto Wetlands,11.8,58.6
    >>Talk to Caitlin; deliver the Ashenvale breadcrumb if carried.
    .isOnQuest 95737
    .turnin 95737 >> Turn in Seeking Caitlin

step
    .goto Wetlands,11.8,58.6
    >>Accept Lost in the Thicket Things
    .accept 95647 >> Accept Lost in the Thicket Things

step
    .goto Wetlands,11.8,58.6
    >>Accept Alchemical Hazards
    .accept 98282 >> Accept Alchemical Hazards

step
    .goto Wetlands,8.509,55.697
    >>Accept Young Crocolisk Skins
    .accept 484 >> Accept Young Crocolisk Skins

step
    .goto Wetlands,20.37,45.21
    >>Kill young crocolisks and collect their skins before starting the main loop, then return to Halloran.
    .complete 484,1

step
    .goto Wetlands,8.509,55.697
    .turnin 484 >> Turn in Young Crocolisk Skins
    .accept 471 >> Accept Apprentice's Duties

step
    .goto Wetlands,8.359,58.526
    >>Accept Claws from the Deep
    .accept 279 >> Accept Claws from the Deep

step
    .goto Wetlands,10.89,59.66
    >>Accept The Third Fleet
    .accept 288 >> Accept The Third Fleet

step
    .goto Wetlands,10.89,59.66
    >>Accept The Greenwarden
    .accept 463 >> Accept The Greenwarden

step
    .goto Wetlands,11.458,52.163
    >>Accept In Search of The Excavation Team
    .accept 305 >> Accept In Search of The Excavation Team

step
    .goto Wetlands,10.69,60.95
    >>Buy a Flagon of Dwarven Honeymead from the innkeeper.
    .complete 288,1

step
    .goto Wetlands,10.89,59.66
    >>Turnin The Third Fleet
    .turnin 288 >> Turnin The Third Fleet

step
    .goto Wetlands,10.843,60.435
    .isOnQuest 942
    >>Deliver the Darkshore prospector report upstairs before accepting the Wetlands follow-up.
    .turnin 942 >> Turn in The Absent Minded Prospector

step
    .goto Wetlands,10.843,60.435
    >>If the Darkshore prospector delivery chain was completed, accept its Wetlands objectives upstairs.
    .isQuestAvailable 943
    .accept 943 >> Accept The Absent Minded Prospector

step
    >>Collect This Land Was Their Land in Menethil before departing. Its giver coordinates are not verified; use the quest link.
    .link https://www.wowhead.com/forever/quest=98230
    +Confirm this route task is complete

step
    .goto Wetlands,16.26,39.41
    >>Kill Bluegill Murlocs.
    .complete 279,1

step
    .goto Wetlands,16.26,39.41
    >>Kill Gobbler and loot his head.
    .complete 279,2

step
    .goto Wetlands,22.25,20.36
    >>Collect giant crocolisk skins for Apprentice's Duties before heading east.
    .complete 471,1

step
    >>Follow the road east past Whelgar to Howin Kindfeather; turn in This Land Was Their Land. Save his supply circuit for visit 2.
    .link https://www.wowhead.com/forever/quest=98230
    +Confirm this route task is complete

step
    .goto Wetlands,49.916,39.368
    >>Accept Daily Delivery
    .accept 469 >> Accept Daily Delivery

step
    .goto Wetlands,56.37,40.40
    >>Turnin The Greenwarden
    .turnin 463 >> Turnin The Greenwarden

step
    .goto Wetlands,56.37,40.40
    >>Accept Tramping Paws
    .accept 276 >> Accept Tramping Paws

step
    .goto Wetlands,62.34,69.34
    >>Kill Mosshide Gnolls.
    .complete 276,1

step
    .goto Wetlands,62.34,69.34
    >>Kill Mosshide Mongrels.
    .complete 276,2

step
    .goto Wetlands,51.914,62.692
    >>Kill Leech Stalkers near Thelgen Rock entrance for an Unruptured Stalker Gland.
    .complete 98282,1

step
    .goto Wetlands,56.37,40.40
    >>Turnin Tramping Paws
    .turnin 276 >> Turnin Tramping Paws

step
    .goto Wetlands,56.37,40.40
    >>Accept Fire Taboo
    .accept 277 >> Accept Fire Taboo



step
    >>On the way to Whelgar, kill suitable Mosshide gnolls for Fire Taboo when convenient. Do not farm to finish it or return to Greenwarden; complete and turn in during loop 2.
    #completewith ExcavationArrival
    .complete 277,1

step
    .goto Wetlands,38.17,50.88,30
    >>Travel to Whelgar's camp.
    #label ExcavationArrival

step
    .goto Wetlands,38.909,52.340
    >>Turnin In Search of The Excavation Team
    .turnin 305 >> Turnin In Search of The Excavation Team

step
    .goto Wetlands,38.909,52.340
    >>Accept In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team

step
    .goto Wetlands,38.17,50.88
    >>Accept Ormer's Revenge
    .accept 294 >> Accept Ormer's Revenge

step
    .goto Wetlands,38.858,52.208
    >>If the Darkshore prospector chain was completed, accept the Wetlands follow-up from Flagongut in Menethil on arrival/return. Complete it alongside the raptors when carried.
    .isOnQuest 943
    .complete 943,2

step
    .goto Wetlands,22.8,50.6
    >>Kill Mottled Raptors and Mottled Screamers.
    .complete 294,1

step
    .goto Wetlands,22.8,50.6
    >>Finish the second raptor kill objective.
    .complete 294,2

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 294 >> Turnin Ormer's Revenge

step
    .goto Wetlands,38.17,50.88
    >>Accept Ormer's Revenge
    .accept 295 >> Accept Ormer's Revenge

step
    .goto Wetlands,38.809,52.386
    >>Accept Uncovering the Past
    .accept 299 >> Accept Uncovering the Past

step
    >>Loot relic containers and loose soil while clearing Ormer's raptors.
    #completewith ExcavationDone
    .complete 299,1
    .complete 299,2
    .complete 299,3
    .complete 299,4

step
    .goto Wetlands,34.33,47.81
    >>Kill Mottled Scytheclaws and Mottled Razormaws.
    .complete 295,1

step
    .goto Wetlands,34.33,47.81
    >>Finish the second raptor kill objective.
    .complete 295,2

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 295 >> Turnin Ormer's Revenge

step
    .goto Wetlands,38.17,50.88
    >>Accept Ormer's Revenge
    .accept 296 >> Accept Ormer's Revenge

step
    .goto Wetlands,33.25,51.50
    >>Kill Sarltooth and loot his talon.
    .complete 296,1

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 296 >> Turnin Ormer's Revenge

step
    .goto Wetlands,34.32,51.79
    >>Finish all four excavation fragments.
    #label ExcavationDone
    .complete 299,1
    .complete 299,2
    .complete 299,3
    .complete 299,4

step
    .goto Wetlands,38.809,52.386
    >>Turnin Uncovering the Past
    .turnin 299 >> Turnin Uncovering the Past

step
    .goto Wetlands,38.809,52.386
    >>Accept the Goaz Warder follow-up; reserve the elite fight for the last visit.
    .accept 98216 >> Accept Understanding Our Present

step
    >>If carrying the prospector quest, finish the Stone of Relu from raptors before leaving.
    .isOnQuest 943
    .complete 943,1

step
    .goto Wetlands,11.458,52.163
    >>Turnin In Search of The Excavation Team
    .turnin 306 >> Turnin In Search of The Excavation Team

step
    .goto Wetlands,8.359,58.526
    >>Turnin Claws from the Deep
    .turnin 279 >> Turnin Claws from the Deep

step
    .goto Wetlands,8.509,55.697
    >>Turnin Daily Delivery
    .turnin 469 >> Turnin Daily Delivery

step
    .goto Wetlands,8.509,55.697
    .turnin 471 >> Turn in Apprentice's Duties
    .accept 98072 >> Accept Crocs of the Sky
    >>Carry Crocs of the Sky into the second loop; kill the eastern whelps while there.

step
    .goto Wetlands,11.8,58.6
    >>Turnin Alchemical Hazards
    .turnin 98282 >> Turnin Alchemical Hazards

step
    .goto Wetlands,8.359,58.526
    >>Accept Reclaiming Goods
    .accept 281 >> Accept Reclaiming Goods

step
    .goto Wetlands,8.509,55.697
    >>Accept Highland Hides when offered after Halloran's early turn-ins. If unavailable, check again during the final dungeon preparation.
    .isQuestAvailable 98815
    .accept 98815 >> Accept Highland Hides

step
    .goto Wetlands,10.843,60.435
    >>Turn in the completed prospector quest when carried.
    .isQuestComplete 943
    .turnin 943 >> Turn in The Absent Minded Prospector
step
    .goto Wetlands,10.69,60.95
    >>Talk to |cRXP_FRIENDLY_Innkeeper Helbrek|r with your Hearthstone still bound to Lakeshire. Wait for everyone's Hearthstone to be ready
    >>Enable RXP Hearthstone batching. Open the "Make this inn your home" confirmation and leave it open, then use Hearthstone. RXP confirms the new Menethil bind as the cast finishes; do not confirm it early
    .bindlocation 69,1
    .hsbatching >> Batch hearth to Lakeshire while setting your new home to Menethil Harbor
    .target Innkeeper Helbrek

step
    .goto Redridge Mountains,27.01,44.82,60
    >>Regroup in Lakeshire. Verify that all three arrived in Redridge with their new Hearthstone home in Menethil Harbor before starting the level-26 circuit
    +Confirm the party is in Lakeshire and bound to Menethil Harbor

]])
