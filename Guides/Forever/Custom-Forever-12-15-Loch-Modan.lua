RXPGuides.RegisterGuide([[

#forever
#version 8
<< Alliance Gnome (Priest/Warrior)
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#name 12-15 Loch Modan
#displayname 12-15 Loch Modan
#next 16-18 Westfall & Redridge
#defaultfor Gnome (Priest/Warrior)

step
    .goto 1432/0,-2729.40,-5534.96
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonesplinter Scouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 14-20 damage)|r
    >>|cRXP_WARN_This is a hyperspawn area. You should not need to move from here|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Run up the dirt path then drop down into the bunker
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
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
    .turnin 257 >> Turn in A Hunter's Boast
    .accept 258 >> Accept A Hunter's Challenge
    .target Daryl the Youngling
step
    .goto Loch Modan,81.76,61.66
    >>Talk to |cRXP_FRIENDLY_Marek Ironheart|r
    .accept 86758 >> Accept Twisting the Knife
    .target Marek Ironheart

step
    #completewith HunterChallengeDone
    >>Kill |cRXP_ENEMY_Daggerfang|r along the eastern lakeshore. Loot him for |cRXP_LOOT_Marek's Croc-Hunting Knife|r while hunting boars
    .complete 86758,1 -- Marek's Croc-Hunting Knife (1)
    .mob Daggerfang

step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89
    >>Kill |cRXP_ENEMY_Elder Mountain Boars|r. Also kill Daggerfang along the lakeshore
    >>Return to Daryl within 12 minutes. If the timer runs short, turn in the hunt first, then finish Twisting the Knife
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar

step
    #label HunterChallengeDone
    .goto Loch Modan,83.49,65.40
    >>Talk to |cRXP_FRIENDLY_Daryl the Youngling|r before the 12 minute timer expires
    .turnin 258 >> Turn in A Hunter's Challenge
    .target Daryl the Youngling

step
    >>Finish killing |cRXP_ENEMY_Daggerfang|r along the eastern lakeshore if you still need the knife
    .complete 86758,1 -- Marek's Croc-Hunting Knife (1)
    .mob Daggerfang

step
    .goto Loch Modan,81.76,61.66
    >>Talk to |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 86758 >> Turn in Twisting the Knife
    .target Marek Ironheart

step
    #completewith next
    .goto Loch Modan,35,46,80 >> Run back to Thelsamar
step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Buy|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from her if needed|r
    .target Yanni Stoutheart
step
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Buy some|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_if needed|r << Warrior
    .vendor 6734 >> |cRXP_BUY_Buy some|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her if needed|r << !Warrior
    .target Innkeeper Hearthstove
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    .accept 86667 >> Accept Snowbound
    .target Grenhild Darktalon
      

step
    .goto 1432/0,-3020.95,-5359.09
    >>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .target Jern Hornhelm

step
    .goto Loch Modan,34.6,75.8
    >>Talk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r in the southern guard tower
    .turnin 237 >> Turn in In Defense of the King's Lands
    .target Mountaineer Gravelgaw

step
    .goto 1432/0,-2634.59,-5842.81
    >>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .turnin 86585 >> Turn in Banner of the Fallen
    .target Captain Rugelfuss

step
    #completewith next
    .goto 1432/0,-2619.200,-5783.300,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >>Travel to the snowy patch on the ground just outside the South Gate Pass tunnel
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Use the|r |T1387609:0|t[Ceramic Jar] |cRXP_WARN_while standing on the snowy patch to collect the|r |T1387609:0|t[Jar of Snow]
    >>|cRXP_WARN_NOTE: The|r |T1387609:0|t[Jar of Snow] |cRXP_WARN_will only last for 10 minutes. You must turn the quest in before it expires!|r
    .complete 86667,1 -- Jar of Snow 1/1
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
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_10 minute timer to turn in quest!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norric Lochthane|r
    >>|cRXP_WARN_Ensure to turn this in before the 10 minute expiry on the|r |T1387609:0|t[Jar of Snow]
    .turnin 86667 >> Turn in Snowbound
    .target Norric Lochthane

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
    .turnin 307 >> Turn in Filthy Paws
    .turnin 353 >> Turn in Stormpike's Delivery
    .target Mountaineer Stormpike
step
    #sticky
    #completewith HallOfThanesEntry
    +Start forming a Hall of Thanes group now. Warrior can tank and Priest can heal; find three more players while finishing the last Loch Modan quests
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Turn in Rat Catching

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

step
    .isQuestAvailable 971
    .goto Ironforge,50.826,5.613
    >>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r in the Forlorn Cavern
    >>Keep this quest for the later Blackfathom Deeps trio run
    .accept 971 >> Accept Knowledge in the Deeps
    .target Gerrig Bonegrip

step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .accept 94822 >> Accept Confounding Flash
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << Priest
    .goto Ironforge,24.8,10.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Mims|r in the Mystic Ward
    .turnin 94822 >> Turn in Confounding Flash
    .target High Priestess Mims
step << skip --logout skip
    #optional
    #completewith HallOfThanesEntry
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
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
    .goto Ironforge,32.6,44.6
    +Wait in Ironforge until Warrior, Priest, and three more players are together. Confirm both characters have Old Ironforge Incursion, The Restless Dead, and Important Heirlooms before entering
step
    #label HallOfThanesEntry
    +Enter the Hall of Thanes with the full party through the portal below Old Ironforge
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
    .turnin 96395 >> Turn in An Ancient Grudge
    .target Ghostly Attendant
step
    >>Finish killing |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r before leaving their rooms
    .complete 96394,1 --Enraged Apparitions (15)
    .complete 96394,2 --Tormented Souls (10)
step
    +Defeat |cRXP_ENEMY_Magmatus|r and |cRXP_ENEMY_Plunder|r while clearing through the Hall of Thanes
step
    >>Collect 8 |cRXP_LOOT_Dwarven Heirlooms|r from the vaults while clearing toward the final boss
    .complete 96403,1 --Dwarven Heirlooms (8)
step
    >>Defeat |cRXP_ENEMY_Durgen Dirgehammer|r and loot his head. Each character must loot it
    .complete 96393,1 --Durgen Dirgehammer's Head (1)
    .mob Durgen Dirgehammer
step
    >>Open a vault in the Reliquary of Kings, loot the |cRXP_LOOT_Treaty of Understanding|r, and use it to start the quest on both characters before leaving
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
    .turnin 96394 >> Turn in The Restless Dead
    .target Afadra Dunwall
step
    .goto Ironforge,39.1,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r in the High Seat
    >>Warrior: choose the [Ironforge Greathammer]. Priest: choose the [Deepblaze] wand from Old Ironforge Incursion
    .turnin 96393 >> Turn in Old Ironforge Incursion
    .turnin 98423 >> Turn in The Treaty of Understanding
    .target King Magni Bronzebeard

step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner

step
    .hs >> HS to Westfall

]])
