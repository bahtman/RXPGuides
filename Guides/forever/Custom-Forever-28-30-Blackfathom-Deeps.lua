RXPGuides.RegisterGuide([[
#forever
#version 23
#group Forever Trio Launch
#name 25-26 Blackfathom Deeps
#displayname 25-26 Blackfathom Deeps
#next 26-26 Wetlands First Loop
<< Alliance

-- Full Alliance BFD quest route from Guides/Era.lua: 03. Blackfathom Deeps.
-- Knowledge in the Deeps is picked up in the earlier Loch Modan/Ironforge visit.
-- Keep the Stormwind bind through BFD and the first Wetlands loop.

step
    .isOnQuest 97926
    .goto 1439,37.394,40.128
    >>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r in Auberdine. Deliver Baros's reply from the Stormwind visit after Ashenvale before heading to Blackfathom Deeps
    .turnin 97926 >> Turn in Making Do
    .target Thundris Windweaver

step
        .isQuestComplete 995
        .goto 1439,39.373,43.483
        >>Talk to |cRXP_FRIENDLY_Terenthis|r. Collect the Volcor reward saved from Darkshore before heading to Blackfathom Deeps.
        .turnin 995 >> Turn in Escape Through Stealth
        .target Terenthis
step
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Turn in The Corruption Abroad
    .accept 1275 >> Accept Researching the Corruption
    .target Gershala Nightwhisper
step
    .goto Darkshore,36.71,44.98,5,0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Ashenvale >> Fly to Ashenvale
    .target Caylais Moonfeather
    .zoneskip Ashenvale
step
    .isQuestComplete 1134
    .goto 1440/1,-299.30,2796.01
    .target Shindrell Swiftfire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >> Turn in Pridewings of Stonetalon
step << Warlock
    .isOnQuest 1738
    #completewith BFDHeartswood
    .goto 1440/1,158.57,2945.15,100,0
    .goto 1440/1,-116.5,3462.14,40 >> Travel to The Ruins of Ordil'Aran while the Warrior and Paladin gather Wool Cloth on the northern furbolg route.

step << Warlock
    .isOnQuest 1738
    #label BFDHeartswood
    .goto 1440/1,-116.5,3462.140
    >>Loot the |cRXP_LOOT_Heartswood|r at the giant tree. Keep it for Gakin in Stormwind after BFD and regroup before entering the dungeon.
    .complete 1738,1

step
    .goto Ashenvale,37.6,34.0,0
    +Start looking for a group for BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    >>Grind |cRXP_ENEMY_Furbolgs|r north of Astranaar for |T132911:0|t[Wool Cloth] while you assemble a group
    .subzoneskip 2797
step
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414,43.97,35.30,50 >> Travel to Blackfathom Deeps
    .subzoneskip 2797
step
    #completewith next
    >>Kill |cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r and |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once inside the Instance|r
    .complete 1275,1
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
    #label EnterBFD
    .goto 1414,43.83,35.11,25,0
    .goto 1414,43.92,34.56,25,0
    .goto 1414,44.02,34.57,25,0
    .goto 1414,44.340,34.840
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
step
    #completewith Kelris
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1
    .isOnQuest 1275
step
    #label manuscript
    #sticky
    >>Open the |cRXP_PICK_Pitted Iron Chest|r underwater near the area with the turtles. Loot it for |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1
    .isOnQuest 971
step
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Turn in Search of Thaelrid
    .accept 1200 >> Accept Blackfathom Villainy
step
    #requires manuscript
    #completewith Kelris
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1
    .isOnQuest 1199
step
    #requires manuscript
    #label Kelris
    >>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 1200,1
    .isOnQuest 1200
step
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1
    .isOnQuest 1199
step
    #label FinalStem
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
    .complete 1275,1
    .isOnQuest 1275
step
    #optional
    +Talk to |cRXP_FRIENDLY_Morridune|r at the end of the dungeon if you are still inside BFD to be teleported to Darnassus
    .target Morridune
    .zoneskip Ashenvale
    .zoneskip Teldrassil
    .zoneskip Darnassus
step
    #completewith DarnEnd
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Daelyshia
    .zoneskip Teldrassil
    .zoneskip Darnassus
step
    #sticky
    #label DarnBFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r up stairs
    .turnin 1199 >> Turn in Twilight Falls
    .goto Darnassus,55.239,23.996
    .target Argent Guard Manados
    .isQuestComplete 1199
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r up stairs
    .turnin 1200 >> Turn in Blackfathom Villainy
    .goto Darnassus,56.167,24.395
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #include Forever Trio Launch\01-60 City Supplies - Darnassus

step
    #requires DarnBFD
    #label DarnEnd
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Take the purple portal back to Rut'theran
    .zoneskip Darkshore
    .zoneskip Ashenvale
    .subzoneskip 2797
step
    #completewith next
    .goto Ashenvale,34.41,47.98,-1
    .goto Teldrassil,58.399,94.016,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r or |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore >> Fly to Darkshore
    .zoneskip Darkshore
    .target Daelyshia
    .target Vesprystus
step
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Turn in Researching the Corruption
    .target Gershala Nightwhisper
    .isQuestComplete 1275
step
    #completewith KitD
    .zone Ironforge >> Travel to Ironforge
step
    .goto Darkshore,32.29,44.05
    .zone Wetlands >> Take the boat to Menethil Harbor for quest pickups before flying to Ironforge
    .zoneskip Ironforge
step
    .goto Wetlands,9.49,59.69
    >>Get the flight path. Keep your home in Stormwind City until the batch hearth at the end.
    .fp Menethil Harbor
    .target Shellei Brondir
    .unitscan Nightveiled Rotheap::270589
    *Watch for Nightveiled Rotheap on coastal and inland passes. Keep the first Rotheap Innards for Greenwarden's Malignant Root; save later drops to sell. Innards are Unique: one per player at a time. No camping detour is required.

step
    .goto Wetlands,10.89,59.66
    >>Accept The Third Fleet
    .accept 288 >> Accept The Third Fleet
    >>Accept The Greenwarden
    .accept 463 >> Accept The Greenwarden
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589


step
    .goto Wetlands,10.69,60.95
    >>Buy a Flagon of Dwarven Honeymead from the innkeeper.
    .complete 288,1
    .target Innkeeper Helbrek
    .unitscan Nightveiled Rotheap::270589


step
    .goto Wetlands,10.585,60.592
    >>Deliver Sven's message to Glorin if carried.
    .isOnQuest 270
    .turnin 270 >> Turn in The Doomed Fleet
    .accept 321 >> Accept Lightforge Iron
    .target Glorin Steelbrow
    .unitscan Nightveiled Rotheap::270589


step
    .goto Wetlands,10.843,60.435
    .isOnQuest 942
    >>Deliver the Darkshore prospector report upstairs before accepting the Wetlands follow-up.
    .turnin 942 >> Turn in The Absent Minded Prospector
    .accept 943 >> Accept The Absent Minded Prospector
    .target Archaeologist Flagongut
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,10.89,59.66
    >>Turnin The Third Fleet
    .turnin 288 >> Turnin The Third Fleet
    .target First Mate Fitzsimmons
    .unitscan Nightveiled Rotheap::270589


step
    .goto Wetlands,10.89,59.66
    >>Accept The Cursed Crew for the coast pass at the end of the first Wetlands loop.
    .accept 289 >> Accept The Cursed Crew
    .target First Mate Fitzsimmons
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
    .goto Wetlands,8.359,58.526
    .accept 279 >> Accept Claws from the Deep
    .target Karl Boran
    .unitscan Nightveiled Rotheap::270589
step
    .goto Wetlands,8.509,55.697
    >>Accept Young Crocolisk Skins to unlock Highland Hides for Excavation Site. Collect the skins during the first Wetlands loop and turn them in on the final Menethil return. Warlock: finish yours between the dam and Greenwarden. Skip the later crocolisk quests.
    .accept 484 >> Accept Young Crocolisk Skins
    .target James Halloran
    .unitscan Nightveiled Rotheap::270589

step
    .goto Wetlands,9.861,57.486
    .accept 464 >> Accept War Banners
    .accept 98221 >> Accept From the Ashes
    .target Captain Stoutfist
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
    .goto Wetlands,11.458,52.163
    >>Deliver Hollee's note to Tarrel, then accept In Search of The Excavation Team.
    .turnin -98461 >> Turn in Unrequited Love
    .accept 305 >> Accept In Search of The Excavation Team
    .target Tarrel Rockweaver
    .unitscan Nightveiled Rotheap::270589

step
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
    .zoneskip Ironforge
step
    #label KitD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 971 >> Turn in Knowledge in the Deeps
    .target Gerrig Bonegrip
step << Warlock
    .goto Ironforge,50.343,5.657
    >>Talk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step << Warrior
    .goto Ironforge,65.905,88.405
    >>Talk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
step
    #include Forever Trio Launch\01-60 City Supplies - Ironforge

step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    +Visit the Auction House. Sell spare loot and buy any needed upgrades or supplies before heading to Wetlands. Warlock takes the dam detour; Warrior and Paladin fly to Menethil
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Warlock
    .isOnQuest 79974
    .goto Ironforge,55.501,47.742
    >>Visit Stonewrought Dam for Wet Job before meeting the party at Greenwarden in Wetlands. Keep your home in Stormwind City
    .fly Loch Modan >> Fly to Thelsamar
    .target Gryth Thurden
    .zoneskip Loch Modan
step << Warlock
    .isOnQuest 79974
    #completewith TrioWetJobFigurine
    .goto 1432/0,-3124.9424,-4719.2875,50,0
    .goto 1432/0,-3175.9715,-4678.0808,60,0
    .goto 1432/0,-3356.3665,-4724.8062,8 >> Follow the dam wall and carefully drop onto the ledge in the center of Stonewrought Dam
step << Warlock
    #label TrioWetJobFigurine
    .isOnQuest 79974
    .goto 1432/0,-3356.9458,-4725.1189
    >>Click the |cRXP_PICK_Carved Figurine|r on the ledge
    .turnin 79974 >> Turn in Wet Job
step << Warlock
    .isQuestTurnedIn 79974
    .isQuestAvailable 79975
    .goto 1432/0,-3356.9458,-4725.1189
    >>Click the |cRXP_PICK_Carved Figurine|r. Keep Eagle's Fist for a later visit to Thoradin's Wall
    .accept 79975 >> Accept Eagle's Fist
step << Warlock
    .zoneskip Loch Modan,1
    >>After collecting the dam clue, jump down into the deep water below Stonewrought Dam and swim out into Wetlands. Aim clear of the rocks and ledges
    .zone Wetlands >> Descend from Stonewrought Dam into Wetlands
step
    #completewith next
    .zoneskip Wetlands
    .goto Ironforge,55.501,47.742
    >>Fly to Menethil Harbor, then head inland to meet the Warlock at Greenwarden. Keep your home in Stormwind City
    .fly Wetlands >> Fly to Menethil Harbor
step
    .zone Wetlands >> Enter Wetlands for the Greenwarden rendezvous


]])
