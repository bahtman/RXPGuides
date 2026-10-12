RXPGuides.RegisterGuide([[
#forever
#version 16
#group Forever Trio Launch
#name 19-20 Ashenvale
#displayname 19-20 Ashenvale
#next 20-21 Redridge
<< Alliance

-- Start at Maestra's Post after Darkshore's escort and Tower hand-in.
-- Keep the Stormwind bind and finish in Astranaar after the loop's town turn-ins.
-- Default opening: Soul Gem -> Bathran's Hair -> Maestra follow-ups.
-- Paladin picks up Dal in Astranaar while Warlock/Warrior clear toward Thistlefur.
-- Regroup for Dal -> Astranaar/Cure -> Tear -> Stardust -> Fire Scar -> lake -> Zoram -> Maestra -> Astranaar.
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
