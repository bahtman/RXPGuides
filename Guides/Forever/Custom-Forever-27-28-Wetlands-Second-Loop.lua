RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 21
#group Forever Trio Launch
#name 27-28 Wetlands Second Loop
#displayname Wetlands Second Loop, Dun Modr & Stockades
#next 30 Wetlands Final Loop & Excavation Site
<< Alliance (Warlock/Priest/Warrior)

-- Agreed Wetlands route, 2026-10-04. New beta NPC locations use text when unverified.

step
    .goto Wetlands,10.69,60.95,60
    >>Return to Menethil after the first Wetlands loop, level-26 Redridge circuit and Darkshire visit. Keep the Menethil bind; Excavation Site is reserved for the last Wetlands visit. This circuit includes Dun Modr before returning to Menethil, then Stockades. Start late at 29 or early at 30 if needed for the elites; finish all Stockades turn-ins before 31.

step
    .goto Wetlands,10.89,59.66
    >>Accept The Cursed Crew
    .accept 289 >> Accept The Cursed Crew
    .target First Mate Fitzsimmons

step
    .goto Wetlands,11.796,57.991
    >>Accept Digging Through the Ooze
    .accept 470 >> Accept Digging Through the Ooze
    .target Sida

step
    .goto Wetlands,10.84,55.89
    >>Accept Fall of Dun Modr
    .accept 472 >> Accept Fall of Dun Modr
    .target Harlo Barnaby

step
    .goto Wetlands,13.513,41.384
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 281
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
    .goto Wetlands,15,24
    >>Kill Cursed Sailors, Marines and First Mate Snellig; loot his snuffbox.
    .complete 289,1
    .complete 289,2
    .complete 289,3
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig

step
    .goto Wetlands,44.25,25.61
    >>Kill oozes for Sida's Bag.
    .complete 470,1
    .mob Black Ooze
    .mob Crimson Ooze
    .mob Monstrous Ooze

step
    >>After killing the oozes, continue north to Dun Modr while still out on the circuit. Do not return to Menethil yet. Clear the elite quests with the trio, then continue to Howin and the remaining inland objectives before the combined Menethil turn-ins and flight to Stockades.
    .goto Wetlands,49.8,18.2,60

step
    .goto Wetlands,49.8,18.2
    >>Turnin Fall of Dun Modr
    .turnin 472 >> Turnin Fall of Dun Modr
    .target Longbraid the Grim

step
    .goto Wetlands,49.6,18.2
    >>Accept The Dark Iron War
    .accept 303 >> Accept The Dark Iron War
    .target Motley Garmason

step
    .goto Wetlands,49.8,18.2
    >>Accept A Grim Task
    .accept 304 >> Accept A Grim Task
    .target Longbraid the Grim

step
    .goto Wetlands,48,18
    >>Clear Dark Iron dwarves with the Warrior tanking, Priest healing and Warlock controlling adds. Pull small packs; demolitionists and riflemen need deliberate clears. Use town buildings or Direforge Hill for missing targets.
    .complete 303,1
    .complete 303,2
    .complete 303,3
    .complete 303,4
    .mob Dark Iron Dwarf
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
    .mob Dark Iron Demolitionist

step
    .goto Wetlands,61,27
    >>Find Balgaras in town or the Direforge Hill camps and loot his ear. Classic reports describe shadow immunity; test damage and use fire if needed.
    .complete 304,1
    .mob Balgaras the Foul

step
    .goto Wetlands,49.8,18.2
    >>Turn in Fall of Dun Modr and accept the related Dark Iron quests from the defenders at the camp.
    .target Roggo

step
    .goto Wetlands,49.6,18.2
    >>Turnin The Dark Iron War
    .turnin 303 >> Turnin The Dark Iron War
    .target Motley Garmason

step
    .goto Wetlands,49.8,18.2
    >>Turnin A Grim Task
    .turnin 304 >> Turnin A Grim Task
    .target Longbraid the Grim

step
    .goto Wetlands,49.6,18.2
    >>Accept The Fury Runs Deep
    .accept 378 >> Accept The Fury Runs Deep
    .target Motley Garmason


step
    >>With Gleaning Our Future in your log, use the Goaz Stone on Modr outside Dun Modr, then Neru behind Direforge Hill. Loot both hearts before continuing to Howin. Exact beta pins are unverified.
    .complete 98310,2 --Heart of Modr
    .complete 98310,4 --Heart of Neru
    .mob Modr
    .mob Neru

step
    >>Visit Howin past Whelgar and deliver This Land Was Their Land before collecting his supply quests.
    .turnin 98230 >> Turn in This Land Was Their Land
    .target Howin

step
    >>Visit Howin past Whelgar. Deliver Crimson Crate Delivery if carried; collect Razormaw Needling and Trying Times when available. Do both supplies in Raptor Ridge or Saltspray Glen.
    .link https://www.wowhead.com/forever/quest=98245 >> View quest details on Wowhead
    .turnin -98240 >> Turn in Crimson Crate Delivery
    .accept 98245 >> Accept Razormaw Needling
    .accept 98246 >> Accept Trying Times
    .target Howin

step
    .goto Wetlands,67,35
    >>Collect Razormaw incisors and perfect eggs.
    .complete 98245,1
    .complete 98246,1
    .mob Razormaw Raptor

step
    >>Return both supply quests to Howin. Collect his Dragonmaw follow-up for the last visit.
    .link https://www.wowhead.com/forever/quest=98291 >> View quest details on Wowhead
    .turnin 98245 >> Turn in Razormaw Needling
    .turnin 98246 >> Turn in Trying Times
    .accept 98291 >> Accept Death to the Dragonmaw
    .target Howin

step
    >>Continue east for Ados at Dragonmaw Gates and south for Golm beneath Grim Batol, east of Dun Algaz. Use the Goaz Stone and loot their hearts. Then return through the Mosshide camps toward Greenwarden.
    .complete 98310,1 --Heart of Ados
    .complete 98310,3 --Heart of Golm
    .mob Ados
    .mob Golm

step
    .goto Wetlands,43,33.2
    >>Finish Fire Taboo while crossing the Mosshide camps. Kill the Mosshide mobs and whelps on this east-to-west pass, then turn the quest in at Greenwarden.
    .complete 277,1
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute
    .mob Mosshide Raider
    .mob Mosshide Mystic

step
    .goto Wetlands,56.37,40.40
    >>Turnin Fire Taboo
    .turnin 277 >> Turnin Fire Taboo
    .target Rethiel the Greenwarden

step
    .goto Wetlands,56.37,40.40
    >>Accept Blisters on The Land
    .accept 275 >> Accept Blisters on The Land
    .target Rethiel the Greenwarden

step
    .goto Wetlands,64,48
    >>Kill crimson whelps in the eastern Green Belt and loot their scales for Crocs of the Sky. Complete it on the return pass toward Menethil.
    .complete 98072,1
    .mob Crimson Whelp

step
    .goto Wetlands,46.6,29.6
    >>Finish Blisters on the Land along the streams while heading north. Keep it completed in your quest log; turn it in to Greenwarden during the last Wetlands loop before Excavation Site.
    .complete 275,1
    .mob Fen Creeper


step
    >>Complete the four golem heart objectives.
    .complete 98310,1
    .complete 98310,2
    .complete 98310,3
    .complete 98310,4
    .mob Ados
    .mob Modr
    .mob Golm
    .mob Neru

step
    .goto Wetlands,38.809,52.386
    >>Turnin Gleaning Our Future
    .turnin 98310 >> Turnin Gleaning Our Future
    .target Prospector Whelgar

step
    .goto Wetlands,38.809,52.386
    >>Accept For Further Study
    .accept 98313 >> Accept For Further Study
    .target Prospector Whelgar

step
    .goto Wetlands,10.89,59.66
    >>Turnin The Cursed Crew
    .turnin 289 >> Turnin The Cursed Crew
    .target First Mate Fitzsimmons

step
    .goto Wetlands,11.796,57.991
    >>Turnin Digging Through the Ooze
    .turnin 470 >> Turnin Digging Through the Ooze
    .target Sida

step
    .goto Wetlands,8.359,58.526
    >>Turnin Return the Statuette
    .turnin 286 >> Turnin Return the Statuette
    .target Archaeologist Flagongut

step
    .goto Wetlands,10.89,59.66
    >>Accept Lifting the Curse
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons

step
    .goto Wetlands,9.861,57.486
    >>Accept Nek'rosh's Gambit
    .accept 465 >> Accept Nek'rosh's Gambit
    .target Captain Stoutfist

step
    .goto Wetlands,8.509,55.697
    >>Turn in Crocs of the Sky and carry the crate for the last visit.
    .isQuestComplete 98072
    .turnin 98072 >> Turn in Crocs of the Sky
    .accept 98240 >> Accept Crimson Crate Delivery
    .target James Halloran

step
    .goto Wetlands,9.49,59.69
    >>Return to Menethil and fly to Stormwind. Keep Menethil as your home.
    .fly Stormwind

step
    .goto Stormwind City,41,58
    >>Accept The Stockade Riots
    .accept 391 >> Accept The Stockade Riots
    .target Warden Thelwater

step
    .goto Stormwind City,41,58
    >>Accept Quell the Uprising
    .accept 387 >> Accept Quell the Uprising
    .target Warden Thelwater

step
    .goto Stormwind City,73,46
    >>Accept The Color of Blood
    .accept 388 >> Accept The Color of Blood
    .target Nikova Raskol

step
    >>Confirm EVERY party member has Stockade Riots, Quell the Uprising, Color of Blood, Crime and Punishment, What Comes Around and Fury Runs Deep. If missing, collect the Darkshire/Lakeshire quests before entering. Stockade Riots requires the Deadmines letter follow-ups. Watch XP: complete turn-ins by level 30.
    +Confirm the party completed this task

step
    >>In Stockades, complete Bazil Thredd.
    .complete 391,1
    .mob Bazil Thredd

step
    >>In Stockades, complete Defias kill objectives.
    .complete 387,1
    .complete 387,2
    .complete 387,3
    .mob Defias Prisoner
    .mob Defias Convict
    .mob Defias Insurgent

step
    >>In Stockades, complete Red Wool Bandanas.
    .complete 388,1
    .mob Defias

step
    >>In Stockades, complete Dextren Ward.
    .complete 377,1
    .mob Dextren Ward

step
    >>In Stockades, complete Targorr the Dread.
    .complete 386,1
    .mob Targorr the Dread

step
    >>In Stockades, complete Kam Deepfury.
    .complete 378,1
    .mob Kam Deepfury

step
    .goto Stormwind City,41,58
    >>Turnin Quell the Uprising
    .turnin 387 >> Turnin Quell the Uprising
    .target Warden Thelwater

step
    .goto Stormwind City,41,58
    >>Turnin The Stockade Riots
    .turnin 391 >> Turnin The Stockade Riots
    .target Warden Thelwater

step
    .goto Stormwind City,73,46
    >>Turnin The Color of Blood
    .turnin 388 >> Turnin The Color of Blood
    .target Nikova Raskol

step
    .goto Stormwind City,66.27,62.13
    >>Fly to Lakeshire and turn in the Stockades head before level 31.
    .fly Lakeshire

step
    .skill cooking,<80,1
    .train 25704,1 -- Skip if Smoked Sagefish is already learned
    .goto 1433/0,-2145.89,-9211.36
    >>Buy |cRXP_BUY_Recipe: Smoked Sagefish|r from |cRXP_FRIENDLY_Barkeep Daniels|r inside the Lakeshire inn now that your Cooking is 80 or higher
    .collect 21099,1 -- Recipe: Smoked Sagefish (1)
    .target Barkeep Daniels

step
    .goto Redridge Mountains,26,46
    >>Turnin What Comes Around...
    .turnin 386 >> Turnin What Comes Around...
    .target Guard Berton

step
    .goto Redridge Mountains,30.59,59.41
    >>Fly to Darkshire for the Stockades turn-in.
    .fly Darkshire

step
    .goto Duskwood,77.992,48.328
    >>Check |cRXP_FRIENDLY_Herble Baubbletump|r for |cRXP_BUY_Bronze Tubes|r on this Darkshire visit. Buy any available tubes
    >>Limited supply: continue if he is out of stock; check again on the next visit
    .vendor >> Check Bronze Tube stock
    .target Herble Baubbletump

step
    .itemcount 4371,1
    .goto Duskwood,79.80,48.02
    >>If you have a |cRXP_LOOT_Bronze Tube|r, give it to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look to the Stars
    .turnin 174 >> Turn in Look to the Stars
    .target Viktori Prism'Antras

step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>Take Viktori's request for Blind Mary
    .accept 175 >> Accept Look to the Stars
    .target Viktori Prism'Antras



step
    .isOnQuest 175
    .goto Duskwood,81.98,59.08
    >>Visit |cRXP_FRIENDLY_Blind Mary|r with Viktori's request
    .turnin 175 >> Turn in Look to the Stars
    .accept 177 >> Accept Look to the Stars
    .target Blind Mary

step
    .isOnQuest 177
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r inside or near the chapel and loot |cRXP_LOOT_Mary's Looking Glass|r
    .complete 177,1
    .mob Insane Ghoul

step
    .isOnQuest 177
    .goto Duskwood,79.80,48.02
    >>Return the looking glass to |cRXP_FRIENDLY_Viktori Prism'Antras|r and take the monocle quest
    .turnin 177 >> Turn in Look to the Stars
    .accept 181 >> Accept Look to the Stars
    .target Viktori Prism'Antras

step
    .isOnQuest 181
    .goto Duskwood,36.82,83.78
    >>Enter the ogre cave together and kill |cRXP_ENEMY_Zzarc'Vul|r. Loot the |cRXP_LOOT_Ogre's Monocle|r for each player
    .complete 181,1
    .mob Zzarc'Vul

step
    .isQuestComplete 181
    .goto Duskwood,79.80,48.02
    >>Return the monocle to |cRXP_FRIENDLY_Viktori Prism'Antras|r before leaving Duskwood
    .turnin 181 >> Turn in Look to the Stars
    .target Viktori Prism'Antras

step
    .goto Duskwood,72,47
    >>Turnin Crime and Punishment
    .turnin 377 >> Turnin Crime and Punishment
    .target Councilman Millstipe

step
    .isQuestComplete 57
    .goto Duskwood,73.59,46.89
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r after Crime and Punishment
    .turnin 57 >> Turn in The Night Watch
    .accept 58 >> Accept The Night Watch
    .target Commander Althea Ebonlocke

step
    .isQuestComplete 158
    .goto Duskwood,73.8,44.5
    >>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r after Crime and Punishment
    .turnin 158 >> Turn in Zombie Juice
    .accept 156 >> Accept Gather Rot Blossoms
    .target Tavernkeep Smitts

step
    >>Hearth to Menethil, then return north to Motley.
    .hs >> Hearth to Menethil Harbor



]])
