RXPGuides.RegisterGuide([[

#forever
#season 0,1
#version 1
<< Alliance Gnome (Priest/Warrior)
#group Custom Forever Routes (A)
#subgroup Gnome Priest/Warrior
--#groupid RXP-SRGCE-A1
#name 16-19 Darkshore
#next 19-20 Redridge;20-21 Darkshore/Ashenvale
#defaultfor Gnome (Priest/Warrior)

step
    .goto 1439/1,504.41,6402.39
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto 1439,37.394,40.128
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439/1,467.08,6409.38
    #season 0
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 0
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
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #season 0
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
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CompleteFangs
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #season 0
    #loop
    .waypoint 1439/1,385.20,5393.69,0
    .waypoint 1439/1,155.30,5374.48,0
    .waypoint 1439/1,322.32,4907.25,0
    .waypoint 1439/1,385.20,5393.69,70,0
    .waypoint 1439/1,155.30,5374.48,70,0
    .waypoint 1439/1,322.32,4907.25,70,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r in southern Darkshore
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces all health regeneration by 50% for 10 minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #completewith OnuGrove
    #season 0
    .goto 1439,43.555,76.293,80 >> Travel to the Grove of the Ancients
step
    #label OnuGrove
    #season 0
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    #completewith MasterG
    #season 0
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>Care as they can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto 1439/1,413.37,4818.17,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>Be careful as they cast |T132152:0|t[Ravage] an instant attack dealing 20-40 damage and |cRXP_WARN_knocking you down for 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.390,80.563
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isQuestComplete 1003
step
    #label MasterG
    #season 0
    .goto 1439/1,417.30,4575.82,100 >> Travel to The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    #season 0
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 0
    .goto 1439,38.537,86.050
    >>Discover The Master's Glaive
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    #season 0
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>|cRXP_WARN_Click the |cRXP_PICK_Scrying Bowl|r on the ground|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>Click the |cRXP_PICK_Twilight Tome|r on the northern pedestal
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
step
    .goto 1439,38.660,87.305
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    #label TheryluneEnd
    #season 0
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    #season 0
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Delete the |T134715:0|t[Phial of Scrying] from your bags, as it's no longer needed
step
    #optional
    #season 0
    #completewith TurtleSouth
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>Be careful as they can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>Be careful as they cast |T132152:0|t[Ravage] an instant attack dealing 20-40 damage and |cRXP_WARN_knocking you down for 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Accept Mathystra Relics
    .target Onu
step
    #completewith CompleteThistleBears
    #season 0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    >>Be careful as |cRXP_ENEMY_Reef Crawlers|r can cast |T132155:0|t[Muscle Tear] an instant attack dealing 30-55 damage
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step
    #label TurtleSouth
	#xprate <1.5
    #season 0
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage, they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step << !Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
    #label Murk
    #season 0
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
    #label CompleteThistleBears
    #season 0
    .goto 1439,35.968,70.807
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >> Accept Beached Sea Creature
step
    #optional
    #completewith next
    #season 0
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Return to |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
    #optional
    #season 0
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #season 0
    #completewith CleansingTharnariun
    .abandon 963 >> Abandon For Love Eternal
step
    #xprate <1.5
    #season 0
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Turn in Beached Sea Creature
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    #optional
    #season 0
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto 1439/1,531.27,6403.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r and |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Vendor and restock on Food and Water|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    #label CleansingTharnariun
    #season 0
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will aggro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Thistle Cubs|r can cast|r |T132152:0|t[Ravage]|cRXP_WARN_, a melee instant attack which stuns you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-453.20,6870.500
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will aggro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-520.66,6874.43
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will aggro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> |cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the |cRXP_PICK_Bonfire|r to summon|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Kill |cRXP_ENEMY_Xabraxxis|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #xprate <1.5
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18 >> Grind to level 18
step
    #label LateStalkerFangs
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
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
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label Buzzbox323End
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
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
    #xprate >1.59
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >> Grind to 15000+/19400xp
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    #season 0
    .goto 1439/1,-800.35,7370.92,55,0
    .goto 1439/1,-855.37,7449.96,55,0
    .goto 1439/1,-880.91,7302.36,55,0
    .goto 1439/1,-950.34,7258.26,55,0
    .goto 1439/1,-1005.36,7383.58
    >>Loot the |cRXP_LOOT_Mathystra Relics|r on the ground
    .complete 951,1 -- Mathystra Relics (6)
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunters|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage and they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    >>|cRXP_WARN_You can LoS (Line of Sight) the |cRXP_ENEMY_Greymist Oracles|r'|r  |T136048:0|t[Lightning Bolts] |cRXP_WARN_around the sunken ship to avoid taking its damage|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #xprate <1.59
    #label NorthStalkerPelts
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    >>|cRXP_ENEMY_Moonstalker Sires|r can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue
    #season 0
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Start looking for a group for Gyromast's Revenge/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Start looking for a group for Gyromast's Revenge/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_This quest is VERY difficult|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step
    .goto 1439,56.654,13.484
    #optional
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_This quest is VERY difficult|r
    >>|cRXP_WARN_Try to do this quest if you can as it'll save you time later as it rewards|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_for underwater quests later|r << !Druid !Warlock
    >>|cRXP_WARN_If you are unable to kill the |cRXP_ENEMY_The Threshwackonator 4100|r, skip this step|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Click here for a video guide|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #completewith BeachedCloak
    .abandon 2078 >> Abandon Gyromast's Revenge
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Delete |T134459:0|t[Gyromast's Key] from your bags, as it's no longer needed
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Delete the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r from your bags, as it's no longer needed
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Delete the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r from your bags, as it's no longer needed
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Delete the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r from your bags, as it's no longer needed
step
    #season 1
    #xprate >1.59
    #optional
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and a|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This is for leveling up your|r |T133971:0|t[Cooking] |cRXP_WARN_while on the boat soon|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
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
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .target Terenthis
    .isQuestTurnedIn 986
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_If you equip the|r |T133762:0|t[Enchanted Moonstalker Cloak]|cRXP_WARN_, make sure you save your current cloak for later as the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_is lost upon a later turn in|r
    .equip 15,5387 >>|cRXP_WARN_Equip the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_If it's better than your current Cloak|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
    .isQuestComplete 1138
step
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde

----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of 2x Non-Deadmines Training/Class q section----



step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto 1439/1,816.85,6424.66,15 >> Travel to the dock of the Menethil Harbor boat
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreNoDMCook1
    #requires TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreNoDMCook1
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T132832:0|t|cRXP_LOOT_[Small Eggs]|r |cRXP_WARN_and|r |T134059:0|t[Mild Spices] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .dungeon !DM
step << Warrior/Paladin
    #xprate >1.59
    #ah
    #label MenethilNoDMBoat
    .goto 1439/1,826.67,6409.82
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Menethil Harbor if needed|r << Warrior/Paladin/Rogue
    >>|cRXP_WARN_If you have a very good weapon in your bags that you can equip soon, skip this step|r
    .zone Wetlands >> Take the boat to Menethil Harbor
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #ssf << Paladin/Warrior
    #label MenethilNoDMBoat
    .goto 1439/1,826.67,6409.82
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Menethil Harbor if needed|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Take the boat to Menethil Harbor
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin
    #ah
    #xprate >1.59
    #optional
    #label PalWarSkip20
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Durnad|r in Menethil Harbor
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_WARN_If there isn't one, don't worry as you'll be going to the AH later|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << Warrior/Paladin
    #ssf
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Durnad|r inside
    >>|cRXP_BUY_Buy a|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_BUY_If there isn't one, buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from him if you can afford it|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equip the|r |T135329:0|t[Executioner's Sword]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brenwyn Wintersteel
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >> Travel toward |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << !Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Hearth to Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .cooldown item,6948,>0,1
    .dungeon !DM << !Dwarf/!Hunter



----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----




step << !NightElf !Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << !NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Delete the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r from your bags, as it's no longer needed
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Delete the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r from your bags, as it's no longer needed
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Delete the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r from your bags, as it's no longer needed
step << !NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step << !NightElf
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
    .target Terenthis
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_If you equip the|r |T133762:0|t[Enchanted Moonstalker Cloak]|cRXP_WARN_, make sure you save your current cloak for later as the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_is lost upon a later turn in|r
    .equip 15,5387 >>|cRXP_WARN_Equip the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_If it's better than your current Cloak|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate <1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    #requires DeleteGyromast
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
    .isQuestComplete 1138
step
    #xprate <1.59 << !Hunter
    #label TravelMenethilDMBoat
    .goto 1439,32.432,43.744,15 >> Travel to the dock of the Menethil Harbor boat
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #label DarkshoreDMCook1
    #requires TravelMenethilDMBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #requires DarkshoreDMCook1
    #completewith DarnDMBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T132832:0|t|cRXP_LOOT_[Small Eggs]|r |cRXP_WARN_and|r |T134059:0|t[Mild Spices] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto 1439/1,826.67,6409.82
    >>|cRXP_WARN_You will now begin to travel to The Deadmines|r
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Menethil Harbor if needed|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Paladin/Warrior
    #ah
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Durnad|r inside
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_WARN_Alternatively, you can check the Auction House soon for something better or cheaper|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior
    #ssf
    #optional
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Durnad|r inside
    >>|cRXP_BUY_Buy a|r |T135329:0|t[Executioner's Sword] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_BUY_If there isn't one, buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from him if you can afford it|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the|r |T135329:0|t[Executioner's Sword]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto 1455/0,-1115.43,-4598.86
    >>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
    .accept 968 >> Accept The Powers Below
    .use 5352
    .itemcount 5352,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1455/0,-1115.43,-4598.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r inside
    .turnin 968 >> Turn in The Powers Below
    .target Gerrig Bonegrip
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Enter |cRXP_FRIENDLY_Jubahl Corpseseeker|r's house
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets if you wish|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_walk onto the top of the bed, then jump onto the top of the bookshelf. Perform a Logout Skip by logging out and back in|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >> Enter |cRXP_FRIENDLY_Jubahl Corpseseeker|r's house
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_walk onto the top of the bed, then jump onto the top of the bookshelf. Perform a Logout Skip by logging out and back in|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if it's up)|r
    .target Gearcutter Cogspinner
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDM
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Enter the Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith ShoniAccept
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while on the Tram|r
    .zone Stormwind City >> Take the Deeprun Tram to Stormwind
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if its up)|r
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Accept Oh Brother. . .
    .accept +168 >> Accept Collecting Memories
    .goto 1453/0,501.31,-8468.65
    .target Wilder Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1453/0,501.31,-8468.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r inside
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .target Wilder Thistlenettle
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
    .trainer >> Train your class spells
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Train Daggers << Mage/Druid/Priest
    .train 202 >> Train 2h Swords << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r inside
    >>|cRXP_BUY_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r inside
    .vendor 1312 >>|cRXP_BUY_Buy a|r |T135469:0|t[Dusk Wand] |cRXP_BUY_from her if you can afford it|r
    >>|cRXP_BUY_Alternatively, Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_from the Auction House if it's cheaper than 52s 47c|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r inside
    >>|cRXP_BUY_Buy a|r |T135469:0|t[Dusk Wand] |cRXP_BUY_from her|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equip the|r |T135469:0|t[Dusk Wand]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equip the|r |T135144:0|t[Greater Magic Wand]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Tough Condor Meat]
    >>|T134321:0|t[Crisp Spider Meat]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T132794:0|t[Flask of Oil]
    >>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Tough Condor Meat]
    >>|T134321:0|t[Crisp Spider Meat]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1453/0,603.77,-8801.7,30,0
    .goto 1453/0,530.03,-8835.51,30,0
    .goto 1453/0,533.45,-8868.15,15,0
    .goto 1453/0,490.04,-8835.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path << !Human
    .target Dungar Longdrink
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >> Travel to Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1045.12,-10508.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path << !Human
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto 1429/0,-727.57,-9555.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r atop the Tower of Azora
    .accept 94 >> Accept A Watchful Eye
    .target Theocritus
    .dungeon DM
    .xp <20,1
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto 1433/0,-1902.32,-9609.54
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r inside
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r inside upstairs
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood
	.target Wiley the Black
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    .goto 1433/0,-2234.89,-9435.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path << !Human !Warlock
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Turn in The Defias Brotherhood
    .accept 135 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Start assembling a group for the Deadmines
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood
    .accept 142 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Travel to Moonbrook
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Kill the |cRXP_ENEMY_Defias Messenger|r. Loot him for his |cRXP_LOOT_Mysterious Message|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Defias Messenger|r spawns in Moonbrook. He walks along the road north of Moonbrook, to the Gold Coast Quarry and Jangolode Mine. If you don't see him along the road, wait for him to spawn in Moonbrook|r
    >>|cRXP_WARN_He has a 4-5 minute respawn timer|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    >>|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_The Defias Traitor|r to spawn if he's not there|r
    >>|cRXP_WARN_If you've already assembled a group, make sure your group has also turned in the previous part first before starting the escort|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1527.07,-11073.23
    >>Escort the |cRXP_FRIENDLY_The Defias Traitor|r to The Deadmines
    >>|cRXP_WARN_Stay beside |cRXP_FRIENDLY_The Defias Traitor|r at all times. Be ready to fight |cRXP_ENEMY_Defias Pillagers|r and |cRXP_ENEMY_Defias Looters|r upon reaching Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .accept 214 >> Accept Red Silk Bandanas
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Grind |cRXP_ENEMY_Gnolls|r south of Sentinel Hill whilst assembling a Deadmines group|r
    .subzone 20 >>When your group has been assembled, travel to Moonbrook
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Enter the Defias Hideout with your group
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Red Silk Bandanas|r
    >>|cRXP_WARN_You can also complete this inside the Deadmines|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter The Deadmines Dungeon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r and |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Exit the Deadmines via the back exit east of |cRXP_ENEMY_Edwin VanCleef|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Travel to the Westfall Lighthouse
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103 >> Turn in Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you can't find him, skip this step|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >> Abandon Keeper of the Flame
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Red Silk Bandanas|r
    >>|cRXP_WARN_If there are no more |cRXP_ENEMY_Defias|r inside the Deadmines, kill them outside instead|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 214 >> Turn in Red Silk Bandanas
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >> Abandon The Unsent Letter. You will do this later
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith ShoniEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20,0
    .goto 1453/0,862.89,-8519.61,20 >> Travel toward |cRXP_FRIENDLY_High Priestess Laurena|r inside the Stormwind Cathedral
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r inside
    .train 8103 >> Train your class spells
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
    .train 6192 >> Train your class spells
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1453/0,501.31,-8468.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r inside
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
    .trainer >> Train your class spells
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Turn in Underground Assault
    .goto 1453/0,634.700,-8390.800
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if its up)|r
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20,0
    .goto 1453/0,862.89,-8519.61,20 >> Travel toward |cRXP_FRIENDLY_High Priestess Laurena|r inside the Stormwind Cathedral
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r inside
    .train 8103 >> Train your class spells
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
    .train 6192 >> Train your class spells
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >> Hearth to Darkshore
    .zoneskip Darkshore
    .dungeon DM




----End of Hunter/All 2x Deadmines section----
----Start of <1.59x Redridge Transition----






step << !Hunter
--XX NightElf
    #xprate <1.59
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and a|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This is for leveling up your|r |T133971:0|t[Cooking] |cRXP_WARN_while on the boat soon|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
--XX NightElf
    #xprate <1.59
    #completewith next
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
--ZXCV
step << !Hunter
    #xprate <1.59
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439,32.432,43.744,15 >> Travel to the dock of the Menethil Harbor boat
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
step << !Hunter
    #xprate <1.59
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #xprate <1.59
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T132832:0|t|cRXP_LOOT_[Small Eggs]|r |cRXP_WARN_and|r |T134059:0|t[Mild Spices] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #xprate <1.59
    #label MenethilRRBoat
    .goto 1439/1,826.67,6409.82
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Menethil Harbor if needed|r << Rogue/Warrior/Paladin
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !NightElf !Hunter
    #xprate <1.59
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    #xprate <1.59
    .goto 1437/0,-782.03,-3793.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir



----Start of <1.59x Night Elf Wetlands->IF Transition----



step << skip --logout skip !Hunter
    #xprate <1.59
    #completewith next
    #optional
    .goto 1455/0,-1158.16,-4816.32,0
    .goto 1455/0,-1330.28,-4843.6,20 >> |cRXP_WARN_Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Click here for a video guide|r
step << !Hunter
    #xprate <1.59
    #completewith next
    .goto 1455/0,-1249.95,-4793.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter
    #xprate <1.59
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r




----End of <1.59x Redridge Transition----





]])
