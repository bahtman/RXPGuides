RXPGuides.RegisterGuide([[

#xprate <1.5
#forever
#season 0,1
#version 8
<< Alliance (Warlock/Priest/Warrior)
#name 16-18 Westfall & Redridge
#displayname 16-18 Westfall & Redridge
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#next 18-20 Darkshore
#defaultfor Gnome (Priest/Warrior)


step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Accept The Defias Brotherhood

step
    .fly Redridge >> Fly to Redridge
    
step
    #label DMRedridge
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r up stairs
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood
	.target Wiley the Black
step
    .goto Redridge Mountains,26.8,44.8
    >>Talk to |cRXP_FRIENDLY_Innkeeper Brianna|r
    .vendor >> Buy food and water before the circuit
    .target Innkeeper Brianna
step
    .goto 1433/0,-2062.96,-9209.62
    >>Talk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    >>Start collecting boar snouts during this visit. Finish the remaining ingredients and turn in on the next Redridge visit, around level 20
    .target Chef Breanna
step
    #completewith RedridgeToolbox
    .isOnQuest 92
    >>Kill |cRXP_ENEMY_Great Goretusks|r as you move between objectives. Loot their |cRXP_LOOT_Great Goretusk Snouts|r; each character needs five
    >>Keep any |cRXP_LOOT_Tough Condor Meat|r and |cRXP_LOOT_Crisp Spider Meat|r you loot as well. Continue the circuit even if Goulash is unfinished; finish it on the next visit
    .complete 92,1 -- Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 118 >> Accept The Price of Shoes
    >>Hold this through Darkshore. Deliver it in Goldshire on the level-20 journey from Stormwind to Redridge
    .target Verner Osgood
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

step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 125 >> Turn in The Lost Tools
    .target Foreman Oslow

step
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 120 >> Accept Messenger to Stormwind
    >>Keep Redridge Goulash and its ingredients through Westfall and Darkshore for the level-20 Redridge return
    .target Magistrate Solomon
step
    #completewith next
    .goto 1433/0,-2234.89,-9435.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Turn in The Defias Brotherhood
    .accept 135 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436/0,902.67,-11084.67
    .xp 15 >> Reach level 15 before collecting the Stormwind Deadmines quests
    >>Kill nearby gnolls if you still need experience
step
    #completewith next
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step
    .goto 1453/0,520.88,-8954.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Turn in Messenger to Stormwind
    .target General Marcus Jonathan
    .isOnQuest 120
step
    .isQuestTurnedIn 120
    .goto 1453/0,520.88,-8954.15
    >>Talk to |cRXP_FRIENDLY_General Marcus Jonathan|r. Bring his reply on the later Redridge visit
    .accept 121 >> Accept Messenger to Stormwind
    .target General Marcus Jonathan
step
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
step
    .goto 1453/0,501.31,-8468.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .target Wilder Thistlenettle
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston

step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Travel to Saldean's Farm
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step << Gnome/Dwarf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Accept The People's Militia
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Accept Red Leather Bandanas

step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood
    .accept 142 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle

step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
    .vendor >>|cRXP_BUY_Buy food/water if needed|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Accept Testing the Wells
    .accept 92744 >>Accept Murloc Gills
step
	#completewith bennytime
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith bennytime
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Travel to the Alexston's Farmstead
    >>|cRXP_WARN_Work on completing the other quest objectives as you move there|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r in the barn
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Accept Harvesting the Harvesters
step
    #sticky
    #completewith bennytime
    >>Kill |cRXP_ENEMY_Harvest Watchers|r located on any of the fields as you run by them
    >>Loot them for their |cRXP_LOOT_Okra|r, |cRXP_LOOT_Flasks of Oil|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)


step
    .goto Westfall,37.413,50.701
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground
    .accept 79008 >> Accept ...and that note you found
step
    .goto 1436/0,1748.27,-10672.13
    >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399

step
    .goto 1436/0,1635.92,-10621.27,60,0
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63
    >>Kill |cRXP_ENEMY_Harvest Watchers|r and |cRXP_ENEMY_Harvest Golems|r. Collect the remaining |cRXP_LOOT_Flasks of Oil|r before heading south
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
    .mob Harvest Golem
    

step
    .goto Westfall,30,50
    .goto Westfall,30,60
    .goto Westfall,29.6,65
    .goto Westfall,31.5,76.8
    >>Kill |cFFFF5722Riverpaw Gnolls|r and |cFFFF5722Riverpaw Scouts|r. Loot them for their |cFF00BCD4Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Old Murk-Eye

step 
    .goto Westfall, 29.7,86.4
    >>Farm gnolls until you see Old Murk-Eye
    .mob Old Murk-Eye
    .accept 104 >> Accept The Coastal Menace
    >>Kill Old boi
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103 >> Turn in Keeper of the Flame
    .turnin 104 >> Turn in The Coastal Menace
    
step
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Travel to Moonbrook
step
    #label DefiasMessenger
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Kill the |cRXP_ENEMY_Defias Messenger|r. Loot him for his |cRXP_LOOT_Mysterious Message|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Defias Messenger|r spawns in Moonbrook. He walks along the road north of Moonbrook, to the Gold Coast Quarry and Jangolode Mine. If you don't see him along the road, wait for him to spawn in Moonbrook|r
    >>|cRXP_WARN_He has a 4-5 minute respawn timer|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Molsen Farm well|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    .goto 1436/0,1266.67,-9927.33,75 >> Travel to the Jansen Stead, |cRXP_WARN_work on the other quest objectives as you move there|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
    .complete 64,1 --Furlbrow's Pocket Watch'
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r and |cRXP_LOOT_Gills|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Jansen Stead well|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
	.complete 151,1 --Handful of Oats (8)
step
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Turn in Poor Old Blanchy
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .vendor >> |cRXP_BUY_Vendor trash|r
    >>|cRXP_WARN_Do NOT sell|r |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] |cRXP_WARN_or|r |T133972:0|t[Stringy Vulture Meat]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Turn in The Killing Fields
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Turn in Goretusk Liver Pie
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    .isQuestTurnedIn 38
    .itemcount 733,1
    .use 733
    +Eat Westfall Stew now. Stay seated for at least 10 seconds until you gain the Well Fed buff, then check off this step. If the buff is already active, skip this step
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Turn in Goretusk Liver Pie
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 38
    .target Salma Saldean
step
    .isQuestTurnedIn 38
    .itemcount 733,1
    .use 733
    +Eat Westfall Stew now. Stay seated for at least 10 seconds until you gain the Well Fed buff, then check off this step. If the buff is already active, skip this step
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Turn in The Killing Fields
step << skip
    .goto 1436/0,1213.400,-10153.800
    .isQuestComplete 92909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r in the barn
    .target Ozwin Ironsprocket::253395
    .turnin 92909 >>Turn in Harvesting the Harvesters

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Turn in The Killing Fields
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Turn in Westfall Stew
    .turnin 22 >> Turn in Goretusk Liver Pie
step
    .isQuestTurnedIn 38
    .itemcount 733,1
    .use 733
    +Eat Westfall Stew now. Stay seated for at least 10 seconds until you gain the Well Fed buff, then check off this step. If the buff is already active, skip this step
step
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler

step
    .goto 1436/0,1324.200,-10490.400
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Turn in Red Leather Bandanas
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Turn in Testing the Wells
    .turnin 92744 >>Turn in Murloc Gills
    .accept 92745 >> Accept The State of the Mines
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Turn in Patrolling Westfall
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Turn in The People's Militia
    .turnin 142 >> Turn in The Defias Brotherhood
    .accept 13 >> Accept The People's Militia

        
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    >>|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_The Defias Traitor|r to spawn if he's not there|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor

step
    #sticky
    #label PeoplesMilitia13
    .isOnQuest 13
    >>Kill |cRXP_ENEMY_Defias Pillagers|r and |cRXP_ENEMY_Defias Looters|r during the escort. Finish any remaining kills in Moonbrook after the escort
    >>|cRXP_WARN_Stay with |cRXP_FRIENDLY_The Defias Traitor|r until the escort is complete|r
    .complete 13,1 -- Defias Pillager slain (15)
    .mob +Defias Pillager
    .complete 13,2 -- Defias Looter slain (15)
    .mob +Defias Looter
step
    .goto 1436/0,1527.07,-11073.23
    >>Escort the |cRXP_FRIENDLY_The Defias Traitor|r to The Deadmines
    >>|cRXP_WARN_Stay beside |cRXP_FRIENDLY_The Defias Traitor|r at all times! Be ready to fight |cRXP_ENEMY_The Defias|r upon reaching Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor

step
    #label PeoplesMilitia13
    .isOnQuest 13
    >>Kill |cRXP_ENEMY_Defias Pillagers|r and |cRXP_ENEMY_Defias Looters|r during the escort. Finish any remaining kills in Moonbrook after the escort
    >>|cRXP_WARN_Stay with |cRXP_FRIENDLY_The Defias Traitor|r until the escort is complete|r
    .complete 13,1 -- Defias Pillager slain (15)
    .mob +Defias Pillager
    .complete 13,2 -- Defias Looter slain (15)
    .mob +Defias Looter
step
    #requires PeoplesMilitia13
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 13 >> Turn in The People's Militia
    .accept 14 >> Accept The People's Militia
    >>Keep the final People's Militia quest for after leaving Deadmines through the rear exit
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .accept 214 >> Accept Red Silk Bandanas
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell
    
step
    .goto 1436/0,1037.42,-10628.27
    >>Talk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind for turn-ins, training and Darkshore supplies
    .target Thor
step
    .goto 1453/0,673.58,-8867.76
    >>Talk to |cRXP_FRIENDLY_Innkeeper Allison|r before the Darkshore errands
    .home >> Set your Hearthstone to Stormwind City for the Astranaar batch after Darkshore
    .bindlocation 16509
    .target Innkeeper Allison
step
    .goto 1453/0,719.68,-8550.31
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
step
    #label DarkshoreAuctionHouse
    #optional
    .goto 1453/0,660.28,-8814.55
    >>Visit the Auction House and talk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy elixirs and minor oils for the next stretch. If affordable, buy the following for each character's quick turn-ins in Auberdine.
    >>Strider Meat is only useful for this turn-in if that character has Cooking 10 or higher. Keep the supplies in your bags until Darkshore.
    >>You can skip this stop if the items are unavailable or too expensive
    .collect 5469,5,2178,1 >>Buy 5 Strider Meat for Easy Strider Living
    .collect 12238,6,1141,1 >>Buy 6 Darkshore Grouper for The Family and the Fishing Pole
    +Check elixirs and minor oils and buy what you need
    .target Auctioneer Jaxon

step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Buy one|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_and three|r |T134324:0|t[Nightcrawlers] |cRXP_BUY_for Fishin' Time|r
    .collect 6529,1,95065,1 -- Shiny Bauble (1)
    .collect 6530,3,95065,1 -- Nightcrawlers (3)
    .target Catherine Leland

step
    #label ReadingRoomPickup
    .goto 1453/0,1093.16,-8779.020
    >>Head to the Park and find |cRXP_FRIENDLY_Roy Lewells|r. The waypoint leads to the Park; use the target button to find Roy
    .accept 97234 >> Accept Reading Room
    .target Roy Lewells::268568

step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral

step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .xp <18,1
    .goto 1453/0,862.89,-8519.61
    .trainer >> Train your class spells

    .target Brother Joshua

step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .xp <18,1
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29

    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin

step
    #completewith ReadingRoomLibrary
    .isOnQuest 97234
    .goto 1453/0,453.16,-8533.33,30,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,383.66,-8345.63,20 >> Enter the Royal Library in Stormwind Keep

step
    #label ReadingRoomLibrary
    .goto 1453/0,383.66,-8345.63
    >>Find |cRXP_FRIENDLY_Donyal Tovald|r inside the Royal Library
    .turnin 97234 >> Turn in Reading Room
    .accept 97237 >> Accept Shelf Picked
    .target Donyal Tovald::2504

step
    .isOnQuest 97237
    .goto 1453/0,383.66,-8345.63
    >>Collect all four reading materials from the library shelves and tables before leaving
    .complete 97237,1 >>Collect |cRXP_PICK_Field Accounts of Horde Razings|r: the |cRXP_WARN_scroll under the first row of bookshelves|r on the entrance side
    .complete 97237,2 >>Collect |cRXP_PICK_Trollbane Conquests|r: the |cRXP_WARN_green book on the same first row of bookshelves|r on the entrance side
    .complete 97237,3 >>Collect |cRXP_PICK_The Forsaken Ally|r: the |cRXP_WARN_red book on the second row of bookshelves|r on the same side
    .complete 97237,4 >>Collect |cRXP_PICK_Cycles of Morality|r: the |cRXP_WARN_black book on the table in the north corner|r

step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs

step << Warlock
    .xp <18,1
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells

    .target Ursula Deline

step
    .isOnQuest 97237
    .goto 1453/0,1093.16,-8779.020
    >>Return to |cRXP_FRIENDLY_Roy Lewells|r in the Park before leaving for Darkshore
    .turnin 97237 >> Turn in Shelf Picked
    .target Roy Lewells::268568

step
    .goto 1453/0,1093.16,-8779.020
    >>Talk to |cRXP_FRIENDLY_Argos Nightwhisper|r before heading to the Auberdine boat
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper

step
    .goto 1453/0,1193.100,-8328.900
    >>Talk to |cRXP_FRIENDLY_Manifest Clerk Philmor|r on the way to the Auberdine boat
    >>Hold this quest through Darkshore and turn it in after the Astranaar batch hearth to Stormwind
    .accept 97220 >> Accept Philmor's Favor
    .target Manifest Clerk Philmor::268511

step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilbert Gray::267118|r on the way to the Auberdine boat
    .accept 95065 >> Accept Fishin' Time
    .turnin 95065 >> Turn in Fishin' Time
    .target Gilbert Gray::267118

step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Take the boat to Darkshore

]])
