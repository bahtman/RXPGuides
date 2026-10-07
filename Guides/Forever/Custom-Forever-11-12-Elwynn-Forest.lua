RXPGuides.RegisterGuide([[

#xprate <1.5
#forever
<< Alliance
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn Forest
#displayname 11-12 Elwynn Forest
#version 8
#defaultfor Gnome/Dwarf (Priest/Paladin/Shaman/Warrior/Warlock)
#next 12-15 Loch Modan
--#era << !Warlock

step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink

step
    #optional
    #completewith FirstGoldshireRounds
    >>If you loot a |cRXP_LOOT_Gold Pickup Schedule|r, click it to start |cRXP_PICK_The Collector|r
    .use 1307
    .accept 123 >> Accept The Collector

step << Warrior
    .goto 1429/0,683.40,-9667.93
    >>Click the |cRXP_PICK_Wanted Poster|r at Westbrook Garrison. Share the quest with Baht and Warlock immediately after accepting it
    .accept 176 >> Accept Wanted: "Hogger"

step << Warrior
    .goto Elwynn Forest,24.2,74.4
    >>Talk to |cRXP_FRIENDLY_Deputy Rainer|r at Westbrook Garrison. Share Report to Gryan Stoutmantle with Baht and Warlock after accepting it
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Deputy Rainer

step << Warlock
    .goto 1429/0,73.95,-9465.590
    >>Talk to |cRXP_FRIENDLY_Marshal Dughan|r. Share The Fargodeep Mine with your party, then join Baht at Hogger
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan

step << Priest/Paladin/Shaman
    .goto 1429,25.8,89.8
    >>Run straight to |cRXP_ENEMY_Hogger|r and get the tag while Warrior picks up the Westbrook quests and Warlock picks up The Fargodeep Mine
    .accept 176 >> Accept Wanted: "Hogger" from your Warrior's share
    .mob Hogger

step << Warlock
    .goto 1429,25.8,89.8
    >>Share The Fargodeep Mine with your party, then join Baht at |cRXP_ENEMY_Hogger|r
    .accept 176 >> Accept Wanted: "Hogger" from your Warrior's share

step << !Warrior
    >>Accept Report to Gryan Stoutmantle from your Warrior's share
    .accept 109 >> Accept Report to Gryan Stoutmantle

step << !Warlock
    >>Accept The Fargodeep Mine from your Warlock's share
    .accept 62 >> Accept The Fargodeep Mine

step
    .goto 1429,25.8,89.8
    >>Join Baht at |cRXP_ENEMY_Hogger|r. Kill him together once everyone has accepted the shared quests
    >>Everyone must loot him for their |cRXP_LOOT_Huge Gnoll Claw|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .mob Hogger
    .unitscan Gruff Swiftbite

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r and |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Accept Princess Must Die!
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target +Ma Stonefield

step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    .waypoint 1429/0,454.25,-9915.31,40,0
    .waypoint 1429/0,387.26,-9944.94,40,0
    .waypoint 1429/0,372.34,-9912.07,40,0
    .waypoint 1429/0,418.85,-9881.06,40,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar

step
    #label NecklaceStart
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
    .target Billy Maclure

step
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure

step
    #optional
    #completewith Lovers
    .goto 1429/0,65.28,-10008.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_WARN_as you can afford|r << !Warrior
    .vendor >>|cRXP_WARN_Vendor trash|r << Warrior
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards

step
    #label Lovers
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield

step
    #requires BoarMeatQuest
    #label Pie
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
    .target "Auntie" Bernice Stonefield

step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r inside
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .target Gramma Stonefield

step
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
    .target Billy Maclure

step
    .goto 1429/0,181.44,-9842.170,15,0
    .goto 1429/0,149.86,-9793.80
    >>Enter one of the larger open spaces in Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine

step
    .goto 1429,41.732,78.024
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    >>|cRXP_WARN_Be careful as he usually pulls with the |cRXP_ENEMY_Kobold Miner|r next to him|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth

step
    #completewith Exchange
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer

step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >> Accept A Fishy Peril
    .target Remy "Two Times"

step
    #label FirstGoldshireRounds
    .goto 1429/0,73.92,-9465.54
    >>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 176 >> Turn in Wanted: "Hogger"
    .target Marshal Dughan

step
    .goto 1429/0,31.92,-9460.38
    >>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle

step
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .turnin 123 >> Turn in The Collector
    .accept 147 >> Accept Manhunt and share it with the party
    .isOnQuest 123

step
    #optional
    .isQuestTurnedIn 123
    .isQuestAvailable 147
    .goto Elwynn Forest,42.1,65.9
    >>Accept Manhunt from Marshal Dughan or the party's share if The Collector has been turned in
    .accept 147 >> Accept Manhunt
    .target Marshal Dughan

step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for |cRXP_LOOT_Crystal Kelp Fronds|r
    .mob +Murloc
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner

step
    #optional
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto 1429/0,-604.49,-9180.39,15 >> Enter the Jasperlode Mine

step
    #label JasperlodeExplore
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Follow the path through middle to explore Jasperlode Mine
    .complete 76,1 --Scout through the Jasperlode Mine

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
    #completewith ElwynnFrontierTurnin
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
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Murlocs|r may aggro once you click|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas

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
    .target Ariena Stormfeather

step
    .goto Elwynn Forest,87.7,70.3,30 >> Run back into Elwynn Forest from the Redridge flight path

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
    .mob Croaky

step
    #label WaterloggedToolbox
    >>Loot the |cRXP_PICK_Waterlogged Toolbox|r on the ground
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
    .mob Croaky

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
    .mob +Young Forest Bear

step
    .goto 1429,62.7,77.0,0
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Young Forest Bear

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
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Turn in Downstream
    .target Ormin Pelford
step

    #label ElwynnFrontierTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report

step
    #optional
    .isOnQuest 147
    .goto Elwynn Forest,71.0,80.5
    >>Kill |cRXP_ENEMY_Morgan the Collector|r inside the house. Everyone loots the ring
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector

step << !Warlock
    .goto Elwynn Forest,71.0,80.5
    +Help Warlock kill Surena Caledon in the house
    .mob Surena Caledon

step << Warlock
    .isOnQuest 1688
    .goto Elwynn Forest,71.0,80.5
    >>Kill |cRXP_ENEMY_Surena Caledon|r with the party and loot Surena's Choker. Keep it for the next Stormwind visit
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon

step
    .goto 1429/0,-869.87,-9768.10
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess



step
    .goto Elwynn Forest,60.3,76.7,20 >> Head west before the deathskip

step
    .deathskip >> Die and respawn at the Goldshire Spirit Healer
    .target Spirit Healer

step
    #era
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .target Marshal Dughan

step
    #optional
    .isQuestComplete 147
    .goto Elwynn Forest,42.1,65.9
    .turnin 147 >> Turn in Manhunt
    .target Marshal Dughan

step
    #label CollectKelp
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
    .timer 9,Collecting Kelp RP
    .accept 114 >> Accept The Escape
    .target William Pestle

step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
    .xp <12,1

step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
    .xp <12,1

step << Priest
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Travel upstairs in the Inn

step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .trainer >> Train your class spells
    .xp <12,1

step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >> Travel downstairs in the Inn
    .xp <12,1

step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r downstairs
    .trainer >> Train your class spells
    .target Maximillian Crowe
    .xp <12,1

step
    #label Escape
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Turn in Princess Must Die!
    .goto Elwynn Forest,34.660,84.483

step
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
    .target "Auntie" Bernice Stonefield

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
    #sticky
    #completewith OatsFirstVisitEnd
    .isOnQuest 151
    >>Loot Sacks of Oats around the fields as you pass
    .complete 151,1 --Handful of Oats (8)

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
    #label OatsFirstVisitEnd
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
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Accept Red Leather Bandanas

step
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Heather|r
    >>|cRXP_WARN_If this is your first time doing a Hearthstone Batch, watch the guide for it below|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Westfall to Thelsamar|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLICK HERE (it is HEAVILY advised you do so). Make sure you've set and tested your Batching Window Size prior to reduce risk of failure|r
    .target Innkeeper Heather
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan

]])
