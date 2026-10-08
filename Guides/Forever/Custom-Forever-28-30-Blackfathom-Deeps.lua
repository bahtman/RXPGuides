RXPGuides.RegisterGuide([[
#forever
#version 12
#group Forever Trio Launch
#name 25 Blackfathom Deeps
#displayname 25 Blackfathom Deeps
#next 25 Wetlands First Loop
<< Alliance

-- Full Alliance BFD quest route from Guides/Era.lua: 03. Blackfathom Deeps.
-- Knowledge in the Deeps is picked up in the earlier Loch Modan/Ironforge visit.
-- Keep the Lakeshire bind through BFD and the first Wetlands loop.


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
    .zone Wetlands >> Take the boat to Menethil Harbor, then fly to Ironforge
    .zoneskip Ironforge
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
step << Priest
    .goto Ironforge,25.207,10.756
    >>Talk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << Warrior
    .goto Ironforge,65.905,88.405
    >>Talk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    +Visit the Auction House. Sell spare loot and buy any needed upgrades or supplies before returning to Menethil Harbor
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    #completewith next
    .goto Ironforge,55.501,47.742
    >>Return to Menethil Harbor after collecting the Ironforge reward, training and visiting the Auction House. Keep your home in Lakeshire for the first Wetlands loop
    .fly Wetlands >> Fly to Menethil Harbor

step
    .zone Wetlands >> Regroup in Menethil Harbor for the first Wetlands loop

]])
