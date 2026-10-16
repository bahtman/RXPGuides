RXPGuides.RegisterGuide([[

#forever
#version 26
<< Alliance
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#displayname 5-11 Dun Morogh
#next 11-12 Elwynn Forest
#defaultfor Gnome/Dwarf (Paladin/Warrior/Warlock)

-- Warrior keeps Leatherworking and Enchanting; Warlock keeps Herbalism and Alchemy.
-- First Ironforge visit: BS -> LW -> Enchanting/wand -> weapon master -> departure materials.
-- City modules stock raw materials after training; make oils and camp equipment at campfire stops. No Tailoring or First Aid.



step
    >>Before Warlock's deathskip, pool spare money with Warlock at the Coldridge exit. Finish your Coldridge training and purchases first
    >>Fishing budget before discounts: 23 copper for the pole + 50 copper for one Shiny Bauble + 1 silver training = 1 silver 73 copper. Count Warlock's existing cash; trade only the shortfall
    +Fund Warlock to at least 1 silver 73 copper before splitting up
    .money >0.0173 << Warlock
    .train 7620,1 << Warlock

step << Warlock
    >>|cRXP_WARN_Make sure your subzone is NOT Coldridge Pass|r
    .deathskip >> Die immediately after leaving Coldridge Valley and respawn at Kharanos
    .target Spirit Healer

step << Warlock
    .goto 1426/0,-501.34,-5640.89
    >>Talk to |cRXP_FRIENDLY_Golorn Frostbeard|r. Vendor trash, then buy a Fishing Pole (23 copper) and one Shiny Bauble (50 copper). Keep 1 silver for Fishing training
    .collect 6256,1 --Fishing Pole
    .collect 6529,1 --Shiny Bauble
    .target Golorn Frostbeard

step << Warlock
    .goto 1426/0,-632.15,-5466.540
    >>Run straight to |cRXP_FRIENDLY_Pilot Bellowfiz|r. Accept Stocking Jetsteam and share it with Warrior and Paladin immediately
    .accept 317 >> Accept Stocking Jetsteam
    .target Pilot Bellowfiz

step << !Warlock
    #completewith next
    .isNotOnQuest 317
    +|cRXP_WARN_Do not kill bears until you have accepted Warlock's share of Stocking Jetsteam. Grind boars while waiting for the share|r

step << !Warlock
    #loop
    .goto 1426,34.6,57
    .goto 1426,34.6,57
    .goto 1426,37, 52.4
    >>Accept Warlock's share of Stocking Jetsteam. Grind boars and, once on the quest, bears toward Brewnall Village
    >>Skin every beast. Reach 20 Skinning and keep 9 Light Leather equivalents for Warrior: each 3 Ruined Leather Scraps counts as 1 Light Leather. Finish these requirements during Stocking Jetsteam << Paladin
    >>Save Crag Boar Ribs and any spare Chunks of Boar Meat for later
    .accept 317 >> Accept the share of Stocking Jetsteam
    .complete 317,2 --Thick Bear Fur (2)
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Young Black Bear
    .mob Ice Claw Bear

step << Paladin
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r and share it
    .accept 310 >> Accept Bitter Rivals
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step << Paladin
    .goto 1426,31.53,44.65
    >>Talk to |cRXP_FRIENDLY_Gretta Ganter|r. Accept Frosthowl and share it with Warrior and Warlock before the deathskip
    .accept 98326 >> Accept Frosthowl
    .target Gretta Ganter

step << Warlock
    #completewith next
    >>Grind bears toward |cRXP_FRIENDLY_Paxton Ganter|r on Iceflow Lake. Loot their Thick Bear Fur and finish collecting any missing Chunks of Boar Meat from boars
    .complete 317,1 --Chunk of Boar Meat (4)
    .complete 317,2 --Thick Bear Fur (2)
    .mob Young Black Bear
    .mob Ice Claw Bear
    .mob Crag Boar
    .mob Large Crag Boar

step << Warlock
    .goto 1426,35.48,40.22
    >>Talk to |cRXP_FRIENDLY_Paxton Ganter|r. Learn Fishing so you can pick up Camping 101 in Kharanos
    .train 7620 >> Train Fishing
    .target Paxton Ganter

step << Warlock
    .goto 1426,35.48,40.22
    >>Equip the Fishing Pole and apply the Shiny Bauble, then fish to 20 Fishing
    >>Keep ALL fish for crafting Fish Bowls, especially Raw Brilliant Smallfish
    .skill fishing,20
    .use 6529
    .target Paxton Ganter
    >>Re-equip your combat weapon before the deathskip

step << Warlock
    >>With 20 Fishing, die immediately and respawn at Kharanos. Finish Stocking Jetsteam with the party before doing The Great Outdoors
    .deathskip >> Deathskip to Kharanos immediately after fishing
    .target Spirit Healer

step
    #label JetsteamReady
    #loop
    .goto 1426,34.6,57,0
    .goto 1426,37,52.4,0
    >>Warlock: return west from Kharanos and rejoin Warrior and Paladin. Everyone finishes their own Stocking Jetsteam objectives before the next deathskip
    >>Kill boars for any missing Chunks of Boar Meat and bears for Thick Bear Fur. Keep spare meat and Crag Boar Ribs
    >>Paladin: keep skinning until you have 20 Skinning and 9 Light Leather equivalents; keep all scraps for Warrior << Paladin
    .complete 317,1 --Chunk of Boar Meat (4)
    .mob +Crag Boar,Large Crag Boar
    .complete 317,2 --Thick Bear Fur (2)
    .mob +Young Black Bear,Ice Claw Bear


step
    #loop
    .goto 1426,34.6,57,0
    .goto 1426,37,52.4,0
    -- Recorded turn-in XP: The Adventurer 410 + The Great Outdoors 410 + Senir 340 + Tannok 110 = 1270.
    >>Before the shared deathskip, grind nearby boars and bears until 1270 XP short of level 6. The next Kharanos turn-ins cover the rest before training; Stocking Jetsteam is turned in later
    .xp 6-1270
    .mob +Crag Boar,Large Crag Boar,Young Black Bear,Ice Claw Bear

step
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer

step << Warrior/Warlock
    >>Accept Paladin's share of Frosthowl while regrouping in Kharanos
    .accept 98326 >> Accept the share of Frosthowl

step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96628 >>Turn in The Adventurer
    .accept 96608 >>Accept The Great Outdoors

step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_Type "/sit" in chat and wait for one minute around the campfire|r
    .complete 96608,1 -- /sit emote in chat 1/1
    .macro Sit,134400 >>/sit
    .timer 59, Campfire rest
    .complete 96608,2 -- Gain boosted rest buff 1/1

step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96608 >>Turn in The Great Outdoors
    .accept 96629 >>Accept Camping 101: Cooking
    .accept 96056 >>Accept Camping 101: Skinning << Paladin
    .accept 96050 >>Accept Camping 101: Fishing << Warlock

step
    #label SenirEnd
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 420 >>Turn in Senir's Observations
    .accept 98322 >>Accept Secure the Mountain

step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
    .target Ragnar Thunderbrew

step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Enter the Thunderbrew Distillery

step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Turn in Supplies to Tannok << Warrior
    .turnin 2160,2 >> Turn in Supplies to Tannok << !Warrior
    .target Tannok Frosthammer


    --Level 6 training
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .trainer >> Train your class spells
    .train 679 >> Train Holy Strike
    .target Azar Stronghammer

step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .trainer >> Train your class spells
    .target Granis Swiftaxe

step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>Talk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r outside during the party's first Kharanos training stop
    .trainer >> Train your class spells
    .target Gimrizz Shadowcog

step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .target Innkeeper Belm
    .bindlocation 2102

step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
    .target Tharek Blackstone

step
    #optional
    #completewith next
    .goto 1426,45.695,51.911,20 >> Enter the Blacksmith building

step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .accept 98321 >>Accept Flintfire's Shipment

step << Warrior
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>Talk to |cRXP_FRIENDLY_Tognus Flintfire|r. Buy a Blacksmith Hammer from the nearby supplier if needed
    .train 2018 >> Train Blacksmithing
    .collect 5956,1 --Blacksmith Hammer
    .target Tognus Flintfire

step << Warrior
    .goto Dun Morogh,45.344,51.936
    >>Craft one Rough Sharpening Stone for yourself and one Rough Weightstone for Baht
    .collect 2862,1 --Rough Sharpening Stone (1)
    .collect 3239,1 --Rough Weightstone (1)

step << Warrior
    +Trade the Rough Weightstone to Baht

step << Warrior
    .goto Dun Morogh,45.2,51.8
    >>Talk to |cRXP_FRIENDLY_Gamili Frosthide|r in the Kharanos blacksmith building. Buy [Thin Cloth Bracers] for 24 copper before discounts if you have no wrist item. These are the cheapest option for Enchanting in Ironforge
    >>If you already have bracers in your bags, equip those instead
    .equip 9 >> Equip a wrist item
    .target Gamili Frosthide

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r and |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >>Accept Evershine
    .goto 1426/0,-632.15,-5466.540
    .target +Pilot Bellowfiz
    .accept 313 >> Accept The Grizzled Den
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r and |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Turn in Tools for Steelgrill
    .goto 1426/0,-682.23,-5488.94
    .target +Beldin Steelgrill
    .accept 5541 >> Accept Ammo for Rumbleshot
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge

step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Go up the dirt path
    .isQuestAvailable 314

step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r
    .mob Vagash

step
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill

step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash

step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    >>Paladin: choose the [Coldridge Hammer] reward << Paladin
    .turnin 314, 3 >> Turn in Protecting the Herd
    .target Rudra Amberstill

step << Warlock
    .goto 1426,63.80,49.00
    >>Sell the [Coldridge Hammer] to |cRXP_FRIENDLY_Turuk Amberstill|r at the ranch
    .vendor >> Sell the mace
    .target Turuk Amberstill

step
    .goto Dun Morogh,47.3,52.6
    +After Vagash: Warlock keeps gathered herbs for campfire Alchemy. Paladin gives Warrior at least 9 Light Leather equivalents, all remaining Ruined Leather Scraps, and spare money. Keep all Linen Cloth for Paladin until the party has reserved 10 for the resurrection quest
    >>Warrior makes one wand in Ironforge. Warlock handles the elixirs at campfire stops; city modules replenish the raw materials


step << Warlock/Paladin
    .hs >> Hearth to Kharanos after Vagash

step << Warrior
    #completewith WarriorThrown
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Travel to Ironforge

step << Warrior
    .goto Ironforge,50.4,43.0
    .collect 2840,9 >> Smelt all 9 Copper Bars. Keep the bars and Rough Stones for your own Blacksmithing

step << Warrior
    .goto Ironforge,50.4,43.0
    +Craft Rough Weightstones with the remaining Rough Stones; keep them for later weapon buffs

step << Warrior
    .goto Ironforge,50.4,43.0
    >>Craft Rough Copper Vest twice, spending 8 Copper Bars. Keep all resulting chests for disenchanting and the remaining bar for the Copper Rod
    +Complete both Rough Copper Vest crafts

step << Warrior
    .goto Ironforge,50.4,43.0
    >>Reach 10 Blacksmithing from the stone and chest crafts. If short, gather extra Rough Stones before dropping Mining and make more weightstones
    .skill blacksmithing,10

step << Warrior
    .goto Ironforge,52.6,40.8
    .train 1245287 >> Learn Copper Rod from Bengus Deepforge
    .target Bengus Deepforge

step << Warrior
    .goto Ironforge,50.4,43.0
    >>Craft Copper Rod once with the final Copper Bar
    .collect 6217,1 --Copper Rod

step << Warrior
    .goto Ironforge,50.4,43.0
    >>Sell your Mining Pick to |cRXP_FRIENDLY_Thurgrum Deepforge|r now that all 9 bars are smelted
    .vendor >> Sell the Mining Pick
    .target Thurgrum Deepforge

step << Warrior
    >>Unlearn Blacksmithing and Mining. Keep the Copper Rod and green chests
    .skill blacksmithing,<1
    .skill mining,<1

step << Warrior
    .goto Ironforge,39.8,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fimble Finespindle|r
    .train 2108 >> Train |T136247:0|t[Leatherworking]
    .target Fimble Finespindle

step << Warrior
    .goto Ironforge,39.8,33.6
    >>Buy 3 [Coarse Thread] from |cRXP_FRIENDLY_Bombus Finespindle|r for three [Handstitched Leather Vest] crafts
    .collect 2320,3 --Coarse Thread (3)
    .target Bombus Finespindle

step << Warrior
    .goto Ironforge,39.8,33.6
    >>Convert Paladin's saved Ruined Leather Scraps into Light Leather as needed. Each conversion uses 3 scraps; keep any excess leather and scraps for the later Camp Tent
    .collect 2318,9 --Light Leather for three vest crafts (9)

step << Warrior
    .goto Ironforge,39.8,33.6
    >>Craft Handstitched Leather Vest three times, using 9 Light Leather and 3 Coarse Thread. Keep every resulting vest for disenchanting
    +Complete all three Handstitched Leather Vest crafts

step << Warrior
    .goto Ironforge,60.4,45.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .train 7411 >> Train |T136244:0|t[Enchanting]
    .target Gimble Thistlefuzz

step << Warrior
    >>Disenchant every green from the two Rough Copper Vest crafts and three Handstitched Leather Vest crafts. Use the materials for the rod and Enchanting skill-ups; save leftover Strange Dust for oils on the second visit
    +Disenchant the results of all five vest crafts

step << Warrior
    .goto Ironforge,60.0,44.0
    >>Buy 8 Mote of Magic for the Runed Copper Rod. Buy one Lesser Magic Essence and one Simple Wood for the single wand
    .collect 247786,5 --Mote of Magic (1)
    .collect 10938,1 --Lesser Magic Essence (1)
    .collect 6217,1 --Copper Rod (1)
    .collect 4470,1 --Simple Wood (1)
    .target Tilli Thistlefuzz

step << Warrior
    >>Craft a |T135225:0|t[Runed Copper Rod]
    .collect 6218,1 --Runed Copper Rod (1)

step << Warrior
    >>After disenchanting and crafting the rod, enchant bracers with mote of magic
    .skill enchanting,10

step << Warrior
    .goto Ironforge,60.4,45.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .train 14293 >> Train |T135147:0|t[Lesser Magic Wand]
    .target Gimble Thistlefuzz

step << Warrior
    >>Craft one |T135139:0|t[Lesser Magic Wand]
    .collect 11287,1 --Lesser Magic Wand (1)

step << Warrior
    #label WarriorThrown
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to or |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Train 2h Maces from |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .target Buliwyf Stonehand

step << Warrior
    .hs >> Hearth to Kharanos


step
    #label Distracting
    #completewith next
    .goto 1426/0,-531.23,-5601.59
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .collect 2686,1   >> Only one need to buy this one --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarven Thunderbrew|r downstairs
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew

step
    .goto 1426/0,-547.93,-5607.27
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Turn in Secure the Mountain
    .accept 98319 >>Accept Secure the Mountain

step
    #label RumbleshotAmmo
    .goto 1426/0,-371.400,-5746.900
    >>Open the |cRXP_PICK_Ammo Crate|r. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)

step
    .goto 1426/0,-371.400,-5746.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Turn in Secure the Mountain
    .accept 98319 >>Accept Secure the Mountain

step
    #completewith MountaineerCornelius
    >>Kill all types of |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>Loot |cRXP_PICK_Flintfire's Shipments|r on the ground inside the Grizzled Den cave
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment

step
    #completewith MountaineerCornelius
    .goto 1426/0,-275.000,-5623.200,20 >> Enter the Grizzled Den cave

step
    #label MountaineerCornelius
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>Travel to the corpse of |cRXP_FRIENDLY_Mountaineer Cornelius|r inside the Grizzled Den cave
    >>|cRXP_WARN_Be careful of the higher level |cRXP_ENEMY_Wendigos|r deeper in the cave|r
    .complete 98319,1 --|Mountaineer Cornelius found

step
    .isOnQuest 98326
    .goto 1426,39.8,48.6
    >>Kill |cRXP_ENEMY_Frosthowl|r deep in the Grizzled Den. Everyone loots the Sack of Fish for their own quest
    .complete 98326,1
    .mob Frosthowl

step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    >>Kill all types of |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>Loot |cRXP_PICK_Flintfire's Shipments|r on the ground inside the Grizzled Den cave
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment



step
    >>After completing the cave objectives, die inside the Grizzled Den and respawn at Kharanos
    .deathskip >> Deathskip to Kharanos
    .target Spirit Healer

step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98319 >>Turn in Secure the Mountain
    .accept 98323 >>Accept Secure the Mountain

step
    .goto 1426/0,-501.500,-5643.900
    >>Talk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r if you are level 7
    .accept 287 >>Accept Frostmane Hold
    .target Senir Whitebeard::1252
    .xp <7,1


step
    #completewith BrewnallVillage
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar

step
    #optional
    #completewith AfR
    .goto 1426,40.632,62.794,40,0
    .goto 1426/0,-201.51,-6015.520,15 >>Travel toward |cRXP_FRIENDLY_Hegnar Rumbleshot|r

step
    #label AfR
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .target Hegnar Rumbleshot
    .vendor >> Vendor trash

step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >> Travel toward |cRXP_FRIENDLY_Tundra MacGrann|r

step << Warrior
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann

step
    .goto 1426/0,-94.88,-5647.69
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the cave, then enter and loot the chest|r
    .complete 312,1 --MacGrann's Dried Meats (1)

step
    .goto 1426/0,99.17,-5572.99
    >>Return immediately to |cRXP_FRIENDLY_Tundra MacGrann|r and turn in the quest
    .turnin 312,1 >> Turn in Tundra MacGrann's Stolen Stash << !Warlock
    .turnin 312,2 >> Turn in Tundra MacGrann's Stolen Stash << Warlock
    .target Tundra MacGrann

step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    .subzone 137 >> Travel to Brewnall Village

step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r and |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .turnin 311 >> Turn in Return to Marleth
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew

step
    .goto 1426,31.53,44.65
    .turnin 98326 >> Turn in Frosthowl to Gretta Ganter
    .target Gretta Ganter

step
    #sticky
    #label ForceFavorRibNo
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #sticky
    #label ForceFavorRibYes
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
    .mob Ice Claw Bear
step << Warlock
    .goto 1426,35.48,40.22
    >>Re-equip your combat weapon after fishing before rejoining the quest circuit
    .turnin 96050 >> Turn in Camping 101: Fishing to learn Fish Bowl
    .target Paxton Ganter

step
    .isOnQuest 315
    .goto 1426,38.1,36.1,15 >> Go up the mountain here to reach the northern part of Shimmer Ridge

step
    #label ShimmerweedCollect
    #loop
    .goto 1426,41.5,36.0,0
    .goto 1426,42.1,34.3,0
    .goto 1426,41.5,36.0,45,0
    .goto 1426,42.1,34.3,45,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for their |cRXP_LOOT_Shimmerweed|r
    >>Open the |cRXP_PICK_Shimmerweed Baskets|r on the ground. Loot them for their |cRXP_LOOT_Shimmerweed|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer




step
    #optional
    .isQuestComplete 319
    .goto Dun Morogh,30.19,45.726
    >>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r if A Favor for Evershine is complete
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
    .target Rejold Barleybrew

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r and |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 315,1 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
    .goto 1426/0,315.28,-5378.39
    .target +Rejold Barleybrew


step
    #completewith Headhunters
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter


step
    #label Headhunters
    .goto 1426/0,628.400,-5579.500,20,0
    .goto 1426/0,696.600,-5674.600,20,0
    .goto 1426/0,746.900,-5614.900,20,0
    .goto 1426/0,695.300,-5528.300,20,0
    .goto 1426/0,657.700,-5544.600
    >>|cRXP_WARN_Enter Frostmane Hold cave. Stay on the left side as you go further in the cave to explore it|r
    .complete 287,2 --Fully explore Frostmane Hold

step
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter

step
    #completewith next
    >>After exploring Frostmane Hold and finishing the Frostmane Headhunters, die inside the cave and respawn at the Spirit Healer near Kharanos
    .deathskip >> Deathskip out of Frostmane Hold
    .target Spirit Healer






step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 287, 2 >>Turn in Frostmane Hold
    .turnin 98323 >>Turn in Secure the Mountain
    .accept 291 >>Accept The Reports
    --level 8 train
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>Talk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r before leaving Kharanos for eastern Dun Morogh
    .trainer >> Train your class spells
    .target Gimrizz Shadowcog

step << Warlock
    #optional
    .goto 1426/0,-526.11,-5639.71
    >>Talk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r. Buy [Grimoire of Firebolt (Rank 2)] if your Imp does not know it, then use it with your Imp summoned
    >>Buy Blood Pact (Rank 1) too if you skipped it earlier. Skip any grimoire already learned or unaffordable
    .vendor 6328 >> Upgrade your Imp's spells
    .use 16302
    .target Dannie Fizzwizzle
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .turnin 98321 >>Turn in Flintfire's Shipment


step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .trainer >> Train your class spells
    .train 639 >> Holy Light
    .train 498 >> Divine Protection
    .train 3127 >> Parry
    .train 853 >> Hammer of Justice
    .train 1152 >> Purify
    .target Azar Stronghammer

step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .trainer >> Train your class spells
    .target Granis Swiftaxe

step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .target Gremlock Pilsnor::1699
    .train 2550 >> Train |T133971:0|t[Cooking]
    .turnin 96629 >>Turn in Camping 101: Cooking

step
    .goto 1426/0,-531.23,-5601.59
    .collect 2894, 1 >> Buy a Rhapsody malt
    .target Innkeeper Belm
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew





step
    .isOnQuest 320
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320, 2 >> Turn in Return to Bellowfiz
    .target Pilot Bellowfiz

step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear::1377|r
    .target Pilot Stonegear::1377
    .turnin 313 >>Turn in The Grizzled Den


step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill::1376|r
    .target Beldin Steelgrill::1376
    .accept 96408 >>Accept A Visitor to Dun Morogh

step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10

step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
    --  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50

step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Kill |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry

step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Kill |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
    --  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry

step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96408 >> Turn in A Visitor to Dun Morogh
    .accept 96392 >> Accept Farsen's Watch
    .target Earthseer Farsen

step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Talk to |cRXP_FRIENDLY_Earthseer Farsen|r to view his farsight
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .target Earthseer Farsen

step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Press ESCAPE to cancel the Farsight|r

step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen

step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Press ESCAPE to cancel the Farsight|r
    .turnin 96392 >> Turn in Farsen's Watch
    .accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen

step
    #optional
    #completewith next
    .goto 1426/0,-1565.58,-5666.24,60 >> Travel to Gol'Bolar Quarry
    .subzoneskip 134


step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.96,-5714.73
    .accept 432 >> Accept Those Blasted Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow

step << Paladin
    #completewith PaladinLinenReady
    >>Keep 10 Linen Cloth for The Tome of Divinity during the quarry grind. Ask Warrior and Warlock to pass their cloth to you; do not vendor it
    .collect 2589,10 --Linen Cloth reserved for resurrection (10)

step
    #completewith RockjawEnd
    >>Loot |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r for an |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r] while doing the quarry quests
    .use 268548 >> Use the |cRXP_LOOT_Empty Powder Keg|r to start the quest
    >>This is a low drop rate. Continue without it if none drops during the required kills.
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Accept Stolen Blasting Powder

step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r in or outside the mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper

step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Enter the Gol'Bolar Quarry Mine
    .isOnQuest 433

step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the mine
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper

step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
    --XXREQ Placeholder invis step until multiple requires per step

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Turn in The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.96,-5714.73

step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>Talk to |cRXP_FRIENDLY_Quarrymaster Thesten|r if you found the keg during the quarry kills
    .turnin 95213 >> Turn in Stolen Blasting Powder
    .target Quarrymaster Thesten

step
    .isQuestTurnedIn 95213
    .isNotOnQuest 95214
    .isQuestAvailable 95214
    .goto 1426/0,-1606.02,-5676.35
    >>Talk to |cRXP_FRIENDLY_Quarrymaster Thesten|r for the follow-up, including if you delivered the keg before joining this route
    .accept 95214 >> Accept Stolen Blasting Powder
    .target Quarrymaster Thesten

step
    #optional
    #label BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Scarred Crag Boars|r and |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10

step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Scarred Crag Boars|r and |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    --  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50

step
    #completewith SpyMap
    .isOnQuest 95214
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r while travelling to the spies. Loot them for |cRXP_LOOT_Stolen Blasting Powder|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher

step
    #completewith SpyMap
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r. Loot them for the |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r]
    .use 268548 >> |cRXP_WARN_Use the|r |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_NOTE: This item has a low drop rate. Skip this step if you do not find it by the time you are done with the|r |cRXP_ENEMY_Dark Iron Spies|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Accept Stolen Blasting Powder
    .mob Rockjaw Ambusher

step
    #label SpyMap
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    .use 274268 >>|cRXP_WARN_Use the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r] |cRXP_WARN_to start the quest|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy

step
    .isQuestAvailable 95213
    .isNotOnQuest 95213
    .itemcount 268548,1
    >>Use any |cRXP_LOOT_Empty Powder Keg|r still in your bags before leaving the spy circuit
    .use 268548
    .accept 95213 >> Accept Stolen Blasting Powder

step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>Talk to |cRXP_FRIENDLY_Quarrymaster Thesten|r if you found the keg late
    .turnin 95213 >> Turn in Stolen Blasting Powder
    .target Quarrymaster Thesten

step
    .isQuestTurnedIn 95213
    .isNotOnQuest 95214
    .isQuestAvailable 95214
    .goto 1426/0,-1606.02,-5676.35
    >>Talk to |cRXP_FRIENDLY_Quarrymaster Thesten|r if you still need the follow-up
    .accept 95214 >> Accept Stolen Blasting Powder
    .target Quarrymaster Thesten

step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Finish any remaining |cRXP_LOOT_Stolen Blasting Powder|r from |cRXP_ENEMY_Rockjaw Ambushers|r. Each player with the follow-up needs 16.
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher

step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>Talk to |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95214 >> Turn in Stolen Blasting Powder
    .target Quarrymaster Thesten

step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
    .target Earthseer Farsen

step
    #completewith next
    .goto 1426/0,-2165.600,-5609.000,70,0
    .goto 1426/0,-2262.200,-5622.700,20,0
    .goto 1426/0,-2350.700,-5558.700,20 >> Travel toward |cRXP_FRIENDLY_Mountaineer Barleybrew|r at the South Gate Pass

step
    .goto 1426/0,-2447.11,-5479.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
    .target Mountaineer Barleybrew

step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Travel through the South Gate Pass into Loch Modan

step
    .goto Loch Modan,22.1,73.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint

step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Enter the Bunker. Go to the top floor

step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss

step
    #completewith HonorStudents
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell

step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Enter the Stoutlager Inn

step
    #label ThelsaHS
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r inside
    .home >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove

step
    .goto 1432/0,-2954.42,-5394.10
    >>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r inside the Stoutlager Inn on this first visit
    .accept 418 >> Accept Thelsamar Blood Sausages
    .target Vidra Hearthstove

step
    #sticky
    #completewith flyIF
    >>Kill |cRXP_ENEMY_Bears|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Spiders|r as you pass through Loch Modan. Loot their sausage ingredients; finish any missing ingredients after the later Filthy Paws turn-in
    .collect 3172,3,418,1 --Boar Intestines (3)
    .collect 3173,3,418,1 --Bear Meat (3)
    .collect 3174,3,418,1 --Spider Ichor (3)


step << Paladin
    >>Buy 4 |T135435:0|t[Simple Wood] for a Camp Chair and two Basic Campfire Kits, plus |T135237:0|t[Flint and Tinder]
    .collect 4470,4 --Simple Wood (4)
    .collect 4471,1 --Flint and Tinder (1)
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >> Exit the Stoutlager Inn

step
    #label HonorStudents
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker

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
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell

step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Travel to Algaz Station

step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Enter the Bunker. Go to the top floor

step
    #label Stormpike1
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r inside the bunker
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike

step
    #completewith next
    .goto 1432/0,-2503.500,-4815.300,15,0
    .goto 1426/0,-2353.100,-4897.100,15 >> Travel toward |cRXP_FRIENDLY_Pilot Hammerfoot|r through the North Gate Pass

step
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot

step
    .goto 1426/0,-2121.76,-5064.70
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge

step
    .goto 1426/0,-2087.19,-5096.51
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw

step
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417, 1 >> Turn in A Pilot's Revenge << !Warrior
    .turnin 417, 2 >> Turn in A Pilot's Revenge << Warrior
    .target Pilot Hammerfoot

step
    #completewith flyIF
    .hs >> Hearth to Thelsamar
    .cooldown item,6948,>2,1

step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .buy 4470,100
    .collect 4470,100 >>|cRXP_BUY_Buy|r |T135435:0|t[Simple Wood] |cRXP_BUY_until you have 100|r
    .target Yanni Stoutheart

step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .target Thorgrum Borrelson

step
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge

step << Warrior/Paladin
    .train 7752,1 --Skip if Slitherskin Mackerel is already learned
    .goto Ironforge,48.4,6.6
    >>Buy Recipe: Slitherskin Mackerel from Tansy Puddlefizz for your early Attack Power food.
    .collect 6326,1 --Recipe: Slitherskin Mackerel (1)
    .target Tansy Puddlefizz

step << Warrior/Paladin
    .skill cooking,<1,1
    .use 6326
    .train 7752 >> Learn Slitherskin Mackerel

step << Warrior/Paladin
    .train 7753,1 --Skip if Longjaw Mud Snapper is already learned
    .goto Ironforge,48.4,6.6
    >>Buy Recipe: Longjaw Mud Snapper from Tansy Puddlefizz. Keep it until Cooking 50 if you cannot learn it yet.
    .collect 6328,1 --Recipe: Longjaw Mud Snapper (1)
    .target Tansy Puddlefizz

step << Warrior/Paladin
    .skill cooking,<50,1
    .use 6328
    .train 7753 >> Learn Longjaw Mud Snapper

step << Paladin
    #label PaladinLinenReady
    >>Keep 10 |cRXP_LOOT_Linen Cloth|r for The Tome of Divinity. Get any missing cloth from Warrior or buy it at the Auction House before starting the Ironforge quest chain
    .collect 2589,10 --Linen Cloth (10)

step << Paladin
    .goto 1455/0,-896.47,-4601.65
    >>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward
    .accept 2999 >> Accept Tome of Divinity
    .target Brandur Ironhammer

step << Paladin
    #completewith DivinityTizaStart
    .goto Ironforge,25.400,2.676,10,0
    .goto Ironforge,23.621,2.544,10,0
    .goto Ironforge,22.014,4.533,10,0
    .goto Ironforge,21.831,7.651,10,0
    .goto Ironforge,23.766,11.636,10,0
    .goto Ironforge,27.622,12.177,12 >> Take the stairs to Tiza Battleforge upstairs

step << Paladin
    #label DivinityTizaStart
    .goto Ironforge,27.622,12.177
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
    .turnin 2999 >> Turn in Tome of Divinity
    .accept 1645 >> Accept The Tome of Divinity
    .turnin 1645 >> Turn in The Tome of Divinity
    .target Tiza Battleforge

step << Paladin
    >>Use |cRXP_LOOT_The Tome of Divinity|r to start the next quest
    .use 6916
    .accept 1646 >> Accept The Tome of Divinity

step << Paladin
    .goto Ironforge,27.622,12.177
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >> Turn in The Tome of Divinity
    .accept 1647 >> Accept The Tome of Divinity
    .target Tiza Battleforge


step << Paladin
    .goto Ironforge,39.8,32.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthus Stoneflayer|r after reaching 20 Skinning to learn [Camp Chair]
    .turnin 96056 >>Turn in Camping 101: Skinning
    .target Balthus Stoneflayer

step << Paladin
    .line Ironforge,21.750,51.733,26.021,68.382,31.352,77.807,42.944,84.113
    .goto Ironforge,21.750,51.733,0
    .goto Ironforge,26.021,68.382,0
    .goto Ironforge,42.944,84.113,0
    >>Find |cRXP_FRIENDLY_John Turner|r patrolling the outer ring between the Stonefire Tavern and the Visitor's Center. Give him 10 |cRXP_LOOT_Linen Cloth|r
    .turnin 1647 >> Turn in The Tome of Divinity
    .accept 1648 >> Accept The Tome of Divinity
    .turnin 1648 >> Turn in The Tome of Divinity
    .accept 1778 >> Accept The Tome of Divinity
    .unitscan John Turner
    .target John Turner

step << Paladin
    #completewith DivinityTizaReturn
    .goto Ironforge,25.400,2.676,10,0
    .goto Ironforge,23.621,2.544,10,0
    .goto Ironforge,22.014,4.533,10,0
    .goto Ironforge,21.831,7.651,10,0
    .goto Ironforge,23.766,11.636,10,0
    .goto Ironforge,27.622,12.177,12 >> Return upstairs to Tiza Battleforge

step << Paladin
    #label DivinityTizaReturn
    .goto Ironforge,27.622,12.177
    >>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1778 >> Turn in The Tome of Divinity
    .accept 1779 >> Accept The Tome of Divinity
    .target Tiza Battleforge

step << Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r upstairs. Keep the |cRXP_LOOT_Symbol of Life|r for the Dun Morogh detour after Banner of the Fallen in the next Loch Modan visit
    .turnin 1779 >> Turn in The Tome of Divinity
    .accept 1783 >> Accept The Tome of Divinity
    .target Muiredon Battleforge

step
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06,10 >>Travel toward |cRXP_FRIENDLY_Golnir Bouldertoe|r inside the building

step
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
    .target Golnir Bouldertoe


step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Travel toward |cRXP_FRIENDLY_Senator Barin Redstone|r

step
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone

step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Do NOT fly anywhere|r
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .target Gryth Thurden

step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Train Daggers, Thrown, 1h Axes, 1h Maces, Fist Weapons, and 2h Maces. Guns training is saved for the Ironforge visit before Halls of Thanes
    .train 1180 >> Train Daggers
    .train 2567 >> Train Thrown
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 196 >> Train 1h Axes
    .train 198 >> Train 1h Maces
    .train 15590 >> Train Fist Weapons
    .train 199 >> Train 2h Maces
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand


step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from her|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1

step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from her|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1

step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>At the Ironforge Auction House, buy missing materials for the profession training below. The departure module afterward handles the full camp-material reserves
    >>Warrior: use saved leather for Leatherworking training; buy only missing training materials << Warrior
    >>Warlock: use gathered herbs for the Alchemy skill-ups below. Start with 12 Silverleaf and 12 Peacebloom; extra crafts near 15 may need more. The departure module refills all elixir materials afterward << Warlock
    .collect 2318,5 << Warrior --Light Leather for Camp Tent (5)
    .collect 765,12 << Warlock --Silverleaf (12)
    .collect 2447,12 << Warlock --Peacebloom (12)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler

step << Warrior
    .goto Ironforge,39.8,33.6
    >>Convert the saved Ruined Leather Scraps into Light Leather until you reach 20 Leatherworking. Keep at least 5 Light Leather for the Camp Tent
    .skill leatherworking,20

step << Warrior
    .goto Ironforge,39.8,33.6
    >>Talk to |cRXP_FRIENDLY_Gretta Finespindle|r. Learn [Camp Tent] directly from the trainer after reaching 20 Leatherworking
    .train 1229432 >> Learn [Camp Tent]
    .target Gretta Finespindle

step << Warlock
    .goto Ironforge,66.6,55.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Berryfizz|r
    .train 2259 >>Train |T136240:0|t[Alchemy]
    .target Tally Berryfizz

step << Warlock
    .goto Ironforge,66.6,55.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soolie Berryfizz|r in the same shop. Buy up to 24 [Empty Vials] for Alchemy skill-ups to 15. Use only as many as needed; the departure module later tops up the camp reserve to 70
    .collect 3371,24 --Empty Vial (24)
    .target Soolie Berryfizz

step << Warlock
    .goto Ironforge,66.6,55.2
    >>On this second Ironforge visit, craft only enough [Elixir of Minor Force] and [Minor Arcane Elixir] to reach 15 Alchemy for the recipe training. The city-supplies module afterward replaces the materials you spend
    >>These recipes turn yellow/green, so extra crafts may be needed. Use surplus gathered herbs or buy only the shortfall; stop at 15
    .skill alchemy,15 >> Reach 15 Alchemy before training Minor Strength

step << Warlock
    .goto Ironforge,66.6,55.2
    >>Talk to |cRXP_FRIENDLY_Tally Berryfizz|r now that you have 15 Alchemy
    .train 2329 >>Train [Elixir of Minor Strength]
    .target Tally Berryfizz

step << Warrior
    .goto Ironforge,60.0,44.0
    >>Talk to |cRXP_FRIENDLY_Tilli Thistlefuzz|r downstairs. Buy [Formula: Minor Wizard Oil] for 5 silver if you have not learned it
    .collect 20758,1 --Formula: Minor Wizard Oil (1)
    .target Tilli Thistlefuzz
    .train 25124,1

step << Warrior
    >>Use [Formula: Minor Wizard Oil] to learn the recipe. Your first visit already brought Enchanting to 10
    .train 25124 >> Learn [Minor Wizard Oil]
    .use 20758

step << Paladin
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buliwyf Stonehand|r inside before taking the Deeprun Tram
    .train 197 >> Train 2h Axes
    .target Buliwyf Stonehand

step
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Enter the Deeprun Tram

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty

step
    >>Use the |T133942:0|t[Rat Catcher's Flute] on |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> Accept Me Brother, Nipsy
    .target Monty

step
    #label TramEnd
    >>|cRXP_WARN_Take the Deeprun Tram to the Stormwind side|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r on the middle platform on the Stormwind side of the Deeprun Tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram

step
    #optional
    #completewith Order
    .abandon 6662 >> Abandon Me Brother, Nipsy

step
    #optional
    #completewith Order
    .zone Stormwind City >> Enter Stormwind
    .isOnQuest 1338

step
    #label Order
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard

step
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore

step << Paladin
    .isQuestAvailable 399
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston

step << Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
    --Level 10
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Train your class spells
    .train 20287 >> Seal of Righteous
    .train 633 >> Lay on Hands
    .train 1022 >> Blessing of Protection
    .train 10290 >> Devotion Aura
    .target Arthur the Faithful

step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
    .goto 1453/0,325.68,-8688.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Train your class spells
    .accept 1638 >> Accept A Warrior's Training
    .target Ilsa Corbin

step << Warrior
    #optional
    #completewith next
    .goto 1453/0,401.29,-8741.21,17,0
    .goto 1453/0,417.13,-8636.5,12 >> Enter the Tavern

step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
    .target Harry Burlguard

step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
    .target Bartleby

step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Defeat |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby

step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
    .target Bartleby

step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
    .accept 1666 >> Accept Marshal Haggard for the Elwynn Forest visit
    .target Harry Burlguard

step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs

step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline

step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r to start the Voidwalker chain. Continue it in Elwynn Forest with the next guide
    .accept 1688 >> Accept Surena Caledon
    .target Gakin the Darkbinder
    .train 697,1 --Skip if Summon Voidwalker is already known

step
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train 1h Swords and Staves << Warlock
    .train 201 >> Train 1h Swords << Warrior
    .train 1180 >> Train Daggers << Warrior
    .trainer >>Train 2h Swords << Warrior/Paladin
    .target Woo Ping
]])
