RXPGuides.RegisterGuide([[
#forever
#version 27
#group Forever Trio Launch
#name 26-26 Wetlands First Loop
#displayname 26-26 Wetlands First Loop
#next 26-27 Redridge Return
<< Alliance

-- Agreed Wetlands route, 2026-10-06. New beta NPC locations use text when unverified.

step << Warlock
    .isOnQuest 484
    .goto Wetlands,56.37,40.40,0
    >>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r and loot their skins while moving north from the dam toward Greenwarden. Finish your skins before meeting the party
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << !Warlock
    #completewith TrioFirstLoopCoast
    .isOnQuest 484
    >>Loot |cRXP_ENEMY_Young Wetlands Crocolisks|r as you travel inland from Menethil and during the loop. Finish your skins before the final coast pass
    .complete 484,1
    .mob Young Wetlands Crocolisk

step
    .goto Wetlands,56.37,40.40
    >>Turnin The Greenwarden
    .turnin 463 >> Turnin The Greenwarden
    >>Accept Tramping Paws
    .accept 276 >> Accept Tramping Paws
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589
    *If carrying your first Rotheap Innards, exchange them with Greenwarden for Malignant Root. Keep later Innards for sale.

step
    .goto Wetlands,62.34,69.34
    >>Kill Mosshide Gnolls.
    .complete 276,1
    >>Kill Mosshide Mongrels.
    .complete 276,2
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,51.914,62.692
    >>Kill Leech Stalkers near Thelgen Rock entrance for an Unruptured Stalker Gland.
    .complete 98282,1
    .mob Leech Stalker
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,56.37,40.40
    >>Turnin Tramping Paws
    .turnin 276 >> Turnin Tramping Paws
    >>Accept Fire Taboo
    .accept 277 >> Accept Fire Taboo
    .target Rethiel the Greenwarden
    .unitscan Nightveiled Rotheap::270589
    *If carrying your first Rotheap Innards, exchange them with Greenwarden for Malignant Root. Keep later Innards for sale.
step
    >>On the way to Whelgar, kill suitable Mosshide gnolls for Fire Taboo when convenient. Do not farm to finish it or return to Greenwarden; complete and turn in during loop 2.
    #completewith ExcavationArrival
    .complete 277,1
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute
    .unitscan Nightveiled Rotheap::270589

step
    >>Pass Howin Kindfeather along the road between Greenwarden and Angerfang. Collect both Raptor Ridge quests now; complete them during loop 2.
    .goto Wetlands,49.4,42.1
    .accept 98245 >> Accept Razormaw Needling
    .accept 98246 >> Accept Trying Times
    .target Howin Kindfeather
    .unitscan Nightveiled Rotheap::270589


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
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.17,50.88,30
    >>Travel to Whelgar's camp.
    #label ExcavationArrival
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.909,52.340
    >>Turnin In Search of The Excavation Team
    .turnin 305 >> Turnin In Search of The Excavation Team
    >>Accept In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team
    .target Merrin Rockweaver
    .unitscan Nightveiled Rotheap::270589
step
    .goto Wetlands,38.809,52.386
    >>Accept Uncovering the Past
    .accept 299 >> Accept Uncovering the Past
    .target Prospector Whelgar
    .unitscan Nightveiled Rotheap::270589
step
    .goto Wetlands,38.17,50.88
    >>Accept Ormer's Revenge
    .accept 294 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.858,52.208
    >>If the Darkshore prospector chain was completed, accept the Wetlands follow-up from Flagongut in Menethil on arrival/return. Complete it alongside the raptors when carried.
    .isOnQuest 943
    .complete 943,2
    .target Prospector Whelgar
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,22.8,50.6
    >>Kill Mottled Raptors and Mottled Screechers.
    .complete 294,1
    .complete 294,2
    .mob Mottled Raptor
    .mob Mottled Screecher
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 294 >> Turnin Ormer's Revenge
    >>Accept Ormer's Revenge
    .accept 295 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
    .unitscan Nightveiled Rotheap::270589



step
    >>Loot relic containers and loose soil while clearing Ormer's raptors.
    #completewith next
    .complete 299,1
    .complete 299,2
    .complete 299,3
    .complete 299,4
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,34.33,47.81
    >>Kill Mottled Scytheclaws and Mottled Razormaws.
    .complete 295,1
    .complete 295,2
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw
    .unitscan Nightveiled Rotheap::270589

step
    >>Loot relic containers and loose soil while clearing Ormer's raptors.
    #completewith next
    .complete 299,1
    .complete 299,2
    .complete 299,3
    .complete 299,4
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.17,50.88
    .turnin 295 >> Turnin Ormer's Revenge
    .accept 296 >> Accept Ormer's Revenge
    .target Ormer Ironbraid
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.809,52.386
    .turnin 299 >> Turnin Uncovering the Past
    .accept 98216 >> Accept Understanding Our Present
    .target Prospector Whelgar
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,33.25,51.50
    >>Kill Sarltooth and loot his talon.
    .complete 296,1
    .mob Sarltooth
    .unitscan Nightveiled Rotheap::270589

step
    >>Complete Understanding Our Present: use the provided Goaz Stone on the Goaz Warder, defeat it and loot its keystone.
    .complete 98216,1
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.809,52.386
    .turnin 98216 >> Turnin Understanding Our Present
    .accept 98310 >> Accept Gleaning Our Future
    >>Keep Gleaning Our Future: collect Modr and Neru during loop 2, then Ados and Golm during loop 3. Save the Whelgar turn-in until after Excavation Site.
    .target Prospector Whelgar
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,38.17,50.88
    >>Turnin Ormer's Revenge
    .turnin 296 >> Turnin Ormer's Revenge
    .target Ormer Ironbraid
    .unitscan Nightveiled Rotheap::270589

step
    >>If carrying the prospector quest, finish the Stone of Relu from raptors before leaving.
    .isOnQuest 943
    .complete 943,1
    .mob Mottled Raptor
    .mob Mottled Screecher
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw
    .unitscan Nightveiled Rotheap::270589

step
    .isOnQuest 484
    >>Finish any remaining |cRXP_LOOT_Young Crocolisk Skins|r before the coast pass and final Menethil turn-ins
    .complete 484,1
    .mob Young Wetlands Crocolisk

step
    #label TrioFirstLoopCoast
    .goto Wetlands,16.26,39.41
    >>Finish Claws from the Deep on the murloc shore, then continue north to the shipwrecks. Return to Menethil after both coastal objectives are finished.
    .complete 279,1
    >>Kill Gobbler and loot his head.
    .complete 279,2
    .mob Bluegill Murloc
    .mob Gobbler
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,15,24
    >>Continue north from the murloc shore to the shipwrecks and complete The Cursed Crew. Return to Menethil afterward for all the saved turn-ins.
    .complete 289,1
    .complete 289,2
    .complete 289,3
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.458,52.163
    >>Turnin In Search of The Excavation Team
    .turnin 306 >> Turnin In Search of The Excavation Team
    .target Tarrel Rockweaver
    .unitscan Nightveiled Rotheap::270589

step
    .zoneskip Wetlands,1
    .bronzetube
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>Check |cRXP_FRIENDLY_Neal Allen|r inside Menethil Keep for a |cRXP_BUY_Bronze Tube|r. Keep one per player for the level-27 Darkshire visit; trade party stock before buying more
    >>Limited supply: continue if he is out of stock
    .vendor >> Check Bronze Tube stock
    .target Neal Allen

step
    .goto Wetlands,9.861,57.486
    >>On the final Menethil return, deliver both Dragonmaw quests and collect Nek'rosh's Gambit for loop 2. This Land Was Their Land is collected after defeating Nek'rosh in loop 2.
    .turnin 464 >> Turn in War Banners
    .turnin 98221 >> Turn in From the Ashes
    .accept 465 >> Accept Nek'rosh's Gambit
    .target Captain Stoutfist
    .unitscan Nightveiled Rotheap::270589
step
    .goto Wetlands,8.509,55.697
    >>Turn in Young Crocolisk Skins. Skip Apprentice's Duties and Crocs of the Sky.
    .turnin 484 >> Turn in Young Crocolisk Skins
    .accept 98815 >> Accept Highland Hides
    .target James Halloran
    .unitscan Nightveiled Rotheap::270589

step
    >>After turning in Young Crocolisk Skins, talk to Sylessa Duskwhisper in Menethil Harbor and pick up her flower quest now. Keep it for the southern shipwreck alongside Lightforge during Wetlands loop 2.
    .link https://www.wowhead.com/forever/npc=270844/sylessa-duskwhisper >> View Sylessa's location
    .accept 98208 >> Accept Bloom of the Heavens
    .target Sylessa Duskwhisper::270844



step
    .goto Wetlands,8.359,58.526
    >>Turn in Claws from the Deep on this final Menethil return. Keep Reclaiming Goods for the coast pass in loop 2.
    .turnin 279 >> Turnin Claws from the Deep
    .accept 281 >> Accept Reclaiming Goods
    .target Karl Boran
    .unitscan Nightveiled Rotheap::270589
step
    .goto Wetlands,11.796,57.991
    >>Talk to Sida during this Menethil return and accept Digging Through the Ooze. Keep it for the ooze hunt during Wetlands loop 2
    .accept 470 >> Accept Digging Through the Ooze
    .target Sida
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.8,58.6
    >>Turnin Alchemical Hazards
    .turnin 98282 >> Turnin Alchemical Hazards
    .target Caitlin
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.89,59.66
    >>Turn in The Cursed Crew on this final Menethil return and accept its follow-up.
    .turnin 289 >> Turnin The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589




step
    .goto Wetlands,10.843,60.435
    >>Turn in the completed prospector quest when carried.
    .isQuestComplete 943
    .turnin 943 >> Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.69,60.95
    >>Talk to |cRXP_FRIENDLY_Innkeeper Helbrek|r with your Hearthstone still bound to Stormwind City. Wait for everyone's Hearthstone to be ready
    >>Enable RXP Hearthstone batching. Open the "Make this inn your home" confirmation and leave it open, then use Hearthstone. RXP confirms the new Menethil bind as the cast finishes; do not confirm it early
    .hs >> Batch hearth to Stormwind while setting your new home to Menethil Harbor
    .target Innkeeper Helbrek
    .unitscan Nightveiled Rotheap::270589

step
    #include Forever Trio Launch\01-60 City Supplies - Stormwind

step
    #ah
    .goto Stormwind City,61.1,70.7
    >>During this city visit, buy |cRXP_BUY_ONE Swiftness Potion|r per player for the MacKreel jump in Wetlands loop 2. Buy only one if you have none, collect it from the mailbox, and save it for the jump
    .collect 2459,1 -- Swiftness Potion (1)

step << Warlock
    .isQuestComplete 1738
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.90,15,0
    .goto 1453/0,1041.54,-8982.94
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r downstairs in The Slaughtered Lamb. Deliver the Heartswood gathered before BFD.
    .turnin 1738 >> Turn in Heartswood
    .accept 1739 >> Accept The Binding
    .target Gakin the Darkbinder

step << Warlock
    .isOnQuest 1739
    #completewith TrioSuccubus
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>Travel to the bottom of The Slaughtered Lamb. Use the |cRXP_LOOT_Heartswood Core|r to summon the Succubus.
    .cast 8674
    .use 6913

step << Warlock
    .isOnQuest 1739
    #label TrioSuccubus
    .goto 1453/0,1042.83,-8972.68
    >>Use the |cRXP_LOOT_Heartswood Core|r and defeat the |cRXP_ENEMY_Summoned Succubus|r.
    .use 6913
    .complete 1739,1
    .mob Summoned Succubus

step << Warlock
    .isQuestComplete 1739
    .goto 1453/0,1041.54,-8982.94
    >>Return to |cRXP_FRIENDLY_Gakin the Darkbinder|r, then regroup for the Lakeshire flight.
    .turnin 1739 >> Turn in The Binding
    .target Gakin the Darkbinder

step
    .goto Stormwind City,70.9,72.6
    >>Talk to |cRXP_FRIENDLY_Dungar Longdrink|r after training and the Auction House. Fly to Lakeshire for the Redridge return, keeping Stormwind City as home.
    .fly Redridge >> Fly to Lakeshire
    .target Dungar Longdrink
    .zoneskip Redridge Mountains

]])
