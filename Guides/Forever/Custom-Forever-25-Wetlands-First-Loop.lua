RXPGuides.RegisterGuide([[
#forever
#version 18
#group Forever Trio Launch
#name 25 Wetlands First Loop
#displayname 25 Wetlands First Loop
#next 25-27 Redridge Return
<< Alliance

-- Agreed Wetlands route, 2026-10-06. New beta NPC locations use text when unverified.

step
    .goto Wetlands,9.49,59.69
    >>Get the flight path. Keep your home in Lakeshire until the batch hearth at the end.
    .fp Menethil Harbor
    .target Shellei Brondir
    .unitscan Nightveiled Rotheap::270589
    *Watch for Nightveiled Rotheap on coastal and inland passes. Keep the first Rotheap Innards for Greenwarden's Malignant Root; save later drops to sell. Innards are Unique: one per player at a time. No camping detour is required.

step
    .goto Wetlands,10.585,60.592
    >>Deliver Sven's message to Glorin if carried.
    .isOnQuest 270
    .turnin 270 >> Turn in The Doomed Fleet
    .target Glorin Steelbrow
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.585,60.592
    >>Accept Lightforge Iron after the delivery; save the coast chain for the last visit.
    .accept 321 >> Accept Lightforge Iron
    .target Glorin Steelbrow
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.8,58.6
    >>Talk to Caitlin; deliver the Ashenvale breadcrumb if carried.
    .isOnQuest 95737
    .turnin 95737 >> Turn in Seeking Caitlin
    .target Caitlin
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.8,58.6
    >>Accept Lost in the Thicket Things
    .accept 95647 >> Accept Lost in the Thicket Things
    >>Accept Alchemical Hazards
    .accept 98282 >> Accept Alchemical Hazards
    .target Caitlin
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.509,55.697
    >>Accept Young Crocolisk Skins to unlock Highland Hides for Excavation Site. Loot young crocolisks only when convenient on the route; finish and turn in during loop 2. Skip the later crocolisk quests.
    .accept 484 >> Accept Young Crocolisk Skins
    .target James Halloran
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,8.359,58.526
    .accept 279 >> Accept Claws from the Deep
    .target Karl Boran
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.89,59.66
    >>Accept The Cursed Crew before heading back to the murlocs.
    .accept 289 >> Accept The Cursed Crew
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.89,59.66
    >>Accept The Third Fleet
    .accept 288 >> Accept The Third Fleet
    >>Accept The Greenwarden
    .accept 463 >> Accept The Greenwarden
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.861,57.486
    .accept 464 >> Accept War Banners
    .accept 98221 >> Accept From the Ashes
    .target Captain Stoutfist
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.458,52.163
    >>Accept In Search of The Excavation Team
    .accept 305 >> Accept In Search of The Excavation Team
    .target Tarrel Rockweaver
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.69,60.95
    >>Buy a Flagon of Dwarven Honeymead from the innkeeper.
    .complete 288,1
    .target Innkeeper Helbrek
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.89,59.66
    >>Turnin The Third Fleet
    .turnin 288 >> Turnin The Third Fleet
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.843,60.435
    .isOnQuest 942
    >>Deliver the Darkshore prospector report upstairs before accepting the Wetlands follow-up.
    .turnin 942 >> Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.843,60.435
    >>If the Darkshore prospector delivery chain was completed, accept its Wetlands objectives upstairs.
    .isQuestAvailable 943
    .accept 943 >> Accept The Absent Minded Prospector
    .target Archaeologist Flagongut
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,16.26,39.41
    >>Finish Claws from the Deep on the murloc shore, then continue north to the shipwrecks. Save the Menethil turn-in until the end of this inland circuit.
    .complete 279,1
    >>Kill Gobbler and loot his head.
    .complete 279,2
    .mob Bluegill Murloc
    .mob Gobbler
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,15,24
    >>Continue north from the murloc shore to the shipwrecks and complete The Cursed Crew. Head inland to Greenwarden without returning to Menethil; save both shore turn-ins for the final return.
    .complete 289,1
    .complete 289,2
    .complete 289,3
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig
    .unitscan Nightveiled Rotheap::270589

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
    .link https://www.wowhead.com/forever/npc=270637/howin-kindfeather >> View Howin's location
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
    .goto Wetlands,38.809,52.386
    >>Accept Uncovering the Past
    .accept 299 >> Accept Uncovering the Past
    .target Prospector Whelgar
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
    .goto Wetlands,8.359,58.526
    >>Turn in Claws from the Deep on this final Menethil return. Keep Reclaiming Goods for the coast pass in loop 2.
    .turnin 279 >> Turnin Claws from the Deep
    .accept 281 >> Accept Reclaiming Goods
    .target Karl Boran
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.89,59.66
    >>Turn in The Cursed Crew on this final Menethil return and accept its follow-up.
    .turnin 289 >> Turnin The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.458,52.163
    >>Turnin In Search of The Excavation Team
    .turnin 306 >> Turnin In Search of The Excavation Team
    .target Tarrel Rockweaver
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.861,57.486
    >>On the final Menethil return, deliver both Dragonmaw quests and collect Nek'rosh's Gambit for loop 2. This Land Was Their Land is collected after defeating Nek'rosh in loop 2.
    .turnin 464 >> Turn in War Banners
    .turnin 98221 >> Turn in From the Ashes
    .accept 465 >> Accept Nek'rosh's Gambit
    .target Captain Stoutfist
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,11.8,58.6
    >>Turnin Alchemical Hazards
    .turnin 98282 >> Turnin Alchemical Hazards
    .target Caitlin
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
    >>Talk to |cRXP_FRIENDLY_Innkeeper Helbrek|r with your Hearthstone still bound to Lakeshire. Wait for everyone's Hearthstone to be ready
    >>Enable RXP Hearthstone batching. Open the "Make this inn your home" confirmation and leave it open, then use Hearthstone. RXP confirms the new Menethil bind as the cast finishes; do not confirm it early
    .hs >> Batch hearth to Lakeshire while setting your new home to Menethil Harbor
    .target Innkeeper Helbrek
    .unitscan Nightveiled Rotheap::270589

]])
