RXPGuides.RegisterGuide([[
#forever
#version 14
#group Forever Trio Launch
#name 19-20 Ashenvale
#displayname 19-20 Ashenvale
#next 20-21 Redridge
<< Alliance (Warlock/Priest/Warrior)

-- Start immediately after Darkshore brings the trio to Astranaar, before the level-20-21 Redridge loop.
-- Keep the Stormwind bind and finish in Astranaar after the loop's town turn-ins.
-- Darkshore's Maestra pass accepted 970 and, at level 20+, 1010; complete both on this loop.
-- Sources: installed Classic and Forever Alliance Ashenvale routes.
-- https://www.wowhead.com/forever/quests/kalimdor/ashenvale
-- Start in Astranaar: collect The Zoram Strand and both Raene quests.
-- Northern sweep: Classic Thistlefur approach, Dal, mountain descent, north objectives.
-- Maestra turn-ins -> Cure -> Tear -> Stardust / Fire Scar -> Raene's lake -> Zoram -> Maestra -> Astranaar.

step
    .goto 1440/1,-299.30,2796.01
    >>Start in Astranaar and talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r. Pick up The Zoram Strand for the coastal part of the loop.
    .accept 1008 >> Accept The Zoram Strand
    .target Shindrell Swiftfire

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r before leaving town. Do Dal on the northern sweep. Do Raene's lake after Fire Scar, then Ancient Statuette and Zoram. Turn in the tome at Maestra's Post on the way back to town.
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner


step
    #completewith DalBloodclaw
    .goto 1440,34.69,44.30,30,0
    .goto 1440,35.43,41.46,30,0
    .goto 1440,36.28,38.48,30,0
    .goto 1440,36.83,37.56,30
    >>Follow the Classic route north from Astranaar into Thistlefur Village.

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
    >>Find |cRXP_ENEMY_Dal Bloodclaw|r around Thistlefur Village. Kill him and loot his skull for every player, then take the mountain descent toward the Dark Strand camp.
    .complete 1054,1
    .unitscan Dal Bloodclaw

    
step
    #completewith NorthernSoulGem
    .goto 1440,31.197,37.266,30,0
    .goto 1440,30.535,36.210,20,0
    .goto 1440,30.656,33.960,20
    >>Follow Classic RestedXP's mountain shortcut west from Thistlefur, then descend north toward the Dark Strand camp. Keep the trio together and step down carefully.
    >>The Maestra quests are already in your logs, so continue directly into their objectives.

step
    .isNotOnQuest 970
    .isQuestAvailable 970
    .goto 1440/1,189.71,3185.77
    >>Only if you missed the earlier Maestra's Post pickup: talk to |cRXP_FRIENDLY_Delgren the Purifier|r before the northern loop. Darkshore's Tower turn-in unlocked this follow-up.
    .accept 970 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier

step
    .isNotOnQuest 1010
    .isQuestAvailable 1010
    .goto 1440/1,175.87,3189.61
    >>Only if you missed the earlier pickup or were below level 20: talk to |cRXP_FRIENDLY_Orendil Broadleaf|r before the northern loop.
    .accept 1010 >> Accept Bathran's Hair
    .target Orendil Broadleaf



step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open |cRXP_PICK_Plant Bundles|r in Bathran's Haunt. Each player needs Bathran's Hairs.
    .complete 1010,1

step
    #label NorthernSoulGem
    .goto 1440/1,-102.08,3492.890
    >>Kill Dark Strand cultists, adepts, enforcers and excavators for the Glowing Soul Gem. All three players need one.
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator

step
    .goto 1440/1,175.87,3189.61
    >>Return to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf

step
    .goto 1440/1,189.71,3185.77
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r. Collect the Dal reward while back in town for Orendil's Cure.
    .turnin 1054 >> Turn in Culling the Threat
    .target Raene Wolfrunner

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

step
    >>Hearth directly from Astranaar using the Stormwind bind. Save Escape Through Stealth and the Researching the Corruption pickup for the Auberdine visit before Blackfathom Deeps
    .bindlocation 16509,1
    .cooldown item,6948,>0,1
    .hs >> Hearth to Stormwind for level-20 training and Redridge
    .zoneskip Stormwind City

step
    >>If Hearthstone is unavailable or bound elsewhere, fly from Astranaar to Auberdine and take the Stormwind boat
    .zone Stormwind City >> Regroup in Stormwind before Redridge

step
    .isOnQuest 97220
    .goto 1453/0,568.700,-8848.700
    >>Talk to |cRXP_FRIENDLY_Elaine Trias|r in the Trade District after returning from Astranaar
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


]])
