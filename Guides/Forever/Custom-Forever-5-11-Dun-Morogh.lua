-- RestedXP guides, exported from LevelForge Studio (levelforge.dev)

RXPGuides.RegisterGuide([[
#forever
<< Alliance
#name 05-11 Dun Morogh
#displayname 05-11 Dun Morogh
#group Forever Trio Launch
#version 28
#next forever-trio-launch/11-12-elwynn-forest
#defaultfor Gnome/Dwarf (Paladin/Warrior/Warlock)
step
    .money >0.0173 << Warlock
    >>Before Warlock's deathskip, pool spare money with Warlock at the Coldridge exit. Finish your Coldridge training and purchases first
    >>Fishing budget before discounts: 23 copper for the pole + 50 copper for one Shiny Bauble + 1 silver training = 1 silver 73 copper. Count Warlock's existing cash; trade only the shortfall
    >>Fund Warlock to at least 1 silver 73 copper before splitting up
    .train 7620,1 >> Train Fishing << Warlock
step << Warlock
    >>|cRXP_WARN_Make sure your subzone is NOT Coldridge Pass|r
    .deathskip >> Die immediately after leaving Coldridge Valley and respawn at Kharanos
    .target Spirit Healer
step << Warlock
    .goto 1426,46.77,53.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golorn Frostbeard|r . Vendor trash, then buy a Fishing Pole (23 copper) and one Shiny Bauble (50 copper). Keep 1 silver for Fishing training
    .target Golorn Frostbeard
    .collect 6256,1 >> Collect |cRXP_LOOT_[Fishing Pole]|r
    .collect 6529,1 >> Collect |cRXP_LOOT_[Shiny Bauble]|r
step << Warlock
    .goto 1426,49.43,48.41
    >>Run straight to |cRXP_FRIENDLY_Pilot Bellowfiz|r. Accept Stocking Jetsteam and share it with Warrior and Paladin immediately
    .accept 317 >> Accept Stocking Jetsteam
    .target Pilot Bellowfiz
step << Warlock
    #completewith next
    .goto Dun Morogh,52,51.71
    .goto Dun Morogh,44.26,50.75
    .goto Dun Morogh,38.96,46.72
    >>Grind bears toward |cRXP_FRIENDLY_Paxton Ganter|r on Iceflow Lake. Loot their Thick Bear Fur and finish collecting any missing Chunks of Boar Meat from boars
    .complete 317,1
    .complete 317,2
    .mob Young Black Bear
    .mob Ice Claw Bear
    .mob Crag Boar
    .mob Large Crag Boar
step << Warlock
    .goto 1426,35.48,40.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paxton Ganter|r . Learn Fishing so you can pick up Camping 101 in Kharanos
    .target Paxton Ganter
    .train 7620 >> Train Fishing
step << Warlock
    .goto 1426,35.48,40.22
    >>Equip the Fishing Pole and apply the Shiny Bauble, then fish to 20 Fishing
    >>Keep ALL fish for crafting Fish Bowls, especially Raw Brilliant Smallfish
    .skill fishing,20
    .use 6529 >> Use |cRXP_LOOT_[Shiny Bauble]|r
    >>Re-equip your combat weapon before the deathskip
    .target Paxton Ganter
step << Warlock
    >>With 20 Fishing, die immediately and respawn at Kharanos. Finish Stocking Jetsteam with the party before doing The Great Outdoors
    .deathskip >> Deathskip to Kharanos immediately after fishing
    .target Spirit Healer
step << !Warlock
    .isNotOnQuest 317
    #completewith next
    >>|cRXP_WARN_Do not kill bears until you have accepted Warlock's share of Stocking Jetsteam. Grind boars while waiting for the share|r
step << !Warlock
    #loop
    #loop
    .goto Dun Morogh,34.08,57.11
    .goto Dun Morogh,27.11,54.78
    .goto Dun Morogh,34.11,57.17
    .goto Dun Morogh,36.28,53.82
    >>Accept Warlock's share of Stocking Jetsteam. Grind boars and, once on the quest, bears toward Brewnall Village
    >>Skin every beast. Reach 20 Skinning and keep 9 Light Leather equivalents for Warrior: each 3 Ruined Leather Scraps counts as 1 Light Leather. Finish these requirements during Stocking Jetsteam << Paladin
    >>Save Crag Boar Ribs and any spare Chunks of Boar Meat for later
    .accept 317 >> Accept the share of Stocking Jetsteam
    .complete 317,2
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Young Black Bear
    .mob Ice Claw Bear
step << Paladin
    #label brewnall-village
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r and share it
    .target Marleth Barleybrew
    .accept 310 >> Accept Bitter Rivals
    .goto 1426,30.19,45.53
    .target +Marleth Barleybrew
step << Paladin
    .goto 1426,31.53,44.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta Ganter|r . Accept Frosthowl and share it with Warrior and Warlock before the deathskip
    .target Gretta Ganter
    .accept 98326 >> Accept Frosthowl
step << !Warlock
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    >>Kill |cRXP_ENEMY_Young Black Bears|r or |cRXP_ENEMY_Ice Claw Bears|r. Loot them for their |cRXP_LOOT_Thick Bear Fur|r
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.37,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .mob +Young Black Bear
    .mob +Ice Claw Bears
    .complete 317,1
    .goto 1426,43.452,58.76,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.76,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Large Crag Boar
    .mob +Crag Boar
    .collect 2886,6,384,1 >> Collect |cRXP_LOOT_[Crag Boar Rib]|r
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << Warrior/Warlock
    >>Accept Paladin's share of Frosthowl and Bitter Rivals while regrouping in Kharanos
    .accept 310 >> Accept Bitter Rivals
    .accept 98326 >> Accept the share of Frosthowl
step
    .goto 1426,46.71,53.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96628 >> Turn in The Adventurer
    .accept 96608 >> Accept The Great Outdoors
step
    .goto 1426,46.71,53.95
    >>|cRXP_WARN_Type "/sit" in chat and wait for one minute around the campfire|r
    .complete 96608,1
    .macro Sit,134400 >>/sit
    .timer 59,Campfire rest
    .complete 96608,2
step
    .goto 1426,46.71,53.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96608 >> Turn in The Great Outdoors
    .accept 96629 >> Accept Camping 101: Cooking
    .accept 96056 >> Accept Camping 101: Skinning << Paladin
    .accept 96050 >> Accept Camping 101: Fishing << Warlock
    .accept 96031 >> Accept Camping 101: Leatherworking << Warrior
step
    #label senir-end
    .goto 1426,46.77,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 420 >> Turn in Senir's Observations
    .accept 98322 >> Accept Secure the Mountain
step
    .goto 1426,46.83,52.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .target Ragnar Thunderbrew
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    #optional
    #completewith next
    .goto 1426,46.952,52.05,8,0
    .goto 1426,47.153,51.939,8 >> Enter the Thunderbrew Distillery
step
    .goto 1426,47.22,52.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .target Tannok Frosthammer
    .turnin 2160,1 >> Turn in Supplies to Tannok << Warrior
    .turnin 2160,2 >> Turn in Supplies to Tannok << !Warrior
step
    .goto 1426,47.38,52.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .target Innkeeper Belm
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .bindlocation 2102
step
    .goto 1426,47.38,52.52
    .complete 384,2
    .target Innkeeper Belm
    .itemcount 2677,>=6
step << Paladin
    .goto 1426,47.6,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .target Azar Stronghammer
    .trainer >> Train your class spells
    .train 679 >> Train Holy Strike
step << Warrior
    .goto Dun Morogh,47.36,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .target Granis Swiftaxe
    .trainer >> Train your class spells
step << Warlock
    .goto 1426,47.33,53.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r outside during the party's first Kharanos training stop
    .target Gimrizz Shadowcog
    .trainer >> Train your class spells
step
    .goto 1426,46.83,52.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .target Ragnar Thunderbrew
    .turnin 384 >> Turn in Beer Basted Boar Ribs
step
    .goto 1426,46.02,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .target Tharek Blackstone
    .accept 400 >> Accept Tools for Steelgrill
step << Warrior
    #optional
    #completewith next
    .goto 1426,45.695,51.911,20 >> Enter the Blacksmith building
step << Warrior
    .goto 1426,45.34,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .accept 98321 >> Accept Flintfire's Shipment. |cRXP_ENEMY_Share this with the other guys|r
step << Warrior
    #label blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire|r . Buy a Blacksmith Hammer from the nearby supplier if needed
    .target Tognus Flintfire
    .train 2018 >> Train Blacksmithing
    .collect 5956,1 >> Collect |cRXP_LOOT_[Blacksmith Hammer]|r
step << Warrior
    .goto Dun Morogh,45.344,51.936
    >>Craft two Rough Weightstone.
    .collect 3239,2 >> Collect |cRXP_LOOT_[Rough Weightstone]|r
step << Warrior
    >>Trade a Rough Weightstone to Baht
step << Warrior
    .goto Dun Morogh,45.2,51.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gamili Frosthide|r in the Kharanos blacksmith building. Buy [Thin Cloth Bracers] for 24 copper before discounts if you have no wrist item. These are the cheapest option for Enchanting in Ironforge
    >>If you already have bracers in your bags, equip those instead
    .target Gamili Frosthide
    .equip 9 >> Equip a wrist item
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r and |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Bellowfiz
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
    .goto 1426,49.43,48.41
    .target +Pilot Bellowfiz
    .accept 313 >> Accept The Grizzled Den
    .goto 1426,49.62,48.61
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r and |cRXP_FRIENDLY_Loslor Rudge|r
    .target Beldin Steelgrill
    .accept 5541 >> Accept Ammo for Rumbleshot
    .goto 1426,50.08,49.42
    .target +Loslor Rudge
    .turnin 400 >> Turn in Tools for Steelgrill
    .goto 1426,50.44,49.09
    .target +Beldin Steelgrill
step
    .isQuestAvailable 314
    #completewith rudra
    #label dirt
    .goto 1426,59.84,49.56,40,0
    .goto 1426,61.36,47.07,40 >> Go up the dirt path
step
    #completewith next
    #requires dirt
    >>|cRXP_WARN_Kite|r|cRXP_ENEMY_Vagash|r|cRXP_WARN_down to|r |cRXP_FRIENDLY_Rudra|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r
    .mob Vagash
step
    #label rudra
    .goto 1426,63.08,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .accept 314 >> Accept Protecting the Herd
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r
    .complete 314,1
    .mob Vagash
step
    .goto 1426,63.08,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .turnin 314,3 >> Turn in Protecting the Herd
step
    .goto 1426,63.8,49
    >>Sell the [Coldridge Hammer] to |cRXP_FRIENDLY_Turuk Amberstill|r at the ranch << Warlock
    .vendor >> Vendor junk
    .target Turuk Amberstill
step
    >>Trade 4 |cRXP_LOOT_[Silver Leaf]|r and all silver << Warlock
    >>Trade all leather and all silver << Paladin
    >>Receive 4 [Silver Leaf], all leather and all silver << Warrior
step << Warlock/Paladin
    .hs >> Hearth to Kharanos after Vagash
step << Warrior
    #completewith warrior-thrown
    .goto Dun Morogh,60.13,49.9,40,0
    .goto Dun Morogh,53.67,41.52,40,0
    .goto Ironforge,14.9,87.1,40 >> Travel to Ironforge
step << Warrior
    .goto Ironforge,27.87,83.82
    .goto Ironforge,39.24,70.61
    .goto Ironforge,50.4,43
    .collect 2840,9 >> Smelt all 9 Copper Bars. Keep the bars and Rough Stones for your own Blacksmithing
step << Warrior
    .goto Ironforge,50.4,43
    >>Craft Rough Weightstones with the remaining Rough Stones. Atleast 5
    .collect 3239,5 >> Collect |cRXP_LOOT_[Rough Weightstone]|r
step << Warrior
    .goto Ironforge,50.4,43
    .collect 10421,2 >> Collect |cRXP_LOOT_[Rough Copper Vest]|r
step << Warrior
    .goto Ironforge,50.4,43
    .skill blacksmithing,10
step << Warrior
    .goto Ironforge,52.6,40.8
    .train 1245287 >> Learn Copper Rod from Bengus Deepforge
    .target Bengus Deepforge
step << Warrior
    .goto Ironforge,50.4,43
    >>Craft Copper Rod once with the final Copper Bar
    .collect 6217,1 >> Collect |cRXP_LOOT_[Copper Rod]|r
step << Warrior
    .goto Ironforge,50.4,43
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
    .target Fimble Finespindle
    .train 2108 >> Train Leatherworking
step << Warrior
    .goto Ironforge,39.8,33.6
    >>Buy 3 [Coarse Thread] from |cRXP_FRIENDLY_Bombus Finespindle|r for three [Handstitched Leather Vest] crafts
    .collect 2320,3 >> Collect |cRXP_LOOT_[Coarse Thread]|r
    .target Bombus Finespindle
step << Warrior
    .goto Ironforge,39.8,33.6
    >>Convert Paladin's saved Ruined Leather Scraps into Light Leather as needed. Each conversion uses 3 scraps; keep any excess leather and scraps for the later Camp Tent
    .collect 2318,9 >> Collect |cRXP_LOOT_[Light Leather]|r
step << Warrior
    .goto Ironforge,39.8,33.6
    .collect 5957,3 >> Collect |cRXP_LOOT_[Handstitched Leather Vest]|r
step << Warrior
    .goto Ironforge,60.4,45.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .target Gimble Thistlefuzz
    .train 7411 >> Train Enchanting
step << Warrior
    >>Disenchant |cRXP_LOOT_[Rough Copper Vests]|r and |cRXP_LOOT_[Handstitches Leather Vests]|r
    .skill enchanting,6
step << Warrior
    .goto Ironforge,60,44
    >>Buy 8 Mote of Magic for the Runed Copper Rod. Buy one Lesser Magic Essence and one Simple Wood for the single wand
    .collect 247786,4 >> Collect |cRXP_LOOT_[Mote of Magic]|r
    .collect 10938,1 >> Collect |cRXP_LOOT_[Lesser Magic Essence]|r
    .collect 6217,1 >> Collect |cRXP_LOOT_[Copper Rod]|r
    .collect 4470,1 >> Collect |cRXP_LOOT_[Simple Wood]|r
    .target Tilli Thistlefuzz
step << Warrior
    >>Craft a [Runed Copper Rod]
    .collect 6218,1 >> Collect |cRXP_LOOT_[Runed Copper Rod]|r
step << Warrior
    >>After disenchanting and crafting the rod, enchant bracers with mote of magic
    .skill enchanting,10
step << Warrior
    .goto Ironforge,60.4,45.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .target Gimble Thistlefuzz
    .train 14293 >> Train Lesser Magic Wand
step << Warrior
    >>Craft one [Lesser Magic Wand]
    .collect 11287,1 >> Collect |cRXP_LOOT_[Lesser Magic Wand]|r
step << Warrior
    .itemcount 10938,>=1
    >>You have another |cRXP_LOOT_[Lesser Magic Essence]|rCraft one more [Lesser Magic Wand]
    .collect 4470,1 >> Collect |cRXP_LOOT_[Simple Wood]|r
    .target Tilli Thistlefuzz
    .collect 11287,2 >> Collect |cRXP_LOOT_[Lesser Magic Wand]|r
step << Warrior
    #label warrior-thrown
    .goto Ironforge,62.237,89.628
    >>Talk to or |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Train 2h Maces from |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .target Buliwyf Stonehand
step << Warrior
    .hs >> Hearth to Kharanos
step
    #label distracting
    #completewith next
    .goto 1426,47.38,52.52
    >>|cRXP_BUY_Buy a|r [Thunder Ale] |cRXP_BUY_from him|r
    .collect 2686,1 >> Only one need to buy this one
    .target Innkeeper Belm
    .goto 1426,47.78,52.43,6,0
    .goto 1426,47.64,52.65,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarven Thunderbrew|r downstairs
    .target Jarven Thunderbrew
    .turnin 308 >> Turn in Distracting Jarven
step
    .goto 1426,47.72,52.7
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto 1426,47.38,52.52
    .complete 384,2
    .target Innkeeper Belm
    .itemcount 2677,>=6
step
    .goto 1426,46.83,52.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .target Ragnar Thunderbrew
    .turnin 384 >> Turn in Beer Basted Boar Ribs
step
    .xp <7,1
    .goto 1426,46.77,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r if you are level 7
    .target Senir Whitebeard::1252
    .accept 287 >> Accept Frostmane Hold
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98322 >> Turn in Secure the Mountain
    .accept 98319 >> Accept Secure the Mountain
step
    #label rumbleshot-ammo
    .goto 1426,44.13,56.95
    >>Open the |cRXP_PICK_Ammo Crate|r. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1
step
    .goto 1426,44.13,56.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98322 >> Turn in Secure the Mountain
    .accept 98319 >> Accept Secure the Mountain
step
    #completewith mountaineer-cornelius
    >>Kill all types of |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>Loot |cRXP_PICK_Flintfire's Shipments|r on the ground inside the Grizzled Den cave
    .complete 313,1
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1
step
    #completewith mountaineer-cornelius
    .goto 1426,42.17,53.18,20 >> Enter the Grizzled Den cave
step
    #label mountaineer-cornelius
    .goto 1426,41.09,49.93,20,0
    .goto 1426,42.94,49.62
    >>Travel to the corpse of |cRXP_FRIENDLY_Mountaineer Cornelius|r inside the Grizzled Den cave
    >>|cRXP_WARN_Be careful of the higher level|r|cRXP_ENEMY_Wendigos|r|cRXP_WARN_deeper in the cave|r
    .complete 98319,1
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
    .goto 1426,41.1,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.1,48.927,40,0
    .goto 1426,42.17,47.1,40,0
    .goto 1426,42.94,49.62,40,0
    .goto 1426,42.17,53.18,40,0
    .goto 1426,42.17,47.1,40,0
    .goto 1426,42.94,49.62,40,0
    .goto 1426,42.17,53.18,40,0
    >>Kill all types of |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>Loot |cRXP_PICK_Flintfire's Shipments|r on the ground inside the Grizzled Den cave
    .complete 313,1
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1
step
    .goto 1426,44.1,57.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98319 >> Turn in Secure the Mountain
    .accept 98323 >> Accept Secure the Mountain
step
    #completewith brewnall-village
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 >> Collect |cRXP_LOOT_[Crag Boar Rib]|r
    .mob Large Crag Boar
    .mob Crag Boar
step
    #optional
    #completewith afr
    .goto 1426,40.632,62.794,40,0
    .goto 1426,40.68,65.13,15 >> Travel toward |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step
    #label afr
    .goto 1426,40.68,65.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor trash
step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.03,15,0
    .goto 1426,34.58,51.65,20 >> Travel toward |cRXP_FRIENDLY_Tundra MacGrann|r
step << Warrior
    .goto 1426,34.58,51.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
    .goto 1426,38.52,53.93
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until|r|cRXP_ENEMY_Old Icebeard|r|cRXP_WARN_patrols out of the cave, then enter and loot the chest|r
    .complete 312,1
step
    .goto 1426,34.58,51.65
    >>Return immediately to |cRXP_FRIENDLY_Tundra MacGrann|r and turn in the quest
    .turnin 312,1 >> Turn in Tundra MacGrann's Stolen Stash << !Warlock
    .turnin 312,2 >> Turn in Tundra MacGrann's Stolen Stash << Warlock
    .target Tundra MacGrann
step
    #completewith next
    .goto 1426,30.45,46
    .subzone 137 >> Travel to Brewnall Village
step
    #completewith next
    .goto 1426,30.45,46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .target Keeg Gibn
    .vendor >> |cRXP_WARN_Vendor trash|r
step
    #label brewnall-village
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r and |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Rejold Barleybrew
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
    .goto Dun Morogh,30.19,45.726
    .target +Rejold Barleybrew
    .turnin 311 >> Turn in Return to Marleth
    .goto 1426,30.19,45.53
    .target +Marleth Barleybrew
step
    .goto 1426,31.53,44.65
    .turnin 98326 >> Turn in Frosthowl to Gretta Ganter
    .target Gretta Ganter
step
    .goto Dun Morogh,30.18,40.51,100
    .goto Dun Morogh,32.70,36.40,100
    .goto Dun Morogh,36.05,35.88,100
    #completewith next
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 >> Collect |cRXP_LOOT_[Crag Boar Rib]|r
    .mob +Elder Crag Boar
    .complete 319,1
    .mob +Ice Claw Bear
    .complete 319,3
    .mob +Snow Leopard
step << Warlock
    .goto 1426,35.48,40.22
    .turnin 96050 >> Turn in Camping 101: Fishing to learn Fish Bowl
    .target Paxton Ganter
step
    .isOnQuest 315
    .goto 1426,38.1,36.1,15 >> Go up the mountain here to reach the northern part of Shimmer Ridge
step
    #label shimmerweed-collect
    #loop
    .goto 1426,41.5,36,0
    .goto 1426,42.1,34.3,0
    .goto 1426,41.5,36,45,0
    .goto 1426,42.1,34.3,45,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for their |cRXP_LOOT_Shimmerweed|r
    >>Open the |cRXP_PICK_Shimmerweed Baskets|r on the ground. Loot them for their |cRXP_LOOT_Shimmerweed|r
    .complete 315,1
    .mob Frostmane Seer
step
    .isQuestComplete 319
    #optional
    .goto Dun Morogh,30.19,45.726
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r if A Favor for Evershine is complete
    .target Rejold Barleybrew
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r and |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Rejold Barleybrew
    .turnin 315,1 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
    .goto 1426,30.19,45.73
    .target +Rejold Barleybrew
step
    #completewith headhunters
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1
    .mob Frostmane Headhunter
step
    #label headhunters
    .goto 1426,23.83,51.85,20,0
    .goto 1426,22.45,54.75,20,0
    .goto 1426,21.43,52.93,20,0
    .goto 1426,22.47,50.29,20,0
    .goto 1426,23.24,50.79
    >>|cRXP_WARN_Enter Frostmane Hold cave. Stay on the left side as you go further in the cave to explore it|r
    .complete 287,2
step
    #loop
    .goto 1426,22.39,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.39,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0 >> Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1
    .mob Frostmane Headhunter
step
    #completewith next
    >>After exploring Frostmane Hold and finishing the Frostmane Headhunters, die inside the cave and respawn at the Spirit Healer near Kharanos
    .deathskip >> Deathskip out of Frostmane Hold
    .target Spirit Healer
step << Warlock
    .goto 1426,47.33,53.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r before leaving Kharanos for eastern Dun Morogh
    .target Gimrizz Shadowcog
    .trainer >> Train your class spells
step << Warlock
    #optional
    .goto 1426,47.27,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r . Buy [Grimoire of Firebolt (Rank 2)] if your Imp does not know it, then use it with your Imp summoned
    >>Buy Blood Pact (Rank 1) too if you skipped it earlier. Skip any grimoire already learned or unaffordable
    .target Dannie Fizzwizzle
    .vendor 6328 >> Upgrade your Imp's spells
    .use 16302 >> Use |cRXP_LOOT_[Grimoire of Firebolt (Rank 2)]|r
step
    .goto 1426,46.77,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 287,2 >> Turn in Frostmane Hold
    .turnin 98323 >> Turn in Secure the Mountain
    .accept 291 >> Accept The Reports
step
    .goto 1426,45.32,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .turnin 98321 >> Turn in Flintfire's Shipment
step << Paladin
    .goto 1426,47.6,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .target Azar Stronghammer
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,47.36,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .target Granis Swiftaxe
    .trainer >> Train your class spells
step
    .goto 1426,47.67,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .target Gremlock Pilsnor::1699
    .train 2550 >> Train Cooking
    .turnin 96629 >> Turn in Camping 101: Cooking
step
    .isOnQuest 320
    .goto 1426,49.43,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .turnin 320,2 >> Turn in Return to Bellowfiz
step
    .goto 1426,49.62,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear::1377|r
    .target Pilot Stonegear::1377
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto 1426,50.44,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill::1376|r
    .target Beldin Steelgrill::1376
    .accept 96408 >> Accept A Visitor to Dun Morogh
step
    .skill cooking,10,1
    #optional
    #label boar-meat-dun-morogh1
    #completewith dirt
    .goto 1426,57.936,50.787,0 >> Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1 >> Collect |cRXP_LOOT_[Chunk of Boar Meat]|r
    .mob Elder Crag Boar
step
    .skill cooking,50,1
    #optional
    #requires boar-meat-dun-morogh1
    #completewith dirt
    .goto 1426,57.936,50.787,0 >> Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1 >> Collect |cRXP_LOOT_[Chunk of Boar Meat]|r
    .mob Elder Crag Boar
step
    .goto 1426,64.9,58.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .target Earthseer Farsen
    .turnin 96408 >> Turn in A Visitor to Dun Morogh
    .accept 96392 >> Accept Farsen's Watch
step
    .isOnQuest 96392
    .goto 1426,64.9,58.5
    .gossipoption 139831 >> Talk to |cRXP_FRIENDLY_Earthseer Farsen|r to view his farsight
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .target Earthseer Farsen
step << skip
    .goto 1426,64.9,58.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r |cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .target Earthseer Farsen
    .complete 96392,1
    .skipgossip
step
    .goto 1426,64.9,58.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r |cRXP_WARN_Press ESCAPE to cancel the Farsight|r
    .target Earthseer Farsen
    .turnin 96392 >> Turn in Farsen's Watch
    .accept 96390 >> Accept Nip 'Em in the Bud
step
    .subzoneskip 134
    #optional
    #completewith next
    .goto 1426,68.38,54.49,60 >> Travel to Gol'Bolar Quarry
step
    #label quarry-start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .target Senator Mehr Stonehallow
    .accept 433 >> Accept The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426,68.67,55.97
    .accept 432 >> Accept Those Blasted Troggs!
    .goto 1426,69.08,56.33
    .target +Foreman Stonebrow
step << Paladin
    #completewith paladin-linen-ready
    >>Keep 10 Linen Cloth for The Tome of Divinity during the quarry grind. Ask Warrior and Warlock to pass their cloth to you; do not vendor it
    .collect 2589,10 >> Collect |cRXP_LOOT_[Linen Cloth]|r
step
    #completewith rockjaw-end
    >>Loot |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r for an [|cRXP_LOOT_Empty Powder Keg|r] while doing the quarry quests
    .use 268548 >> Use the |cRXP_LOOT_Empty Powder Keg|r to start the quest
    >>This is a low drop rate. Continue without it if none drops during the required kills.
    .collect 268548,1,95213,1 >> Collect |cRXP_LOOT_[Empty Powder Keg]|r
    .accept 95213 >> Accept Stolen Blasting Powder
step
    #sticky
    #label skullthumpers
    #loop
    .goto 1426,70.073,57.03,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.03,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.42,45,0 >> Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r in or outside the mine
    .complete 432,1
    .mob Rockjaw Skullthumper
step
    .isOnQuest 433
    #optional
    #completewith next
    .goto 1426,70.75,56.219,20 >> Enter the Gol'Bolar Quarry Mine
step
    #loop
    .goto 1426,70.75,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.57,53.488,0
    .goto 1426,70.75,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.3,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.57,53.488,30,0
    .goto 1426,71.79,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the mine
    .complete 433,1
    .mob Rockjaw Bonesnapper
step
    #optional
    #label rockjaw-end
    #requires skullthumpers
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .target Foreman Stonebrow
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto 1426,69.08,56.33
    .turnin 433 >> Turn in The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426,68.67,55.97
step
    .isOnQuest 95213
    .goto 1426,69.2,54.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r if you found the keg during the quarry kills
    .target Quarrymaster Thesten
    .turnin 95213 >> Turn in Stolen Blasting Powder
step
    .isQuestTurnedIn 95213
    .isNotOnQuest 95214
    .isQuestAvailable 95214
    .goto 1426,69.2,54.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r for the follow-up, including if you delivered the keg before joining this route
    .target Quarrymaster Thesten
    .accept 95214 >> Accept Stolen Blasting Powder
step
    .isOnQuest 95214
    #completewith spy-map
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r while travelling to the spies. Loot them for |cRXP_LOOT_Stolen Blasting Powder|r
    .complete 95214,1
    .mob Rockjaw Ambusher
step
    #completewith spy-map
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r. Loot them for the [|cRXP_LOOT_Empty Powder Keg|r]
    .use 268548 >> |cRXP_WARN_Use the|r [|cRXP_LOOT_Empty Powder Keg|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_NOTE: This item has a low drop rate. Skip this step if you do not find it by the time you are done with the|r |cRXP_ENEMY_Dark Iron Spies|r
    .collect 268548,1,95213,1 >> Collect |cRXP_LOOT_[Empty Powder Keg]|r
    .accept 95213 >> Accept Stolen Blasting Powder
    .mob Rockjaw Ambusher
step
    #label spy-map
    .goto 1426,77.4,60.4,40,0
    .goto 1426,77.9,62.3
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the [|cRXP_LOOT_Dark Iron Map|r]
    .use 274268 >> |cRXP_WARN_Use the|r [|cRXP_LOOT_Dark Iron Map|r] |cRXP_WARN_to start the quest|r
    .complete 96390,1
    .collect 274268,1,96391,1 >> Collect |cRXP_LOOT_[Dark Iron Map]|r
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy
step
    .isQuestAvailable 95213
    .isNotOnQuest 95213
    .itemcount 268548,>=1
    >>Use any |cRXP_LOOT_Empty Powder Keg|r still in your bags before leaving the spy circuit
    .use 268548 >> Use |cRXP_LOOT_[Empty Powder Keg]|r
    .accept 95213 >> Accept Stolen Blasting Powder
step
    .isOnQuest 95213
    .goto 1426,69.2,54.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r if you found the keg late
    .target Quarrymaster Thesten
    .turnin 95213 >> Turn in Stolen Blasting Powder
step
    #label oii
    .goto 1426,64.9,58.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .target Earthseer Farsen
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
step
    #completewith next
    .goto 1426,80.56,52.75,70,0
    .goto 1426,82.52,53.17,20,0
    .goto 1426,84.32,51.22,20 >> Travel toward |cRXP_FRIENDLY_Mountaineer Barleybrew|r at the South Gate Pass
step
    .goto 1426,86.28,48.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .target Mountaineer Barleybrew
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
step
    #optional
    #label loch-enter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.84
    .subzone 924 >> Travel through the South Gate Pass into Loch Modan
step
    .goto Loch Modan,22.1,73.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .accept 224 >> Accept In Defense of the King's Lands
step
    #optional
    #completewith next
    .goto 1432,23.27,75.65,12,0
    .goto 1432,23.62,75.42,12,0
    .goto 1432,23.12,73.93,12 >> Enter the Bunker. Go to the top floor
step
    .goto 1432,23.23,73.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .target Captain Rugelfuss
    .accept 267 >> Accept The Trogg Threat
step
    #completewith honor-students
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.2,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.2,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    #optional
    #completewith thelsa-hs
    .goto 1432,35.273,47.75,10,0
    .goto 1432,35.433,48.243,12 >> Enter the Stoutlager Inn
step
    #label thelsa-hs
    .goto 1432,35.53,48.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r inside
    .target Innkeeper Hearthstove
    .home >> Set your Hearthstone to Thelsamar
step
    .goto 1432,34.83,49.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r inside the Stoutlager Inn on this first visit
    .target Vidra Hearthstove
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    #sticky
    #completewith fly-if
    >>Kill |cRXP_ENEMY_Bears|r, |cRXP_ENEMY_Boars|r and |cRXP_ENEMY_Spiders|r as you pass through Loch Modan. Loot their sausage ingredients; finish any missing ingredients after the later Filthy Paws turn-in
    .collect 3172,3,418,1 >> Collect |cRXP_LOOT_[Boar Intestines]|r
    .collect 3173,3,418,1 >> Collect |cRXP_LOOT_[Bear Meat]|r
    .collect 3174,3,418,1 >> Collect |cRXP_LOOT_[Spider Ichor]|r
step << Paladin
    >>Buy 4 [Simple Wood] for a Camp Chair and two Basic Campfire Kits, plus [Flint and Tinder]
    .collect 4470,4 >> Collect |cRXP_LOOT_[Simple Wood]|r
    .collect 4471,1 >> Collect |cRXP_LOOT_[Flint and Tinder]|r
step
    #optional
    #completewith next
    .goto 1432,35.273,47.75,10 >> Exit the Stoutlager Inn
step
    #label honor-students
    .goto 1432,37.17,47.94,8,0
    .goto 1432,37.02,47.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .target Brock Stoneseeker
    .accept 6387 >> Accept Honor Students
step
    #optional
    #label algaz
    #completewith stormpike1
    .goto 1432,23.49,18.008
    .subzone 925 >> Travel to Algaz Station
step
    #optional
    #requires algaz
    #completewith stormpike1
    .goto 1432,23.49,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Enter the Bunker. Go to the top floor
step
    #label stormpike1
    .goto 1432,24.77,18.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r inside the bunker
    .target Mountaineer Stormpike
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
step
    #completewith next
    .goto 1432,18.48,17.82,15,0
    .goto 1426,84.37,31.07,15 >> Travel toward |cRXP_FRIENDLY_Pilot Hammerfoot|r through the North Gate Pass
step
    .goto 1426,83.89,39.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .accept 419 >> Accept The Lost Pilot
step
    .goto 1426,79.67,36.17
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto 1426,78.97,37.14
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Mangy Claw|r
    .complete 417,1
    .mob Mangeclaw
step
    .goto 1426,83.89,39.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .turnin 417,1 >> Turn in A Pilot's Revenge << !Warrior
    .turnin 417,2 >> Turn in A Pilot's Revenge << Warrior
step
    #completewith fly-if
    .hs >> Hearth to Thelsamar
    .cooldown item,6948,>2,1
step
    .goto 1432,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
    .zoneskip Ironforge
    #label fly-if
    .goto 1432,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .fly Ironforge >> Fly to Ironforge
step << Warrior/Paladin
    .train 7752,1 >> Train Slitherskin Mackerel
    .goto Ironforge,48.4,6.6
    >>Buy Recipe: Slitherskin Mackerel from Tansy Puddlefizz for your early Attack Power food.
    .collect 6326,1 >> Collect |cRXP_LOOT_[Recipe: Slitherskin Mackerel]|r
    .target Tansy Puddlefizz
step << Warrior/Paladin
    .skill cooking,<1,1
    .use 6326 >> Use |cRXP_LOOT_[Recipe: Slitherskin Mackerel]|r
    .train 7752 >> Learn Slitherskin Mackerel
step << Warrior/Paladin
    .train 7753,1 >> Train Longjaw Mud Snapper
    .goto Ironforge,48.4,6.6
    >>Buy Recipe: Longjaw Mud Snapper from Tansy Puddlefizz. Keep it until Cooking 50 if you cannot learn it yet.
    .collect 6328,1 >> Collect |cRXP_LOOT_[Recipe: Longjaw Mud Snapper]|r
    .target Tansy Puddlefizz
step << Warrior/Paladin
    .skill cooking,<50,1
    .use 6328 >> Use |cRXP_LOOT_[Recipe: Longjaw Mud Snapper]|r
    .train 7753 >> Learn Longjaw Mud Snapper
step << Paladin
    #label paladin-linen-ready
    >>Keep 10 |cRXP_LOOT_Linen Cloth|r for The Tome of Divinity. Get any missing cloth from Warrior or buy it at the Auction House before starting the Ironforge quest chain
    .collect 2589,10 >> Collect |cRXP_LOOT_[Linen Cloth]|r
step << Paladin
    .goto 1455,23.13,6.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r in the Mystic Ward
    .target Brandur Ironhammer
    .accept 2999 >> Accept Tome of Divinity
step << Paladin
    #completewith divinity-tiza-start
    .goto Ironforge,25.4,2.676,10,0
    .goto Ironforge,23.621,2.544,10,0
    .goto Ironforge,22.014,4.533,10,0
    .goto Ironforge,21.831,7.651,10,0
    .goto Ironforge,23.766,11.636,10,0
    .goto Ironforge,27.622,12.177,12 >> Take the stairs to Tiza Battleforge upstairs
step << Paladin
    #label divinity-tiza-start
    .goto Ironforge,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
    .target Tiza Battleforge
    .turnin 2999 >> Turn in Tome of Divinity
    .accept 1645 >> Accept The Tome of Divinity
    .turnin 1645 >> Turn in The Tome of Divinity
step << Paladin
    >>Use |cRXP_LOOT_The Tome of Divinity|r to start the next quest
    .use 6916 >> Use |cRXP_LOOT_[Tome of Divinity]|r
    .accept 1646 >> Accept The Tome of Divinity
step << Paladin
    .goto Ironforge,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .target Tiza Battleforge
    .turnin 1646 >> Turn in The Tome of Divinity
    .accept 1647 >> Accept The Tome of Divinity
step << Paladin
    .line Ironforge,21.75,51.733,26.021,68.382,31.352,77.807,42.944,84.113
    .goto Ironforge,21.75,51.733,0
    .goto Ironforge,26.021,68.382,0
    .goto Ironforge,42.944,84.113,0 >> Find |cRXP_FRIENDLY_John Turner|r patrolling the outer ring between the Stonefire Tavern and the Visitor's Center. Give him 10 |cRXP_LOOT_Linen Cloth|r
    .turnin 1647 >> Turn in The Tome of Divinity
    .accept 1648 >> Accept The Tome of Divinity
    .turnin 1648 >> Turn in The Tome of Divinity
    .accept 1778 >> Accept The Tome of Divinity
    .unitscan John Turner
    .target John Turner
step << Paladin
    #completewith divinity-tiza-return
    .goto Ironforge,25.4,2.676,10,0
    .goto Ironforge,23.621,2.544,10,0
    .goto Ironforge,22.014,4.533,10,0
    .goto Ironforge,21.831,7.651,10,0
    .goto Ironforge,23.766,11.636,10,0
    .goto Ironforge,27.622,12.177,12 >> Return upstairs to Tiza Battleforge
step << Paladin
    #label divinity-tiza-return
    .goto Ironforge,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .target Tiza Battleforge
    .turnin 1778 >> Turn in The Tome of Divinity
    .accept 1779 >> Accept The Tome of Divinity
step << Paladin
    .goto 1455,23.54,8.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r upstairs. Keep the |cRXP_LOOT_Symbol of Life|r for the Dun Morogh detour after Banner of the Fallen in the next Loch Modan visit
    .target Muiredon Battleforge
    .turnin 1779 >> Turn in The Tome of Divinity
    .accept 1783 >> Accept The Tome of Divinity
step << Paladin
    .goto Ironforge,39.8,32.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthus Stoneflayer|r after reaching 20 Skinning to learn [Camp Chair]
    .target Balthus Stoneflayer
    .turnin 96056 >> Turn in Camping 101: Skinning
step
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455,51.52,26.31,10 >> Travel toward |cRXP_FRIENDLY_Golnir Bouldertoe|r inside the building
step
    .goto 1455,51.52,26.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
    .target Golnir Bouldertoe
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.55,57.49,12 >> Travel toward |cRXP_FRIENDLY_Senator Barin Redstone|r
step
    .goto Ironforge,39.55,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .turnin 291 >> Turn in The Reports
step << !Paladin
    #ah
    #optional
    .goto Ironforge,25.8,75.5,-1
    .goto Ironforge,24.2,74.6,-1
    .goto Ironforge,23.8,71.8,-1 >> At the Ironforge Auction House, buy missing materials for the profession training below. The departure module afterward handles the full camp-material reserves
    .collect 2318,5 >> Collect |cRXP_LOOT_[Light Leather]|r << Warrior
    .collect 765,16 >> Collect |cRXP_LOOT_[Silverleaf]|r << Warlock
    .collect 2447,4 >> Collect |cRXP_LOOT_[Peacebloom]|r << Warlock
    .collect 2449,6 >> Collect |cRXP_LOOT_[Peacebloom]|r << Warlock
    .collect 6291,2 << Warlock
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Warrior
    .goto Ironforge,39.8,33.6
    >>Convert the saved Ruined Leather Scraps into Light Leather until you reach 20 Leatherworking. Keep at least 5 Light Leather for the Camp Tent
    .skill leatherworking,20
step << Warrior
    .goto Ironforge,39.8,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta Finespindle|r . Learn [Camp Tent] directly from the trainer after reaching 20 Leatherworking
    .target Gretta Finespindle
    .turnin 96031
step
    .goto 1455,55.5,47.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r |cRXP_WARN_Do NOT fly anywhere|r
    .target Gryth Thurden
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Train Daggers, Thrown, and 2h Maces. Guns training is saved for the Ironforge visit before Halls of Thanes
    .target Bixi Wobblebonk
    .train 1180 >> Train Daggers
    .target +Bixi Wobblebonk
    .goto 1455,62.24,89.63
    .train 199 >> Train 2h Maces
    .goto 1455,61.18,89.51
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy the|r [Keen Throwing Knives] |cRXP_BUY_from her|r
    .target Brenwyn Wintersteel
    .collect 3107,1 >> Collect |cRXP_LOOT_[Keen Throwing Knife]|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior
    .itemcount 3107,>=1
    .xp <11,1
    #optional
    #completewith drt
    >>|cRXP_WARN_Equip the|r [Keen Throwing Knives]
    .use 3107 >> Use |cRXP_LOOT_[Keen Throwing Knife]|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warlock
    .goto Ironforge,66.6,55.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Berryfizz|r
    .target Tally Berryfizz
    .train 2259 >> Train Alchemy
step << Warlock
    .goto Ironforge,66.6,55.2
    .target Soolie Berryfizz
    .collect 3371,22 >> Collect |cRXP_LOOT_[Empty Vial]|r
step << Warlock
    .goto Ironforge,66.6,55.2
    >>On this second Ironforge visit, craft only enough [Elixir of Minor Force] and [Minor Arcane Elixir] to reach 15 Alchemy for the recipe training. The city-supplies module afterward replaces the materials you spend
    >>These recipes turn yellow/green, so extra crafts may be needed. Use surplus gathered herbs or buy only the shortfall; stop at 15
    .skill alchemy,15 >> Reach 15 Alchemy before training Minor Strength
    .collect 247755,10
    .collect 247754,4
step << Warlock
    .goto Ironforge,66.6,55.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tally Berryfizz|r now that you have 15 Alchemy
    .target Tally Berryfizz
    .train 2329 >> Train Elixir of Minor Strength
step << Warrior
    .goto Ironforge,60,44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tilli Thistlefuzz|r downstairs. Buy [Formula: Minor Wizard Oil] for 5 silver if you have not learned it
    .target Tilli Thistlefuzz
    .collect 20758,1 >> Collect |cRXP_LOOT_[Formula: Minor Wizard Oil]|r
    .use 20758 >> Use |cRXP_LOOT_[Formula: Minor Wizard Oil]|r
    .train 25124,1 >> Train Minor Wizard Oil
step << Paladin
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buliwyf Stonehand|r inside before taking the Deeprun Tram
    .target Buliwyf Stonehand
    .train 197 >> Train 2h Axes
step
    #label drt
    #completewith tram-end
    .goto 1455,78,51.4
    .subzone 2257 >> Enter the Deeprun Tram
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .target Monty
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use the [Rat Catcher's Flute] on |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1
    .macro Rat Catcher's Flute,133942 >>/targetexact Deeprun Rat\n/use item:17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .target Monty
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> Accept Me Brother, Nipsy
step
    .subzoneskip 2257,1
    #label tram-end
    >>|cRXP_WARN_Take the Deeprun Tram to the Stormwind side|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r on the middle platform on the Stormwind side of the Deeprun Tram
    .target Nipsy
    .turnin 6662 >> Turn in Me Brother, Nipsy
step
    #optional
    #completewith order
    .abandon 6662 >> Abandon Me Brother, Nipsy
step
    .isOnQuest 1338
    #optional
    #completewith order
    .zone Stormwind City >> Enter Stormwind
step
    #label order
    .goto 1453,64.62,37.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .turnin 1338 >> Turn in Stormpike's Order
step
    .zoneskip Stormwind City,1
    .itemcount 4371,<1
    .isQuestTurnedIn -174
    .goto 1453,62.4,29.88
    >>Check |cRXP_FRIENDLY_Billibub Cogspinner|r in the Dwarven District for a |cRXP_BUY_Bronze Tube|r. Keep one per player for Look to the Stars at level 27; trade party stock before buying more
    >>Limited supply: continue if he is out of stock. Keep any tube until the level-27 Darkshire visit
    .vendor >> Check Bronze Tube stock
    .target Billibub Cogspinner
step
    .goto 1453,59.72,33.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .accept 353 >> Accept Stormpike's Delivery
step << Paladin
    .isQuestAvailable 399
    .goto 1453,57.74,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .target Baros Alexston
    .accept 399 >> Accept Humble Beginnings
step << Paladin
    #optional
    #completewith next
    .goto 1453,52.57,50.36,20 >> Travel to the Stormwind Cathedral
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .target Arthur the Faithful
    .goto 1453,49.71,48.63,10,0
    .goto 1453,49.6,49.83
    .trainer >> Train your class spells
step << Warrior
    .goto 1453,78.54,63.23,15,0
    .goto 1453,81.74,59.54,15,0
    .goto 1453,80.42,59.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .target Ilsa Corbin
    .trainer >> Train your class spells
    .accept 1638 >> Accept A Warrior's Training
step << Warrior
    #optional
    #completewith next
    .goto 1453,76.06,64.35,17,0
    .goto 1453,75.15,55.31,12 >> Enter the Tavern
step << Warrior
    .goto 1453,77.13,53.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto 1453,76.77,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
step << Warrior
    .goto 1453,76.77,52.54
    >>Defeat |cRXP_ENEMY_Bartleby|r
    .complete 1640,1
    .mob Bartleby
step << Warrior
    .goto 1453,76.77,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    .goto 1453,77.13,53.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .turnin 1665 >> Turn in Bartleby's Mug
    .accept 1666 >> Accept Marshal Haggard for the Elwynn Forest visit
step << Warlock
    #optional
    #completewith next
    .goto 1453,42.27,81.7,20,0
    .goto 1453,40.72,84.87,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453,39.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .target Ursula Deline
    .trainer >> Train your class spells
step << Warlock
    .goto 1453,39.22,85.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r to start the Voidwalker chain. Continue it in Elwynn Forest with the next guide
    .target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step
    .goto 1453,63.88,69.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .trainer >>Train 1h Swords and Staves << Warlock
    .train 201 >> Train 1h Swords << Warrior
    .train 1180 >> Train Daggers << Warrior
    .trainer >>Train 2h Swords << Warrior/Paladin
]])
