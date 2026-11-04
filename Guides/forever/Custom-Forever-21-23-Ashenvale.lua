RXPGuides.RegisterGuide([[
#forever
#version 22
#group Forever Trio Launch
#name 21-23 Ashenvale
#displayname 21-23 Ashenvale
#next 23-23 Redridge
<< Alliance

-- Start at Maestra's Post after Darkshore's escort and Tower hand-in.
-- First visit ends with a batch hearth to Stormwind, setting Astranaar as home.
-- Return from Sentinel Hill after the Redridge and first Duskwood circuits.
-- Deliver Pridewings of Stonetalon during the later BFD visit to Astranaar.
-- Default opening: Soul Gem -> Bathran's Hair -> Maestra follow-ups.
-- Paladin picks up Dal in Astranaar while Warlock/Warrior clear toward Thistlefur.
-- Regroup for Dal and the Astranaar town pickups before the first batch hearth.
-- Sources: installed Forever Alliance Darkshore/Ashenvale and Stonetalon/Ashenvale routes.

step
    .isNotOnQuest 970
    .isQuestAvailable 970
    .goto 1440/1,189.71,3185.77
    >>If you missed Darkshore's pickup, talk to |cRXP_FRIENDLY_Delgren the Purifier|r at Maestra's Post. Turn in the Darkshore Tower quest first if it is still in your log.
    .turnin -967 >> Turn in The Tower of Althalaxx
    .accept 970 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier

step << 20
    .isNotOnQuest 1010
    .isQuestAvailable 1010
    .goto 1440/1,175.87,3189.61
    >>If you missed the pickup, talk to |cRXP_FRIENDLY_Orendil Broadleaf|r before heading north.
    .accept 1010 >> Accept Bathran's Hair
    .target Orendil Broadleaf

step
    .goto 1440/1,-102.08,3492.890
    >>Kill Dark Strand cultists, adepts, enforcers and excavators for the Glowing Soul Gem. All three players need one before leaving.
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator

step
    .isQuestAvailable 1010
    .goto 1440/1,-102.08,3492.890
    >>Only if still below level 20: keep clearing Dark Strand mobs until level 20 so you can accept Bathran's Hair. Players already at 20 can continue.
    .xp 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator

step
    .isNotOnQuest 1010
    .isQuestAvailable 1010
    .goto 1440/1,175.87,3189.61
    >>If you arrived below level 20 or missed the pickup, return to |cRXP_FRIENDLY_Orendil Broadleaf|r and accept Bathran's Hair.
    .accept 1010 >> Accept Bathran's Hair
    .target Orendil Broadleaf

step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open |cRXP_PICK_Plant Bundles|r in Bathran's Haunt. Each player needs five Bathran's Hairs.
    .complete 1010,1

step
    .goto 1440/1,175.87,3189.61
    >>Return together to |cRXP_FRIENDLY_Orendil Broadleaf|r at Maestra's Post. Take the cure before splitting for Dal.
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf

step
    .goto 1440/1,189.71,3185.77
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r before splitting. All three need the Fire Scar follow-up.
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier

step
    .goto 1440/1,394.43,2677.63
    >>On the way to Astranaar, talk to |cRXP_FRIENDLY_Therysil|r if you completed her sister's escort.
    .turnin 945 >> Turn in Therylune's Escape
    .target Therysil
    .isQuestComplete 945
step << Paladin
    .goto 1440/1,-411.18,2767.19
    >>Run from Maestra's Post to Astranaar and talk to |cRXP_FRIENDLY_Raene Wolfrunner|r. The Warlock and Warrior clear toward Dal while you collect the quest.
    >>Share Culling the Threat with both players as soon as possible, then run north to meet them. Save the cure delivery for the trio's return after Dal.
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner

step << !Paladin
    .isQuestAvailable 1054
    #completewith DalQuestReady
    .goto 1440,36.83,37.56,30
    >>While the Paladin runs to Astranaar, clear toward Thistlefur Village and look for |cRXP_ENEMY_Dal Bloodclaw|r. Keep a clear route toward the Paladin's approach from Astranaar.
    >>Kite Dal toward the Paladin when he approaches. Do not kill Dal until all three have Culling the Threat and are together.
    .unitscan Dal Bloodclaw

step << !Paladin
    #label DalQuestReady
    .isQuestAvailable 1054
    >>Accept the Paladin's shared Culling the Threat quest before killing Dal. If sharing is unavailable, pick it up from Raene in Astranaar and regroup before the kill.
    .accept 1054 >> Accept Culling the Threat from the Paladin

step << Paladin
    #completewith DalBloodclaw
    .goto 1440,34.69,44.30,30,0
    .goto 1440,35.43,41.46,30,0
    .goto 1440,36.28,38.48,30,0
    .goto 1440,36.83,37.56,30
    >>Run north from Astranaar into Thistlefur Village to meet the other two. Confirm that both accepted your shared quest before the kill.

step
    #label DalBloodclaw
    #loop
    .goto 1440,36.06,36.59,0
    .goto 1440,37.00,33.77,0
    .goto 1440,35.88,31.90,0
    .goto 1440,38.73,36.32,0
    .goto 1440,36.06,36.59,60,0
    .goto 1440,37.00,33.77,60,0
    .goto 1440,35.88,31.90,60,0
    .goto 1440,38.73,36.32,60,0
    .goto 1440,39.595,36.309
    >>Kite |cRXP_ENEMY_Dal Bloodclaw|r toward the Paladin as he approaches from Astranaar. Regroup and check all three have Culling the Threat before killing Dal. Loot a skull for every player, then return together to Astranaar.
    .complete 1054,1
    .unitscan Dal Bloodclaw



step
    .goto 1440/1,-283.73,2827.920
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r. All three collect the Astranaar flight path.
    .fp Astranaar >> Get the Astranaar flight path
    .target Daelyshia

step
    .goto 1440/1,-299.30,2796.01
    >>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r. Pick up The Zoram Strand for the coastal part of the loop.
    .accept 1008 >> Accept The Zoram Strand
    .target Shindrell Swiftfire

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r. Turn in Dal together, then collect Raene's Cleansing for the lake after Fire Scar.
    .turnin -990 >> Turn in Trek to Ashenvale
    .turnin 1054 >> Turn in Culling the Threat
    .accept 991 >> Accept Raene's Cleansing
    .target Raene Wolfrunner



step
    .goto 1440/1,-433.09,2781.02
    >>Talk to |cRXP_FRIENDLY_Innkeeper Kimlya|r with your Hearthstone still bound to Stormwind. Wait for everyone's Hearthstone to be ready.
    >>Enable RXP Hearthstone batching. Open the home confirmation and leave it open, then cast Hearthstone. RXP confirms Astranaar as your new home when the cast finishes; do not confirm early.
    .hs >> Batch hearth to Stormwind while setting home to Astranaar
    .target Innkeeper Kimlya
    .zoneskip Stormwind City

step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.90,15,0
    .goto 1453/0,1041.54,-8983.29
    >>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r. Keep his delivery for your Barrens detour after the Stonetalon logging camp.
    .accept 1716 >> Accept Devourer of Souls
    .target Gakin the Darkbinder

step
    .isOnQuest 97220
    .goto 1453/0,568.700,-8848.700
    >>Talk to |cRXP_FRIENDLY_Elaine Trias|r in the Trade District during the first Astranaar batch visit
    .turnin 97220 >> Turn in Philmor's Favor
    .target Elaine Trias::483

step
    .isQuestTurnedIn 97220
    .goto 1453/0,568.700,-8848.700
    >>Talk to |cRXP_FRIENDLY_Elaine Trias|r for the follow-up
    .accept 97222 >> Accept Gatehouse Goods
    .target Elaine Trias::483

step
    .isOnQuest 97222
    .goto 1453/0,568.300,-8862.200
    >>Go upstairs and use the |cRXP_LOOT_Gatehouse Shipment|r in front of the |cRXP_PICK_Gatehouse Door|r
    .use 277198
    .complete 97222,1 --Gatehouse Shipment delivered (1)

step
    .isOnQuest 97222
    .goto 1453/0,568.700,-8848.700
    >>Return downstairs to |cRXP_FRIENDLY_Elaine Trias|r
    .turnin 97222 >> Turn in Gatehouse Goods
    .target Elaine Trias::483

step
    .isOnQuest 97914
    .goto 1453/0,719.67,-8550.30
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r in Stormwind during the first Astranaar batch visit, before leaving for Redridge
    .turnin 97914 >> Turn in Expanding Horizons
    .target Baros Alexston

step
    .isQuestTurnedIn 97914
    .isQuestAvailable 97926
    .goto 1453/0,719.67,-8550.30
    >>Talk to |cRXP_FRIENDLY_Baros Alexston|r again. Keep Making Do for Thundris Windweaver at the next Auberdine visit, before Blackfathom Deeps
    .accept 97926 >> Accept Making Do
    .target Baros Alexston



]])

RXPGuides.RegisterGuide([[
#forever
#version 2
#group Forever Trio Launch
#name 21-23 Ashenvale & Stonetalon Return
#displayname Ashenvale & Stonetalon Return
#next 23-23 Westfall Escort & RoL Departure
<< Alliance

-- Arrive by batch hearth from Sentinel Hill. Home is now Sentinel Hill.
-- Complete the remaining Ashenvale loop and shared Stonetalon circuit, then hearth to Sentinel Hill.

step
    .goto 1440/1,-454.43,2682.24
    >>Return to Astranaar and talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r. Wait for his dialogue before accepting Elune's Tear.
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 24,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
    .target Pelturas Whitemoon
step
    .goto 1440/1,-974.00,2890.19
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground east of Astranaar.
    .complete 1033,1

step
    .goto 1440/1,-454.43,2682.24
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r. Wait for his dialogue before accepting The Ruins of Stardust.
    .turnin 1033 >> Turn in Elune's Tear
    .timer 17,Elune's Tear RP
    .accept 1034 >> Accept The Ruins of Stardust
    .target Pelturas Whitemoon

step
    .goto 1440/1,-220.3,2067.24
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r on the island south of Astranaar. Each player needs a Handful of Stardust.
    .complete 1034,1

step
    #completewith Ilkrud
    .goto 1440,31.67,64.24,15,0
    .goto 1440,31.21,61.60,15,0
    .goto 1440,27.50,60.76,8
    >>Follow the Classic route from Stardust to Fire Scar Shrine. Climb by the tree on the right of the entrance, jump over its root and keep the trio together.

step
    #label Ilkrud
    .goto 1440/1,242.76,2340.53
    >>At the Fire Scar Shrine, kill |cRXP_ENEMY_Ilkrud Magthrull|r and loot his tome for every player. Interrupt his summon if possible; the trio can handle his guards together.
    .complete 973,1
    .mob Ilkrud Magthrull

step
    .goto 1440/1,528.79,3045.86
    >>Talk to |cRXP_FRIENDLY_Teronis' Corpse|r at Lake Falathim after Fire Scar Shrine. Finish the lake quest, then continue to Zoram Strand. Save the Tower turn-in for the return through Maestra's Post after Zoram.
    .turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
    .target Teronis' Corpse

step
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Kill Saltspittle murlocs and loot the Glowing Gem. Check that each player has it before leaving the lake for Zoram Strand.
    .complete 1023,1
    .mob Saltspittle Warrior
    .mob Saltspittle Muckdweller
    .mob Saltspittle Oracle
    .mob Saltspittle Puddlejumper

step
    .goto 1440/1,847.11,3470.21
    >>Travel northwest to Zoram Strand and talk to |cRXP_FRIENDLY_Talen|r
    .accept 1007 >> Accept The Ancient Statuette
    .target Talen

step
    #completewith ZoramHeads
    >>Kill Wrathtail naga and loot their heads while collecting the statuette and hunting Ruuzel. Each player needs 20; finish the remaining heads before leaving the strand.
    .complete 1008,1
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch

step
    .goto 1440/1,881.13,3879.57
    >>Loot the |cRXP_PICK_Ancient Statuette|r near the coast. Kill Wrathtail naga for heads on the way.
    .complete 1007,1

step
    .goto 1440/1,847.11,3470.21
    >>Talk to |cRXP_FRIENDLY_Talen|r
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
    .target Talen

step
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r on the island and loot the Ring of Zoram for all three. Clear her nearby Wrathtail escorts together.
    >>|cRXP_ENEMY_Lady Vespia|r can also drop the ring if she is up while clearing naga.
    .complete 1009,1
    .unitscan Ruuzel;Lady Vespia
    .mob Ruuzel

step
    #label ZoramHeads
    #loop
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    >>Finish killing Wrathtail naga and loot 20 Wrathtail Heads per player.
    .complete 1008,1
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch

step
    .goto 1440/1,847.11,3470.21
    >>Talk to |cRXP_FRIENDLY_Talen|r before leaving Zoram Strand
    .turnin 1009 >> Turn in Ruuzel
    .target Talen

step
    .goto 1440/1,189.71,3185.77
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r at Maestra's Post after leaving Zoram Strand. Turn in the Fire Scar tome here as the final stop before Astranaar.
    .turnin 973 >> Turn in The Tower of Althalaxx
    .target Delgren the Purifier

step
    .goto 1440/1,-299.30,2796.01
    >>Return to |cRXP_FRIENDLY_Shindrell Swiftfire|r in Astranaar. All three turn in their Wrathtail Heads after the loop.
    .turnin 1008 >> Turn in The Zoram Strand
    .target Shindrell Swiftfire

step
    .goto 1440,35.0,48.6
    >>Talk to |cRXP_FRIENDLY_Llana|r in Astranaar. All three pick up Seeking Caitlin and keep it for Menethil Harbor.
    .accept 95737 >> Accept Seeking Caitlin
    .target Llana

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r after returning from Zoram Strand.
    .turnin 1023 >> Turn in Raene's Cleansing
    .target Raene Wolfrunner

step
    .goto 1440/1,-454.43,2682.24
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1034 >> Turn in The Ruins of Stardust
    .target Pelturas Whitemoon

    -- Default 21-23 Stonetalon/Ashenvale: non-Warlock Stonetalon path shared by the trio.
    -- Class routing and the Warlock-only dungeon gate are removed; the Astranaar turn-in is deferred to BFD.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .target Sentinel Thenysil
    .goto 1440/1,-311.99,2759.11
    .accept 1070 >> Accept On Guard in Stonetalon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .target Faldreas Goeth'Shael
    .goto 1440/1,-362.16,2785.640
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1134 >> Accept Pridewings of Stonetalon
step
    .goto 1440/1,-750.83,1916.950
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
    #sticky
    #completewith wyv1
    >>Kill |cRXP_ENEMY_Young Pridewings|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r
    .complete 1134,1
    .unitscan Young Pridewing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .target Kaela Shadowspear
    .goto 1442/1,320.77,740.06
    .turnin 1070 >> Turn in On Guard in Stonetalon
    .accept 1085 >> Accept On Guard in Stonetalon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .target Gaxim Rustfizzle
    .goto 1442/1,339.47,730.23
    .turnin 1085 >> Turn in On Guard in Stonetalon
    .accept 1071 >> Accept A Gnome's Respite
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .target Ziz Fizziks
    .goto 1442/1,365.20,878.22
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #label sr6000
    .goto 1442/1,200.59,1190.850,60,0
    .goto 1442/1,-12.81,1226.35,60,0
    .goto 1442/1,-13.79,1437.68,60,0
    .goto 1442/1,-12.81,1226.35,60,0
    .goto 1442/1,200.59,1190.850
    .goto 1442/1,-12.81,1226.35,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
    .complete 1093,1
    .unitscan Venture Co. Operator
step
    .goto 1442/1,200.59,1190.850,60,0
    .goto 1442/1,-12.81,1226.35,60,0
    .goto 1442/1,-13.79,1437.68,60,0
    .goto 1442/1,-12.81,1226.35,60,0
    .goto 1442/1,200.59,1190.850
    .goto 1442/1,-12.81,1226.35,0
    >>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1071,1
    .mob +Venture Co. Logger
    .complete 1071,2
    .mob +Venture Co. Deforester
step
    #requires sr6000
    .goto 1442/1,365.20,878.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .target Ziz Fizziks
    .turnin 1093 >> Turn in Super Reaper 6000
step
    #label wyv1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .goto 1442/1,339.47,730.23
    .turnin 1071 >> Turn in A Gnome's Respite
    .accept 1072 >> Accept An Old Colleague
    .accept 1075 >> Accept A Scroll from Mauren
    .target Gaxim Rustfizzle
    -- Warlock-only Barrens/Sleeping Bag detour. Others continue the Pridewing/supply collection.
    -- Crossroads death skip and entry waypoints follow the default 21-23 Stonetalon/Ashenvale route.

step << Warlock
    >>Leave after your own logger kills and Super Reaper blueprints are delivered.
    .goto 1442/1,-439.42,-60.26,60,0
    .goto 1442/1,-723.93,-213.18,60,0
    .goto 1413/1,-929.02,-213.38
    .zone The Barrens >> Travel southeast into The Barrens. |cRXP_ENEMY_Kite a mob into barrens to die from it just when zone changes|r
step << Warlock
    .goto 1413/1,-2494.42,-583.28,0
    .goto 1413/1,-2494.42,-583.28,0
    .deathskip >> Die in the Barrens entrance area and resurrect at the Crossroads graveyard, as in the default route
    .target Spirit Healer
step << Warlock
    .goto The Barrens,49.78,49.20,20
    >>Enter Southern Barrens Subzone. |cRXP_ENEMY_Then Deathskip|r
step << Warlock
    .goto The Barrens,45.71,61.04
    .deathskip
step << Warlock
    .goto 1413/1,-2373.53,-2244.98
    >>Talk to |cRXP_FRIENDLY_Takar the Seer|r near Camp Taurajo. Keep Heartswood for Ashenvale before BFD. |cRXP_ENEMY_You deathskip just after. Pull mobs into turnin|r
    .turnin 1716 >> Turn in Devourer of Souls
    .accept 1738 >> Accept Heartswood
    .target Takar the Seer
step << Warlock
    .goto The Barrens,45.71,61.04
    .deathskip
step << Warlock
    .isOnQuest 79008
    .goto 1413/1,-2074.9980,-3380.6390
    >>Continue south past Camp Taurajo, avoiding its guards. Click the |cRXP_PICK_Burned-Out Remains|r at the ruined tower.
    .turnin 79008 >> Turn in ...and that note you found
step << Warlock
    .isQuestTurnedIn 79008
    .isQuestAvailable 79192
    .isNotOnQuest 79192
    .goto 1413/1,-2076.900,-3374.000
    >>Click the |cRXP_PICK_Nailed Plank|r on the ruined tower. Return north for the Stonetalon part.
    .accept 79192 >> Accept Stepping Stones
step << Warlock
    .goto The Barrens,45.71,61.04
    .deathskip
step << Warlock
    .goto The Barrens,50.05,47.46
    >>Do a Deathskip when reach Barrens subzone
step << Warlock
    .goto The Barrens,50.51,32.54
    .deathskip
step << Warlock
    .isOnQuest 1738,79192,79980
    .goto 1413/1,-1466.69,-61.700,150,0
    .goto 1413/1,-929.02,-213.38,80,0
    .goto 1442/1,-723.93,-213.18,80,0
    >>Return north along the western side of the Barrens and enter Stonetalon. Avoid Crossroads and Sun Rock Retreat guards.
    .zone Stonetalon Mountains
step << Warlock
    .goto Stonetalon Mountains,58.84,66.57
    .deathskip
step << Warlock
    .isOnQuest 79192,79980
    #completewith TrioSleepDirt
    .goto 1442/1,790.0050,1192.8079,25 >> Travel up and along the dirt path north of Sun Rock Retreat

step << Warlock
    .isOnQuest 79192
    #label TrioSleepCamp
    .goto 1442/1,1255.9727,1204.6606
    >>Click the |cRXP_PICK_Pocket Litter|r on the box in the abandoned camp.
    .turnin 79192 >> Turn in Stepping Stones
    .accept 79980 >> Accept Scramble

step << Warlock
    .isOnQuest 79980
    #completewith TrioSleepDirt
    .goto 1442/1,1283.2217,1262.4916,15 >> Follow the path through the mountains

step << Warlock
    .isOnQuest 79980
    #label TrioSleepDirt
    .goto 1442/1,1311.3497,1295.6077
    >>Click the |cRXP_PICK_Mound of Dirt|r. Keep Wet Job for the Stonewrought Dam detour after the post-BFD Ironforge visit; continue with your own Pridewing and supply drops before going to Stonetalon Peak.
    .turnin 79980 >> Turn in Scramble
    .accept 79974 >> Accept Wet Job

step
    .goto 1442/1,868.100,1617.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Night Elf Courier::268925|r
    .target Night Elf Courier::268925
    .accept 86574 >>Accept Stonetalon Supply Run
step
    .goto 1442/1,606.88,1611.24,60,0
    .goto 1442/1,644.97,1717.39,40,0
    .goto 1442/1,581.49,1675.38
    >>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r. Loot them for their |cRXP_LOOT_Pridewing Venom Sacs|r and |cRXP_LOOT_Supply Bundles|r
    .mob Pridewing Wyvern
    .mob Pridewing Consort
    .complete 1134,1
    .complete 86574,1

step << !Warlock
    + Grind until warlock is back and help him finish quest
step
    #completewith next
    .goto 1442/1,1433.97,2652.9100,100 >> Travel to Stonetalon Peak
    .zoneskip Stonetalon Mountains,1
step
    .goto 1442/1,1433.97,2652.9100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .target Keeper Albagorm
    .turnin 1056 >> Turn in Journey to Stonetalon Peak
step
    .goto 1442/1,1498.200,2729.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Faralia::16458|r
    .target Innkeeper Faralia::16458
    .turnin 86574 >>Turn in Stonetalon Supply Run
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    .target Teloren
    .goto 1442/1,1466.44,2682.84
    .fp Stonetalon >> Get the Stonetalon Flight Path

step
    >>Keep An Old Colleague for Ironforge and A Scroll from Mauren for Stormwind. Keep Pridewings of Stonetalon for the BFD visit to Astranaar.
    >>Wait for everyone's Hearthstone, then return directly to Sentinel Hill for the Defias escort. Keep Sentinel Hill as home through RoL.
    .hs >> Hearth to Sentinel Hill
    .zoneskip Westfall

]])
