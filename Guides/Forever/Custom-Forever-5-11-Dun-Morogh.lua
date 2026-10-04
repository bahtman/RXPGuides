RXPGuides.RegisterGuide([[

#forever
#season 0,1
#version 11
<< Alliance Gnome/Dwarf (Priest/Warrior/Warlock)
#group Forever Trio Launch
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#displayname 5-11 Dun Morogh
#next 11-12 Elwynn Forest;12-15 Loch Modan << !Warlock
#defaultfor Gnome/Dwarf (Priest/Warrior/Warlock)

-- Warrior keeps Blacksmithing and Enchanting, plus Fishing for Fish Bowls.
-- Priest keeps Skinning for Camp Chairs. Warlock replaces Herbalism with
-- Leatherworking and Alchemy on the second Ironforge visit for tents and elixirs.
-- Warrior's first Ironforge visit uses one temporary slot: LW -> Tailoring -> Alchemy -> Enchanting.

step << Warlock
    #optional
    #completewith flyIF
    >>Keep Find Herbs active and gather Silverleaf, Peacebloom, and Earthroot along the party's route. Earthroot requires 15 Herbalism
    >>Save 2 Silverleaf and 4 Peacebloom for Warrior's first Alchemy stop; keep surplus herbs for your own Alchemy stop on the second Ironforge visit. Stay close enough to receive quest kill credit while gathering
    +Gather herbs along the route; save the first batch for Warrior and the rest for your own Alchemy

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Save all the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for Stocking Jetsteam and then for leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_You need 10|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Auberdine later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    .goto 1426,38.677,60.561,60,0
    .goto 1426,35.942,52.030,60,0
    .goto 1426,31.53,44.65
    >>Grind north toward the Brewnall Village quest givers. Warlock picks up Frosthowl and shares it with the party before the deathskip
    .xp 5+1055 >> Grind to 1055+/2800 XP on |cRXP_ENEMY_Crag Boars|r before the deathskip << Priest
    .xp 5+1325 >> Grind to 1325+/2800 XP on |cRXP_ENEMY_Crag Boars|r before the deathskip << !Priest
-- Level 6 after: The Adventurer (410), The Great Outdoors (410), Senir's Observations (340), Camping 101: Cooking (270), and about 45 exploration XP.
-- Priest also gets 270 XP from Garments of the Light.
step << Warlock
    .goto 1426,31.53,44.65
    >>Talk to |cRXP_FRIENDLY_Gretta Ganter|r before the deathskip. Share Frosthowl with Warrior and Priest as soon as you accept it
    .accept 98326 >> Accept Frosthowl
    .target Gretta Ganter
step << Warrior/Priest
    .goto 1426,31.53,44.65
    >>Accept Warlock's share of Frosthowl. If the share is missed, take it from |cRXP_FRIENDLY_Gretta Ganter|r before the party deathskip
    .accept 98326 >> Accept Frosthowl
    .target Gretta Ganter
step << Warrior
    .goto 1426,35.48,40.22
    >>Talk to |cRXP_FRIENDLY_Paxton Ganter|r on Iceflow Lake. Learn Fishing now so you can pick up Camping 101 in Kharanos
    .train 7620 >> Train Fishing
    .target Paxton Ganter
step
    #softcore
    #completewith next
    >>|cRXP_WARN_Make sure your subzone is NOT Coldridge Pass|r
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
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
    .complete 96608,2 -- Gain boosted rest buff 1/1
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96608 >>Turn in The Great Outdoors
    .accept 96629 >>Accept Camping 101: Cooking
    .accept 96056 >>Accept Camping 101: Skinning << Priest
    .accept 96050 >>Accept Camping 101: Fishing << Warrior
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
    .turnin 2160,1 >> Turn in Supplies to Tannok << Warrior/Rogue
    .turnin 2160,2 >> Turn in Supplies to Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol::1226|r 
    .target Maxan Anvol::1226
    .accept 5625 >> Accept Garments of the Light << Priest
    .accept 99158 >>Accept Dawn in the Mountains
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .target Gremlock Pilsnor::1699
    .train 2550 >> Train |T133971:0|t[Cooking]
    .turnin 96629 >>Turn in Camping 101: Cooking
step << Priest
    .goto 1426/0,-453.81,-5668.73
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_and then|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on |cRXP_FRIENDLY_Mountaineer Dolf|r outside|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .turnin 5625 >> Turn in Garments of the Light
    .target Maxan Anvol
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
step << Warrior/Priest/Warlock
    #optional
    #completewith next
    .goto 1426,45.695,51.911,20 >> Enter the Blacksmith building
step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r 
    .target Tognus Flintfire::1241
    .accept 98321 >>Accept Flintfire's Shipment
step << Warrior
    .goto 1426,45.344,51.936
    .collect 2840,9 >> Smelt all 9 Copper Bars. Keep the bars and Rough Stones for your own Blacksmithing
step << Warrior
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>Talk to |cRXP_FRIENDLY_Tognus Flintfire|r. Buy a Blacksmith Hammer from the nearby supplier if needed
    .train 2018 >> Train Blacksmithing
    .collect 5956,1 --Blacksmith Hammer
    .target Tognus Flintfire
step << Warrior
    .goto 1426,45.344,51.936
    >>After smelting, craft Rough Sharpening Stone once, then use all remaining Rough Stones for Rough Weightstones
    +Finish the sharpening-stone craft and all weightstones
step << Warrior
    .goto 1426,45.344,51.936
    >>Craft Rough Copper Vest twice, spending 8 Copper Bars. Keep all resulting chests for disenchanting and the remaining bar for the Copper Rod
    +Complete both Rough Copper Vest crafts
step << Warrior
    .goto 1426,45.344,51.936
    >>Reach 10 Blacksmithing from the stone and chest crafts. If short, gather extra Rough Stones before dropping Mining and make more weightstones
    .skill blacksmithing,10
step << Warrior
    .goto 1426,45.344,51.936
    .train 1245287 >> Learn Copper Rod from Tognus Flintfire
    .target Tognus Flintfire
step << Warrior
    .goto 1426,45.344,51.936
    >>Craft Copper Rod once with the final Copper Bar
    .collect 6217,1 --Copper Rod
step << Warrior
    .goto Dun Morogh,45.2,51.8
    >>Sell your Mining Pick to |cRXP_FRIENDLY_Gamili Frosthide|r now that all 9 bars are smelted
    .vendor >> Sell the Mining Pick
    .target Gamili Frosthide
step << Warrior
    .goto Dun Morogh,45.2,51.8
    >>Talk to |cRXP_FRIENDLY_Gamili Frosthide|r in the Kharanos blacksmith building. Buy [Thin Cloth Bracers] for 24 copper before discounts if you have no wrist item. These are the cheapest option for Enchanting in Ironforge
    >>If you already have bracers in your bags, equip those instead
    .equip 9 >> Equip a wrist item
    .target Gamili Frosthide
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r and |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Don't kill any |cRXP_ENEMY_Young Black Bears|r en-route|r
    .accept 317 >> Accept Stocking Jetsteam
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
    #completewith RumbleshotAmmo
    >>Kill |cRXP_ENEMY_Young Black Bears|r. Loot them for their |cRXP_LOOT_Thick Bear Fur|r
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Large Crag Boar
    .mob +Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Large Crag Boar
    .mob +Crag Boar


step << Warrior/Priest/Warlock
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Turn in Dawn in the Mountains
step << Warrior/Priest/Warlock
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Go up the dirt path
    .isQuestAvailable 314
step << Warrior/Priest/Warlock
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .mob Vagash
step << Warrior/Priest/Warlock
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step << Warrior/Priest/Warlock
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Watch the video below before you attempt to kill |cRXP_ENEMY_Vagash|r. It can be soloed on any class|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Warrior/Priest/Warlock
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    >>Priest: choose the [Coldridge Hammer] reward << Priest
    .turnin 314 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step << Priest/Warlock
    .goto 1426,63.80,49.00
    >>Sell the [Coldridge Hammer] and your spare bag to |cRXP_FRIENDLY_Turuk Amberstill|r at the ranch
    .vendor >> Sell the mace and spare bag
    .target Turuk Amberstill
step << Warrior/Priest/Warlock
    .goto 1426/0,-1304.71,-5513.86,30
    +After Vagash: Warlock gives Warrior 2 Silverleaf and 4 Peacebloom. Priest gives Warrior all Ruined Leather Scraps, Light Leather, and spare money. Priest and Warlock trade all Linen Cloth to Warrior before the first Ironforge visit
    >>Warrior will make 2 Elixirs of Minor Force and 4 Minor Arcane Elixirs (2 per caster). Keep your own copper chests and rod for Enchanting, and keep the Blacksmith Hammer for boots and maul later
step << Priest/Warlock
    .deathskip >> Hearth to Kharanos if ready. Otherwise die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .subzoneskip 131 --Kharanos

step << Warrior
    #completewith WarriorThrown
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Travel to Ironforge
step << Warrior
    >>Abandon |T136248:0|t[Mining] after smelting all 9 bars. Keep Blacksmithing throughout this visit; rotate only the other profession slot
    .skill mining,<1
step << Warrior
    .goto Ironforge,31.0,27.0
    >>Buy 2 Maple Seeds from |cRXP_FRIENDLY_Ginny Longberry|r for the two caster oils
    .collect 17034,2 --Maple Seed (2)
    .target Ginny Longberry
step << Warrior
    .goto Ironforge,39.8,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fimble Finespindle|r
    .train 2108 >> Train |T136247:0|t[Leatherworking]
    .target Fimble Finespindle
step << Warrior
    .goto Ironforge,39.8,33.6
    >>Buy [Coarse Thread] from |cRXP_FRIENDLY_Bombus Finespindle|r for 3 [Handstitched Leather Vest] crafts.
    .collect 2320,3 --Coarse Thread (3)
    .target Bombus Finespindle
step << Warrior
    >>Convert the saved Ruined Leather Scraps into [Light Leather], then craft [Handstitched Leather Vest] three times. Each craft uses 3 Light Leather and 1 Coarse Thread and makes two vests
    >>Keep every green vest for disenchanting and save surplus leather for the later camp and Blacksmithing crafts
    .collect 5957,6 --Handstitched Leather Vest: three crafts (6)
step << Warrior
    >>Abandon Leatherworking now to free the slot for Tailoring. Keep Blacksmithing, the green vests, and surplus leather; Warlock will learn permanent Leatherworking on the second visit
    .skill leatherworking,<1
step << Warrior
    .goto Ironforge,43.2,29.0
    >>Talk to |cRXP_FRIENDLY_Jormund Stonebrow|r inside Stonebrow's Clothier. Train Tailoring to make Linen Bags from the cloth traded after Vagash
    .train 3908 >> Train |T136249:0|t[Tailoring]
    .target Jormund Stonebrow
step << Warrior
    .goto Ironforge,43.2,29.0
    >>Turn all the Linen Cloth from the party into [Bolt of Linen Cloth]. Each bolt uses 2 Linen Cloth; each bag needs 3 bolts
    +Craft as many [Bolt of Linen Cloth] as your Linen Cloth allows
step << Warrior
    .goto Ironforge,43.2,29.0
    >>Buy 3 [Coarse Thread] from |cRXP_FRIENDLY_Uthrar Threx|r for every Linen Bag you can make from your bolts
    +Buy enough Coarse Thread for all possible Linen Bags
    .target Uthrar Threx
step << Warrior
    .goto Ironforge,43.2,29.0
    >>Craft as many [Linen Bags] as possible. Each bag uses 3 [Bolt of Linen Cloth] and 3 [Coarse Thread] (6 Linen Cloth total)
    +Craft Linen Bags until fewer than 3 bolts remain
step << Warrior
    >>After crafting the Linen Bags, abandon Tailoring to free the slot for Alchemy. Keep Blacksmithing
    .skill tailoring,<1
step << Warrior
    .goto Ironforge,66.6,55.2
    .train 2259 >> Train Alchemy with Tally Berryfizz before visiting Enchanting
    .target Tally Berryfizz
step << Warrior
    .goto Ironforge,66.6,55.2
    >>Buy at least 8 Empty Vials from Soolie Berryfizz: 6 for the elixir crafts and 2 for the oils
    .collect 3371,8 --Empty Vial (8)
    .target Soolie Berryfizz
step << Warrior
    .goto Ironforge,66.6,55.2
    >>Craft Elixir of Minor Force twice and Minor Arcane Elixir four times, using Warlock's 2 Silverleaf and 4 Peacebloom. Each craft makes one elixir
    .collect 247755,2 --Elixir of Minor Force (2)
    .collect 247754,4 --Minor Arcane Elixir (4)
step << Warrior
    >>After crafting all 6 elixirs, abandon Alchemy to free the slot for Enchanting. Keep Blacksmithing
    .skill alchemy,<1
step << Warrior
    .goto Ironforge,60.4,45.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .train 7411 >> Train |T136244:0|t[Enchanting]
    .target Gimble Thistlefuzz
step << Warrior
    >>Disenchant your own copper chests and all green leather vests. Reserve 2 Strange Dust for the two caster oils before converting surplus dust into Motes
    +Disenchant the copper chests and leather vests
step << Warrior
    .goto Ironforge,60.0,44.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tilli Thistlefuzz|r downstairs. Buy [Formula: Minor Wizard Oil] for 5 silver. Use Strange Dust from the chest disenchants
    .collect 20758,1 --Formula: Minor Wizard Oil (1)
    .target Tilli Thistlefuzz
    .itemcount 17034,1 --Maple Seed
step << Warrior
    .goto Ironforge,60.4,45.6
    >>Buy 2 |T132867:0|t[Lesser Magic Essence] and 2 |T135435:0|t[Simple Wood] from the nearby Enchanting suppliers; use the |T133942:0|t[Copper Rod] you crafted in Kharanos
    >>Reserve 2 Strange Dust for the oils. Convert surplus dust into Motes; buy only the missing Motes needed for the rod and Enchanting skill-ups
    .collect 10938,2 --Lesser Magic Essence (2)
    .collect 6217,1 --Copper Rod (1)
    .collect 4470,2 --Simple Wood (2)
step << Warrior
    >>Craft a |T135225:0|t[Runed Copper Rod]
    .collect 6218,1 --Runed Copper Rod (1)
step << Warrior
    >>Reserve two Strange Dust for the caster oils. Use [Dust to Motes] on any spare dust after making the rod. Each conversion gives an Enchanting point and 4 Motes
    +Convert one spare Strange Dust into Motes if you have it
step << Warrior
    >>Enchant bracers with |T135913:0|t[Enchant Bracer - Inferior Stamina] only until you reach 5 Enchanting, the requirement for Minor Wizard Oil
    .skill enchanting,5
step << Warrior
    >>Use [Formula: Minor Wizard Oil] to learn the recipe
    .train 25124 >>Learn [Minor Wizard Oil]
    .use 20758
step << Warrior
    >>Craft [Minor Wizard Oil] using the Runed Copper Rod, Strange Dust, Maple Seeds, and Empty Vials. Make 2 oils, one for each caster
    .collect 20744,2 --Minor Wizard Oil (2)
step << Warrior
    >>Enchant bracers with |T135913:0|t[Enchant Bracer - Inferior Stamina] only if you still need skill points to reach 10 Enchanting
    .skill enchanting,10
step << Warrior
    .goto Ironforge,60.4,45.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimble Thistlefuzz|r
    .train 14293 >> Train |T135147:0|t[Lesser Magic Wand]
    .target Gimble Thistlefuzz
step << Warrior
    >>Craft two |T135139:0|t[Lesser Magic Wand]
    .collect 11287,2 --Lesser Magic Wand (2)
step << Warrior
    #label WarriorThrown
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to or |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Train 2h Maces from |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .target Buliwyf Stonehand
    
step << Warrior
    .hs >> Hearth to Kharanos
step << Warrior
    +Regroup in Kharanos: give Priest and Warlock 1 Minor Wizard Oil and 2 Minor Arcane Elixirs each. Warrior keeps 2 Elixirs of Minor Force. Hold the consumables until after the Frostmane Hold deathskip
step << Priest/Warlock
    >>Priest: keep Skinning and save new Ruined Leather Scraps and Light Leather for Warlock to level Leatherworking on the second Ironforge visit. Reserve 3 Light Leather for your Camp Chair
    +Save scraps and leather for Warlock's Leatherworking

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
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98319 >>Turn in Secure the Mountain
    .accept 98323 >>Accept Secure the Mountain
step
    >>Kill |cRXP_ENEMY_Young Black Bears|r or |cRXP_ENEMY_Ice Claw Bears|r. Loot them for their |cRXP_LOOT_Thick Bear Fur|r
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .mob +Young Black Bear
    .mob +Ice Claw Bears
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
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
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step
    #completewith next
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear::1377|r
    .target Pilot Stonegear::1377
    .turnin 313 >>Turn in The Grizzled Den
step
    .goto 1426/0,-632.100,-5466.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz::1378|r
    .target Pilot Bellowfiz::1378
    .turnin 317 >>Turn in Stocking Jetsteam
    .accept 318 >>Accept Evershine
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .turnin 98321 >>Turn in Flintfire's Shipment
step
    .goto 1426/0,-501.500,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r 
    .target Senir Whitebeard::1252
    .turnin 98323 >>Turn in Secure the Mountain
step
    .goto 1426/0,-501.500,-5643.900
    >>Talk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r if you are level 7
    .accept 287 >>Accept Frostmane Hold
    .target Senir Whitebeard::1252
    .xp <7,1
step
    .goto 1426/0,-498.400,-5648.400
    +Cook any |T133970:0|t[Chunks of Boar Meat] into |T133974:0|t[Roasted Boar Meat] at the nearby campfire
    .usespell 2550
    .itemcount 769,1 --Chunk of Boar Meat (1+)
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
step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >> Travel toward |cRXP_FRIENDLY_Tundra MacGrann|r
step
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
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    .subzone 137 >> Travel to Brewnall Village
step << !Mage !Priest !Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    .goto 1426/0,315.42,-5372.02
    >>Cook at least 1 |T133974:0|t[Roasted Boar Meat] at the nearby fire
    .usespell 2550
    .collect 2681,1 --Roasted Boar Meat (1)
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .isOnQuest 318
step
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r and |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Accept Bitter Rivals
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
step << Warrior
    .goto 1426,31.53,44.65
    >>Buy a Fishing Pole and a Shiny Bauble from Gretta Ganter
    .collect 6256,1 --Fishing Pole
    .collect 6529,1 --Shiny Bauble
    .target Gretta Ganter
step << Warrior
    .goto 1426,35.48,40.22
    >>Go straight to Paxton Ganter. Equip the pole and apply the lure, then fish to 20 Fishing
    >>Keep ALL fish for crafting Fish Bowls, especially Raw Brilliant Smallfish. Kill needed leopards, boars, and bears along the way
    .skill fishing,20
    .use 6529
    .target Paxton Ganter
step << Warrior
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
step << Warrior
    #optional
    #completewith TramEnd
    >>Keep your fish for Fish Bowls. Each craft needs 1 Raw Brilliant Smallfish and 1 Empty Vial
    +Save all fish for the camp supplies
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
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
    .goto 1426/0,-521.97,-5597.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_BUY_Buy up to 2|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_(6-slot) if needed|r
    .vendor
    .collect 4496,2 --Small Brown Pouch (2)
    .target Kreg Bilmn
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .turnin 5625 >> Turn in Garments of the Light
    .trainer >> Train your class spells
    .target Maxan Anvol
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .trainer >> Train your class spells
    .target Granis Swiftaxe
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    .goto 1426/0,-501.500,-5643.900
    >>Talk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r if you skipped Frostmane Hold earlier
    .accept 287 >>Accept Frostmane Hold
    .target Senir Whitebeard::1252

step
    .goto 1426/0,315.28,-5378.39
    >>Finish any remaining objectives for A Favor for Evershine, then talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
    .target Rejold Barleybrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r and |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
    .goto 1426/0,315.28,-5378.39
    .target +Rejold Barleybrew
    .turnin 311 >> Turn in Return to Marleth
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    #completewith Headhunters
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Run up the side of the cave entrance. Jump down into Frostmane Hold
    .isOnQuest 287
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
    #softcore
    #completewith next
    >>After exploring Frostmane Hold and finishing the Frostmane Headhunters, die inside the cave and respawn at the Spirit Healer near Kharanos
    .deathskip >> Deathskip out of Frostmane Hold
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .goto 1426/0,-531.23,-5601.59
    .subzone 131 >> Walk back to Kharanos
step
    .goto 1426/0,-531.23,-5601.59
    .subzone 131 >> Return to Kharanos after Frostmane Hold
--XX if they don't somehow meet xp gate by Kharanos then wcyd

step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 287 >>Turn in Frostmane Hold
step << !Hunter
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
    .xp 8+4525 >> Grind to 4525+/5400xp
    .isQuestAvailable 320
step << !Hunter
    #optional
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
    .xp 9 >> Grind to level 9

step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .accept 291 >>Accept The Reports
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>Talk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r before leaving Kharanos for eastern Dun Morogh
    .trainer >> Train your class spells, including Fear
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
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
    .target Pilot Bellowfiz
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
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_You need 10|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Auberdine later|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
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
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    #optional
    #completewith next
    .goto 1426/0,-1565.58,-5666.24,60 >> Travel to Gol'Bolar Quarry
    .subzoneskip 134
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto 1426/0,-1576.47,-5673.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Buy up to 10|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if needed|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Buy up to 5|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him if needed|r << !Warrior !Rogue !Shaman
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.96,-5714.73
    .accept 432 >> Accept Those Blasted Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
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
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Turn in The Public Servant
    .goto 1426/0,-1579.96,-5714.73
    .target +Foreman Stonebrow  
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
    #completewith OII
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r. Loot them for the |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r]
    .use 268548 >> |cRXP_WARN_Use the|r |T132621:0|t[|cRXP_LOOT_Empty Powder Keg|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_NOTE: This item has a low drop rate. Skip this step if you do not find it by the time you are done with the|r |cRXP_ENEMY_Dark Iron Spies|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Accept Stolen Blasting Powder
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    .use 274268 >>|cRXP_WARN_Use the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r] |cRXP_WARN_to start the quest|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95213 >> Turn in Stolen Blasting Powder
    .accept 95214 >> Accept Stolen Blasting Powder
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r
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
    >>Kill |cRXP_ENEMY_Rockjaw Ambushers|r. Loot them for their |cRXP_LOOT_Stolen Blasting Powder|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95214 >> Turn in Stolen Blasting Powder
    .target Quarrymaster Thesten
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
    .goto 1432/0,-2602.54,-5832.73
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
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Travel to Thelsamar
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Enter the Stoutlager Inn
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r inside
    .accept 418 >> Accept Thelsamar Blood Sausages
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step << !Hunter
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from her|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_too from her if needed|r << !Rogue
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[Basic Campfires] |cRXP_WARN_on Boats to level your|r |T133971:0|t[Cooking] |cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label ThelsaHS
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r inside
    .home >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >> Exit the Stoutlager Inn
step << Dwarf/Gnome
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
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    #optional
    #label BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_You need 10|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Auberdine later|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_Don't go out of your way to complete this right now. You'll come back to Loch Modan soon|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
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
step << !Hunter
    #completewith next
    .goto 1432/0,-2503.500,-4815.300,15,0
    .goto 1426/0,-2353.100,-4897.100,15 >> Travel toward |cRXP_FRIENDLY_Pilot Hammerfoot|r through the North Gate Pass
step << !Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step << !Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step << !Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << !Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge << !Rogue
    .target Pilot Hammerfoot
step << !Hunter
    #completewith flyIF
    .hs >> Hearth to Thelsamar
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r inside
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf/Gnome
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
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06,10 >>Travel toward |cRXP_FRIENDLY_Golnir Bouldertoe|r inside the building
step << Dwarf/Gnome
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
step << Warrior/Priest/Warlock
    +Before shopping: Priest gives saved Ruined Leather Scraps to Warlock for Leatherworking. Split existing Light Leather: 3 for Priest's Camp Chair and 6 for Warrior's boots and maul. Warlock's Leatherworking skill-ups will supply his tent leather
step << Priest
    .goto Ironforge,39.8,32.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthus Stoneflayer|r after reaching 20 Skinning to learn [Camp Chair]
    .turnin 96056 >>Turn in Camping 101: Skinning
    .target Balthus Stoneflayer
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Do NOT fly anywhere|r
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Train Thrown and 2h Maces if you didn't earlier
    .train 2567 >> Train Thrown
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
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
    >>At the Ironforge Auction House, buy only missing |T134252:0|t[Light Leather]: Priest needs 3 for [Camp Chair]. Warlock will reserve 5 from his Leatherworking skill-up crafts for [Camp Tent]
    >>Warrior: buy Strange Dust only if the early disenchanting did not yield enough for both Minor Wizard Oils << Warrior
    >>Warlock: keep your gathered herbs and buy only the shortfall to 12 [Silverleaf], 12 [Peacebloom], and 6 [Earthroot]. Force/Arcane skill-ups near 15 may need extra herbs. Reserve 6 Silverleaf and 6 Earthroot for Minor Strength << Warlock
    .collect 2318,3 << Priest --Light Leather for Camp Chair (3)
    .collect 10940,1 << Warrior --Strange Dust (1)
    .collect 765,12 << Warlock --Silverleaf (12)
    .collect 2447,12 << Warlock --Peacebloom (12)
    .collect 2449,6 << Warlock --Earthroot (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Warlock
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>Count the Ruined Leather Scraps from Priest and buy only the shortfall to 57. Converting 3 scraps per craft lets you level Leatherworking from 1 to 20 and supplies Light Leather for the Camp Tent
    .collect 2934,57 --Ruined Leather Scraps for 19 Light Leather crafts (57)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Warrior
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>Buy the missing Blacksmithing materials for your own [Gemmed Copper Boots] and [Heavy Copper Maul]. Priest keeps his 3 chair leather; Warlock keeps his 5 tent leather separate
    .collect 2840,14 --Copper Bar: 2 for boots, 12 for maul
    .collect 818,2 --Tigerseye (2)
    .collect 774,2 --Malachite (2)
    .collect 2318,6 --Light Leather: 4 boots, 2 maul
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Warrior
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>Buy enough [Rough Stones] for the tram and Stormwind crafts. Count the stones already in your bags: (35 - your current Blacksmithing skill) + 8 is the minimum. Weightstone skill-ups are not guaranteed once the recipe turns yellow, so allow extra stones for reaching 35
    >>Keep 8 Rough Stones separate for four Rough Grinding Stone crafts in Stormwind
    +Have enough Rough Stones to reach 35 Blacksmithing, plus 8 reserved for grinding-stone crafts
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_to level your|r |T133971:0|t[Cooking] |cRXP_BUY_with later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for a faster turn in at Loch Modan shortly and to level your|r |T133971:0|t[Cooking] |cRXP_BUY_skill with:|r
    >>|T134342:0|t[Boar Intestines]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[Spider Ichor]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for a faster turn in at Loch Modan shortly:|r
    >>|T134342:0|t[Boar Intestines]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[Spider Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warrior
    .goto Ironforge,38.4,73.4
    >>Talk to |cRXP_FRIENDLY_Fillius Fizzlespinner|r near the Auction House. Buy one Empty Vial for each Raw Brilliant Smallfish you saved for Fish Bowls. Count any Empty Vials already in your bags
    +Have one Empty Vial per Raw Brilliant Smallfish
    .target Fillius Fizzlespinner
step << Priest
    .goto Ironforge,38.4,73.4
    >>Buy 4 |T135435:0|t[Simple Wood] for a Camp Chair and two Basic Campfire Kits, plus |T135237:0|t[Flint and Tinder] from |cRXP_FRIENDLY_Fillius Fizzlespinner|r
    .collect 4470,4 --Simple Wood (4)
    .collect 4471,1 --Flint and Tinder (1)
    .target Fillius Fizzlespinner
step << Warlock
    >>After buying the missing herbs for your elixirs, abandon Herbalism to make room for permanent Leatherworking and Alchemy. Keep all gathered herbs
    .skill herbalism,<1
step << Warlock
    .goto Ironforge,39.8,33.6
    >>Talk to |cRXP_FRIENDLY_Fimble Finespindle|r. Train Leatherworking for the Camp Tent and keep this profession
    .train 2108 >> Train |T136247:0|t[Leatherworking]
    .target Fimble Finespindle
step << Warlock
    .goto Ironforge,39.8,33.6
    >>Convert the saved Ruined Leather Scraps into Light Leather until you reach 20 Leatherworking. Keep at least 5 Light Leather for the Camp Tent
    .skill leatherworking,20
step << Warlock
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soolie Berryfizz|r in the same shop. Buy at least 24 [Empty Vials]: up to 6 Force, 12 Arcane, and 6 Minor Strength crafts
    .collect 3371,24 --Empty Vial (24)
    .target Soolie Berryfizz
step << Warlock
    .goto Ironforge,66.6,55.2
    >>Before leaving the trainer, craft 6 [Elixirs of Minor Force] and 12 [Minor Arcane Elixirs]. Each craft makes one elixir; save 6 Arcane elixirs for Priest and 6 for yourself
    >>Finish skill-ups below. Reserve 6 Silverleaf and 6 Earthroot for Minor Strength
    .collect 247755,6 --Elixir of Minor Force (6)
    .collect 247754,12 --Minor Arcane Elixir (12)
step << Warlock
    .goto Ironforge,66.6,55.2
    >>On this second Ironforge visit, finish leveling Alchemy to 15 using only [Elixir of Minor Force] and [Minor Arcane Elixir]. Keep 6 Silverleaf and 6 Earthroot for Minor Strength
    >>These recipes turn yellow/green, so extra crafts may be needed. Use surplus gathered herbs or buy only the shortfall; stop at 15
    .skill alchemy,15 >> Reach 15 Alchemy before training Minor Strength
step << Warlock
    .goto Ironforge,66.6,55.2
    >>Talk to |cRXP_FRIENDLY_Tally Berryfizz|r now that you have 15 Alchemy
    .train 2329 >>Train [Elixir of Minor Strength]
    .target Tally Berryfizz
step << Warlock
    .goto Ironforge,66.6,55.2
    >>Before leaving |cRXP_FRIENDLY_Soolie Berryfizz|r, keep 6 [Empty Vials] for the Minor Strength elixirs. Extra Alchemy skill-up crafts may have used some of the earlier 24-vial purchase; buy only the shortfall
    .collect 3371,6 --Empty Vials reserved for Minor Strength (6)
    .target Soolie Berryfizz
step << Warrior
    .goto Ironforge,50.4,43.0
    >>Buy 2 [Weak Flux] from |cRXP_FRIENDLY_Thurgrum Deepforge|r for the Heavy Copper Maul before leaving Ironforge
    .collect 2880,2 --Weak Flux (2)
    .target Thurgrum Deepforge
step << !Hunter
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Enter the Deeprun Tram
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step << !Hunter
    >>Use the |T133942:0|t[Rat Catcher's Flute] on |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> Accept Me Brother, Nipsy
    .target Monty
step << Warlock
    >>On the tram to Stormwind, craft [Elixir of Minor Strength] six times for six elixirs. Each craft makes one. Force and Arcane were already crafted at the trainer for skill-ups
    .collect 2454,6 --Elixir of Minor Strength (6)
step << Warrior
    #optional
    >>While riding the tram, craft Fish Bowls with your saved Raw Brilliant Smallfish and the extra Empty Vials. Each craft uses one fish and one vial
    +Craft Fish Bowls from the fish you caught at Iceflow Lake
step << Warrior
    >>On the tram, turn Rough Stones into Rough Weightstones until you reach 35 Blacksmithing. Save 8 Rough Stones for four Rough Grinding Stones after you train in Stormwind
    .skill blacksmithing,35
step << Priest
    >>On the tram, craft a [Camp Chair]. One craft makes two chairs
    .collect 279979,2 --Camp Chair (2)
step << Priest
    >>On the tram, craft two [Basic Campfire Kits] using your Cooking campfire recipe
    .collect 279981,2 --Basic Campfire Kit (2)
step << Warlock
    >>On the tram, craft a [Camp Tent]. One craft makes two tents
    .collect 279978,2 --Camp Tent (2)
step << Warrior/Priest/Warlock
    +On the tram, Warlock gives Warrior 5 Elixirs of Minor Force and 5 Elixirs of Minor Strength, and gives Priest 6 Minor Arcane Elixirs. Warlock keeps 6 Arcane elixirs. The first two Minor Wizard Oils were delivered in Kharanos. Keep Fish Bowls with Warrior, Camp Chairs with Priest, and Camp Tents with Warlock
step << !Hunter skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_On the Tram when it arrives:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_On the Tram when it arrives:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_On the Tram when it arrives:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the following items:|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label TramEnd
    >>|cRXP_WARN_Take the Deeprun Tram to the Stormwind side|r
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Tram to Stormwind City if needed|r << Rogue/Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r on the middle platform on the Stormwind side of the Deeprun Tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << !Hunter
    #optional
    #completewith Order
    .abandon 6662 >> Abandon Me Brother, Nipsy
step << !Hunter
    #optional
    #completewith Order
    .zone Stormwind City >> Enter Stormwind
    .isOnQuest 1338
step << Warrior
    .goto Stormwind City,63.6,36.7
    >>Talk to |cRXP_FRIENDLY_Therum Deepforge|r in the Dwarven District after reaching 35 Blacksmithing
    .train 1252229 >> Learn [Gemmed Copper Boots]
    .train 3320 >> Learn [Rough Grinding Stone]
    .target Therum Deepforge
step << Warrior
    .goto Stormwind City,63.6,36.7
    >>At the forge, craft your own [Gemmed Copper Boots] from 2 Copper Bars, 2 Tigerseyes, 2 Malachites, and 4 Light Leather. These boots bind on pickup
    .collect 250620,1 --Gemmed Copper Boots (1)
step << Warrior
    >>Equip your [Gemmed Copper Boots]
    .equip 8,250620 --Gemmed Copper Boots
step << Warrior
    .goto Stormwind City,63.6,36.7
    >>Craft [Rough Grinding Stone] four times from the 8 Rough Stones you saved. Each craft makes two stones; the boots and four grinding-stone crafts bring Blacksmithing from 35 to 40
    .skill blacksmithing,40
step << Warrior
    .goto Stormwind City,63.6,36.7
    >>Talk to |cRXP_FRIENDLY_Therum Deepforge|r after reaching 40 Blacksmithing
    .train 7408 >> Learn [Heavy Copper Maul]
    .target Therum Deepforge
step << Warrior
    .goto Stormwind City,63.6,36.7
    >>At the forge, craft your own [Heavy Copper Maul] from 12 Copper Bars, 2 Weak Flux, and 2 Light Leather. Keep Blacksmithing and Enchanting
    .collect 6214,1 --Heavy Copper Maul (1)
step << !Hunter
    #label Order
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard

step << !Hunter
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore

step << Priest
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Train your class spells
    .turnin 5634 >> Turn in Desperate Prayer
    .target High Priestess Laurena
step << Priest
    .goto 1453/0,861.81,-8512.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Train Desperate Prayer
    .target High Priestess Laurena
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
step << !Hunter
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train Staves << Priest/Hunter
    .trainer >>Train 1h Swords and Staves << Warlock
    .trainer >>Train 2h Swords << Warrior/Paladin
    .target Woo Ping
]])
