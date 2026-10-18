RXPGuides.RegisterGuide([[
#forever
#version 46
#group Forever Trio Launch
#name 27-30 Wetlands Second Loop
#displayname 27-30 Wetlands Second Loop, Stockades & Duskwood Elites
#next 30-30 Wetlands Final Loop & Excavation Site
<< Alliance

-- Agreed Wetlands route, 2026-10-06. New beta NPC locations use text when unverified.

step
    .goto Wetlands,10.69,60.95,60
    >>Return to Menethil after the Redridge and Darkshire visits. Keep Menethil as home. This circuit runs coast follow-ups, Mosshide camps, oozes, Dun Modr, Raptor Ridge, Greenwarden, Howin and Nek'rosh before one combined Menethil return. Finish young crocs on the westbound return, then complete Lightforge on the southern coast before the Menethil turn-ins. Excavation Site and the eastern golems wait until loop 3.
    >>Aim for level 30 for the trio elite circuit. Complete Stockades turn-ins before 31, then finish Stalvan, Morbent Fel, Mor'Ladim and Eliza during the Duskwood visit.
    .unitscan Nightveiled Rotheap::270589
    *Watch for Nightveiled Rotheap on coastal and inland passes. Keep the first Rotheap Innards for Greenwarden's Malignant Root; save later drops to sell. Innards are Unique: one per player at a time. No camping detour is required.

step
    >>Talk to Sylessa Duskwhisper in Menethil Harbor before the outdoor loop. Recover her flower alongside Lightforge at the southern shipwreck on the return.
    .link https://www.wowhead.com/forever/npc=270844/sylessa-duskwhisper >> View Sylessa's location
    .accept 98208 >> Accept Bloom of the Heavens
    .target Sylessa Duskwhisper::270844

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
    >>Clear Dark Iron dwarves with the Warrior tanking, Paladin healing and Warlock controlling adds. Pull small packs; demolitionists and riflemen need deliberate clears. Use town buildings or Direforge Hill for missing targets.
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

    -- Southern coast on the westbound return, before Stockades.
step
    .goto Wetlands,12.10,64.19
    >>Open the Waterlogged Chest on the southern coast. Advance Lightforge now so its Stormwind delivery can prepare Morbent Fel after Stockades.
    .turnin 321 >> Turn in Lightforge Iron
    .accept 324 >> Accept The Lost Ingots
    .isOnQuest 321

step
    .goto 1437/0,-910.65,-3944.99,60,0
    .goto 1437/0,-811.40,-4104.85,60,0
    .goto 1437/0,-687.33,-4148.95,60,0
    .goto 1437/0,-910.65,-3944.99
    >>Kill Bluegill Raiders and loot the ingots before returning to Menethil.
    .complete 324,1
    .mob Bluegill Raider
    .isOnQuest 324

step
    >>Loot Nord'el from the clickable flower on the north side of the Flying Osprey wreck, south of Menethil, while clearing the same murloc shore for Lightforge. Each player needs the flower before returning to town.
    .complete 98208,1 -- Nord'el
    .isOnQuest 98208

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
    .accept 98190 >> Accept A Friend of the Family
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
    .turnin 98208 >> Turn in Bloom of the Heavens
    .target Sylessa Duskwhisper::270844
    .isQuestComplete 98208

step
    >>Take Sylessa's delivery for Thundris Windweaver. Keep Nord'el for the default 35-37 Desolace chapter: turn it in during the Auberdine boat stop, before flying to Desolace.
    .accept 98209 >> Accept Bloom of the Heavens
    .target Sylessa Duskwhisper::270844
    .isQuestTurnedIn 98208

step
    .goto Wetlands,10.585,60.592
    >>Return the ingots to Glorin during the grouped Menethil turn-ins.
    .turnin 324 >> Turn in The Lost Ingots
    .accept 526 >> Accept Lightforge Ingots
    .target Glorin Steelbrow
    .isQuestComplete 324

step
    .goto Wetlands,10.585,60.592
    >>Finish Glorin's dialogue and take the delivery for Grimand Elmore in Stormwind.
    .turnin 526 >> Turn in Lightforge Ingots
    .accept 322 >> Accept Blessed Arm
    .target Glorin Steelbrow
    .isOnQuest 526

step
    .goto Wetlands,9.49,59.69
    >>Return to Menethil and fly to Stormwind. Keep Menethil as your home.
    .fly Stormwind
    .unitscan Nightveiled Rotheap::270589

step
    #include Forever Trio Launch\01-60 City Supplies - Stormwind

step
    .goto Stormwind City,61.1,70.7
    >>Visit the Auction House during this city stop. Each player must buy and keep FIVE Swiftness Potions for the MacKreel jump in the final Wetlands loop.
    .collect 2459,5 -- Swiftness Potion (5) per player

    -- Stockades and the full Stormwind follow-up chain from the filtered default 24-27 Duskwood/Redridge guide.
step
    >>Confirm every party member has Crime and Punishment, What Comes Around... and The Fury Runs Deep from the earlier Darkshire, Lakeshire and Dun Modr visits. Complete the Deadmines letter follow-ups through Bazil Thredd (389) so The Stockade Riots and its city chain are available
    >>Keep Menethil as home. Each player needs three Silk Cloth for the city follow-ups; the dungeon route tracks this before leaving
    +Confirm the party is ready for Stockades and its follow-ups

step
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .accept 388 >> Accept The Color of Blood
    .unitscan Nikova Raskol

step
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 391 >> Accept The Stockade Riots
    .accept 387 >> Accept Quell The Uprising
    .target Warden Thelwater
    .isQuestTurnedIn 389

step
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Accept Quell The Uprising
    .target Warden Thelwater

step
    #label stock1
    #sticky
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 387,1
    .complete 387,2
    .complete 387,3
    .complete 388,1

step
    #label stock2
    #sticky
    >>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
    >>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
    .complete -386,1
    .mob +Targorr the Dread
    .complete -377,1
    .mob +Dextren Ward

step
    #label TrioKamDeepfury
    #sticky
    .isOnQuest 378
    >>Kill |cRXP_ENEMY_Kam Deepfury|r. Loot him for his |cRXP_LOOT_Head|r for the Dun Modr turn-in on the final Wetlands loop
    .complete 378,1
    .mob Kam Deepfury

step
    #label Bazil
    >>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
    .complete 391,1
    .collect 4306,3,2746,1
    .isOnQuest 391
    .mob Bazil Thredd

step
    #requires TrioKamDeepfury

step
    #requires stock1

step
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .turnin 391 >> Turn in The Stockade Riots
    .accept 392 >> Accept The Curious Visitor
    .target Warden Thelwater
    .isQuestTurnedIn 389

step
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .target Warden Thelwater

step
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Turn in The Curious Visitor
    .accept 393 >> Accept Shadow of the Past
    .target Baros Alexston
    .isQuestTurnedIn 389

step
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .turnin 388 >> Turn in The Color of Blood
    .unitscan Nikova Raskol

step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 389

step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Turn in Shadow of the Past
    .accept 350 >> Accept Look to an Old Friend
    .target Master Mathias Shaw
    .isQuestTurnedIn 389

step
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 350 >> Turn in Look to an Old Friend
    .accept 2745 >> Accept Infiltrating the Castle
    .target Elling Trias
    .isQuestTurnedIn 389

step
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Turn in Infiltrating the Castle
    .accept 2746 >> Accept Items of Some Consequence
    .target Tyrion
    .isQuestTurnedIn 391

step
    #completewith next
    .goto 1429/0,411.42,-9093.77,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
    .isQuestTurnedIn 391

step
    #ah
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    >>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
    .complete 2746,2
    .goto 1429/0,357.00,-9262.65
    .complete 2746,1
    .isQuestTurnedIn 391

step
    #ssf
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    .complete 2746,2
    .goto 1429/0,357.00,-9262.65
    .complete 2746,1
    .isQuestTurnedIn 391

step
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
    >>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
    .turnin 2746 >> Turn in Items of Some Consequence
    .accept 434,1 >> Accept The Attack!
    .timer 124,The Attack! RP
    .target Tyrion
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
    >>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
    .complete 434,1
    .mob +Lord Gregor Lescovar
    .complete 434,2
    .mob +Marzon the Silent Blade
    .complete 434,3
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 434 >> Turn in The Attack!
    .accept 394 >> Accept The Head of the Beast
    .target Elling Trias
    .isQuestTurnedIn 391

step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Turn in The Head of the Beast
    .accept 395 >> Accept Brotherhood's End
    .target Master Mathias Shaw
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Turn in Brotherhood's End
    .accept 396 >> Accept An Audience with the King
    .target Baros Alexston
    .isQuestTurnedIn 391

step
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391

step
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Turn in An Audience with the King
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391

step
    .goto Stormwind City,78.22,17.98
    >>Give the Menethil Statuette to Highlord Bolvar Fordragon in the throne room during this Keep visit.
    .turnin 98190 >> Turn in A Friend of the Family
    .accept 98191 >> Accept A Friend of the Family
    .target Highlord Bolvar Fordragon
    .isOnQuest 98190

    -- Prepare Sven's elite quest before the post-Stockades Duskwood circuit.
step
    .goto 1453/0,685.31,-8386.95
    >>Deliver Glorin's ingots to Grimand Elmore during this city visit.
    .turnin 322 >> Turn in Blessed Arm
    .target Grimand Elmore
    .isOnQuest 322

step
    .goto 1453/0,685.31,-8386.95
    >>Take the weapon to Sven during the upcoming western Duskwood circuit.
    .accept 325 >> Accept Armed and Ready
    .target Grimand Elmore
    .isQuestTurnedIn 322

    -- Carry Shoni's quest into the later Gnomeregan chapter.
step
    .goto StormwindClassic,55.511,12.502
    >>Talk to Shoni in the Dwarven District during this Stockades city visit. Keep the quest for Gnomeregan after the final Wetlands loop.
    .accept 2928 >> Accept Gyrodrillmatic Excavationators
    .target Shoni the Shilent

step
    .goto 1453/0,835.86,-8556.35
    >>Talk to Brother Sarno at the Cathedral. Keep his referral for Tinkmaster Overspark during the Gnomeregan Ironforge pickups.
    .accept 2923 >> Accept Tinkmaster Overspark
    .target Brother Sarno

step
    >>Give the Menethil Statuette to Lord Grayson Shadowbreaker inside the Cathedral of Light before speaking to Thomas.
    .turnin 98191 >> Turn in A Friend of the Family
    .target Lord Grayson Shadowbreaker
    .isOnQuest 98191

    -- Start Missing Diplomat during the post-Stockades city visit, before the Duskwood delivery circuit.
step
    .xp 28 >> Reach level 28 before starting The Missing Diplomat
    .goto 1453/0,860.47,-8510.92
    >>Talk to |cRXP_FRIENDLY_Thomas|r as he walks through the Cathedral. Start the investigation before leaving Stormwind
    .accept 1274 >> Accept The Missing Diplomat
    .target Thomas

step
    .goto Stormwind City,78.30,25.45
    >>Speak to |cRXP_FRIENDLY_Bishop DeLavey|r in Stormwind Keep
    .turnin 1274 >> Turn in The Missing Diplomat
    .accept 1241 >> Accept The Missing Diplomat
    .target Bishop DeLavey

step
    .goto 1453/0,397.37,-8981.77
    >>Find |cRXP_FRIENDLY_Jorgen|r by the canal
    .turnin 1241 >> Turn in The Missing Diplomat
    .accept 1242 >> Accept The Missing Diplomat
    .target Jorgen

step
    .goto StormwindClassic,59.908,64.177
    >>Talk to |cRXP_FRIENDLY_Elling Trias|r upstairs in the cheese shop. Keep his delivery for Watcher Backus on the upcoming Darkshire visit
    .turnin 1242 >> Turn in The Missing Diplomat
    .accept 1243 >> Accept The Missing Diplomat
    .target Elling Trias

    -- Prepare the Menethil-to-Theramore breadcrumb before leaving Stormwind.
step
    .goto 1453/0,834.75,-9102.30
    >>Talk to Connor Rivers in the Blue Recluse. Carry his message to Vincent Hyal during the next Menethil visit.
    .accept 1301 >> Accept James Hyal
    .target Connor Rivers

step
    .goto Stormwind City,66.27,62.13
    >>Fly to Lakeshire and turn in the Stockades head before level 31.
    .fly Lakeshire

step << Warlock
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

    -- The previous visit supplied Stalvan 78, Note to the Mayor 160 and the grave inscription 225.

step
    .goto Duskwood,72,47
    >>Deliver the Stockades objective to Councilman Millstipe before earning more XP on the Duskwood circuit.
    .turnin 377 >> Turn in Crime and Punishment
    .target Councilman Millstipe

step
    .goto 1431/0,-1199.82,-10581.49
    >>Deliver the Dark Runner kills from the Darkshire/Eastvale visit and take the next Worgen in the Woods assignment for the southern Vile Fangs and Tainted Ones.
    .turnin 221 >> Turn in Worgen in the Woods
    .target Calor
    .isQuestComplete 221

step
    .goto 1431/0,-1199.82,-10581.49
    >>Take Calor's southern assignment before leaving Darkshire for the Vile Fangs and Tainted Ones.
    .accept 222 >> Accept Worgen in the Woods
    .target Calor
    .isQuestTurnedIn 221

step
    .goto 1431/0,-1158.46,-10517.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r inside the inn
    .turnin 78 >> Turn in The Legend of Stalvan
    .accept 79 >> Accept The Legend of Stalvan
    .target Tavernkeep Smitts

step
    .goto 1431/0,-1153.60,-10560.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town until she respawns or changing your layer (if possible)|r
    .turnin 79 >> Turn in The Legend of Stalvan
    .accept 80 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke

step
    .goto 1431/0,-1124.98,-10559.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r in the town hall building
    .turnin 80 >> Turn in The Legend of Stalvan
    .accept 97 >> Accept The Legend of Stalvan
    .target Clerk Daltry

step
    .goto 1431/0,-1127.95,-10573.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Turn in The Weathered Grave
    .accept 227 >> Accept Morgan Ladimore
    .target Sirra Von'Indi

step
    .goto 1431/0,-1108.78,-10552.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >> Turn in Note to the Mayor
    .accept 251 >> Accept Translate Abercrombie's Note
    .target Lord Ello Ebonlocke

step
    .goto 1431/0,-1127.95,-10573.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Turn in Translate Abercrombie's Note
    .target Sirra Von'Indi
    .accept 401 >> Accept Wait for Sirra to Finish
    .turnin 401 >> Turn in Wait for Sirra to Finish
    .accept 252 >> Accept Translation to Ello

step
    .goto 1431/0,-1108.78,-10552.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >> Turn in Translation to Ello
    .target Lord Ello Ebonlocke

step
    .goto 1431/0,-1108.78,-10552.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 253 >> Accept Bride of the Embalmer
    .target Lord Ello Ebonlocke

step
    .goto 1431/0,-1153.60,-10560.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    >>|cRXP_WARN_She may be dead or busy fighting|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_if he attacks Darkshire. If that happens consider grinding mobs near the town until she respawns or changing your layer (if possible)|r
    .turnin 97 >> Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
    .turnin 227 >> Turn in Morgan Ladimore
    .accept 228 >> Accept Mor'Ladim
    .target Commander Althea Ebonlocke

step
    .goto Duskwood,73.59,46.89
    >>Deliver the Plague Spreader kills from the earlier Raven Hill visit.
    .turnin 58 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
    .isQuestComplete 58

step
    #completewith TrioStalvanGardenDone
    .isQuestAvailable 96137
    >>Watch for |cRXP_ENEMY_Lost Stalker|r while leaving Darkshire northward for Backus and Manor Mistmantle. Kill her if present, loot and use |cRXP_LOOT_Ira's Dagger|r; continue if absent
    .use 281143
    .accept 96137 >> Accept Ira's Dagger if encountered on the northern circuit
    .unitscan +Lost Stalker::272260

step
    .goto 1431/0,-1125.52,-10320.39
    .line Duskwood,74.54,42.90,74.38,40.82,73.87,39.50,72.72,38.91,72.24,37.30,72.20,34.86,72.55,33.54
    >>Find |cRXP_FRIENDLY_Watcher Backus|r patrolling the road north of Darkshire before the southern Duskwood circuit
    .turnin 1243 >> Turn in The Missing Diplomat
    .accept 1244 >> Accept The Missing Diplomat
    .target Watcher Backus
    .unitscan Watcher Backus

step
    .goto Duskwood,77.30,36.20
    >>Kill Stalvan together near Manor Mistmantle, while already north of town for Backus. Loot the Family Ring for each player.
    .complete 98,1
    .mob Stalvan Mistmantle
    .isOnQuest 98

step
    #label TrioStalvanGardenDone
    .goto 1431/0,-1282.06,-10363.80
    >>Loot the small white Tear of Tilloa in the fenced garden beside Stalvan's house. Keep it for A Noble Brew until the final Wetlands root pickup and Gnomeregan city deliveries.
    >>If the flower is absent on your beta build, skip this objective manually and keep A Noble Brew for a later attempt.
    .complete 335,1 -- Tear of Tilloa (1)
    .isOnQuest 335

step
    .isOnQuest 96137
    .goto Duskwood,51,62
    >>Before continuing to the southern worgen, finish Ira's kills in the woods west of Darkshire: |cRXP_ENEMY_Young Black Ravagers|r and |cRXP_ENEMY_Black Ravagers|r. These are not Lars's Starving or Rabid Dire Wolves
    >>Keep the dagger for Sirra during this circuit's final Darkshire return
    .complete 96137,1
    .mob +Young Black Ravager::923
    .complete 96137,2
    .mob +Black Ravager::628

step
    #optional
    #completewith TrioWorgen222Done
    >>While killing the southern worgen, loot An Old History Book if it drops. Keep it unopened for Milton during the Gnomeregan city deliveries; continue when the Worgen objectives are finished even if it does not drop.
    .collect 2794,1,337
    .mob Nightbane Vile Fang::206
    .mob Nightbane Tainted One::920
    .isQuestAvailable 337

step
    .goto Duskwood,58.64,80.00,50,0
    .goto 1431/0,-849.58,-11188.53
    .goto Duskwood,71.9,72.1,0
    #label TrioWorgen222Done
    >>Kill eight Nightbane Vile Fangs and eight Nightbane Tainted Ones together south of the Rotting Orchard before continuing west. Use Roland's Doom near Tranquil Gardens if the southern camps are occupied.
    .complete 222,1 -- Nightbane Vile Fang slain (8)
    .mob +Nightbane Vile Fang::206
    .complete 222,2 -- Nightbane Tainted One slain (8)
    .mob Nightbane Tainted One::920
    .isOnQuest 222

step
    .goto 1431/0,187.33,-11014.02
    >>After the southern worgen, continue west to the Defias house. Open the |cRXP_PICK_Defias Strongbox|r inside and loot the |cRXP_LOOT_Defias Docket|r for every player, then continue to Sven and the Raven Hill elites
    .complete 1244,1 -- Defias Docket (1)

    -- Finish the western elites before the combined Darkshire return.
step
    .goto 1431/0,623.27,-10329.75
    >>Visit Sven after the strongbox. Deliver Grimand's weapon and collect Morbent's Bane before entering Morbent's house.
    .turnin 325 >> Turn in Armed and Ready
    .target Sven Yorgen
    .isOnQuest 325

step
    .goto 1431/0,623.27,-10329.75
    .accept 55 >> Accept Morbent Fel
    .target Sven Yorgen
    .isQuestTurnedIn 325

step
    #completewith next
    >>Equip Morbent's Bane in your off-hand, target Morbent Fel and activate the item before the fight.
    .cast 8913 >> Weaken Morbent Fel with Morbent's Bane
    .use 7297
    .isOnQuest 55

step
    .goto Duskwood,16.90,33.40
    >>Clear the house together. Equip Morbent's Bane in your off-hand and use it on Morbent to remove his protection, then restore your usual weapon or shield. The Warrior tanks, Paladin heals and Warlock deals damage.
    .use 7297
    .complete 55,1
    .mob Morbent Fel
    .isOnQuest 55

step
    .goto 1431/0,623.27,-10329.75
    >>Return to Sven before continuing east through Raven Hill.
    .turnin 55 >> Turn in Morbent Fel
    .target Sven Yorgen
    .isQuestComplete 55

step
    .goto 1431/0,304.40,-10387.71
    >>Find Mor'Ladim patrolling Raven Hill. Clear nearby enemies first and pull him alone. He is level 35 elite: the Warrior uses a shield, the Paladin concentrates on healing and the Warlock deals damage. Loot his skull for every player.
    .complete 228,1
    .unitscan Mor'Ladim
    .isOnQuest 228

step
    .goto 1431/0,54.01,-10270.44
    >>Regroup at Eliza's Grave Dirt behind Abercrombie's hut before summoning her. Kill Eliza and loot the Embalmer's Heart for each player. Interrupt her casts and control the summoned guards; only start another summon once the previous fight is finished.
    .complete 253,1
    .mob Eliza
    .isOnQuest 253

step
    .goto Duskwood,75.7,45.3
    >>Deliver Stalvan's ring to Madame Eva during this combined town return.
    .turnin 98 >> Turn in The Legend of Stalvan
    .target Madame Eva
    .isQuestComplete 98

step
    .goto 1431/0,-1108.78,-10552.05
    .turnin 253 >> Turn in Bride of the Embalmer
    .target Lord Ello Ebonlocke
    .isQuestComplete 253

step
    .goto 1431/0,-1153.60,-10560.69
    .turnin 228 >> Turn in Mor'Ladim
    .target Commander Althea Ebonlocke
    .isQuestComplete 228

step
    .goto 1431/0,-1153.60,-10560.69
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
    .isQuestTurnedIn 228

step
    .goto 1431/0,-1179.25,-10546.11
    >>Talk to Watcher Ladimore as she patrols the square. Keep her farewell for the default 34-35 Raven Hill grave visit.
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .target Watcher Ladimore
    .isOnQuest 229

step
    .goto 1431/0,-1199.82,-10581.49
    >>Deliver the Vile Fang and Tainted One kills during the final Darkshire return.
    .turnin 222 >> Turn in Worgen in the Woods
    .target Calor
    .isQuestComplete 222

step
    .goto 1431/0,-1199.82,-10581.49
    >>Take Calor's recommendation to Jonathan Carevin in the same building.
    .accept 223 >> Accept Worgen in the Woods
    .target Calor
    .isQuestTurnedIn 222

step
    .goto 1431/0,-1200.31,-10599.03
    .turnin 223 >> Turn in Worgen in the Woods
    .target Jonathan Carevin
    .isOnQuest 223

step
    .isQuestComplete 101
    .goto Duskwood,75.7,45.3
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r during the final Darkshire return
    .turnin 101 >> Turn in The Totem of Infliction
    .target Madame Eva
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
    .isQuestComplete 96137
    .goto Duskwood,72.64,47.59
    >>Give |cRXP_LOOT_Ira's Dagger|r to |cRXP_FRIENDLY_Sirra Von'Indi|r during the combined Darkshire return after finishing the Ravagers
    .turnin 96137 >> Turn in Ira's Dagger
    .target +Sirra Von'Indi

step
    .goto 1431/0,-1125.52,-10320.39
    .line Duskwood,74.54,42.90,74.38,40.82,73.87,39.50,72.72,38.91,72.24,37.30,72.20,34.86,72.55,33.54
    >>Return the docket to |cRXP_FRIENDLY_Watcher Backus|r after the Darkshire turn-ins. Take his report back to Elling before the Menethil hearth
    .turnin 1244 >> Turn in The Missing Diplomat
    .accept 1245 >> Accept The Missing Diplomat
    .target Watcher Backus
    .unitscan Watcher Backus

step
    .goto Duskwood,77.554,44.375
    >>Fly to Stormwind to finish the investigation. Keep your home in Menethil for the return
    .fly Stormwind
    .target Felicia Maline

step
    .goto StormwindClassic,59.908,64.177
    >>Report to |cRXP_FRIENDLY_Elling Trias|r upstairs in the cheese shop
    .turnin 1245 >> Turn in The Missing Diplomat
    .accept 1246 >> Accept The Missing Diplomat
    .target Elling Trias

step
    .goto 1453/0,432.60,-8681.20
    >>Gather all three at |cRXP_FRIENDLY_Dashel Stonefist|r before accepting the confrontation. He and two Old Town Thugs will attack
    .turnin 1246 >> Turn in The Missing Diplomat
    .accept 1447,1 >> Accept The Missing Diplomat
    .target Dashel Stonefist

step
    .goto 1453/0,432.60,-8681.20
    >>Defeat |cRXP_ENEMY_Dashel Stonefist|r together. Focus Dashel and control his two thugs; they can become hostile again after resetting
    .complete 1447,1
    .mob Dashel Stonefist

step
    .goto 1453/0,432.60,-8681.20
    >>Speak to |cRXP_FRIENDLY_Dashel Stonefist|r after he submits
    .turnin 1447 >> Turn in The Missing Diplomat
    .accept 1247 >> Accept The Missing Diplomat
    .target Dashel Stonefist

step
    .goto StormwindClassic,59.908,64.177
    >>Return to |cRXP_FRIENDLY_Elling Trias|r. Take the Menethil delivery for Mikhail at the start of the final Wetlands loop
    .turnin 1247 >> Turn in The Missing Diplomat
    .accept 1248 >> Accept The Missing Diplomat
    .target Elling Trias

step
    >>Hearth to Menethil for the final Wetlands loop. Keep five Swiftness Potions each for the bridge jump; the next route starts with Menethil follow-ups and Howin, not Dun Modr. Keep A Daughter's Love for the default 34-35 grave visit.
    .hs >> Hearth to Menethil Harbor
    .unitscan Nightveiled Rotheap::270589

]])
