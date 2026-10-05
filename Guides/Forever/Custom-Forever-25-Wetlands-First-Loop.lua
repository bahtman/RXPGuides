RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 14
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
    .target Shellei Brondir

step
    .goto Wetlands,10.585,60.592
    >>Deliver Sven's message to Glorin if carried.
    .isOnQuest 270
    .turnin 270 >> Turn in The Doomed Fleet
    .target Glorin Steelbrow

step
    .goto Wetlands,10.585,60.592
    >>Accept Lightforge Iron after the delivery; save the coast chain for the last visit.
    .accept 321 >> Accept Lightforge Iron
    .target Glorin Steelbrow

step
    .goto Wetlands,11.8,58.6
    >>Talk to Caitlin; deliver the Ashenvale breadcrumb if carried.
    .isOnQuest 95737
    .turnin 95737 >> Turn in Seeking Caitlin
    .target Caitlin

step
    .goto Wetlands,11.8,58.6
    >>Accept Lost in the Thicket Things
    .accept 95647 >> Accept Lost in the Thicket Things
    >>Accept Alchemical Hazards
    .accept 98282 >> Accept Alchemical Hazards
    .target Caitlin

step
    .goto Wetlands,8.509,55.697
    .accept 484 >> Accept Young Crocolisk Skins
    .target James Halloran




step
    .goto Wetlands,8.359,58.526
    .accept 279 >> Accept Claws from the Deep
    .target Karl Boran

step
    .goto Wetlands,10.89,59.66
    >>Accept The Cursed Crew before heading back to the murlocs.
    .accept 289 >> Accept The Cursed Crew
    .target First Mate Fitzsimmons

step
    .goto Wetlands,10.89,59.66
    >>Accept The Third Fleet
    .accept 288 >> Accept The Third Fleet
    >>Accept The Greenwarden
    .accept 463 >> Accept The Greenwarden
    .target First Mate Fitzsimmons

step
    .goto Wetlands,9.861,57.486
    .accept 464 >> Accept War Banners
    .accept 98221 >> Accept From the Ashes
    .target Captain Stoutfist

step
    .goto Wetlands,11.458,52.163
    >>Accept In Search of The Excavation Team
    .accept 305 >> Accept In Search of The Excavation Team
    .target Tarrel Rockweaver

step
    .goto Wetlands,10.69,60.95
    >>Buy a Flagon of Dwarven Honeymead from the innkeeper.
    .complete 288,1
    .target Innkeeper Helbrek

step
    .goto Wetlands,10.89,59.66
    >>Turnin The Third Fleet
    .turnin 288 >> Turnin The Third Fleet
    .target First Mate Fitzsimmons

step
    .goto Wetlands,10.843,60.435
    .isOnQuest 942
    >>Deliver the Darkshore prospector report upstairs before accepting the Wetlands follow-up.
    .turnin 942 >> Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut

step
    .goto Wetlands,10.843,60.435
    >>If the Darkshore prospector delivery chain was completed, accept its Wetlands objectives upstairs.
    .isQuestAvailable 943
    .accept 943 >> Accept The Absent Minded Prospector
    .target Archaeologist Flagongut

    
step
    .goto Wetlands,20.37,45.21
    >>Kill young crocolisks and collect their skins before starting the main loop, then return to Halloran.
    .complete 484,1
    .mob Young Wetlands Crocolisk
    
step
    .goto Wetlands,16.26,39.41
    >>Finish Claws from the Deep and kill the murlocs needed for The Cursed Crew follow-up chain.
    .complete 279,1
    >>Kill Gobbler and loot his head.
    .complete 279,2
    .mob Bluegill Murloc
    .mob Gobbler
step
    .goto Wetlands,8.509,55.697
    .turnin 484 >> Turn in Young Crocolisk Skins
    .accept 471 >> Accept Apprentice's Duties
    .target James Halloran

step
    .goto Wetlands,8.359,58.526
    >>Turn in the shore quests and start Reclaiming Goods before continuing the first inland loop.
    .turnin 279 >> Turnin Claws from the Deep
    .accept 281 >> Accept Reclaiming Goods
    .target Karl Boran

step
    .goto Wetlands,13.513,41.384
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 281  >> Turnin Reclaiming Goods
    .accept 284 >> Accept The Search Continues
    .target Damaged Crate

step
    .goto Wetlands,13.608,38.214
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 284
    .accept 285 >> Accept Search More Hovels
    .target Sealed Barrel

step
    .goto Wetlands,13.945,34.809
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 285
    .accept 286 >> Accept Return the Statuette
    .target Half-buried Barrel
step
    .goto Wetlands,22.25,20.36
    >>Collect giant crocolisk skins for Apprentice's Duties before heading east.
    .complete 471,1
    .mob Giant Wetlands Crocolisk

step
    .goto Wetlands,15,24
    >>Complete The Cursed Crew while traveling east from the murloc shore.
    .complete 289,1
    .complete 289,2
    .complete 289,3
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig



step
    .goto Wetlands,8.509,55.697
    >>Turn in Apprentice's Duties and pick up Crocs of the Sky before the eastern Green Belt pass.
    .turnin 471 >> Turn in Apprentice's Duties
    .accept 98072 >> Accept Crocs of the Sky
    .target James Halloran

step
    .goto Wetlands,10.89,59.66
    >>Turn in The Cursed Crew during this Menethil return and accept its follow-up.
    .turnin 289 >> Turnin The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons

step
    .goto Wetlands,56.37,40.40
    >>Turnin The Greenwarden
    .turnin 463 >> Turnin The Greenwarden
    >>Accept Tramping Paws
    .accept 276 >> Accept Tramping Paws
    .target Rethiel the Greenwarden

step
    .goto Wetlands,62.34,69.34
    >>Kill Mosshide Gnolls.
    .complete 276,1
    >>Kill Mosshide Mongrels.
    .complete 276,2
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel

step
    .goto Wetlands,51.914,62.692
    >>Kill Leech Stalkers near Thelgen Rock entrance for an Unruptured Stalker Gland.
    .complete 98282,1
    .mob Leech Stalker

step
    .goto Wetlands,56.37,40.40
    >>Turnin Tramping Paws
    .turnin 276 >> Turnin Tramping Paws
    >>Accept Fire Taboo
    .accept 277 >> Accept Fire Taboo
    .target Rethiel the Greenwarden

step
    >>On the way to Whelgar, kill suitable Mosshide gnolls for Fire Taboo when convenient. Do not farm to finish it or return to Greenwarden; complete and turn in during loop 2.
    #completewith ExcavationArrival
    .complete 277,1
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute

step
    .goto Wetlands,45.222,44.251
    >>After returning from the eastern objectives, kill Dragonmaw orcs in Angerfang Encampment and loot their War Banners.
    .complete 464,1
    >>Destroy all four sets of Attack Plans in Angerfang Encampment.
    .complete 98221,1
    .complete 98221,2
    .complete 98221,3
    .complete 98221,4
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Shadowwarder

step
    .goto Wetlands,64,48
    >>Finish Crocs of the Sky by killing crimson whelps during the eastern pass.
    .complete 98072,1
    .mob Crimson Whelp

step
    .goto Wetlands,38.17,50.88,30
    >>Travel to Whelgar's camp.
    #label ExcavationArrival

step
    .goto Wetlands,38.909,52.340
    >>Turnin In Search of The Excavation Team
    .turnin 305 >> Turnin In Search of The Excavation Team
    >>Accept In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team
    .target Merrin Rockweaver

step
    .goto Wetlands,38.17,50.88
    >>Accept Ormer's Revenge
    .accept 294 >> Accept Ormer's Revenge
    .target Ormer Ironbraid

step
    .goto Wetlands,38.858,52.208
    >>If the Darkshore prospector chain was completed, accept the Wetlands follow-up from Flagongut in Menethil on arrival/return. Complete it alongside the raptors when carried.
    .isOnQuest 943
    .complete 943,2
    .target Prospector Whelgar

step
    .goto Wetlands,22.8,50.6
    >>Kill Mottled Raptors and Mottled Screechers.
    .complete 294,1
    .complete 294,2
    .mob Mottled Raptor
    .mob Mottled Screecher

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 294 >> Turnin Ormer's Revenge
    >>Accept Ormer's Revenge
    .accept 295 >> Accept Ormer's Revenge
    .target Ormer Ironbraid

step
    .goto Wetlands,38.809,52.386
    >>Accept Uncovering the Past
    .accept 299 >> Accept Uncovering the Past
    .target Prospector Whelgar

step
    >>Loot relic containers and loose soil while clearing Ormer's raptors.
    #completewith next
    .complete 299,1
    .complete 299,2
    .complete 299,3
    .complete 299,4

step
    .goto Wetlands,34.33,47.81
    >>Kill Mottled Scytheclaws and Mottled Razormaws.
    .complete 295,1
    .complete 295,2
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw

step
    >>Loot relic containers and loose soil while clearing Ormer's raptors.
    #completewith next
    .complete 299,1
    .complete 299,2
    .complete 299,3
    .complete 299,4
step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 295 >> Turnin Ormer's Revenge
    >>Accept Ormer's Revenge
    .accept 296 >> Accept Ormer's Revenge
    .target Ormer Ironbraid

step
    .goto Wetlands,38.809,52.386
    >>Turnin Uncovering the Past
    .turnin 299 >> Turnin Uncovering the Past
    >>Accept Understanding Our Present; complete it just after Sarltooth.
    .accept 98216 >> Accept Understanding Our Present
    .target Prospector Whelgar

step
    .goto Wetlands,33.25,51.50
    >>Kill Sarltooth and loot his talon.
    .complete 296,1
    .mob Sarltooth

step
    >>Complete Understanding Our Present: use the provided Goaz Stone on the Goaz Warder, defeat it and loot its keystone. Exact beta encounter waypoint is unverified.
    .complete 98216,1

step
    .goto Wetlands,38.809,52.386
    .turnin 98216 >> Turnin Understanding Our Present
    .accept 98310 >> Accept Gleaning Our Future
    >>Keep Gleaning Our Future for the second Wetlands loop.
    .target Prospector Whelgar

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 296 >> Turnin Ormer's Revenge
    .target Ormer Ironbraid



step
    >>If carrying the prospector quest, finish the Stone of Relu from raptors before leaving.
    .isOnQuest 943
    .complete 943,1
    .mob Mottled Raptor
    .mob Mottled Screecher
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw

step
    .goto Wetlands,11.458,52.163
    >>Turnin In Search of The Excavation Team
    .turnin 306 >> Turnin In Search of The Excavation Team
    .target Tarrel Rockweaver

step
    .goto Wetlands,9.861,57.486
    >>On the final Menethil return, turn in both quests to unlock This Land Was Their Land.
    .turnin 464 >> Turn in War Banners
    .turnin 98221 >> Turn in From the Ashes
    .target Captain Stoutfist

step
    >>Collect This Land Was Their Land now; keep it for the Howin visit during loop 2. Its giver coordinates are not verified; use the quest link.
    .link https://www.wowhead.com/forever/quest=98230 >> View quest details on Wowhead
    .accept 98230 >> Accept This Land Was Their Land


step
    .goto Wetlands,11.8,58.6
    >>Turnin Alchemical Hazards
    .turnin 98282 >> Turnin Alchemical Hazards
    .target Caitlin


step
    .goto Wetlands,8.509,55.697
    >>Accept Highland Hides when offered after Halloran's early turn-ins. If unavailable, check again during the final dungeon preparation.
    .isQuestAvailable 98815
    .accept 98815 >> Accept Highland Hides
    .target James Halloran

step
    .goto Wetlands,10.843,60.435
    >>Turn in the completed prospector quest when carried.
    .isQuestComplete 943
    .turnin 943 >> Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut

step
    .goto Wetlands,10.69,60.95
    >>Talk to |cRXP_FRIENDLY_Innkeeper Helbrek|r with your Hearthstone still bound to Lakeshire. Wait for everyone's Hearthstone to be ready
    >>Enable RXP Hearthstone batching. Open the "Make this inn your home" confirmation and leave it open, then use Hearthstone. RXP confirms the new Menethil bind as the cast finishes; do not confirm it early
    .hs >> Batch hearth to Lakeshire while setting your new home to Menethil Harbor
    .target Innkeeper Helbrek

]])
