RXPGuides.RegisterGuide([[

#forever
#season 0,1
#version 1
<< Alliance Gnome (Priest/Warrior)
#group Custom Forever Routes (A)
#subgroup Gnome Priest/Warrior
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Dwarf/Gnome)
#next 13-15 Westfall;14-16 Darkshore
#defaultfor Gnome (Priest/Warrior)

step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Buy|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from her if needed|r
    .target Yanni Stoutheart
step << !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Buy some|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_if needed|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Buy some|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her if needed|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
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
    #completewith next
    .goto 1432/0,-2619.200,-5783.300,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >>Travel to the snowy patch on the ground just outside the South Gate Pass tunnel
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Use the|r |T1387609:0|t[Ceramic Jar] |cRXP_WARN_while standing on the snowy patch to collect the|r |T1387609:0|t[Jar of Snow]
    >>|cRXP_WARN_NOTE: The|r |T1387609:0|t[Jar of Snow] |cRXP_WARN_will only last for 10 minutes. You must turn the quest in before it expires!|r
    .complete 86667,1 -- Jar of Snow 1/1
step
    #optional
    #label BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_10 minute timer to turn in quest!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norric Lochthane|r
    >>|cRXP_WARN_Ensure to turn this in before the 10 minute expiry on the|r |T1387609:0|t[Jar of Snow]
    .turnin 86667 >> Turn in Snowbound
    .target Norric Lochthane
step
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer
step
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Enter the Silver Stream Mine
step << Paladin/Warrior/Priest/Mage
    #season 2 << Priest/Mage
    .goto 1432/0,-2984.82,-4902.33
    >>Open the |cRXP_PICK_Miners' League Crates|r inside the mine. Loot them for the |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto 1432/0,-2984.82,-4902.33
    >>Open the |cRXP_PICK_Miners' League Crates|r inside the mine. Loot them for the |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Buy the|r |T133476:0|t[Heavy Spiked Mace] |cRXP_BUY_OR the|r |T133053:0|t[Ironwood Maul] |cRXP_BUY_from him (if they're up)|r
    >>|cRXP_WARN_If you can't afford this, then grind money from the nearby |cRXP_ENEMY_Tunnel Rats|r until you have enough|r
    >>|cRXP_WARN_Do this quickly as another player may purchase it before you do|r
    >>|cRXP_WARN_If you don't wish to do this, skip this step|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Buy the|r |T133476:0|t[Heavy Spiked Mace] |cRXP_BUY_OR the|r |T133053:0|t[Ironwood Maul] |cRXP_BUY_from him (if they're up)|r
    >>|cRXP_WARN_If you can't afford this, then grind money from the nearby |cRXP_ENEMY_Tunnel Rats|r until you have enough|r
    >>|cRXP_WARN_Do this quickly as another player may purchase it before you do|r
    >>|cRXP_WARN_If you don't wish to do this or would rather try to buy a cheaper/better weapon from the AH soon instead, skip this step|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equip the|r |T133476:0|t[Heavy Spiked Mace]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equip the|r |T133053:0|t[Ironwood Maul]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step
    #optional
    #label BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
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
    #optional
    #label BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Simply kill and loot all the boars you're passing by|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Turn in Rat Catching
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Enter the Stoutlager Inn
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    #sticky
    #completewith HallOfThanesEntry
    +Start forming a Hall of Thanes group now. Warrior can tank and Priest can heal; find three more players while finishing the last Loch Modan quests
step
    #label FlintTinder
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from her|r
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[Basic Campfires] |cRXP_WARN_on Boats to level your|r |T133971:0|t[Cooking] |cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
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
    .goto 1432/0,-2729.40,-5534.96
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonesplinter Scouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 14-20 damage)|r
    >>|cRXP_WARN_This is a hyperspawn area. You should not need to move from here|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step
    #label RatAbandon
    #optional
    .goto 1432/0,-2729.40,-5534.96
    .xp 13+9600 >> Grind to 9600+/11400xp
    >>|cRXP_WARN_If you're planning on running the Hall of Thanes dungeon in Ironforge later, skip this step|r
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
    .goto 1432/0,-3319.800,-5217.600
    >>Click the |cRXP_PICK_Discarded Fishing Toolbox|r on the lake floor
    .accept 86614 >>Accept Silver of the Waves
    .xp <13,1
step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Turn in Silver of the Waves
    .xp <13,1
step << !Dwarf/!Paladin
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fly to Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Mage/Priest/Warlock
    #ssf
    .goto 1455/0,-894.15,-4659.43,8,0
    .goto 1455/0,-880.66,-4660.39,5,0
    .goto 1455/0,-896.50,-4653.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harick Boulderdrum|r downstairs
    >>|cRXP_WARN_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_WARN_from him|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
step << Warrior
    #optional
    #completewith Deeprun
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
step << skip --logout skip << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump onto the top of the weapon stand. Perform a Logout Skip by logging out and back in|r
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
--  .zoneskip Ironforge,1
step
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if it's available|r
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step
    #optional
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Enter the Deeprun Tram
    .zoneskip Stormwind City
step << skip
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_On the Tram when it arrives:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook1
    #label WestfallTramCook2
    #completewith WestfallTramEnd
    >>|cRXP_WARN_On the Tram when it arrives:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook2
    #label WestfallTramCook3
    #completewith WestfallTramEnd
    >>|cRXP_WARN_On the Tram when it arrives:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the following items:|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Tram to Stormwind City if needed|r << Rogue/Warrior/Paladin
    .zone Stormwind City >> Take the Deeprun Tram to Stormwind City
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if it's available|r
    .bronzetube
    .target Billibub Cogspinner
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
    .xp <15,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_if you can afford it|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equip the|r |T135144:0|t[Greater Magic Wand]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equip the|r |T135144:0|t[Greater Magic Wand]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_WARN_from her|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equip the|r |T135468:0|t[Smoldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #label Fly2WF

]])
