RXPGuides.RegisterGuide([[
#forever
#season 0
#version 2
#group Forever Trio Launch
#name 22-24 Ashenvale, WC & Stonetalon
#displayname 22-24 Ashenvale, WC & Stonetalon
#next 24-25 Ruins of Lordaeron
<< Alliance (Warlock/Priest/Warrior)

-- Follow-up from Redridge & Deadmines after the Stormwind -> Astranaar batch hearth.
-- Keep the Stormwind bind through Ashenvale, WC, Stonetalon, Sleeping Bag and RoL.
-- The Westfall custom route already accepted sleeping bag quest 79008.
-- Sources: installed Forever Alliance Ashenvale path, Classic Alliance WC path,
-- and Forever Horde WC path;
-- https://www.wowhead.com/forever/guide/cozy-sleeping-bag-locations-rewards



-- First Ashenvale loop: Maestra's Post chains, Astranaar errands,
-- Stardust, the Fire Scar Shrine, Zoram Strand, Raene's Cleansing, and turn-ins.

step
    .goto 1440/1,189.71,3185.77
    >>Travel west to Maestra's Post and talk to |cRXP_FRIENDLY_Delgren the Purifier|r. Darkshore's Tower of Althalaxx turn-in unlocked this follow-up.
    .accept 970 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier

step
    .goto 1440/1,175.87,3189.61
    >>Talk to |cRXP_FRIENDLY_Orendil Broadleaf|r. This starts the chain needed for Elune's Tear.
    .accept 1010 >> Accept Bathran's Hair
    .target Orendil Broadleaf

step
    .goto 1440/1,-102.08,3492.890
    >>Kill Dark Strand cultists, adepts, enforcers and excavators for the Glowing Soul Gem. All three players need one.
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator

step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open |cRXP_PICK_Plant Bundles|r in Bathran's Haunt. Each player needs Bathran's Hairs.
    .complete 1010,1

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
    .goto 1440/1,-299.30,2796.01
    >>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r. The Zoram Strand unlocks Pridewings of Stonetalon for later in this guide.
    .accept 1008 >> Accept The Zoram Strand
    .target Shindrell Swiftfire

step
    .goto 1440/1,-311.99,2759.11
    >>Talk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >> Accept On Guard in Stonetalon
    .target Sentinel Thenysil

step
    .goto 1440/1,-362.16,2785.640
    >>Talk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Accept Journey to Stonetalon Peak
    .target Faldreas Goeth'Shael

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner

step
    .goto 1440/1,-454.43,2682.24
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1020 >> Turn in Orendil's Cure
    .accept 1033 >> Accept Elune's Tear
    .target Pelturas Whitemoon

step
    .goto 1440/1,-974.00,2890.19
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground east of Astranaar.
    .complete 1033,1

step
    #loop
    .goto 1440,36.06,36.59,0
    .goto 1440,37.00,33.77,0
    .goto 1440,35.88,31.90,0
    .goto 1440,36.06,36.59,60,0
    .goto 1440,37.00,33.77,60,0
    .goto 1440,35.88,31.90,60,0
    >>Find |cRXP_ENEMY_Dal Bloodclaw|r around Thistlefur Village. Kill him and loot his skull for every player.
    .complete 1054,1
    .unitscan Dal Bloodclaw

step
    .goto 1440/1,-454.43,2682.24
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1033 >> Turn in Elune's Tear
    .accept 1034 >> Accept The Ruins of Stardust
    .target Pelturas Whitemoon

step
    .goto 1440/1,-220.3,2067.24
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r on the island south of Astranaar. Each player needs a Handful of Stardust.
    .complete 1034,1

step
    .goto 1440/1,242.76,2340.53
    >>At the Fire Scar Shrine, kill |cRXP_ENEMY_Ilkrud Magthrull|r and loot his tome for every player. Interrupt his summon if possible; the trio can handle his guards together.
    .complete 973,1
    .mob Ilkrud Magthrull

step
    .goto 1440/1,189.71,3185.77
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r before continuing west to Zoram Strand.
    .turnin 973 >> Turn in The Tower of Althalaxx
    .target Delgren the Purifier

step
    .goto 1440/1,847.11,3470.21
    >>Travel northwest to Zoram Strand and talk to |cRXP_FRIENDLY_Talen|r
    .accept 1007 >> Accept The Ancient Statuette
    .target Talen

step
    .goto 1440/1,881.13,3879.57
    >>Loot the |cRXP_PICK_Ancient Statuette|r near the coast. Kill Wrathtail naga for heads on the way.
    .complete 1007,1

step
    .goto 1440/1,847.11,3470.21
    >>Talk to |cRXP_FRIENDLY_Talen|r
    .turnin 1007 >> Turn in The Ancient Statuette
    .accept 1009 >> Accept Ruuzel
    .target Talen

step
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r on the island and loot the Ring of Zoram for all three. Clear her nearby Wrathtail escorts together.
    .complete 1009,1
    .unitscan Ruuzel

step
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

step
    .goto 1440/1,847.11,3470.21
    >>Talk to |cRXP_FRIENDLY_Talen|r before leaving Zoram Strand
    .turnin 1009 >> Turn in Ruuzel
    .target Talen

step
    .goto 1440/1,528.79,3045.86
    >>Talk to |cRXP_FRIENDLY_Teronis' Corpse|r in the lake on the way back to Astranaar.
    .turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
    .target Teronis' Corpse

step
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Kill Saltspittle murlocs and loot the Glowing Gem. Check that each player has it before returning to town.
    .complete 1023,1
    .mob Saltspittle Warrior
    .mob Saltspittle Muckdweller
    .mob Saltspittle Oracle

step
    .goto 1440/1,-454.43,2682.24
    >>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1034 >> Turn in The Ruins of Stardust
    .target Pelturas Whitemoon

step
    .goto 1440/1,-411.18,2767.19
    >>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Turn in Raene's Cleansing
    .turnin 1054 >> Turn in Culling the Threat
    .target Raene Wolfrunner

step
    .goto 1440/1,-299.30,2796.01
    >>Return to |cRXP_FRIENDLY_Shindrell Swiftfire|r in Astranaar. All three pick up the Pridewing quest after turning in the heads.
    .turnin 1008 >> Turn in The Zoram Strand
    .accept 1134 >> Accept Pridewings of Stonetalon
    .target Shindrell Swiftfire

step << Warlock
    .goto 1440,69.71,86.87,50,0
    .goto 1413,48.98,5.42,35,0
    .goto 1413,49.307,57.095
    >>Run through eastern Ashenvale into the Barrens, then head south to |cRXP_FRIENDLY_Takar the Seer|r. Avoid the Crossroads and Camp Taurajo guards.
    .turnin 1716 >> Turn in Devourer of Souls
    .accept 1738 >> Accept Heartswood
    .target Takar the Seer

step << Priest/Warrior
    .goto 1440,69.71,86.87,50,0
    .goto 1413,48.98,5.42,35,0
    .goto 1413,53.87,21.52,120,0
    .goto 1413,59.15,25.48,120,0
    .goto 1413,63.08,37.60,50
    >>Run through eastern Ashenvale to Ratchet. Stay east of the Crossroads guards while the Warlock visits Takar.

step << Priest/Warrior
    .goto 1413/1,-3697.24,-929.20
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r. Priest and Warrior both pick up Raptor Horns, then share it with the Warlock at the raptor grounds.
    .accept 865 >> Accept Raptor Horns
    .target Mebok Mizzyrix

step
    .goto 1413,52.0,46.0,70
    >>Regroup all three players at the northern raptor grounds. The Warlock keeps Heartswood for much later; do not detour into Ashenvale for its objective now.

step
    .goto 1413,52.0,46.0
    >>Priest or Warrior: share |cRXP_LOOT_Raptor Horns|r with the Warlock. Check that all three players have the quest before killing raptors.
    .accept 865 >> Accept the shared Raptor Horns quest

step
    #loop
    .goto 1413,52.0,46.0,0
    .goto 1413,57.0,53.0,0
    .goto 1413,52.0,46.0,60,0
    .goto 1413,57.0,53.0,60,0
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r. All three players need five Intact Raptor Horns; check every quest log before leaving.
    .complete 865,1
    .mob Sunscale Scytheclaw

step
    .goto 1413,46.361,73.904
    >>Once all three have five horns, travel south together and click the |cRXP_PICK_Burned-Out Remains|r at the burned tower. Each player must turn in their own Westfall note.
    .turnin 79008 >> Turn in ...and that note you found
    .accept 79192 >> Accept Stepping Stones

step
    .goto 1413,63.08,37.60,50
    >>Return to Ratchet together after the Sleeping Bag quest pickup. Stay clear of Camp Taurajo's guards.

step
    .goto 1413,63.08,37.16
    >>Talk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path
    .target Bragok

step
    .goto 1413/1,-3697.24,-929.20
    >>Return to |cRXP_FRIENDLY_Mebok Mizzyrix|r together. All three turn in Raptor Horns and pick up the WC follow-up.
    .turnin 865 >> Turn in Raptor Horns
    .accept 1491 >> Accept Smart Drinks
    .target Mebok Mizzyrix

step
    .goto 1413,63.087,37.607
    >>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz

step
    .goto 1413,46.95,35.44,25,0
    .goto 1414,51.82,55.56,20
    >>Head to Wailing Caverns. Climb above the entrance and drop into the hidden cave to reach Nalpak and Ebru.

step
    .goto 1414/1,-2036.18,-796.40
    >>Talk to |cRXP_FRIENDLY_Nalpak|r above the entrance
    .accept 1486 >> Accept Deviate Hides
    .target Nalpak

step
    .goto 1414/1,-2039.86,-801.31
    >>Talk to |cRXP_FRIENDLY_Ebru|r above the entrance
    .accept 1487 >> Accept Deviate Eradication
    .target Ebru

step
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    >>Find |cRXP_ENEMY_Mad Magglish|r in the outer caverns. Each player needs the 99-Year-Old Port.
    .complete 959,1
    .mob Mad Magglish

step
    .goto 1414/1,-2216.5,-742.43,30
    >>Enter the Wailing Caverns instance together.

step
    >>Clear the Deviate creatures through the dungeon. Check all four kill types and every player's hide count before leaving.
    .complete 1487,1
    .complete 1487,2
    .complete 1487,3
    .complete 1487,4
    .complete 1486,1

step
    >>Collect Wailing Essence from |cRXP_ENEMY_Ectoplasms|r inside or outside the dungeon. All three players need six.
    .complete 1491,1
    .mob Deviate Ectoplasm

step
    >>Defeat Lord Cobrahn, Lady Anacondra, Lord Pythas and Lord Serpentis. Then return to the entrance and escort the Disciple of Naralex through the awakening ritual. Kill Mutanus and loot a Glowing Shard for each player.
    .collect 10441,1,6981,1
    .mob Mutanus the Devourer

step
    >>Use your |cRXP_LOOT_Glowing Shard|r to start the quest before leaving WC.
    .accept 6981 >> Accept The Glowing Shard
    .use 10441

step
    .goto 1413,62.984,37.218
    >>Talk to |cRXP_FRIENDLY_Sputtervalve|r in Ratchet about the shard.
    .complete 6981,1
    .target Sputtervalve

step
    .goto 1413,63.087,37.607
    >>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz

step
    .goto 1413/1,-3697.24,-929.20
    >>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1491 >> Turn in Smart Drinks
    .target Mebok Mizzyrix

step
    .goto 1413,48.184,32.781,20
    >>Climb the steep ridge above WC to |cRXP_FRIENDLY_Falla Sagewind|r.
    .isOnQuest 6981

step
    .goto 1413,48.184,32.781
    >>Talk to |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Turn in The Glowing Shard
    .target Falla Sagewind

step
    .goto 1414,51.82,55.56,20
    >>Drop into the hidden cave above WC for the two Deviate quest turn-ins.

step
    .goto 1414/1,-2036.18,-796.40
    >>Talk to |cRXP_FRIENDLY_Nalpak|r
    .turnin 1486 >> Turn in Deviate Hides
    .target Nalpak

step
    .goto 1414/1,-2039.86,-801.31
    >>Talk to |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Turn in Deviate Eradication
    .target Ebru

step
    .goto 1442,75.46,91.42,70,0
    .goto 1442,59.899,66.844,25
    >>Enter Stonetalon from the Barrens and travel to the Alliance camp overlooking Windshear Crag.

step
    .goto 1442,59.899,66.844
    >>Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1070 >> Turn in On Guard in Stonetalon
    .accept 1085 >> Accept On Guard in Stonetalon
    .target Kaela Shadowspear

step
    .goto 1442,59.516,67.146
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1085 >> Turn in On Guard in Stonetalon
    .accept 1071 >> Accept A Gnome's Respite
    .target Gaxim Rustfizzle

step
    .goto 1442,58.989,62.601
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1093 >> Accept Super Reaper 6000
    .target Ziz Fizziks

step
    #loop
    .goto 1442,62.36,53.00,0
    .goto 1442,66.73,51.91,0
    .goto 1442,66.75,45.42,0
    .goto 1442,62.36,53.00,60,0
    .goto 1442,66.73,51.91,60,0
    .goto 1442,66.75,45.42,60,0
    >>Clear Venture Co. Loggers and Deforesters in Windshear Crag, and loot Operators for the Super Reaper 6000 Blueprints. Check all three players' progress.
    .complete 1071,1
    .mob +Venture Co. Logger
    .complete 1071,2
    .mob +Venture Co. Deforester
    .complete 1093,1
    .mob +Venture Co. Operator

step
    .goto 1442,58.989,62.601
    >>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Turn in Super Reaper 6000
    .target Ziz Fizziks

step
    .goto 1442,59.516,67.146
    >>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1071 >> Turn in A Gnome's Respite
    .target Gaxim Rustfizzle

step
    #loop
    .goto 1442,54.04,40.09,0
    .goto 1442,53.26,36.83,0
    .goto 1442,50.80,44.50,0
    .goto 1442,54.04,40.09,60,0
    .goto 1442,53.26,36.83,60,0
    .goto 1442,50.80,44.50,60,0
    >>Kill Pridewings near Mirkfallon Lake. Each player needs 12 Pridewing Venom Sacs for the quest unlocked by The Zoram Strand.
    .complete 1134,1
    .mob Pridewing Wyvern
    .mob Pridewing Consort

step
    .goto 1442,50.29,52.94,25,0
    .goto 1442,40.748,52.576,15
    >>Follow the dirt path north of Sun Rock Retreat to the abandoned Sleeping Bag camp.

step
    .goto 1442,40.748,52.576
    >>Click the |cRXP_PICK_Pocket Litter|r on the box. Every player must do the turn-in and pickup.
    .turnin 79192 >> Turn in Stepping Stones
    .accept 79980 >> Accept Scramble

step
    .goto 1442,40.19,50.80,15,0
    .goto 1442,39.614,49.783,10
    >>Follow the path and jump to the |cRXP_PICK_Mound of Dirt|r.

step
    .goto 1442,39.614,49.783
    >>Click the |cRXP_PICK_Mound of Dirt|r. This leaves Wet Job ready for the later Loch Modan leg of the Sleeping Bag chain.
    .turnin 79980 >> Turn in Scramble
    .accept 79974 >> Accept Wet Job

step
    .goto 1442,37.103,8.100,100
    >>Travel north to Stonetalon Peak together.

step
    .goto 1442,37.103,8.100
    >>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .turnin 1056 >> Turn in Journey to Stonetalon Peak
    .target Keeper Albagorm

step
    .goto 1442,36.438,7.181
    >>Talk to |cRXP_FRIENDLY_Teloren|r
    .fp Stonetalon >> Get the Stonetalon Peak flight path
    .target Teloren

step
    .goto 1442,36.438,7.181
    >>Talk to |cRXP_FRIENDLY_Teloren|r
    .fly Astranaar >> Fly to Astranaar for the Pridewings turn-in
    .target Teloren

step
    .goto 1440/1,-299.30,2796.01
    >>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >> Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire

]])
