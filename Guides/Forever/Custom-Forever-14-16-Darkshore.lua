RXPGuides.RegisterGuide([[

#forever
#season 0,1
#version 1
<< Alliance Gnome (Priest/Warrior)
#group Custom Forever Routes (A)
#subgroup Gnome Priest/Warrior
--#groupid RXP-SRGCE-A1
#name 14-16 Darkshore
#next 16-19 Darkshore
#defaultfor Gnome (Priest/Warrior)


-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD

step << !NightElf
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
    .xp <11,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Travel up the ramp toward |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r upstairs
    .accept 983 >> Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r downstairs
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
    .xp <12,1
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Click the |cRXP_PICK_WANTED|r poster
    .accept 98025 >>Accept WANTED: Jai'vhanel
step
    #ah
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea << !sod/Hunter/Druid
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather



step
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    >>|cRXP_WARN_You may need to go in the water for them|r
    >>|cRXP_WARN_Even if some of these are gray, still complete the quest as it is part of a chain|r << !NightElf
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_Beached Sea Creature|r. Loot it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #completewith next
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Thistle Bear|r|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    >>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>|cRXP_WARN_You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto 1439/1,393.72,5993.24
    >>Run toward the edge of the Furbolg Camp
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Thistle Bear|r |cRXP_WARN_ .It can be used from any range as long as you're targeting the bear|r
    >>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Travel toward |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Travel to the end of the dock, then jump into the water
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Open the |cRXP_PICK_Skeletal Sea Turtle|r. Loot it for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #optional
    #season 0
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step << !NightElf/!Warrior !Rogue
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r inside
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_or|r |T133634:0|t[Brown Leather Satchels] |cRXP_BUY_as you need from him|r
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 954 >> Accept Bashal'Aran
    .accept 958 >> Accept Tools of the Highborne << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 954 >> Accept Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Silver Dawning's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Silver Dawning's Lockbox|r inside|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Mist Veil's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Mist Veil's Lockbox|r inside|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
    .isOnQuest 982
step
    .goto 1439,41.960,28.616
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
    .isQuestComplete 1001
step
    #optional
    .goto 1439,41.960,28.616
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .accept 1002 >> Accept Buzzbox 323
    .isQuestTurnedIn 1001
step
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Travel toward |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Kill |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Deth'ryll Satyrs|r for now|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #optional
    .abandon 955 >> Abandon Bashal'Aran
    .isQuestAvailable 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_Be aware that they do not have dynamic respawns|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
    #optional
    #label HCHunterEnd --hidden step for #include
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith EndFirstMoonstalker << !NightElf !Hunter !Druid !Warrior
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #completewith RedCrystal
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #season 0
    #completewith LateTurtleStart
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #season 0
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Travel up to the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    #season 0
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Return to Auberdine
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    #season 0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith EndFirstMoonstalker
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Return to Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813,3 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Hunter/Druid/Warrior
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Equip the|r |T135145:0|t[Oakthrush Staff]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon

----Start of forced Level 14 Druid Turnin/train----


step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    #season 0
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
    .isQuestTurnedIn 4811
step
    #optional
    #label HCHunterStart --hidden step for #include
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #completewith Anaya
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #label EarlyTurtleStart
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1


step
    #label EndFirstMoonstalker

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #optional
    #completewith AmethStart
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
    .goto 1439,42.652,63.145
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #season 0
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Kill |cRXP_ENEMY_Jai'vhanel|r. Loot it for the |cRXP_LOOT_Feather of Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #label HCHunterEndTwo --hidden step for #include
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith FurbolgGrind
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    #season 0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Grind |cRXP_ENEMY_Furlbogs|r in the camp. |cRXP_WARN_This is a hyperspawn area|r meaning that the game will force respawns if enough mobs are dead. This makes it an |cRXP_WARN_EXTREMELY efficient grinding spot|r for the level (xp/hr is comparable to questing)
    >>|cRXP_WARN_Completing this grind will allow you to quest through the entirety of Darkshore later without having to struggle with higher level mobs|r
    >>Be careful as the |cRXP_ENEMY_Blackwood Pathfinders|r |T132152:0|t[Thrash] and can hit you up to 3 times at once
    >>|cRXP_ENEMY_Blackwood Windtalkers|r cast |T136022:0|t[Gust of Wind] a melee range stun, |cRXP_WARN_move out of melee range when they are casting it|r to avoid getting stunned
    .xp 15+10725 >> Grind to 10725+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Grind |cRXP_ENEMY_Furlbogs|r in the camp. |cRXP_WARN_This is a hyperspawn area|r meaning that the game will force respawns if enough mobs are dead. This makes it an |cRXP_WARN_EXTREMELY efficient grinding spot|r for the level (xp/hr is comparable to questing)
    >>|cRXP_WARN_Completing this grind will allow you to quest through the entirety of Darkshore later without having to struggle with higher level mobs|r
    >>Be careful as the |cRXP_ENEMY_Blackwood Pathfinders|r |T132152:0|t[Thrash] and can hit you up to 3 times at once
    >>|cRXP_ENEMY_Blackwood Windtalkers|r cast |T136022:0|t[Gust of Wind] a melee range stun, |cRXP_WARN_move out of melee range when they are casting it|r to avoid getting stunned
    .xp 15+9850 >> Grind to 9850+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #optional
    #completewith FurbolgGrindEnd
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Return to Auberdine
    .isOnQuest 4722
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4723 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #season 0
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Return to |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Turn in WANTED: Jai'vhanel
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4812 >> Turn in As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master << !sod
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Go upstairs
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r upstairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Buy|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him until you have|r |T134059:0|t[Mild Spices] |cRXP_BUY_equal or more than the amount of|r |T132832:0|t[Small Eggs] |cRXP_BUY_that you currently have|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Travel toward the |cRXP_PICK_Campfire|r on the ground|r
    +|cRXP_WARN_Start|r |T133971:0|t[Cooking] |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached at least level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_until you run out of|r |T132832:0|t[Small Eggs] << !sod
    >>|cRXP_WARN_There is a quest in Duskwood later requiring your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50 or higher. You can also cook this when you get on the boat soon|r << !sod
    >>|cRXP_WARN_Skip this step once you've made all|r |T132834:0|t[Herb Baked Eggs]
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne << !sod
    .turnin 4762 >> Turn in The Cliffspring River << sod
    .accept 4763 >> Accept The Blackwood Corrupted << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


----Start of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #optional
    #completewith next
    +|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Silver Dawning's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Silver Dawning's Lockbox|r inside|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Mist Veil's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Mist Veil's Lockbox|r inside|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #optional
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    #season 0
    .goto 1439,47.314,48.676
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the 2 groups of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    #season 0
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r and |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r |cRXP_ENEMY_Foreststrider Fledglings|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #optional
    #completewith CrabTurtle
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto 1439/1,47.88,7433.800
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>Kill |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_Consider skipping some of the level 17|r |cRXP_ENEMY_Reef Crawlers|r |cRXP_WARN_if you get decent drops.|r |cRXP_WARN_You don't have to complete this quest now|r
    >>Be careful as they can cast |T132155:0|t[Muscle Tear] an instant attack dealing 30-55 damage
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,-386.39,7219.830
    #season 0 << !Warrior !Rogue
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Travel up the ramp toward the |cRXP_PICK_Buzzbox 323|r
    .isQuestComplete 1002
step
    #optional
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .isQuestComplete 1002
step
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .accept 1003 >> Accept Buzzbox 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith CliffCave
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Travel to the Cliffspring River Cave
step
    #label CaveMushrooms
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    #season 0 << !Warrior !Rogue
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and a |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If there is not a |cRXP_LOOT_Death Cap|r at the end of the top side, drop down and get one from the southern room below|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stormscale Wave Riders|r cast|r |T135836:0|t[Aqua Jet] |cRXP_WARN_(Ranged Instant: Deals damage to nearby enemies and knocks them back) - make sure you're not in a position to get knocked off the upper level of the cave|r
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
step << skip --logout skip
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 0
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Jump on top of the rock on the top floor inside the cave. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
step
    #completewith CavetoAuber
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #requires MushroomLS
    #completewith CavetoAuber
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Travel to Auberdine
step
    #label CliffspringEnd
    #season 0
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step << !NightElf
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439/1,472.32,6438.64
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,467.08,6409.38
    #season 0
    >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the Auberdine moonwell|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    #season 0
    >>Click the |cRXP_PICK_The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    #optional
    .goto 1439/1,577.38,6371.35
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #season 0
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


]])
