RXPGuides.RegisterGuide([[
#forever
#season 0
#version 11
#group Forever Trio Launch
#name 20-22 Darkshore
#displayname 20-22 Darkshore Trio Loops
#next 22-24 Ashenvale, WC & Stonetalon
<< Alliance (Warlock/Priest/Warrior)

-- Standalone normal-XP route. Arrive together at level 20.
-- Small south -> big loop -> deep south -> north -> Ashenvale.
-- No Buzzbox, XP grinds, or solo branches.
-- Forever additions: 98042 at the Glaive; 98013 and required 98028 in Mathystra.
-- Holy Diver (87760) unlock requirements await in-game verification.
-- Quest/item references: https://www.wowhead.com/forever/quest=98013
-- https://www.wowhead.com/forever/quest=98042
-- https://www.wowhead.com/forever/quest=87760
-- https://www.wowhead.com/forever/item=279277


-- Arrival and small southern loop

step
    #optional
    +Arrive at level 20 with your Warlock, Priest and Warrior. This guide ends in Astranaar.
    >>Keep everyone on the same loop. Check that all three have accepted each quest before leaving town, and all three have their drops before leaving an objective.
    >>Gather before anyone accepts an escort; everyone should accept the group quest prompt. No Buzzbox quests are needed.

step
    .goto 1439/1,515.55,6406.32
    >>Talk to |cRXP_FRIENDLY_Innkeeper Shaussiy|r
    >>Bind here on arrival so you can Hearthstone back after the shipwrecks at the end of the big loop
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442

step
    .goto 1439/1,561.66,6343.27
    >>Talk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather

step
    #optional
    .goto 1439/1,577.38,6371.35
    >>Talk to |cRXP_FRIENDLY_Gubber Blump|r and hand in the |cRXP_LOOT_Darkshore Grouper|r you brought
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .target Gubber Blump
    .itemcount 12238,6
    .isQuestAvailable 1141

step
    .goto 1439,36.621,45.596
    >>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde

step
    .goto 1439,38.843,43.416
    >>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis

step
    #optional
    .goto 1439/1,472.32,6556.100
    >>Talk to |cRXP_FRIENDLY_Alanndarian Nightsong|r and hand in the |cRXP_LOOT_Strider Meat|r you brought. Requires Cooking 10.
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
    .isQuestAvailable 2178

step
    #label SmallSeaCreature
    .goto 1439,36.371,50.920
    >>Loot the |cRXP_PICK_Beached Sea Creature|r for its bones
    .complete 3524,1

step
    #label CatchBear
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176
    >>Target a |cRXP_ENEMY_Rabid Thistle Bear|r and use |T134335:0|t[Tharnariun's Hope]. Each player needs quest credit.
    >>Do not use the trap without a bear nearby
    .complete 2118,1
    .use 7586
    .unitscan Rabid Thistle Bear

step
    .goto 1439/1,393.72,5993.24
    >>Approach the edge of the furbolg camp. Save the killing for the next loop.
    .complete 984,1

step
    .goto 1439,36.621,45.596
    >>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde

step
    .goto 1439,31.841,46.304
    >>Swim out and loot the |cRXP_PICK_Skeletal Sea Turtle|r for the remains
    >>The Warlock can provide Unending Breath if trained
    .complete 4681,1

step
    .goto 1439,36.621,45.596
    >>Return to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde

step
    .goto 1439,35.743,43.710
    >>Talk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw

step
    .goto 1439/1,577.38,6371.35
    >>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump

step
    .goto 1439/1,503.100,6402.100
    >>Click the |cRXP_PICK_WANTED poster|r
    .accept 98025 >> Accept WANTED: Jai'vhanel

step
    .goto 1439,37.322,43.640
    >>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade

step
    .goto 1439,37.703,43.393
    >>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea

step
    .goto 1439,38.325,43.039
    >>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin -3765 >> Turn in The Corruption Abroad if you brought it
    .target Gershala Nightwhisper
    .isOnQuest 3765

step
    .goto 1439,38.843,43.416
    >>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis

step
    .goto 1439,38.107,41.165
    >>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand

step
    .goto 1439,37.394,40.128
    >>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .target Thundris Windweaver


-- Big loop: south, crystal, cave, river, coast, wrecks

step
    #completewith FinishBears
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r along the route. Everyone needs 20 kills.
    .complete 2138,1
    .mob Rabid Thistle Bear
    .isOnQuest 2138

step
    #label BigFurbolgs
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
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker

step
    #label FirstCrystal
    .goto 1439,47.314,48.676
    >>Travel up to the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range

step
    #label CaveMushrooms
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
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


step
    #label RiverSample
    .goto 1439/1,-386.39,7219.830
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350

step
    #label EarlyNorthTurtle
    .goto 1439,53.113,18.099
    >>Follow the coast east to the |cRXP_PICK_Beached Sea Turtle|r before sweeping west for crabs and the remaining beach pickups
    >>We collect this turtle now so all beached-creature turn-ins precede the Holy Diver check after deep south
    .accept 4727 >> Accept Beached Sea Turtle

step
    #sticky
    #optional
    #label FruitOfTheSea
    >>Kill |cRXP_ENEMY_Reef Crawlers|r as you travel to the next sea turtle. Loot them for |cRXP_LOOT_Fine Crab Chunks|r
    >>Finish any remaining chunks on the southern coast during the deep south loop
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler

step
    #label NorthernBeachTurtle
    .goto 1439/1,47.88,7433.800
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle

step
    #label FinishBears
    >>After leaving the cave, finish any remaining |cRXP_ENEMY_Rabid Thistle Bears|r on the way to Cliffspring River
    >>Check that all three players have finished before continuing north
    .complete 2138,1
    .mob Rabid Thistle Bear

step
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r while travelling south along the coast
    .accept 4723 >> Accept Beached Sea Creature

step
    #label MistVeil
    .goto 1439,39.581,27.487
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Mist Veil's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Mist Veil's Lockbox|r inside|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982

step
    #label SilverDawning
    .goto 1439,38.213,28.754
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Silver Dawning's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Silver Dawning's Lockbox|r inside|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982

step
    #label ShipwreckHearth
    >>After both shipwreck lockboxes are collected, get out of combat and use your Hearthstone
    .hs >> Hearth to Auberdine after the big loop
    .cooldown item,6948,>0,1
    .bindlocation 442,1
    .subzoneskip 442


step
    .goto 1439,37.439,41.839
    >>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .accept 98461 >> Accept Unrequited Love
    .target Archaeologist Hollee

step
    .goto 1439,37.394,40.128
    >>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver

step
    .goto 1439,38.107,41.165
    >>Talk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand

step
    .goto 1439,38.843,43.416
    >>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    .goto 1439/1,374.07,6438.20
    >>Talk to |cRXP_FRIENDLY_Sentinel Selarin|r
    .accept 990 >> Accept Trek to Ashenvale
    .target Sentinel Selarin
    #optional
    >>Skip if she is absent; turn this in when we reach Astranaar

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
    .target Terenthis



step
    .goto 1439,39.043,43.555
    >>Talk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
    >>She is upstairs

step
    .goto 1439,37.703,43.393
    >>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea

step
    .goto 1439,37.767,44.001
    >>Fill the |cRXP_PICK_Empty Water Tube|r at the moonwell
    .complete 4812,1
    .use 14338

step
    .goto 1439/1,467.08,6409.38
    >>Fill the |cRXP_PICK_Empty Cleansing Bowl|r at the moonwell
    .collect 12347,1,4763,1
    .use 12346
    .isOnQuest 4763

step
    .goto 1439,37.322,43.640
    >>Talk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
    .target Barithras Moonshade



step
    .goto 1439/1,504.41,6402.39
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!

step
    .goto 1439,36.621,45.596
    >>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde


-- Deep south: unlock Mathystra before the northern expedition

step
    .goto 1439,47.314,48.676
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
    >>Keep the fragments for the town return after the northern expedition

step
    #completewith DeepSouthTown
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r along the southern route for |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>Collect what you can on the way; finish any remaining pelts in the north later
    .complete 986,1
    .mob Moonstalker Sire
    .isOnQuest 986

step
    .goto 1439,40.302,59.731
    >>Talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade

step
    #sticky
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
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r while travelling between the Ameth'Aran tablets. Loot her for her |cRXP_LOOT_Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner

step
    .goto 1439,42.652,63.145
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953

step
    .goto 1439/1,105.52,5770.100
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953

step
    #label JaiVhanel
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Kill |cRXP_ENEMY_Jai'vhanel|r. Loot it for the |cRXP_LOOT_Feather of Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel

step
    .goto 1439,40.302,59.731
    >>Talk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade


step
    #label OnuFirst
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu

step
    #label MastersGlaive
    .goto 1439/1,417.30,4575.82,100 >> Travel to The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944

step
    .goto 1439,38.537,86.050
    >>Discover The Master's Glaive
    .complete 944,1 --Enter the Master's Glaive (1)

step
    #completewith GlaiveBowl
    .cast 5809 >> Use the Phial of Scrying and place the bowl on the ground
    .use 5251
    .isOnQuest 944

step
    #label GlaiveBowl
    .goto 1439,38.537,86.050
    >>|cRXP_WARN_Click the |cRXP_PICK_Scrying Bowl|r on the ground|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251

step
    .goto 1439,38.537,86.050
    >>Click the |cRXP_PICK_Twilight Tome|r on the northern pedestal
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    .accept 98042 >> Accept It's All Fun and Games Until...
    >>All three players must click the tome; the new quest cannot be shared

step
    .goto 1439,38.537,86.050
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r around the Glaive. Loot a |cRXP_LOOT_Peerless Eye|r for each player before starting the escort.
    .complete 98042,1 -- Peerless Eye (1)
    .mob Twilight Disciple
    .mob Twilight Thug

step
    .goto 1439,38.660,87.305
    >>Talk to |cRXP_FRIENDLY_Therylune|r
    .accept 945,1 >> Accept Therylune's Escape together
    .target Therylune
    #optional
    >>Skip if she is absent; do not wait for a respawn

step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945

step
    #label UnlockMathystra
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .timer 11.5,Return to Onu RP
    .accept 951 >> Accept Mathystra Relics
    .target Onu

step
    .goto 1439,43.555,76.293
    >>Find |cRXP_FRIENDLY_Arbal|r at the Grove of the Ancients near Onu. The arrow marks the Grove.
    .accept 98013 >> Accept Swelling Forces
    .target Arbal::270269
step
    .goto 1439,35.724,83.696
    >>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
    #optional
    .isOnQuest 729
    >>Skip if he is absent; do not wait for a respawn

step
    .goto 1439/1,602.01,4678.87
    >>Talk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .accept 731,1 >> Accept The Absent Minded Prospector together
    .target Prospector Remtravel
    #optional
    .isQuestTurnedIn 729
    >>Gather all three players before accepting. Skip if he is unavailable.

step
    .goto 1439/1,602.01,4678.87
    >>Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the excavation as a trio
    .complete 731,1
    .isOnQuest 731

step
    .goto 1439,31.251,87.419
    >>Clear the nearby murlocs together and click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature

step
    .goto 1439,31.229,85.564
    >>Clear the nearby murlocs together and click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle

step
    .goto 1439,31.690,83.700
    >>Clear the nearby murlocs together and click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle

step
    .goto 1439,32.644,80.711
    >>Clear the nearby murlocs together and click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature

step
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_Murkdeep|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_Greymist Hunter|r in the wave that he spawns with alive)|r
    >>Kill the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_Murkdeep|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_Greymist Coastrunners|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_Greymist Warriors|r, and Wave 3 has a level 19 |cRXP_ENEMY_Murkdeep|r and a level 16-17 |cRXP_ENEMY_Greymist Hunter|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner

step
    #label SouthFruitOfTheSea
    #loop
    .goto 1439,35.195,71.864,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,32.674,81.752,60,0
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for the remaining |cRXP_LOOT_Fine Crab Chunks|r
    >>Make sure all three players have finished before returning to Auberdine
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler

step
    #label SouthSeaCreature
    .goto 1439,35.968,70.807
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >> Accept Beached Sea Creature
    


step
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r on the way south
    .accept 4722 >> Accept Beached Sea Turtle

step
    #optional
    #completewith DeepSouthTown
    .hs >> Hearth to Auberdine if ready; otherwise travel back together
    .cooldown item,6948,>0,1
    .bindlocation 442,1
    .subzoneskip 442


step
    .goto 1439,36.621,45.596
    >>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4728 >> Turn in Beached Sea Creature
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle
    .turnin 4733 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde

step
    .goto 1439/1,577.38,6371.35
    >>Talk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump

step
    #label HolyDiverCheck
    #optional
    .goto 1439,36.621,45.596
    >>Check |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r for Holy Diver after all the beach turn-ins
    >>Its exact unlock conditions still need verification. Accept if offered; otherwise manually skip this step. The northern objective only appears if you accepted it.
    .accept 87760 >> Accept Holy Diver if available
    .target Gwennyth Bly'Leggonde

step
    .goto 1439,37.394,40.128
    >>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 98042 >> Turn in It's All Fun and Games Until...
    .target Thundris Windweaver

step
    .goto 1439,37.703,43.393
    >>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .turnin 98025 >> Turn in WANTED: Jai'vhanel
    .target Sentinel Glynda Nal'Shea

step
    .goto 1439,35.743,43.710
    >>Talk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw

step
    .goto 1439,37.439,41.839
    >>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .target Archaeologist Hollee
    .isQuestComplete 731

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
    .target Terenthis
    #optional
    .isQuestComplete 986


-- North: Den Mother, Blackwood, tower, Gyromast and Mathystra

step
    #label DenMother
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Thistle Cubs|r can cast|r |T132152:0|t[Ravage]|cRXP_WARN_, a melee instant attack which stuns you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother

step
    .goto 1439/1,-376.56,6807.62
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Be ready for the furbolgs that spawn.
    .collect 12342,1,4763,1
    .itemcount 12355,<1
    .isOnQuest 4763

step
    .goto 1439/1,-453.20,6870.500
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Be ready for the furbolgs that spawn.
    .collect 12343,1,4763,1
    .itemcount 12355,<1
    .isOnQuest 4763

step
    .goto 1439/1,-520.66,6874.43
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Be ready for the furbolgs that spawn.
    .collect 12341,1,4763,1
    .itemcount 12355,<1
    .isOnQuest 4763

step
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Use the Filled Cleansing Bowl at the bonfire. Gather the trio first.
    .cast 16072
    .use 12347
    .itemcount 12355,<1
    .isOnQuest 4763

step
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Kill |cRXP_ENEMY_Xabraxxis|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis

step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike

step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic

step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike

step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast

step
    #completewith NorthPelts
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r while travelling through the northern area. Each player needs the top of the key.
    .complete 2098,1
    .mob Giant Foreststrider
    .isOnQuest 2098

step
    #completewith NorthPelts
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r for any remaining pelts
    .complete 986,1
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .isOnQuest 986

step
    #label GyromastMurlocs
    .goto 1439/1,-656.25,7801.04
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunters|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage and they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    >>|cRXP_WARN_You can LoS (Line of Sight) the |cRXP_ENEMY_Greymist Oracles|r'|r  |T136048:0|t[Lightning Bolts] |cRXP_WARN_around the sunken ship to avoid taking its damage|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle

step
    #label GyromastCrabs
    .goto 1439/1,-732.88,7596.24
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler

step
    #completewith SwellingForcesEnd
    >>Kill the |cRXP_ENEMY_Stormscale naga|r while collecting relics and preparing the Baron summon
    .complete 98013,1 -- Stormscale Myrmidon (12)
    .mob +Stormscale Myrmidon
    .complete 98013,2 -- Stormscale Sorceress (8)
    .mob +Stormscale Sorceress
    .complete 98013,3 -- Stormscale Warrior (6)
    .mob +Stormscale Warrior
    .isOnQuest 98013

step
    #completewith BaronMarinous
    >>Loot |cRXP_LOOT_Mathystral Amulet Fragments|r from Stormscale Myrmidons, Sorceresses, Warriors and Beastmistresses
    >>Keep clearing until someone has 20 fragments, then use them to form a |cRXP_LOOT_Mathystral Amulet|r. Only one player needs to summon; tell the group when an amulet is ready.
    >>If someone already has an amulet, proceed to the summon. If you already have the Clouded Water Globe, use it to accept the quest.
    .accept 98028 >> Prepare the summon and obtain Baron Marinous from the Clouded Water Globe
    .use 279276,279277,279275

step
    #label MathystraRelics
    .goto 1439/1,-800.35,7370.92,55,0
    .goto 1439/1,-855.37,7449.96,55,0
    .goto 1439/1,-880.91,7302.36,55,0
    .goto 1439/1,-950.34,7258.26,55,0
    .goto 1439/1,-1005.36,7383.58
    >>Loot the |cRXP_LOOT_Mathystra Relics|r on the ground
    .complete 951,1 -- Mathystra Relics (6)

step
    #label HolyDiverObjective
    .goto 1439/1,-1005.36,7383.58
    >>Search the Mathystra ruins and adjacent shore for a |cRXP_ENEMY_Stormscale Beastmistress|r. The arrow marks the ruins, not an exact spawn.
    >>Kill her and loot the |cRXP_LOOT_Rod of Deep Dominion|r for everyone who has Holy Diver
    .complete 87760,1 -- Rod of Deep Dominion (1)
    .unitscan 271903
    .isOnQuest 87760

step
    #label SwellingForcesEnd
    .goto 1439/1,-1005.36,7383.58
    >>Finish the remaining |cRXP_ENEMY_Stormscale naga|r in Mathystra. Keep looting fragments for the Baron summon.
    .complete 98013,1 -- Stormscale Myrmidon (12)
    .mob +Stormscale Myrmidon
    .complete 98013,2 -- Stormscale Sorceress (8)
    .mob +Stormscale Sorceress
    .complete 98013,3 -- Stormscale Warrior (6)
    .mob +Stormscale Warrior

step
    #label BaronMarinous
    .goto 1439,59,21
    >>Baron Marinous is required. If nobody has an amulet yet, keep killing Stormscale naga and Beastmistresses until one player can combine 20 fragments.
    >>Find the |cRXP_PICK_Fathom Stone|r down the ruined stairs between the pillars at water level. The waypoint is approximate.
    >>Gather all three players, restore health and mana, then have the amulet holder use it at the stone to summon |cRXP_ENEMY_Baron Marinous|r
    >>Kill the elite together. Every player must loot and use the |cRXP_LOOT_Clouded Water Globe|r to accept the quest before leaving. A player with the quest already accepted or turned in does not need another summon.
    .accept 98028 >> Accept Baron Marinous from the Clouded Water Globe
    .use 279276,279277,279275
    .mob Baron Marinous

step
    #label GyromastBirds
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider

step
    #label NorthPelts
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    >>|cRXP_ENEMY_Moonstalker Sires|r can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986

step
    .goto 1439,56.654,13.484
    >>Talk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast

step
    #completewith GyromastFight
    .goto 1439,55.802,18.290
    >>Once all three have the quest, talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    .gossipoption 95406
    .target The Threshwackonator 4100
    .isOnQuest 2078

step
    #label GyromastFight
    .goto 1439,56.654,13.484
    >>Escort the robot to Gelkak, then kill it together when it becomes hostile
    >>Let the Warrior pick it up and keep the trio together for credit
    .complete 2078,1
    .mob The Threshwackonator 4100
    .isOnQuest 2078

step
    .goto 1439,56.654,13.484
    >>Talk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .target Gelkak Gyromast

step
    #optional
    #completewith NorthTown
    .hs >> Hearth to Auberdine if ready; otherwise travel back together
    .cooldown item,6948,>0,1
    .bindlocation 442,1
    .subzoneskip 442

step
    #softcore
    #optional
    #completewith NorthTown
    >>If your Hearthstone is still on cooldown, die near the completed Gyromast area and resurrect at the Spirit Healer, then return to Auberdine
    >>Use the town turn-ins and southbound travel while Resurrection Sickness expires. Repair in town. Do not start an escort while anyone is still sick.
    >>Skip this option and run back if you prefer to avoid the durability cost
    .deathskip >> Deathskip back toward Auberdine
    .target Spirit Healer
    .cooldown item,6948,<0,1
    .subzoneskip 442


step
    .goto 1439,37.394,40.128
    >>Talk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver

step
    .goto 1439,37.703,43.393
    >>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea

step
    .goto 1439,38.843,43.416
    >>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .target Terenthis
    .isQuestComplete 986

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Accept A Lost Master
    .target Terenthis
    .isQuestTurnedIn 986

step
    .goto 1439,36.621,45.596
    >>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 87760 >> Turn in Holy Diver
    .target Gwennyth Bly'Leggonde
    .isOnQuest 87760


-- Final southbound passage and Ashenvale handoff

step
    .goto 1439,43.555,76.293
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .turnin 98028 >> Turn in Baron Marinous
    .target Onu

step
    .goto 1439,43.555,76.293
    >>Find |cRXP_FRIENDLY_Arbal|r near Onu at the Grove of the Ancients
    .turnin 98013 >> Turn in Swelling Forces
    .target Arbal::270269

step
    .goto 1439,43.555,76.293
    >>Before leaving the Grove for Volcor's cave, wait for Resurrection Sickness to expire on all three players. The cave approach and the later Kerlonian escort may require combat.
    .aura -15007 >> Wait until Resurrection Sickness has expired

step
    #label Volcor
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isOnQuest 993

step
    .goto 1439/1,-5.83,4608.570
    >>Talk to |cRXP_FRIENDLY_Volcor|r if you still need the follow-up
    .accept 995 >> Accept Escape Through Stealth
    .target Volcor
    .isQuestTurnedIn 993

step
    #label VolcorEnd
    .goto 1439/1,30.85,4635.20
    >>|cRXP_WARN_Wait out the RP|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isOnQuest 995

step
    #optional
    .equip 15 >> Re-equip your regular cloak if the quest cloak was consumed
    .isQuestComplete 995

step
    .goto 1439,44.401,76.425
    >>Talk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 5321,1 >> Accept The Sleeper Has Awakened together
    .target Kerlonian Evershade
    #optional
    >>Skip if he is absent. Start only when all three are ready to head straight to Ashenvale.

step
    .goto 1439/1,34.78,5001.570
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321

step
    #completewith SleeperEnd
    >>Keep |cRXP_FRIENDLY_Kerlonian|r with you. Use the Horn of Awakening next to him whenever he falls asleep.
    >>Head directly to Maestra's Post; avoid unrelated stops during this timed escort
    .use 13536
    .complete 5321,2
    .isOnQuest 5321

step
    .goto 1440/1,-12.70,4150.17,30
    .zone Ashenvale >> Travel south into Ashenvale

step
    #label SleeperEnd
    .goto 1440/1,128.01,3305.31
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321

step
    .goto 1440/1,128.01,3305.31
    >>Talk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .target Liladris Moonriver
    .isQuestComplete 5321

step
    .goto 1440/1,189.71,3185.77
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    .target Delgren the Purifier

step
    .goto 1440/1,394.43,2677.63
    >>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Turn in Therylune's Escape
    .target Therysil
    .isQuestComplete 945

step
    .goto 1440/1,-283.73,2827.920
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Get the Astranaar flight path
    .target Daelyshia

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 990 >> Turn in Trek to Ashenvale
    .target Raene Wolfrunner
    .isOnQuest 990

step
    .goto 1440/1,-433.09,2781.02
    >>Talk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home 415 >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya

step
    .goto 1440/1,-283.73,2827.920
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fly to Auberdine to collect the final Volcor reward
    .target Daelyshia
    .isQuestComplete 995

step
    .goto 1439,39.373,43.483
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Turn in Escape Through Stealth
    .target Terenthis
    .isQuestComplete 995

step
    #optional
    #completewith TrioFinished
    .hs >> Hearth back to Astranaar if ready
    .bindlocation 415,1
    .cooldown item,6948,>0,1
    .zoneskip Darkshore,1

step
    .goto 1439/1,561.66,6343.27
    >>Talk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Astranaar >> Fly back to Astranaar
    .target Caylais Moonfeather
    .zoneskip Darkshore,1

step
    #label TrioFinished
    .goto 1440/1,-283.73,2827.920,30
    >>Darkshore loops complete. Regroup in Astranaar and choose your next guide together.
    .subzone 415

]])
