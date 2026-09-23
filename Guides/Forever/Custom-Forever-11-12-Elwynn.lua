RXPGuides.RegisterGuide([[

#xprate <1.5
#forever
#season 0,1
<< Alliance Gnome (Priest/Warrior)
#group Custom Forever Routes (A)
#subgroup Gnome Priest/Warrior
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Dwarf/Gnome)
#version 1
#defaultfor Gnome (Priest/Warrior)
#next 12-14 Loch Modan (Dwarf/Gnome)
--#era << !Warlock

step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink
step
    #optional
    #completewith next
    .subzone 87 >> Travel to Goldshire
step << skip
    .goto 1429/0,73.95,-9465.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .accept 60 >> Accept Kobold Candles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Accept A Fishy Peril
    --.accept 47 >> Accept Gold Dust Exchange
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >> Accept Princess Must Die!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483

--
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.67
    .accept 88 >> Accept Princess Must Die!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto 1429/0,38.41,-9923.69
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << skip
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_The level 5 mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    .goto 1429/0,193.00,-9832.40,50,0
    .goto 1429/0,129.73,-9844.49
    >>|cRXP_WARN_Enter and explore Fargodeep Mine|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step << skip
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_The level 5 mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #softcore
    #completewith GoldshireTurnins
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << skip
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >> Travel to Goldshire
step << skip
    #hardcore
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .target Remy "Two Times"
step << skip --Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 176,3 >> Turn in Wanted: "Hogger"
    .isQuestComplete 176
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
step << skip
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .turnin 123 >> Turn in The Collector
    .isOnQuest 123
step << skip --Warlock
    .isQuestTurnedIn 123
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >> Accept Manhunt
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
step << skip
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Turn in Gold Dust Exchange
--

step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >> Travel east to |cRXP_FRIENDLY_Guard Thomas|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #completewith BundleOT
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .goto 1429/0,-986.35,-9336.06
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .accept 5545 >> Accept A Bundle of Trouble
step
    #era
    #completewith next
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Murlocs|r may aggro once you click|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Loot the |cRXP_LOOT_Bundles of Wood|r on the ground at the base of the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #completewith WaterloggedToolbox
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >> Accept Downstream
    .target Ormin Pelford
step
    >>Loot the |cRXP_PICK_Waterlogged Saw|r on the ground
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Loot the |cRXP_PICK_Waterlogged Axe|r on the ground
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Loot the |cRXP_PICK_Waterlogged Toolbox|r on the ground
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .goto 1429/0,-1119.800,-9931.300
    >>Kill |cRXP_ENEMY_Croaky|r. Loot him for |T134169:0|t[|cRXP_LOOT_Croaky's Head|r]
    .use 247826 >> |cRXP_WARN_Use|r |T134169:0|t[|cRXP_LOOT_Croaky's Head|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_He is a level 11 elite. Skip this step if you are unable to kill him|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Accept Croaky's Head
    .mob Croaky
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-869.87,-9768.10
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will aggro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    >>|cRXP_WARN_Pool 100 Rage before you engage|r |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Be ready to use a|r |T134830:0|t[Lesser Healing Potion]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Click here for video reference|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .xp <9,1
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Turn in Downstream
    .target Ormin Pelford
step
    #completewith next
    .subzone 798 >> Travel to Ridgepoint Tower
step
    .isOnQuest 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Turn in Croaky's Head
step
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Travel to Redridge Mountains
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Accept Encroaching Gnolls
step
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_Be careful of high level mobs en route|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step << skip
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133972:0|t[Stringy Vulture Meat]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk Liver]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .target Auctioneer Jaxon
step
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >> Exit Stormwind. Travel to Goldshire
step
    #era
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .target Marshal Dughan
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
    .xp <12,1
step << Mage/Priest/Rogue
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Travel upstairs in the Inn
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .trainer >> Train your class spells
    .xp <12,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Turn in Princess Must Die!
    .goto Elwynn Forest,34.660,84.483
step
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Travel to Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .target Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 151 >> Accept Poor Old Blanchy
    .accept 36 >> Accept Westfall Stew
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .accept 9 >> Accept The Killing Fields
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step
    #optional
    .isQuestComplete 38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Turn in Westfall Stew
step
    #optional
    .isQuestComplete 22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Turn in Goretusk Liver Pie
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer or run to Sentinel Hill
    .target Spirit Healer
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 12 >> Accept The People's Militia
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 102 >> Accept Patrolling Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Accept Red Leather Bandanas
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step << !Paladin
    .hs >> Hearth to Thelsamar
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << !Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Loch Modan >> Fly to Loch Modan
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan

]])