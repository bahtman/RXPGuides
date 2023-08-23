local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter !NightElf
#name 13-15 Darkshore
#version 1
#group RestedXP Alliance Speed 1-20
#defaultfor !Hunter !NightElf
#next 15-16 Westfall

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >> Accept Washed Ashore
step << !NightElf
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Caylais Moonfeather|r
	.target Caylais Moonfeather
    .goto Felwood,19.10,20.63
    .fp Auberdine >> Get the Auberdine flight path

step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Travel up stairs toward |cFF00FF25Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    .accept 983 >> Accept Buzzbox 827
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wizbang Cranktoggle|r
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Kill |cFFFF5722Pygmy Tide Crawlers|r and |cFFFF5722Young Reef Crawlers|r. Loot them for their |cFF00BCD4Legs|r
    >>|cFFFCDC00You may need to go in the water for them|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Loot the |cFFDB2EEFBeached Sea Creature|r for the |cFF00BCD4Sea Creature Bones|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Discover the Furbolg Camp
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cFFFCDC00Use|r |T134335:0|t[Tharnariun's Hope] |cFFFCDC00on a|r |cFFFF5722Rabid Thistle Bear|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Kill |cFFFF5722Pygmy Tide Crawlers|r and |cFFFF5722Young Reef Crawlers|r. Loot them for their |cFF00BCD4Legs|r
    >>|cFFFCDC00You may need to go in the water for them|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Click the |cFFDB2EEFBuzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >>Click the |cFFDB2EEFBuzzbox 827|r on the ground
    .accept 1001 >> Accept Buzzbox 411
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Travel toward |cFF00FF25Cerellean Whiteclaw|r on the dock
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cerellean Whiteclaw|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> Travel to the end of the dock then jump into the water
step
    #era/som
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Kill |cFFFF5722Darkshore Threshers|r. Loot them for their |cFF00BCD4Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Loot the |cFFDB2EEFSkeletal Sea Turtle|r for the |cFF00BCD4Sea Turtle Remains|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >> Accept The Red Crystal
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
    .accept 954 >> Accept Bashal'Aran
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Kill |cFFFF5722Darkshore Threshers|r. Loot them for their |cFF00BCD4Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Swim to the wrecked Silver Dawning ship
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cFFFCDC00Enter the wrecked Silver Dawning ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cFF00BCD4Silver Dawning's Lockbox|r on the ground
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Swim to the wrecked Mist Veil ship
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cFFFCDC00Enter the wrecked Mist Veil ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cFF00BCD4Mist Veil's Lockbox|r on the ground
    .complete 982,2
step
	#era/som
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >>Kill |cFFFF5722Darkshore Threshers|r. Loot them for their |cFF00BCD4Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >>Click the |cFFDB2EEFBuzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cFFDB2EEFBeached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
    #completewith Ameth
    >>Kill |cFFFF5722Foreststriders|r and |cFFFF5722Foreststrider Fledglings|r. Loot them for their |cFF00BCD4Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >>Kill |cFFFF5722Moonstalkers|r and |cFFFF5722Moonstalker Runts|r. Loot them for their |cFF00BCD4Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >>Kill |cFFFF5722Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cFFFCDC00Use the|r |T134865:0|t[Empty Sampling Tube] |cFFFCDC00at the base of the Cliffspring River|r
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> Travel to Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    >>|cFFFCDC00Avoid killing |cFFFF5722Wild Grells|r and |cFFFF5722Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Kill |cFFFF5722Wild Grells|r and |cFFFF5722Vile Sprites|r. Loot them for their |cFF00BCD4Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Kill |cFFFF5722Deth'ryll Satyr|r. Loot them for the |cFF00BCD4Moonstone Seal|r
    .complete 956,1
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step
    #completewith next
    >>Kill |cFFFF5722Moonkin|r. Loot them for their |T132832:0|t[|cFF00BCD4Small Eggs|r]
    >>|cFFFCDC00You will level|r |T133971:0|t[Cooking] |cFFFCDC00to 10 later using|r |T132832:0|t[|cFF00BCD4Small Eggs|r]
    .collect 6889,9,2178 -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
#map Darkshore
    .goto Felwood,31.29,24.14
>> Travel to |cFFDB2EEFThe Red Crystal|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Kill |cFFFF5722Moonkin|r. Loot them for their |T132832:0|t[|cFF00BCD4Small Eggs|r]
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .collect 6889,9,2178 -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >> Travel south toward |cFF00FF25Sentinel Tysha Moonblade|r at Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Accept The Fall of Ameth'Aran
step
    #completewith TheLay
    >>Kill |cFFFF5722Anaya Dawnrunner|r. Loot her for her |cFF00BCD4Pendant|r
    >>|cFFFF5722Anaya Dawnrunner|r |cFFFCDC00patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Kill |cFFFF5722Cursed Highbornes|r, |cFFFF5722Writhing Highbornes|r and |cFFFF5722Wailing Highbornes|r. Loot them for their |cFF00BCD4Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Click the |cFFDB2EEFThe Fall of Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Click the |cFFDB2EEFAncient Flame|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Click the |cFFDB2EEFThe Lay of Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Kill |cFFFF5722Anaya Dawnrunner|r. Loot her for her |cFF00BCD4Pendant|r
    >>|cFFFF5722Anaya Dawnrunner|r |cFFFCDC00patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Kill |cFFFF5722Cursed Highbornes|r, |cFFFF5722Writhing Highbornes|r and |cFFFF5722Wailing Highbornes|r. Loot them for their |cFF00BCD4Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Kill |cFFFF5722Anaya Dawnrunner|r. Loot her for her |cFF00BCD4Pendant|r
    >>|cFFFF5722Anaya Dawnrunner|r |cFFFCDC00patrols Ameth'Aran. She has a long respawn timer and if she isn't up right now, you may skip this step|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    #era/som
    #completewith ReturnAuber
    >>Kill |cFFFF5722Moonstalkers|r and |cFFFF5722Moonstalker Runts|r. Loot them for their |cFF00BCD4Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >>Kill |cFFFF5722Foreststriders|r and |cFFFF5722Foreststrider Fledglings|r. Loot them for their |cFF00BCD4Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >>Kill |cFFFF5722Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >>Kill |cFFFF5722Blackwood Pathfinders|r and |cFFFF5722Blackwood Windtalkers|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >>Click the |cFFDB2EEFBeached Sea Creature|r
    .accept 4728 >> Accept Beached Sea Creature
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Kill |cFFFF5722Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Kill |cFFFF5722Foreststriders|r and |cFFFF5722Foreststrider Fledglings|r. Loot them for their |cFF00BCD4Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >> Travel to Auberdine

step
#map Darkshore
    #label ManyBeached
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4728 >> Turn in Beached Sea Creature
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4725 >> Turn in Beached Sea Turtle

step
    #map Darkshore
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gubber Blump|r
        .target Gubber Blump
        .goto Felwood,18.50,19.87
        .accept 1138 >> Accept Fruit of the Sea
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Travel toward |cFF00FF25Cerellean Whiteclaw|r on the dock
step
#map Darkshore
	.isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cerellean Whiteclaw|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >> Turn in For Love Eternal
step
    #map Darkshore
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Barithras Moonshade|r
        .target Barithras Moonshade
        .goto Felwood,19.90,18.40
        .accept 947 >> Accept Cave Mushrooms
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Archaeologist Hollee|r
	.target Archaeologist Hollee
    .goto Felwood,20.04,16.35
    .accept 729 >> Accept The Absent Minded Prospector
step
#map Darkshore
    #completewith next
    .goto Felwood,20.80,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gorbold Steelhand|r
    .vendor 6301 >> Buy |T134059:0|t[Mild Spices]
    >>|cFFFCDC00Use the|r |T134059:0|t[Mild Spices] |cFFFCDC00and your|r |T132832:0|t[Small Eggs] |cFFFCDC00to make Herb Baked Eggs. Do this until your Cooking has reached level 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cFFFCDC00Use your|r |T133971:0|t[Cooking] |cFFFCDC00profession to make Herb Baked Eggs. Do this until your|r |T133971:0|t[Cooking] |cFFFCDC00has reached level 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    #label ezstrider
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >> Turn in Tools of the Highborne
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Elissa Starbreeze|r up stairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze

    step
    #map Darkshore
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Glynda Nal'Shea|r
        .target Sentinel Glynda Nal'Shea
        .goto Felwood,20.34,18.12
        .turnin 4811 >> Turn in The Red Crystal
        .accept 4812 >> Accept As Water Cascades
    step
        .goto Darkshore,37.78,44.06
        .use 14338 >>|cFFFCDC00Use the|r |T134865:0|t[Empty Water Tube] |cFFFCDC00at the|r |cFFDB2EEFAuberdine Moonwell|r
        .use 12346 >> |cFFFCDC00Use the|r Empty Cleansing Bowl |cFFFCDC00at the|r |cFFDB2EEFAuberdine Moonwell|r
        .complete 4812,1

step
    >> BATCH HS BATCH HS
    .hs >> Batch HS to ironforge. (SET HS IN AUBERDINE)


step
    #completewith next
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >> |cFFFCDC00Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cFFFCDC00Click here for a video guide|r
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cFFFCDC00Level your|r |T135966:0|t[First Aid] |cFFFCDC00and|r |T133971:0|t[Cooking] |cFFFCDC00if needed while waiting for the tram|r
    >>You will need your |T135966:0|t[First Aid] to be 80 for a quest at level 24 << Rogue !Dwarf

step
    .goto StormwindClassic, 49.0, 30.2
    .target Baros Alexston
    >> Talk to |cFF00FF25Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings

step << Paladin
    >>Do the quests for Duthorian Rall
    .goto StormwindClassic,39.80,29.77
>>Talk to |cFF00FF25Duthorian Rall|r
    .turnin 1641 >> Turn in The Tome of Divinity
    .collect 6775,1,1642 --Tome of Divinity (1)
    .accept 1642 >> Accept The Tome of Divinity
    .turnin 1642 >> Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1643 >> Accept The Tome of Divinity
step << Paladin
    .goto StormwindClassic,38.68,32.85
    .trainer >> Train your class spells
step
    .goto StormwindClassic,58.08,16.52
.target Furen Longbeard
>>Talk to |cFF00FF25Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step << Rogue
   .goto StormwindClassic,74.65,52.83
    .trainer >> Train your class spells
step << Warrior
    #completewith next
    .goto StormwindClassic,74.91,51.55,20 >> Enter the Command Center
step << Warrior
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
step << Paladin
    .goto StormwindClassic,57.08,61.74
>>Talk to |cFF00FF25Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
step
    .goto StormwindClassic,66.28,62.13
>>Talk to |cFF00FF25Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
.target Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
step
    .goto StormwindClassic,66.28,62.13
    .fly Westfall >> Fly to Westfall
    ]])

    RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 15-16 Westfall
#version 1
#group RestedXP Alliance Speed 1-20
#defaultfor !NightElf !Hunter
#next 17-19 Darkshore

step
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
    .target Dungar Longdrink

step 
    .fly Westfall >>Fly to Westfall

step
    .goto Westfall,56.327,47.520
>>Talk to |cFF00FF25Gryan Stoutmantle|r
.target Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.327,47.520
.target Captain Danuvin
>>Talk to |cFF00FF25Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall

step
    .turnin 6285 >> Turn In Return to Lewis
    .target Quartermaster Lewis

step
    .goto Westfall, 54,53
    .target Scout Galiaan
    .accept 153 >> Accept Red Leather Bandanas
    .vendor >>Buy lvl 15 water


step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Innkeeper Heather|r
    >>|cFF0E8312Buy food/water if needed|r
    .vendor >>|T133918:0|t[Longjaw Mud Snapper] |cFFFCDC00is very cheap|r
	.target Innkeeper Heather

step 
    #completewith next
    sticky
    >> Collect from mechs
    .collect 1274,5 --Hops
    .collect 814,5 --Flask of oil
step
	#completewith bennytime
    >>Open the |cFFDB2EEFSacks of Oats|r on the ground. Loot them for the |cFF00BCD4Handful of Oats|r
    >>|cFFFCDC00You can usually find them near Farm Fences or Buildings|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >>Kill |cFFFF5722Young Goretusks|r and |cFFFF5722Young Fleshrippers|r. Loot them for their |cFF00BCD4Vulture Meat|r, |cFF00BCD4Snouts|r and |cFF00BCD4Livers|r
    .complete 38,1 --Stringy Vulture Meat (3)
    .complete 38,3 --Goretusk Snout (3)
    .complete 22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
    .goto Westfall, 36.2, 54.5
    .complete 399,1 >> --A Simple Compass (1)



step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>Kill |cFFFF5722Riverpaw Gnolls|r and |cFFFF5722Riverpaw Scouts|r. Loot them for their |cFF00BCD4Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .target Old Murk-Eye

step 
    .goto Westfall, 29.7,86.4
    >>Farm gnolls until you see Old Murk-Eye
    .target Old Murk-Eye
    .accept 104 >> Accept The Coastal Menace
    >>Kill Old boi
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103 >> Turn in Keeper of the Flame
    .turnin 104 >> Turn in The Coastal Menace

step
    .goto Westfall, 44.5, 80.8
    >>Talk to Grimbooze
    .target Grimbooze Thunderbrew
    .accept 117 >> Accept Thunderbrew Lager
    .turnin 117 >> Turn in Thunderbrew Lager

step
.goto Westfall, 52.6, 72.7 >> Run to the end of the ridge

step
#sticky 
.complete 9,1
.complete 22,1
.complete 38,1
.complete 38,2
.complete 38,3
.complete 38,4


step
.goto Westfall, 44.6,29.0 >> Go to the bandit mine. Destroy mobs on your way
>>Kill bandits
.complete 153,1 >> --Red Leather Bandana (15)
.complete 12,1
.complete 12,2

step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Open |cFFDB2EEFFurlbrow's Wardrobe|r. Loot it for |cFF00BCD4Furlbrow's Pocket Watch|r
    >>|cFFFCDC00You can loot |cFFDB2EEFFurlbrow's Wardrobe|r from outside if you angle your camera correctly|r
	>>|cFFFCDC00Be aware of |cFFFF5722Benny Blanco|r. He hits hard|r
    .complete 64,1 --Furlbrow's Pocket Watch

step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >>Kill |cFFFF5722Murloc Raiders|r and |cFFFF5722Murloc Coastrunners|r. Loot them for their |cFF00BCD4Eyes|r
    .complete 38,2 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Open the |cFFDB2EEFSacks of Oats|r on the ground. Loot them for the |cFF00BCD4Handful of Oats|r
	>>|cFFFCDC00You can usually find them near Farm Fences or Buildings|r
	.complete 151,1 --Handful of Oats (8)

step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Farmer Furlbrow|r and |cFF00FF25Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .goto Westfall,59.95,19.35
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 9 >> Turn in The Killing Fields
    .turnin 22 >> Turn in Goretusk Liver Pie
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Farmer Saldean|r
    .vendor
    >>|cFFFCDC00Do NOT sell |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] or |T133972:0|t[Stringy Vulture Meat]|r
	.target Farmer Saldean

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Turn in The People's Militia
step
	.xp <15,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Accept The Defias Brotherhood
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Captain Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Turn in Patrolling Westfall
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Scout Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Turn in Red Leather Bandanas

step
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind
   
step
    .goto StormwindClassic, 49.0, 30.2
    .target Baros Alexston
    >> Talk to |cFF00FF25Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings

step
    >> BATCH HS BATCH HS
    .hs >> Batch HS to Auberdine. (SET HS IN STORMWIND)

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter !NightElf
#name 17-19 Darkshore
#version 1
#group RestedXP Alliance Speed 1-20
#defaultfor !Hunter !NightElf
#next 19-20 Redridge

step
    #era/som
    #completewith CliffCave
    >>Kill |cFFFF5722Moonstalkers|r and |cFFFF5722Moonstalker Runts|r. Loot them for their |cFF00BCD4Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> Travel to The Red Crystal again
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Click the |cFFDB2EEFThe Red Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
    
step
#map Darkshore
    .goto Darkshore, 45.6, 50.1 >> Logout skip at the cave
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >> Turn in Bashal'Aran
step << Paladin
	#completewith next
    .goto Darkshore,50.74,34.68,0
	>>Kill |cFFFF5722Blackwood Warriors|r and |cFFFF5722Blackwood Totemics|r. Loot them for their |T132889:0|t[Linen Cloth]
    >>|cFFFCDC00You need to save 10|r |T132889:0|t[Linen Cloth] |cFFFCDC00for your|r |T626003:0|t|cFFF48CBAPaladin|r |cFFFCDC00class quest later|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    .goto Darkshore,50.66,34.94
    >>Open the |cFFDB2EEFBlackwood Grain Stores|r. Loot it for the |cFF00BCD4Blackwood Grain Sample|r
    >>|cFFFCDC00Looting this will spawn 2 |cFFFF5722Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cFFFF5722Den Mother|r
    >>|cFFFCDC00Be aware of the |cFFFF5722Thistle Cubs|r which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step << Paladin
	#completewith Fruit
    .goto Darkshore,50.74,34.68,0
	>>Kill |cFFFF5722Blackwood Warriors|r and |cFFFF5722Blackwood Totemics|r. Loot them for their |T132889:0|t[Linen Cloth]
    >>|cFFFCDC00You need to save 10|r |T132889:0|t[Linen Cloth] |cFFFCDC00for your|r |T626003:0|t|cFFF48CBAPaladin|r |cFFFCDC00class quest later|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    .goto Darkshore,51.83,33.50
    >>Open the |cFFDB2EEFBlackwood Nut Stores|r. Loot it for the |cFF00BCD4Blackwood Nut Sample|r
    >>|cFFFCDC00Looting this will spawn 2 |cFFFF5722Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Open the |cFFDB2EEFBlackwood Fruit Stores|r. Loot it for the |cFF00BCD4Blackwood Fruit Sample|r
    >>|cFFFCDC00Looting this will spawn 2 |cFFFF5722Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cFFFCDC00Use the|r |T134712:0|t[Filled Cleansing Bowl] |cFFFCDC00at the |cFFDB2EEFBonfire|r to summon|r |cFFFF5722Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >>Kill |cFFFF5722Xabraxxis|r. Open the |cFFDB2EEFXabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cFF00BCD4Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Winterspring,5.49,36.64,35 >> Travel to the Cliffspring River Cave
step
    .goto Darkshore,55.66,34.89
    >>Loot the |cFF00BCD4Scaber Stalks|r and |cFF00BCD4Death Cap|r on the ground
    >>|cFFFCDC00Stay on the upper section. If the |cFF00BCD4Death Cap|r is not at the end of the top side, drop down and get one from below|r
    >>|cFFFCDC00Don't face your back to the center! |cFFFF5722Stormscale Wave Rider's|r can knock you back!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >> Exit the Cliffspring River Cave
step
    #era/som
    #completewith next
    >>Kill |cFFFF5722Moonstalkers|r and |cFFFF5722Moonstalker Runts|r. Loot them for their |cFF00BCD4Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cFFFF5722Dark Strand Fanatics|r. Loot them for their |cFF00BCD4Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cFFFF5722Dark Strand Fanatics|r. Loot them for their |cFF00BCD4Parchments|r and |T132889:0|t[Linen Cloth]
    >>|cFFFCDC00You need to save 10|r |T132889:0|t[Linen Cloth] |cFFFCDC00for your|r |T626003:0|t|cFFF48CBAPaladin|r |cFFFCDC00class quest later|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
step
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Travel to Mist's Edge
step
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Kill |cFFFF5722Raging Reef Crawlers|r and |cFFFF5722Encrusted Tide Crawlers|r. Loot them for the |cFF00BCD4Bottom of Gelkak's Key|r
    >>|cFFFCDC00Be aware of |cFFFF5722Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Kill |cFFFF5722Greymist Oracles|r and |cFFFF5722Greymist Tidehunter|r. Loot them for the |cFF00BCD4Middle of Gelkak's Key|r
    >>|cFFFCDC00Be aware of |cFFFF5722Greymist Oracles|r |T136048:0|t[Lightning Bolt] damage and they can also heal with |T136052:0|t[Healing Wave]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Kill |cFFFF5722Raging Reef Crawlers|r and |cFFFF5722Encrusted Tide Crawlers|r. Loot them for the |cFF00BCD4Bottom of Gelkak's Key|r
    >>|cFFFCDC00Be aware of |cFFFF5722Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Kill |cFFFF5722Giant Foreststriders|r. Loot them for the |cFF00BCD4Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #era/som
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Kill |cFFFF5722Moonstalker Sires|r and |cFFFF5722Moonstalker Matriarchs|r. Loot them for their |cFF00BCD4Pelts|r and |cFF00BCD4Fangs|r
    >>|cFFFCDC00Be aware of |cFFFF5722Moonstalker Matriarchs|r also attacking with a |cFFFF5722Moonstalker Runt|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
#map Darkshore
    #completewith next
    .goto Winterspring,5.59,21.09
    .gossipoption 87696 >> Talk to |cFF00FF25The Threshwackonator 4100|r to start the escort
    >>|cFFFCDC00This quest is VERY difficult|r
    .skipgossip
    .target The Threshwackonator 4100
step
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>Escort |cFF00FF25The Threshwackonator 4100|r to |cFF00FF25Gelkak Gyromast|r
    >>Kill |cFFFF5722The Threshwackonator 4100|r once it turns hostile
    >>|cFFFCDC00This quest is VERY difficult|r
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> |cFFFCDC00Click here for a video guide|r
    .mob The Threshwackonator 4100
step
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestComplete 2078
step
    #sticky
    .destroy 7442 >> Delete Gyromast's Key from your inventory
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step
    #era/som
    #completewith next
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Kill |cFFFF5722Encrusted Tide Crawlers|r and |cFFFF5722Reef Crawlers|r. Loot them for their |cFF00BCD4Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
step
#map Darkshore
    #era/som
    .goto Winterspring,1.42,26.89
    >>Click the |cFFDB2EEFBuzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    #era/som
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Kill |cFFFF5722Encrusted Tide Crawlers|r and |cFFFF5722Reef Crawlers|r. Loot them for their |cFF00BCD4Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    step
    #map Darkshore
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thundris Windweaver|r
        .target Thundris Windweaver
        .goto Felwood,19.98,14.40
        .turnin 4763 >> Turn in The Blackwood Corrupted

        step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
    .target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Turn in Tharnariun's Hope
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
    .target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master


step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >> Turn in The Fragments Within
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
    step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cFF00FF25The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!

    step
    #map Darkshore
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
        .target Gwennyth Bly'Leggonde
        .goto Darkshore,36.71,44.98,5,0
        .goto Felwood,19.10,20.63
        .turnin 4727 >> Turn in Beached Sea Turtle
    step
    #map Darkshore
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gubber Blump|r
        .target Gubber Blump
        .goto Felwood,18.50,19.87
        .turnin 1138 >> Turn in Fruit of the Sea



step
    >> BATCH HS BATCH HS
    .hs >> Batch HS to Stormwind. (SET HS IN AUBERDINE)
    
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter
#name 19-20 Redridge
#version 1
#group RestedXP Alliance Speed 1-20
#next 20-21 Darkshore/Ashenvale
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Billibub Cogspinner|r
    .vendor >> |cFFFCDC00Buy a|r |T133024:0|t[Bronze Tube]
    >>|cFFFCDC00This is a limited supply item. Skip this step if |cFF00FF25Billibub Cogspinner|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !NightElf
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order

step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duthorian Rall|r
    .turnin 1641 >> Turn in The Tome of Divinity
    .collect 6775,1,1642 --Tome of Divinity (1)
    .accept 1642 >> Accept The Tome of Divinity
    .turnin 1642 >> Turn in The Tome of Divinity
    .target Duthorian Rall
    .accept 1643 >> Accept The Tome of Divinity
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful

step << Rogue !NightElf
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wu|r or |cFF00FF25Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Woo Ping|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 202 >> Train 2h Swords << Warrior/Paladin
    .target Woo Ping
step << Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
    .target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    >>|cFFFCDC00You will need 10 |T132889:0|t[Linen Cloth]|r
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marda Weller|r
    >>|cFFFCDC00Buy a|r |T135324:0|t[Longsword] |cFFFCDC00and|r |T135342:0|t[Kris]
    >>|cFFFCDC00Equip the|r |T135324:0|t[Longsword] |cFFFCDC00in your Mainhand and|r |T135342:0|t[Kris] |cFFFCDC00in your Offhand|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller

step << !NightElf
    #era/som
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dungar Longdrink|r
    .fly Redridge >>Fly to Redridge Mountains
    .target Dungar Longdrink

step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marshal Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Accept Blackrock Menace
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Accept The Price of Shoes
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Accept Messenger to Stormwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Accept Selling Fish
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darcy|r
    >>|cFF00FF25Darcy|r |cFFFCDC00walks around inside the Inn|r
	.target Darcy
    .accept 129 >> Accept A Free Lunch
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wiley the Black|r upstairs
	.target Wiley the Black
    .turnin 65 >> Turn in The Defias Brotherhood
    .isOnQuest 65
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>Exit the Inn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Chef Breanna|r
	.target Chef Breanna
    .accept 92 >> Accept Redridge Goulash
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >> Accept An Unwelcome Guest

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Accept Hilary's Necklace
step
    >>|cFFFCDC00Jump into the Lake|r
    >>Open the |cFFDB2EEFGlinting Mud|r. Loot it for |cFF00BCD4Hilary's Necklace|r
    >>|cFFFCDC00It has multiple spawn locations in the Lake|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)

step
    #era
    #sticky
    #completewith orcs
    >>Kill |cFFFF5722Great Goretusks|r. Loot them for their |cFF00BCD4Great Goretusk Snouts|r
    >>Kill |cFFFF5722Tarantulas|r. Loot them for their |cFF00BCD4Crisp Spider Meat|r
    >>Kill |cFFFF5722Dire Condors|r. Loot them for their |cFF00BCD4Tough Condor Meat|r
    >>|cFFFCDC00Do NOT sell any of these items until you turn the Redridge Goulash quest|r
    >>|cFFFCDC00Save any|r |T133970:0|t[Chunks of Boar Meat] |cFFFCDC00you loot as well as you can use them to level|r |T133971:0|t[Cooking] |cFFFCDC00to 50 which is required for Duskwood later|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Accept Encroaching Gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
step
    #era/som
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Kill |cFFFF5722Tarantulas|r. Loot them for their |cFF00BCD4Crisp Spider Meat|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Kill |cFFFF5722Redridge Mongrels|r and |cFFFF5722Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
    .goto Redridge Mountains,49.0,70.0
    >>Kill |cFFFF5722Murloc Shorestrikers|r and |cFFFF5722Murloc Minor Tidecallers|r. Loot them for their |cFF00BCD4Fins|r and |cFF00BCD4Sunfish|r
	>>|cFFFCDC00Be aware this area is a hyperspawn, meaning the |cFFFF5722Murlocs|r respawn quickly|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #era/som
    .goto Redridge Mountains,61.37,77.10
    >>Kill |cFFFF5722Dire Condors|r. Loot them for their |cFF00BCD4Tough Condor Meat|r
    >>|cFFFCDC00Skip this step if you aren't seeing any|r |cFFFF5722Dire Condors|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>Kill |cFFFF5722Blackrock Grunts|r and |cFFFF5722Blackrock Outrunners|r. Loot them for their |cFF00BCD4Axes|r
	>>|cFFFCDC00Be aware the |cFFFF5722Blackrock Outrunners|r will cast |T132149:0|t[Net] on you|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #era/som
    .goto Redridge Mountains,61.37,77.10
    >>Kill |cFFFF5722Dire Condors|r. Loot them for their |cFF00BCD4Tough Condor Meat|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cFFFCDC00Jump into the Lake|r
    >>Open the |cFFDB2EEFSunken Chest|r. Loot it for |cFF00BCD4Oslow's Toolbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era
    .goto Redridge Mountains,49.0,70.0
    .xp 20-6300 >> Grind until you are 6300 xp away from level 20

step
    #hardcore
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >> Travel to Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Turn in Assessing the Threat
step
    .xp 20 >> If you are not yet level 20, turn in all your Redridge quests, you should have enough from turn ins
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >> Get the Redridge Mountains flight path << !Human !Warlock
    .fly Stormwind >> Fly to Stormwind City

step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marda Weller|r
    >>|cFFFCDC00Buy a|r |T135324:0|t[Longsword] |cFFFCDC00and equip it at 21|r
    >>|cFFFCDC00Skip this step if you have something better|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller

step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gunther Weller|r
    >>|cFFFCDC00Buy a|r |T135280:0|t[Dacian Falx] |cFFFCDC00if you have enough money. Equip it at 21|r
    >>|cFFFCDC00Skip this step if you have something better|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Accept The Corruption Abroad

step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duthorian Rall|r. He will give you the |T133739:0|t[|cFF00BCD4Tome of Valor|r]
    use 6776 >>|cFFFCDC00Use the |T133739:0|t[|cFF00BCD4Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful

step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Osborne|r
    .trainer >> Train your class spells
    .train 1804 >> Train |T136058:0|t[Pick Lock] to learn Lockpicking
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cFF00FF25Renzik "The Shiv"|r and |cFF00FF25Master Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzik "The Shiv"|r and |cFF00FF25Master Mathias Shaw|r
    .accept 2281 >> Accept Redridge Rendezvous
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >> Accept Mathias and the Defias
    .goto StormwindClassic,75.78,59.84
    .target Renzik "The Shiv"
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wu|r or |cFF00FF25Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin

step
    #hardcore
    .goto StormwindClassic,51.0, 68.5
    .collect 1941,1 --Cask of Merlot (1)
    .target Roberto Pupellyverbos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,64.0, 75.4
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >> Travel to Goldshire


step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner

    step
    #hardcore
    .goto Elwynn Forest,44.0, 65.7
    .collect 1939,1 --Skin of Sweet Rum (1)
    .target Barkeep Dobbins
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Travel to the Tower of Azora. Ascend the tower
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Theocritus|r at the top
    .accept 94 >> Accept A Watchful Eye

    step
    #hardcore
    .goto Duskwood,73.9, 44.2
    .collect 1942,1 --Bottle of Moonshine (1)
    .target Barkeep Hann

    step
    .goto Duskwood,77.5,44.3
    .fp Duskwood>> Get the Duskwood Flight Path

step
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>Travel to Redridge
    >>|cFFFCDC00If you're in Goldshire it will be faster to Fly from Stormwind|r
	>>|cFFFCDC00If you're at the Tower of Azora simply run to Redridge|r
    .fly Redridge >> Fly to Redridge
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marshal Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Turn in Blackrock Menace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Accept Underbelly Scales
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Magistrate Soloman|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Turn in Messenger to Stormwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Turn in Hilary's Necklace
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lucius|r
    .turnin 2281 >> Turn in Redridge Rendevous
    .target Lucius
    .accept 2282 >> Accept Alther's Mill
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Barkeep Daniels|r
	.target Barkeep Daniels
    .goto Redridge Mountains,26.6, 44.1
    .accept 116 >> Accept Dry Times
    .turnin 116 >> Turn in Dry Times
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Turn in Redridge Goulash
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
    #era
	#completewith next
	>>Kill |cFFFF5722Black Dragon Whelps|r. Loot them for their |cFF00BCD4Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #era/som
    >>Kill |cFFFF5722Great Goretusks|r. Loot them for their |cFF00BCD4Great Goretusk Snouts|r
    >>|cFFFCDC00Save any|r |T133970:0|t[Chunks of Boar Meat] |cFFFCDC00you loot as well as you can use them to level|r |T133971:0|t[Cooking] |cFFFCDC00to 50 which is required for Duskwood later|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
    #era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Turn in Redridge Goulash
step
    #era
	#completewith next
	>>Kill |cFFFF5722Black Dragon Whelps|r. Loot them for their |cFF00BCD4Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Kill |cFFFF5722Redridge Brutes|r and |cFFFF5722Redridge Mystics|r. Loot them for their |cFF00BCD4Iron Pikes|r and |cFF00BCD4Iron Rivets|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +Cast |T136058:0|t[Pick Lock] to open the |cFFDB2EEFPractice Lockboxes|r until you reach 80 in |T136058:0|t[Lockpicking]
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >> Cast |T136058:0|t[Pick Lock] to open |cFFDB2EEFLucius's Lockbox|r. Loot it for the |cFF00BCD4Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Kill |cFFFF5722Black Dragon Whelps|r. Loot them for their |cFF00BCD4Scales|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darcy|r
    >>|cFF00FF25Darcy|r |cFFFCDC00walks around inside the Inn|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Turn in Delivering Daffodils
step
    #era
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cFFFCDC00Level up your|r |T133971:0|t[Cooking] |cFFFCDC00using the|r |T133970:0|t[Chunks of Boar Meat] |cFFFCDC00you farmed earlier. You need level 50|r |T133971:0|t[Cooking]
    +|cFFFCDC00If you need more|r |T133970:0|t[Chunks of Boar Meat] |cFFFCDC00travel to the west near|r |cFFFF5722Bellygrub|r |cFFFCDC00and kill more|r |cFFFF5722Great Goretusks|r
    .skill cooking,50,1
    .mob Great Goretusk
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Turn in A Baying of Gnolls
    .turnin 122 >> Turn in Underbelly Scales

step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.06,52.32
    .turnin 2282 >> Turn in Alther's Mill
step << Rogue
	#completewith next
	.destroy 7907 >> Destroy the Certificate of Thievery. You don't need it
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Turn in The Everstill Bridge

s
step << !NightElf Rogue
    #hardcore
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish

step << Rogue
    #hardcore
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Agent Kearnen|r
    .turnin 2360 >> Turn in Mathias and the Defias
    >>|cFFFCDC00The following quest chain is for the Rogue Poison questline|r
    >>|cFFFCDC00This quest is VERY difficult. You can skip this step and come back at level 24|r
    .target Agent Kearnen
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cFFFCDC00Click here for a video guide|r
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue
    #hardcore
    .goto Westfall,68.50,70.08
    .target Agent Kearnen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Agent Kearnen|r
    .accept 2359 >> Accept Klaven's Tower
    .isQuestTurnedIn 2360
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue
    #hardcore
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07
    >>|T133644:0|t[Pick Pocket] a |cFFFF5722Malformed Defias Drone|r. Loot it for the |cFF00BCD4Tower Key|r
    >>|cFFFCDC00You must be in|r |T132320:0|t[Stealth] |cFFFCDC00to use|r |T133644:0|t[Pick Pocket]
    >>|cFFFCDC00The |cFFFF5722Malformed Defias Drone|r patrols around the outside of the Tower|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click |cFFFCDC00Click here for a video guide|r
    .isOnQuest 2359
    .mob Malformed Defias Drone
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue
    #hardcore
    .xp <22,1
    .goto Westfall,70.41,73.93
    >>|cFFFCDC00Travel up to the top of the Tower|r
    >>Open the |cFFDB2EEFDuskwood Chest|r. Loot it for |cFF00BCD4Klaven Mortwake's Journal|r
    >>|cFFFCDC00You can|r |T132310:0|t[Sap] |cFFFF5722Klaven Mortwake|r |cFFFCDC00and then open the|r |cFFDB2EEFDuskwood Chest|r
    >>|cFFFCDC00If your|r |T132310:0|t[Sap] |cFFFCDC00resists or misses, cast|r |T132331:0|t[Vanish] |cFFFCDC00and try again or otherwise jump down and reset him. Alternatively you can come back later to complete it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cFFFCDC00Click here for a video guide|r
    .isOnQuest 2359
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later

step << Rogue
    #hardcore
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thor|r
    .fly Stormwind >> Fly to Stormwind
    .isOnQuest 2359
    .target Thor
step << Rogue
    #hardcore
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cFF00FF25Master Mathias Shaw|r
    .isOnQuest 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .isQuestComplete 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Master Mathias Shaw|r
    .accept 2607 >> Accept The Touch of Zanzil
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
    #completewith next
    .goto StormwindClassic,78.86,58.85,9 >> Travel down into the basement
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,78.03,58.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Doc Mixilpixil|r
    .target Doc Mixilpixil
    .turnin 2607 >> Turn in The Touch of Zanzil
    .isQuestTurnedIn 2359
step
    >> BATCH HS BATCH HS
    .hs >> Batch HS to AUBERDINE. (SET HS IN Redridge)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter
#name 20-21 Darkshore/Ashenvale
#version 1
#group RestedXP Alliance Speed 1-20
#next RestedXP Alliance 20-30\21-23 Stonetalon/Ashenvale


step
    .goto Darkhsore, 38.4,43.1
    .target Gershala Nightwhisper
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gershala Nightwhisper|r
    .turnin 3765 >> Turn in Gershala Nightwhisper
    .accept 1275 >> Accept Researching the Corruption

step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
    .goto Darkshore,37.32,43.64
    .target Barithras Moonshade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Barithras Moonshade|r
    .accept 948 >> Accept Onu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cFF00FF25The Wanted Poster|r
    .goto Darkshore,37.21,44.22
    .accept 4740 >> Accept WANTED: Murkdeep!
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 993 >> Accept A Lost Master
step
	#era/som
    #completewith Murkdeep
    .goto Darkshore,40.23,81.28,0
    >>Kill |cFFFF5722Grizzled Thistle Bears|r. Loot them for their |cFF00BCD4Scalps|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >> Travel to the Grove of the Ancients
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Onu|r
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> Travel to The Master's Glaive
step
    .goto Darkshore,38.54,86.05
    >>Discover The Master's Glaive
    .complete 944,1
step
    #completewith next
    .cast 5809 >> |cFFFCDC00Use the|r |T134715:0|t[Phial of Scrying] |cFFFCDC00and place it on the ground|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >> Click the |cFFDB2EEFScrying Bowl|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
step
    .goto Ashenvale,22.24,2.52
    >>Click the |cFFDB2EEFTwilight Tome|r
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
step
    .goto Ashenvale,22.36,3.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Therylune|r. This will start an escort
    >>|cFFFCDC00Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cFFFCDC00Escort |cFF00FF25Therylune|r out of The Masters Glaive|r
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Prospector Remtravel|r. This will start an escort
    .accept 731,1 >> Accept The Absent Minded Prospector
    >>|cFFFCDC00This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.twitch.tv/videos/1182180918 >> |cFFFCDC00Click here for a video guide|r
    .target Prospector Remtravel
step
    #requires prospector
    >>|cFFFCDC00Escort |cFF00FF25Prospector Remtravel|r through the Excavation|r
    >>|cFFFCDC00This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.twitch.tv/videos/1182180918 >> |cFFFCDC00Click here for a video guide|r
    .complete 731,1
    .isOnQuest 731
step
    .goto Ashenvale,13.97,4.10
    >>Click the |cFFDB2EEFBeached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cFFFCDC00This quest can be VERY difficult. Engage the |cFFFF5722Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cFFFCDC00Click here for a video guide|r
step
    .goto Ashenvale,13.93,2.01
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Click the |cFFDB2EEFBeached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >>Kill |cFFFF5722Greymist Warriors|r and |cFFFF5722Greymist Hunters|r at the camp
    >>|cFFFCDC00Move to the Bonfire in the center of the camp to summon|r |cFFFF5722Murkdeep|r
    >>Kill |cFFFF5722Murkdeep|r. He will run in from the water
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Kill |cFFFF5722Grizzled Thistle Bears|r. Loot them for their |cFF00BCD4Scalps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #era/som
    >>Click the |cFFDB2EEFBuzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Travel toward |cFF00FF25Volcor|r in the Cave
step
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
step
    .goto Darkshore,44.44,84.69
    >>|cFFFCDC00Wait out the RP|r
    .complete 995,1
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Onu|r
    .turnin 950 >> Turn in Return to Onu
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kerlonian Evershade|r to start the escort
    >>|cFFFCDC00Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
	.target Kerlonian Evershade
    .accept 5321 >> Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Open |cFFDB2EEFKerlonian's Chest|r. Loot it for the |T134229:0|t[|cFF00BCD4Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cFFFCDC00Escort |cFF00FF25Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cFFFCDC00Use the|r |T134229:0|t[|cFF00BCD4Horn of Awakening|r] |cFFFCDC00whenever |cFF00FF25Kerlonian|r falls asleep next to him|r
    >>|cFFFCDC00Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Turn in The Tower of Althalaxx
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> Accept The Tower of Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Accept Bathran's Hair
    .xp <20,1
step
    #era/som
    .goto Ashenvale,31.25,30.70
    >>Kill |cFFFF5722Dark Strand Cultists|r and |cFFFF5722Dark Strand Adepts|r. Loot them for the |cFF00BCD4Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cFFDB2EEFPlant Bundles|r on the ground. Loot them for |cFF00BCD4Bathran's Hairs|r
    >>|cFFFCDC00They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Grind to level 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Accept Bathran's Hair
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cFFDB2EEFPlant Bundles|r on the ground. Loot them for |cFF00BCD4Bathran's Hairs|r
    >>|cFFFCDC00They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
    #label hair
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
    #requires hair
    #completewith next
    .goto Ashenvale,25.49,39.59,20,0
    .goto Ashenvale,25.98,41.72,20,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00,50 >> Travel to Astranaar
step
    #requires hair
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Daelyshia|r
    .fp Astranaar>> Get the Astranaar Flight Path
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Accept The Zoram Strand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Accept On Guard in Stonetalon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Accept Raene's Cleansing
step
    #timer Orendil's Cure RP
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 26,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear

]])