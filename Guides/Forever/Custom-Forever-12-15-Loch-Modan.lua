RXPGuides.RegisterGuide([[

#forever
#version 18
<< Alliance
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#name 12-15 Loch Modan
#displayname 12-15 Loch Modan
#next 16-18 Westfall & Redridge
#defaultfor Gnome/Dwarf (Paladin/Warrior/Warlock)

step
    #sticky
    #completewith BloodSausagesFinish
    >>Kill |cRXP_ENEMY_Bears|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Spiders|r as you pass. Loot their sausage ingredients while doing the other quests
    .collect 3172,3,418,1 --Boar Intestines (3)
    .collect 3173,3,418,1 --Bear Meat (3)
    .collect 3174,3,418,1 --Spider Ichor (3)

step
    #optional
    .isQuestAvailable 436
    .xp <13,1
    .goto 1432/0,-3020.95,-5359.09
    >>Check |cRXP_FRIENDLY_Jern Hornhelm|r for Ironband's Excavation on your return from Elwynn
    .accept 436 >> Accept Ironband's Excavation if available
    .target Jern Hornhelm

step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker

step
    .goto 1432/0,-2729.40,-5534.96
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonesplinter Scouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 14-20 damage)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .isOnQuest 224


step
    .goto Loch Modan,22.1,73.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
    .isQuestComplete 224

step
    .goto Loch Modan,34.6,75.8
    >>Talk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r in the southern guard tower
    .accept 237 >> Accept In Defense of the King's Lands
    .target Mountaineer Gravelgaw
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
    .isQuestComplete 267

step
    #completewith next
    .goto Loch Modan,36,80
    >>Kill |cRXP_ENEMY_Stonesplinter Skullthumpers|r and |cRXP_ENEMY_Stonesplinter Seers|r in Stonesplinter Valley
    .complete 237,1 -- Stonesplinter Skullthumper (10)
    .complete 237,2 -- Stonesplinter Seer (10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer

step
    .goto Loch Modan,36,80
    >>Find |cRXP_FRIENDLY_Mountaineer Ylva|r in the upper cave, the short tunnel connecting the two areas
    .accept 86585 >> Accept Banner of the Fallen
    .target Mountaineer Ylva

step
    >>Use the |cRXP_PICK_Banner of Ironforge|r beside Ylva. Defeat the trogg waves, then kill |cRXP_ENEMY_Headsplitter|r
    .use 253247
    .complete 86585,1 -- Headsplitter slain
    .mob Headsplitter

step
    .goto Loch Modan,36.0,80.0,0
    .goto Loch Modan,35.6,77.6,45,0
    .goto Loch Modan,37.5,80.8,45,0
    >>Finish In Defense of the King's Lands and loot the remaining Trogg Stone Teeth before returning to the bunker to turn in
    .complete 237,1 --Stonesplinter Skullthumper (10)
    .complete 237,2 --Stonesplinter Seer (10)
    .complete 267,1 --Trogg Stone Tooth (8)
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer

step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Run up the dirt path then drop down into the bunker


step
    .goto Loch Modan,34.6,75.8
    >>Talk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r in the southern guard tower
    .turnin 237 >> Turn in In Defense of the King's Lands
    .target Mountaineer Gravelgaw

step
    .goto 1432/0,-2634.59,-5842.81
    >>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .turnin 86585, 1 >> Turn in Banner of the Fallen << !Warrior
    .turnin 86585, 2 >> Turn in Banner of the Fallen << Warrior
    .target Captain Rugelfuss

step
    #optional
    .isQuestComplete 267
    .goto Loch Modan,23.2,73.7
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss

step << Paladin
    .goto Dun Morogh,84.262,51.367
    .zone Dun Morogh >> After the banner turn-in, take the southern pass into Dun Morogh to finish your resurrection quest

step << Paladin
    #completewith DivinityNarm
    .goto 1426/0,-2055.23,-5784.31
    >>Target |cRXP_FRIENDLY_Narm Faulk|r on the ground near Helm's Bed Lake and use the |cRXP_LOOT_Symbol of Life|r to resurrect him
    .use 6866
    .cast 8593 >> Resurrect Narm Faulk
    .target Narm Faulk

step << Paladin
    #label DivinityNarm
    .goto 1426/0,-2055.23,-5784.31
    >>Talk to |cRXP_FRIENDLY_Narm Faulk|r after resurrecting him
    .turnin 1783 >> Turn in The Tome of Divinity
    .accept 1784 >> Accept The Tome of Divinity
    .target Narm Faulk

step << Paladin
    .goto 1426/0,-2004.94,-5863.50,20,0
    .goto 1426/0,-2031.04,-5905.53
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r at Ironband's Compound. Loot the |cRXP_LOOT_Dark Iron Script|r and keep it for the Ironforge turn-in before Halls of Thanes
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy

step << Paladin
    .goto Loch Modan,16.342,58.520
    .zone Loch Modan >> Return through the southern pass and rejoin the party for Ironband's Excavation

step
    #optional
    .isOnQuest 436
    .goto Loch Modan,64.9,66.5
    .turnin 436 >> Turn in Ironband's Excavation
    .target Magmar Fellhew

step
    .goto 1432/0,-3812.43,-5694.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Accept Excavation Progress Report
    .target Prospector Ironband

step
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >> Travel to The Farstrider Lodge

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .accept 257 >> Accept A Hunter's Boast
    .goto 1432/0,-4296.68,-5690.590
    .target Daryl the Youngling

step
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_You must complete this quest and return to |cRXP_FRIENDLY_Daryl the Youngling|r within 15 minutes. If you fail the quest, abandon it and pick it up again|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .goto 1432/0,-4296.68,-5690.590
    .turnin 257, 2 >> Turn in A Hunter's Boast
    .accept 258 >> Accept A Hunter's Challenge
    .target Daryl the Youngling

step
    .goto Loch Modan,81.76,61.66
    >>Talk to |cRXP_FRIENDLY_Marek Ironheart|r
    .accept 86758 >> Accept Twisting the Knife
    .target Marek Ironheart

step
    #sticky
    #completewith HunterBoarsDone
    >>Kill Elder Mountain Boars on the way to Daggerfang
    .complete 258,1 --Elder Mountain Boar (5)
    .mob Elder Mountain Boar

step
    .goto Loch Modan,75.0,50.0
    >>Kill |cRXP_ENEMY_Daggerfang|r first and loot Marek's Croc-Hunting Knife
    .complete 86758,1 --Marek's Croc-Hunting Knife (1)
    .mob Daggerfang

step
    #label HunterBoarsDone
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89
    >>Kill |cRXP_ENEMY_Elder Mountain Boars|r. Finish the remaining boars after Twisting the Knife
    >>Return to Daryl within 12 minutes. If the timer runs short, return to turn in the hunt immediately
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar

step
    #label HunterChallengeDone
    .goto Loch Modan,83.49,65.40
    >>Talk to |cRXP_FRIENDLY_Daryl the Youngling|r before the 12 minute timer expires
    .turnin 258 >> Turn in A Hunter's Challenge
    .target Daryl the Youngling

step
    .goto Loch Modan,81.76,61.66
    >>Talk to |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 86758 >> Turn in Twisting the Knife
    .target Marek Ironheart

step
    .deathskip >> After both hunter quests and Twisting the Knife, die and respawn at Thelsamar
    .target Spirit Healer

step
    .goto 1432/0,-3020.95,-5359.09
    >>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .target Jern Hornhelm

step
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Click the |cRXP_PICK_Discarded Fishing Toolbox|r on the lake floor
    >>|cRXP_WARN_The toolbox can spawn at several locations. Swim around until its exclamation point appears on your minimap|r
    >>|cRXP_WARN_Avoid the high-level|r |cRXP_ENEMY_Young Threshadon|r
    .accept 86614 >>Accept Silver of the Waves
    .xp <13,1

step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Turn in Silver of the Waves
    .xp <13,1

step << Warrior/Paladin
    .train 7752,3 --Only if Slitherskin Mackerel is learned
    .train 7753,1 --The city module prefers Mud Snapper once learned
    .goto 1432/0,-3086.600,-5216.800
    >>After turning in Silver of the Waves, buy Raw Slitherskin Mackerel from |cRXP_FRIENDLY_Khara Deepwater|r
    .collect 6303,20 --Raw Slitherskin Mackerel (20)
    .target Khara Deepwater


step
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Enter the Silver Stream Mine

step
    #label Gear
    .goto 1432/0,-2984.82,-4902.33
    >>Open the |cRXP_PICK_Miners' League Crates|r inside the mine. Loot them for the |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 --Miners' Gear (4)

step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> Enter the Bunker

step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn

step
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307, 2 >> Turn in Filthy Paws << Warlock
    .turnin 307, 1 >> Turn in Filthy Paws << Warrior
    .turnin 307, 3 >> Turn in Filthy Paws << Paladin
    .turnin 353 >> Turn in Stormpike's Delivery
    .target Mountaineer Stormpike

step
    #label BloodSausagesFinish
    .goto Loch Modan,29.0,20.0,0
    .goto Loch Modan,38.0,37.0,0
    >>After turning in Filthy Paws, finish collecting any missing sausage ingredients from |cRXP_ENEMY_Bears|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Spiders|r on the way back to Thelsamar
    .collect 3172,3,418,1 --Boar Intestines (3)
    .collect 3173,3,418,1 --Bear Meat (3)
    .collect 3174,3,418,1 --Spider Ichor (3)

step
    .goto 1432/0,-2954.42,-5394.10
    >>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r inside the Stoutlager Inn
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove

step
    #sticky
    #completewith HallOfThanesEntry
    +Start forming a Hall of Thanes group now. Warrior can tank and Paladin can heal; find two more players while finishing the last Loch Modan quests

step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fly to Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge

step
    .goto 1455/0,-1303.75,-4631.19
    >>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Turn in Report to Ironforge
    .target Prospector Stormpike

step << Paladin
    #completewith DivinityMuiredonFinish
    .goto 1455/0,-913.38,-4577.31,6,0
    .goto 1455/0,-906.11,-4632.030,10 >> Go upstairs to Muiredon Battleforge before entering Halls of Thanes

step << Paladin
    #label DivinityMuiredonFinish
    .goto 1455/0,-899.70,-4613.0300
    >>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >> Turn in The Tome of Divinity
    .accept 1785 >> Accept The Tome of Divinity
    .target Muiredon Battleforge

step << Paladin
    .goto 1455/0,-932.04,-4633.56
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r to learn |cRXP_WARN_Redemption|r before Halls of Thanes
    .turnin 1785 >> Turn in The Tome of Divinity
    .target Tiza Battleforge

step
    .isQuestAvailable 971
    .goto Ironforge,50.826,5.613
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r in the Forlorn Cavern
    >>Keep this quest for the later Blackfathom Deeps trio run
    .accept 971 >> Accept Knowledge in the Deeps
    .target Gerrig Bonegrip
    --Train level 14
step << Warrior
    #optional
    #completewith HallOfThanesEntry
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >> Travel toward |cRXP_FRIENDLY_Bilban Tosslespanner|r

step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner

step << Warrior
    .goto 1455/0,-1205.65,-5042.12
    >>Talk to |cRXP_FRIENDLY_Bixi Wobblebonk|r in the Military Ward. Learn Guns before entering Halls of Thanes
    .train 266 >> Train Guns
    .target Bixi Wobblebonk

step
    .goto Ironforge,34.0,48.8
    >>Enter the High Seat, take the passage to the left of King Magni, and talk to |cRXP_FRIENDLY_Afadra Dunwall|r in Old Ironforge
    .accept 96394 >> Accept The Restless Dead
    .target Afadra Dunwall

step
    .goto Ironforge,32.6,44.6
    >>Talk to |cRXP_FRIENDLY_Thom Filch|r near the Hall of Thanes entrance
    .accept 96403 >> Accept Important Heirlooms
    .target Thom Filch


step
    >>Talk to the |cRXP_FRIENDLY_Ghostly Attendant|r in Anvilmar's Rest before fighting Faldrim
    .accept 96395 >> Accept An Ancient Grudge
    .target Ghostly Attendant

step
    >>Defeat |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 --Faldrim Anvilmar slain
    .mob Faldrim Anvilmar

step
    >>Return to the |cRXP_FRIENDLY_Ghostly Attendant|r in Anvilmar's Rest
    .turnin 96395, 1 >> Turn in An Ancient Grudge
    .target Ghostly Attendant

step
    >>Finish killing |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r before leaving their rooms
    .complete 96394,1 --Enraged Apparitions (15)
    .complete 96394,2 --Tormented Souls (10)
    .mob Enraged Apparition
    .mob Tormented Soul

step
    >>Collect 8 |cRXP_LOOT_Dwarven Heirlooms|r from the vaults while clearing toward the final boss
    .complete 96403,1 --Dwarven Heirlooms (8)

step
    >>Defeat |cRXP_ENEMY_Durgen Dirgehammer|r and loot his head. Each character must loot it
    .complete 96393,1 --Durgen Dirgehammer's Head (1)
    .mob Durgen Dirgehammer

step
    >>Open a vault in the Reliquary of Kings, loot the |cRXP_LOOT_Treaty of Understanding|r, and use it to start the quest on all three characters before leaving
    .collect 281030,1 --Treaty of Understanding (1)
    .use 281030
    .accept 98423 >> Accept The Treaty of Understanding

step
    .zone Ironforge >> Leave the Hall of Thanes and return to Old Ironforge

step
    .goto Ironforge,32.6,44.6
    >>Talk to |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Turn in Important Heirlooms
    .target Thom Filch

step
    .goto Ironforge,34.0,48.8
    >>Talk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394,2 >> Turn in The Restless Dead
    .target Afadra Dunwall

step
    .goto Ironforge,39.1,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r in the High Seat
    >>Warrior: choose the [Ironforge Greathammer] from Old Ironforge Incursion
    .turnin 96393, 2 >> Turn in Old Ironforge Incursion << !Warlock
    .turnin 96393, 3 >> Turn in Old Ironforge Incursion << Warlock
    .turnin 98423 >> Turn in The Treaty of Understanding
    .target King Magni Bronzebeard

    --Train in Ironforge if level 16 after Halls of Thanes and its turn-ins.
step << Paladin
    .xp <16,1
    .goto 1455/0,-896.47,-4601.65
    >>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r. Train your level 16 class spells before leaving Ironforge
    .trainer >> Train your level 16 class spells
    .train 7294 >> Train Retribution Aura
    .target Brandur Ironhammer

step << Warlock
    .xp <16,1
    .goto Ironforge,50.343,5.657
    >>Talk to |cRXP_FRIENDLY_Briarthorn|r. Train your level 16 class spells before leaving Ironforge
    .trainer >> Train your level 16 class spells
    .target Briarthorn

step << Warrior
    .xp <16,1
    .goto 1455/0,-1234.65,-5035.67
    >>Talk to |cRXP_FRIENDLY_Bilban Tosslespanner|r. Train your level 16 class spells before leaving Ironforge
    .trainer >> Train your level 16 class spells
    .target Bilban Tosslespanner

step
    #include Forever Trio Launch\City Supplies - Ironforge

step
    .hs >> HS to Westfall
]])
