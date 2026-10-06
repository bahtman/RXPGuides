RXPGuides.RegisterGuide([[
#forever
#version 24
#group Forever Trio Launch
#name 27-28 Wetlands Second Loop
#displayname Wetlands Second Loop, Dun Modr & Stockades
#next 30 Wetlands Final Loop & Excavation Site
<< Alliance

-- Agreed Wetlands route, 2026-10-06. New beta NPC locations use text when unverified.

step
    .goto Wetlands,10.69,60.95,60
    >>Return to Menethil after the Redridge and Darkshire visits. Keep Menethil as home. This circuit runs coast follow-ups, Mosshide camps, oozes, Dun Modr, Raptor Ridge, Greenwarden, Howin and Nek'rosh before one combined Menethil return. Finish young crocs on the westbound return. Excavation Site and the eastern golems wait until loop 3.
    >>Start late at 29 or early at 30 if needed for the elites; complete Stockades turn-ins before 31.
    .unitscan Nightveiled Rotheap::270589
    *Watch for Nightveiled Rotheap on coastal and inland passes. Keep the first Rotheap Innards for Greenwarden's Malignant Root; save later drops to sell. Innards are Unique: one per player at a time. No camping detour is required.

step
    .goto Wetlands,11.796,57.991
    >>Accept Digging Through the Ooze
    .accept 470 >> Accept Digging Through the Ooze
    .target Sida
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.84,55.89
    >>Accept Fall of Dun Modr
    .accept 472 >> Accept Fall of Dun Modr
    .target Harlo Barnaby
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,13.513,41.384
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 281  >> Turnin Reclaiming Goods
    .accept 284 >> Accept The Search Continues
    .target Damaged Crate
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,13.608,38.214
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 284
    .accept 285 >> Accept Search More Hovels
    .target Sealed Barrel
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,13.945,34.809
    >>Interact with the crate/barrel to advance the statuette chain.
    .turnin 285
    .accept 286 >> Accept Return the Statuette
    .target Half-buried Barrel
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,15.44,23.60
    >>Kill Captain Halyndor and loot his strongbox key. Watch his spell-reflection buff.
    .complete 290,1
    .mob Captain Halyndor
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,14.381,24.047
    >>Open the strongbox through the hole in the ship. Deliver Lifting the Curse here and carry The Eye of Paleth until the final Menethil return.
    .turnin 290 >> Turn in Lifting the Curse
    .accept 292 >> Accept The Eye of Paleth
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,43,33.2
    >>Finish Fire Taboo in the Mosshide camps before continuing north to the ooze camps. Save the Greenwarden turn-in until after Dun Modr and Raptor Ridge.
    .complete 277,1
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute
    .mob Mosshide Raider
    .mob Mosshide Mystic
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,44.25,25.61
    >>Kill oozes for Sida's Bag.
    .complete 470,1
    .mob Black Ooze
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .unitscan Nightveiled Rotheap::270589

step
    >>After killing the oozes, continue north to Dun Modr while still out on the circuit. Do not return to Menethil yet. Clear the elite quests with the trio, then continue to Raptor Ridge and the remaining inland objectives before the combined Menethil turn-ins and flight to Stockades.
    .goto Wetlands,49.8,18.2,60
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.8,18.2
    >>Turnin Fall of Dun Modr
    .turnin 472 >> Turnin Fall of Dun Modr
    .target Longbraid the Grim
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.6,18.2
    >>Accept The Dark Iron War
    .accept 303 >> Accept The Dark Iron War
    .target Motley Garmason
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.8,18.2
    >>Accept A Grim Task
    .accept 304 >> Accept A Grim Task
    .target Longbraid the Grim
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.8,18.2
    >>Collect Bring Back a Bang from the defenders before going to Direforge Hill. The exact beta giver pin is unverified; use the quest link.
    .link https://www.wowhead.com/forever/quest=88756/bring-back-a-bang >> View quest pickup
    .accept 88756 >> Accept Bring Back a Bang
    .unitscan Nightveiled Rotheap::270589

step
    >>Use the Goaz Stone on Modr outside Dun Modr and loot its heart while already here. Keep the remaining golem objectives for their planned passes.
    .complete 98310,2 -- Heart of Modr
    .mob Modr
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,48,18
    #completewith DunModrClear
    >>Kill the Dark Iron quest mobs while reaching and escorting the captive elemental. Pull small packs with the trio.
    .complete 303,1
    .complete 303,2
    .complete 303,3
    .complete 303,4
    .mob Dark Iron Dwarf
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
    .mob Dark Iron Demolitionist
    .unitscan Nightveiled Rotheap::270589

step
    >>Find the captive fire elemental caged beside the Dark Iron fire pit in Dun Modr. Regroup all three players before starting its escort.
    .link https://www.wowhead.com/forever/quest=87491/spark-of-freedom >> View escort pickup
    .accept 87491 >> Accept Spark of Freedom
    .unitscan Nightveiled Rotheap::270589

step
    >>Escort the captive fire elemental out of Dun Modr. Complete its offered turn-in at the escort endpoint before moving on.
    .complete 87491,1
    .unitscan Nightveiled Rotheap::270589

step
    >>Finish Spark of Freedom at its offered turn-in after the escort. The beta turn-in location is unverified; follow the quest marker.
    .turnin 87491 >> Turn in Spark of Freedom
    .unitscan Nightveiled Rotheap::270589

step
    #label DunModrClear
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
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,61,27
    #completewith DireforgeDone
    >>Loot the three red-marked Stolen Explosives barrels in the Direforge Hill camps while clearing toward Balgaras and Neru.
    .complete 88756,1
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,61,27
    >>Find Balgaras in town or the Direforge Hill camps and loot his ear. Classic reports describe shadow immunity; test damage and use fire if needed.
    .complete 304,1
    .mob Balgaras the Foul
    .unitscan Nightveiled Rotheap::270589

step
    >>Use the Goaz Stone on Neru behind Direforge Hill and loot its heart before leaving the camps. Ados and Golm wait for loop 3.
    .complete 98310,4 -- Heart of Neru
    .mob Neru
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,61,27
    #label DireforgeDone
    >>Finish collecting all three Stolen Explosives before returning to the defenders for the combined turn-ins.
    .complete 88756,1
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.6,18.2
    >>Turnin The Dark Iron War
    .turnin 303 >> Turnin The Dark Iron War
    .target Motley Garmason
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.8,18.2
    >>Turnin A Grim Task
    .turnin 304 >> Turnin A Grim Task
    .target Longbraid the Grim
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.8,18.2
    >>Deliver the Stolen Explosives to the Bring Back a Bang quest giver during this same defenders' camp return.
    .link https://www.wowhead.com/forever/quest=88756/bring-back-a-bang >> View quest turn-in
    .turnin 88756 >> Turn in Bring Back a Bang
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,49.6,18.2
    >>Accept The Fury Runs Deep
    .accept 378 >> Accept The Fury Runs Deep
    .target Motley Garmason
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,67,35
    >>Continue southeast to Raptor Ridge or Saltspray Glen. Collect Razormaw incisors and perfect eggs for the quests picked up in loop 1; then head to Greenwarden before visiting Howin.
    .complete 98245,1
    .complete 98246,1
    .mob Razormaw Raptor
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,56.37,40.40
    >>Turnin Fire Taboo
    .turnin 277 >> Turnin Fire Taboo
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589
    *If carrying your first Rotheap Innards, exchange them with Greenwarden for Malignant Root. Keep later Innards for sale.

step
    .goto Wetlands,56.37,40.40
    >>Accept Blisters on the Land. Finish it on the approach to Greenwarden during loop 3; do not make a stream-farming detour now.
    .accept 275 >> Accept Blisters on The Land
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589

step
    >>After Greenwarden, return west to Howin along the road and deliver both Raptor Ridge supply quests. Death to the Dragonmaw is collected during loop 3 after This Land Was Their Land.
    .link https://www.wowhead.com/forever/npc=270637/howin-kindfeather >> View Howin's location
    .turnin 98245 >> Turn in Razormaw Needling
    .turnin 98246 >> Turn in Trying Times
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,47.45,47.01
    >>Visit the Dragonmaw catapult and defeat Nek'rosh with the trio.
    .turnin 465 >> Turn in Nek'rosh's Gambit
    .accept 474 >> Accept Defeat Nek'rosh
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,53.2,56
    >>Kill Nek'rosh and loot his head.
    .complete 474,1
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,53.2,56
    >>Loot the Tattered Spellbook in Nek'rosh's area and use it to start Old Habits before heading west. Carry it to Captain Stoutfist with Nek'rosh's head.
    .link https://www.wowhead.com/forever/quest=98223/old-habits >> View item-started quest
    .accept 98223 >> Accept Old Habits
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,20.37,45.21
    >>Finish Young Crocolisk Skins on the westbound return to Menethil. Keep moving west as you hunt; this is the only required crocolisk quest.
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.509,55.697
    >>Turn in Young Crocolisk Skins. Skip Apprentice's Duties and Crocs of the Sky.
    .turnin 484 >> Turn in Young Crocolisk Skins
    .target James Halloran
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.509,55.697
    >>Accept Highland Hides and keep it for Excavation Site on the final Wetlands visit.
    .accept 98815 >> Accept Highland Hides
    .target James Halloran
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.796,57.991
    >>Turnin Digging Through the Ooze
    .turnin 470 >> Turnin Digging Through the Ooze
    .target Sida
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.359,58.526
    >>Turnin Return the Statuette
    .turnin 286 >> Turnin Return the Statuette
    .accept 98189
    .target Archaeologist Flagongut
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.861,57.486
    >>Advance the statuette delivery while visiting Captain Stoutfist.
    .turnin 98189
    .accept 98190
    .target Captain Stoutfist
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.861,57.486
    >>Deliver Nek'rosh's head and the Tattered Spellbook during this combined Menethil return.
    .turnin 474 >> Turn in Defeat Nek'rosh
    .turnin 98223 >> Turn in Old Habits
    .target Captain Stoutfist
    .unitscan Nightveiled Rotheap::270589

step
    >>After defeating Nek'rosh, collect This Land Was Their Land for the first Howin visit in loop 3. Use the quest link for the beta giver location.
    .link https://www.wowhead.com/forever/quest=98230/this-land-was-their-land >> View quest pickup
    .accept 98230 >> Accept This Land Was Their Land
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.585,60.592
    >>Turnin The Eye of Paleth
    .turnin 292 >> Turnin The Eye of Paleth
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.585,60.592
    >>Accept Cleansing the Eye
    .accept 293 >> Accept Cleansing the Eye
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.49,59.69
    >>Return to Menethil and fly to Stormwind. Keep Menethil as your home.
    .fly Stormwind
    .unitscan Nightveiled Rotheap::270589

step
    .goto Stormwind City,61.1,70.7
    >>Visit the Auction House during this city stop. Each player must buy and keep FIVE Swiftness Potions for the MacKreel jump in the final Wetlands loop.
    .collect 2459,5 -- Swiftness Potion (5) per player

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
    >>Hearth to Menethil for the final Wetlands loop. Keep five Swiftness Potions each for the bridge jump; the next route starts with the coast and Howin, not Dun Modr.
    .hs >> Hearth to Menethil Harbor
    .unitscan Nightveiled Rotheap::270589

]])
