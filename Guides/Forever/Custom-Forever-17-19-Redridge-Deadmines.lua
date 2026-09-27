RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 4
<< Alliance Gnome (Priest/Warrior)
#group Custom Forever Routes (A)
#subgroup Gnome Priest/Warrior
#name 17-19 Redridge & Deadmines
#next 14-16 Darkshore
#defaultfor Gnome (Priest/Warrior)

-- Continues Westfall after quest 142, with the Stormwind dungeon quests already collected.
-- Show of Force: https://www.wowhead.com/forever/quest=98407/show-of-force
step
    .goto 1436/0,1037.42,-10628.27
    >>Talk to |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fly to Redridge for a quest circuit before Deadmines
    .zoneskip Redridge Mountains
    .target Thor

step
    .goto 1433/0,-2237.28,-9443.750
    >>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .accept 246 >> Accept Assessing the Threat
    .accept 98407 >> Accept Show of Force
    .target Deputy Feldon

step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
    .goto 1433/0,-2152.62,-9217.870
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >> Accept A Free Lunch
    .target Darcy



step
    .goto 1433/0,-2207.10,-9351.52
    >>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >> Accept Hilary's Necklace
    .target Shawn





step
    .isOnQuest 3741
    >>|cRXP_WARN_Jump into the Lake|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_It has multiple spawn locations in the Lake|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)



step
    .goto 1433/0,-1906.400,-9606.800
    >>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
    .target Guard Parker


step
    .isOnQuest 98407
    .goto Redridge Mountains,13.6,67.8
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r west of the road. Loot five |cRXP_LOOT_Spiked Collars|r
    .complete 98407,1
    .mob Redridge Thrasher

step
    .isOnQuest 246
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90
	>>Kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    #label RedridgeToolbox
    .isOnQuest 125
    .goto 1433/0,-2472.16,-9366.72
    >>Open the |cRXP_PICK_Sunken Chest|r at the wreck. Loot |cRXP_LOOT_Oslow's Toolbox|r
    >>Surface for air between dives
    .complete 125,1

step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 125 >> Turn in The Lost Tools
    .target Foreman Oslow

step
    .goto 1433/0,-2221.65,-9218.60
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r inside the town hall
    .turnin 121 >> Turn in Messenger to Stormwind
    .accept 143 >> Accept Messenger to Westfall
    .target Magistrate Solomon
step
    .goto 1433/0,-2045.38,-9245.82
    >>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
    .target Martie Jainrose

step
    .goto 1433/0,-2152.62,-9216.430
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >> Turn in Delivering Daffodils
    .target Darcy




step
    .goto 1433/0,-2205.58,-9351.52
    >>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >> Turn in Hilary's Necklace
    .target Hilary

step
    .goto 1433/0,-2237.93,-9443.60
    >>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 246 >> Turn in Assessing the Threat
    .turnin 98407 >> Turn in Show of Force
    .target Deputy Feldon


-- Integer XP: fewer than 1050 remaining means at most 1049.
-- Level 18+ also visits Stormwind; only lower-level characters need the XP turn-in.
step
    .xp <18-1049,1,DirectWestfall
    .goto 1433/0,-2234.89,-9435.35
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    >>Train before Deadmines. If you are just short of level 18, turn in Humble Beginnings first
    .fly Stormwind >> Fly to Stormwind
    .zone Stormwind City
    .target Ariena Stormfeather
step
    .xp 18,1
    .goto 1453/0,719.68,-8550.31
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings to reach level 18
    .target Baros Alexston
step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
    .goto 1453/0,323.3,-8689.29
    >>Talk to |cRXP_FRIENDLY_Wu Shen|r or |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Train your available class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>Talk to |cRXP_FRIENDLY_Brother Joshua|r in the Cathedral
    .trainer >> Train your available class spells
    .target Brother Joshua
step
    .goto 1453/0,490.03,-8835.82
    >>Talk to |cRXP_FRIENDLY_Dungar Longdrink|r
    >>Find group members
    .fly Westfall >> Fly to Westfall for Deadmines
    .zone Westfall
    .target Dungar Longdrink
step
    #label DirectWestfall
    .zoneskip Westfall
    .goto 1433/0,-2234.89,-9435.35
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    >>Find group members
    .fly Westfall >> Fly to Westfall for  Deadmines
    .target Ariena Stormfeather

step
    .goto 1436/0,1045.12,-10508.80
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 143 >> Turn in Messenger to Westfall
    .accept 144 >> Accept Messenger to Westfall
    >>Keep the reply for your next Redridge visit; continue with Deadmines now
    .target Gryan Stoutmantle

step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Travel to The Deadmines
step
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_You may complete this after you enter the Dungeon|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    >>Start assembling your Deadmines group while completing these quests
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    >>Start assembling your Deadmines group while completing this quest
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step
    #completewith DMend
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 166,1 -- Head of VanCleef (1)
step
    >>Loot |cRXP_ENEMY_Edwin VanCleef|r for |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]. Keep it for the Stormwind turn-in after the run
    .collect 2874,1,373 -- An Unsent Letter (1)
step
    >>Finish collecting |cRXP_LOOT_Red Silk Bandanas|r before leaving the dungeon
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #label DMend
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Travel to Sentinel Hill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 166 >> Turn in The Defias Brotherhood
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin -214 >> Turn in Red Silk Bandanas
    .target +Scout Riell
    .goto 1436/0,1033.22,-10504.83

step
    #completewith DarkshoreBoat
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r and |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .target +Wilder Thistlenettle
    .goto 1453/0,501.31,-8468.65
    .turnin 2040 >> Turn in Underground Assault
    .target +Shoni the Shilent
    .goto 1453/0,634.700,-8390.800
step
    .itemcount 2874,1
    .use 2874
    .accept 373 >> Accept The Unsent Letter
step
    .goto 1453/0,734.66,-8555.94,10,0
    .goto 1453/0,719.68,-8550.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Turn in The Unsent Letter
    .isOnQuest 373
    .target Baros Alexston
step
    .isQuestTurnedIn 373
    .goto 1453/0,719.68,-8550.31
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston

step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Train your class spells
    .train 8122,1
    .target Brother Joshua
step
    .goto 1453/0,810.53,-8809.81,10,0
    .goto 1453/0,828.45,-8799.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
    .isOnQuest 389
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater

step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .train 6222,1
    .target Ursula Deline





step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore if needed|r
    .zone Darkshore >> Take the boat to Darkshore
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Take the boat to Darkshore

]])
