RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
#version 7
#classic
<< Alliance Hunter
#name 21-23 Ashenvale/Stonetalon
#next 23-24 Wetlands
step
#completewith RaeneC
+Save a Healing Potion for Ilkrud Magthrull (a mob you'll kill later in half a level)
step
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1008 >> Turn in The Zoram Strand
step
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.accept 1134 >> Accept Pridewings of Stonetalon
step << Hunter
.goto Ashenvale,38.6,64.7
>> Stable your pet
.train 2982>>Tame an Ashenvale Bear and learn Claw 3
.train 17263 >> Tame a Ghostpaw Runner and learn Bite 3
step << Hunter
#completewith start
.stable >> Run back to Astranaar and withdraw your main pet from stables
step
#label RaeneC
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1023 >> Turn in Raene's Cleansing
step
#sticky
.destroy 5505 >> Throw away Teronis' Journal
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1034 >> Turn in The Ruins of Stardust
step
#label start
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Head to stonetalon
step
#era
#sticky
#completewith wyv1
>> Kill all wyverns you encounter
.complete 1134,1
step
.goto The Barrens,22.71,12.91
>>Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.turnin 1070 >> Turn in On Guard in Stonetalon
.target Kaela Shadowspear
.accept 1085 >> Accept On Guard in Stonetalon
step
.goto The Barrens,22.53,13.05
.target Gaxim Rustfizzle
>>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.turnin 1085 >> Turn in On Guard in Stonetalon
step
.goto The Barrens,22.53,13.05
.target Gaxim Rustfizzle
>>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.accept 1071 >> Accept A Gnome's Respite
.maxlevel 22
step
.goto The Barrens,22.28,10.86
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
.accept 1093 >> Accept Super Reaper 6000
.maxlevel 22
step
#sticky
#label sr6000
.goto The Barrens,23.91,6.24
>> Look for Operators around Windshear Crag
.complete 1093,1
.unitscan Venture Co. Operator
.maxlevel 22
step
.goto The Barrens,25.86,5.28
.complete 1071,1
.complete 1071,2
.maxlevel 22
step
#requires sr6000
.goto The Barrens,22.28,10.86
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
.turnin 1093 >> Turn in Super Reaper 6000
.maxlevel 22
step
.goto The Barrens,22.53,13.05
>>Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.turnin 1071 >> Turn in A Gnome's Respite
.target Gaxim Rustfizzle
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
.maxlevel 22
step
#era
#label wyv1
.xp 22+10000 >> Grind goblins to level 22 and 10000+xp
step
#era
.goto Ashenvale,18.62,77.42
>> Finish off killing wyverns
.complete 1134,1
step
.goto Ashenvale,4.61,52.55
.target Keeper Albagorm
>>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step
#era
.goto Stonetalon Mountains,36.46,7.24
.fp Stonetalon >> Get the Stonetalon Flight Path
.fly Ashenvale >> Fly to Ashenvale
step << Hunter
#som
.goto Stonetalon Mountains,36.46,7.24
.fp Stonetalon >> Get the Stonetalon Flight Path
.fly Ashenvale >> Fly to Ashenvale
step << !Hunter
#som
.goto Stonetalon Mountains,36.46,7.24
.fp Stonetalon >> Get the Stonetalon Flight Path
.hs >> Hearth to Astranaar
step
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1134 >> Turn in Pridewings of Stonetalon
step
#era
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 1025 >> Accept An Aggressive Defense
step << Hunter
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.accept 1035 >> Accept Fallen Sky Lake
step
#era
.goto Ashenvale,49.79,67.21
.target Sentinel Velene Starstrike
>>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.accept 1016 >> Accept Elemental Bracers
step << Hunter
#era
#completewith next
.goto Ashenvale,50.14,67.94
.trainer >> Train skills
step
#era
>> Loot 5 Intact Elemental Bracers
.collect 12220,5,1016,1
step
#era
>> Right click the Divining Scroll
.complete 1016,1
step
#era
.goto Ashenvale,49.79,67.21
.target Sentinel Velene Starstrike
>>Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1016 >> Turn in Elemental Bracers
step
#era
.goto Ashenvale,54.05,62.83
.complete 1025,1
.complete 1025,2
.complete 1025,3
.complete 1025,4
step << Hunter
.goto Ashenvale,66.67,82.18
>> Kill the level 30 Oracle sitting in the middle of the lake island
>>This quest can be hard, kite him along the road east
.complete 1035,1
step
#era
#completewith next
.zone Azshara >> Run east to Azshara
step
#era
.goto Azshara,11.90,77.57
.fp Azshara>> Get the Azshara flight path
step << Hunter
#som
#completewith next
.zone Azshara >> Run east to Azshara
step << Hunter
#som
.goto Azshara,11.90,77.57
.fp Azshara>> Get the Azshara flight path
step << Hunter
#som
.hs >> Hearth to Astranaar
>> Buy food/water if needed
step
#era
.hs >> Hearth to Astranaar
>> Buy food/water if needed
step
#era
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
step
.goto Ashenvale,39.54,36.47
>> Kill Dal Bloodclaw
.complete 1054,1
.unitscan DAL BLOODCLAW
step
#era
.goto Ashenvale,25.27,60.68
>> Kill Ilkrud Magthrull if you haven't done this quest yet
.complete 973,1
.isOnQuest 973
step
#era
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 973 >> Turn in The Tower of Althalaxx
step
#som
#phase 1-2
.goto Ashenvale,25.27,60.68
>> Kill Ilkrud Magthrull if you haven't done this quest yet
.complete 973,1
.maxlevel 23
.isOnQuest 973
step
#som
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 973 >> Turn in The Tower of Althalaxx
.isQuestComplete 973
step
#softcore
#completewith next
.deathskip >> Death warp to Astranaar
step
#softcore
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
step
#hardcore
>>Run to Astranaar
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
step << Hunter
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
.isQuestComplete 1035
step
.goto Ashenvale,34.40,48.00
.fly Darkshore>>Fly to Darkshore
step
.goto Darkshore,33.70,42.45
>> Level first aid while waiting for the Menethil boat << Rogue
.zone Wetlands >> Take the boat to Menethil Harbor
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
#classic
<< Alliance !Hunter
#name 21-23 Stonetalon/Ashenvale
#next 23-23 Wetlands
step
>> Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.accept 1033 >> Accept Elune's Tear
step
.goto Ashenvale,46.37,46.38
>> Loot the |cRXP_PICK_Elune's Tears|r on the ground. They're pearl shaped objects
>>Be careful with mobs sneaking underwater
.complete 1033,1
step
.goto Ashenvale,37.36,51.79
>> Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
>> Wait for the roleplay sequence to end
.turnin 1033 >> Turn in Elune's Tear
.accept 1034 >> Accept The Ruins of Stardust
step
.goto Ashenvale,33.30,67.79
>> Loot the |cRXP_PICK_Star Touched Bushes|r on the island
.complete 1034,1
step
#completewith next
.goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
.goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
#completewith next
.goto Ashenvale,27.50,60.76,8 >> Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
>>Jump over the tree root and hug the right to avoid aggroing mobs
step
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_LOOT_Ilkrud Magthrull|r and loot him for his |cRXP_LOOT_Tome|r. |cRXP_WARN_Be careful as this quest is difficult|r. Stop his Summon Guardians cast if possible.
>>Clear mobs behind you so you can reset and try again if needed.
.mob Ilkrud Magthrull
.complete 973,1
.isOnQuest 973
step
>> Talk to |cRXP_FRIENDLY_Therysil|r
.target Therysil
.goto Ashenvale,22.64,51.91
.turnin 945 >> Turn in Therylune's Escape
.isQuestComplete 945
step
>> Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
.target Delgren the Purifier
.goto Ashenvale,26.19,38.69
.turnin 973 >> Turn in The Tower of Althalaxx
.isQuestComplete 973
step
>> Talk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.accept 1007 >> Accept The Ancient Statuette
step
.goto Ashenvale,7.00,15.20,0
#completewith nagas
>> Kill |cRXP_LOOT_Wrathtail Nagas|r near the coast. Loot them for their |cRXP_LOOT_Wrathtail Heads|r. Don't worry about finishing this yet.
.mob Wrathtail Wave Rider
.mob Wrathttail Sorceress
.complete 1008,1
step
.goto Ashenvale,14.20,20.64
>> Loot |cRXP_PICK_The Ancient Statuette|r on the ground
.complete 1007,1
step
>> Talk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 >> Turn in The Ancient Statuette
>> Wait for the roleplay sequence
.accept 1009 >> Accept Ruuzel
step
#label nagas
.goto Ashenvale,7.40,13.40
>>Kill |cRXP_LOOT_Ruuzel|r and loot her for the |cRXP_LOOT_Ring of Zoram|r. |cRXP_WARN_This quest can be hard!|r Kill one of her adds and reset if you need to.
>>|cRXP_LOOT_Lady Vespia|r is a rarespawn that can also drop the ring if you see her
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.goto Ashenvale,7.00,15.20
>> Kill |cRXP_LOOT_Wrathtail Nagas|r near the coast. Loot them for their |cRXP_LOOT_Wrathtail Heads|r.
.mob Wrathtail Wave Rider
.mob Wrathttail Sorceress
.complete 1008,1
step
>> Talk to |cRXP_FRIENDLY_Talen|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1009 >> Turn in Ruuzel
step
>> Talk to |cRXP_FRIENDLY_Teronis' Corpse|r
.target Teronis' Corpse
.goto Ashenvale,20.31,42.33
.turnin 991 >> Turn in Raene's Cleansing
.accept 1023 >> Accept Raene's Cleansing
step
.goto Ashenvale,20.41,43.82
>> Kill |cRXP_LOOT_Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
.complete 1023,1
step << !Warlock
#softcore
.deathskip >> Die at the east side of the lake and respawn at the Spirit Healer
step << !Warlock
#hardcore
>>Run back to Astranaar and talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >> Turn in The Ruins of Stardust
step << !Warlock
#softcore
>>Run back to Astranaar and talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >> Turn in The Ruins of Stardust
step << !Warlock
#era
.goto Ashenvale,36.99,49.22
.home >> Set your Hearthstone to Astranaar
.target Innkeeper Kimlya
step << !Warlock
#era
>> Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
.accept 1025 >> Accept An Aggressive Defense
step << !Warlock
#som
>> Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >> Turn in Raene's Cleansing
step << !Warlock
#completewith next
#label Journal
.destroy 5505
step << !Warlock
>> Talk to |cRXP_FRIENDLY_Shindrell Swiftfirei|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >> Turn in The Zoram Strand
step << !Warlock
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.accept 1134 >> Accept Pridewings of Stonetalon
step << !Warlock
#completewith next
.goto Ashenvale,34.41,47.99
.fly Auberdine >> Fly to Darkshore
step << !Warlock
#requires Journal
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin 4730 >> Turn in Beached Sea Creature
.turnin 4731 >> Turn in Beached Sea Turtle
.turnin 4732 >> Turn in Beached Sea Turtle
.turnin 4733 >> Turn in Beached Sea Creature
step << !Warlock
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
step << !Warlock
.goto Darkshore,39.37,43.48
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
step << !Warlock
.goto Felwood,21.04,17.72
.target Gershala Nightwhisper
>>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 3765 >> Turn in The Corruption Abroad
step << !Warlock
.goto Darkshore,37.44,41.83
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
step << NightElf
#completewith next
.goto Felwood,19.10,20.63
.fly Teldrassil >> Fly to Teldrassil
step << !Warlock !NightElf
.goto Darkshore,33.17,40.17,40,0
.goto Darkshore,33.17,40.17,0
.zone Teldrassil >> Take the boat to Darnassus
.zoneskip Darnassus
step << !Warlock !NightElf
.goto Teldrassil,58.39,94.01
.fp Teldrassil >> Get the Rut'theran Village Flight Path
step << !Warlock
#completewith next
.goto Teldrassil,55.95,89.88
.zone Darnassus >> Take the purple portal into Darnassus
step << Warrior
.goto Darnassus,57.6,46.8
.train 2567 >> Train Thrown from Ilyenia
step << Hunter/Druid/Rogue
.goto Darnassus,40.39,8.55 << Hunter
.goto Darnassus,34.76,7.36 << Druid
.goto Darnassus,32.48,16.37,30,0 << Rogue
.goto Darnassus,37.00,21.91 << Rogue
>>Go inside of the tree and follow it downward << Rogue
.trainer >> Train your class spells
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 6125 >> Power over Poison
.isOnQuest 6125
step << !Warlock
>> Talk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 >> Turn in The Absent Minded Prospector
.accept 942 >> Accept The Absent Minded Prospector
step << Priest
.goto Darnassus,37.89,82.74
.trainer >> Train your class spells
step << !Warlock
.hs >> Hearth back to Astranaar
>> Buy food/water if needed
step << Warlock
#era
.goto Ashenvale,34.67,48.83
>> Head back to Astranaar
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1008 >> Turn in The Zoram Strand
.target Shindrell Swiftfire
.accept 1134 >> Accept Pridewings of Stonetalon
step << Warlock
#som
>> Head back to Astranaar
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1008 >> Turn in The Zoram Strand
step << Warlock
#som
#phase 3-6
.goto Ashenvale,34.85,50.87
.vendor >> Buy 1 Flint and Tinder, and 1 Simple Wood
.collect 4470,2 
.collect 4471,1 
step << Warlock
#era
.goto Ashenvale,36.61,49.58
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1023 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.accept 1025 >> Accept An Aggressive Defense
step << Warlock
#som
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1023 >> Turn in Raene's Cleansing
step << Warlock
#sticky
.destroy 5505 >> Throw away Teronis' Journal
step << Warlock
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1034 >> Turn in The Ruins of Stardust
step << Warlock
#som
#phase 3-6
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Head to Stonetalon Mountains
step
#era/som
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> Head to Stonetalon Mountains
step
#era
#sticky
#completewith wyv1
>> Kill all |cRXP_LOOT_Wyverns|r you encounter for |cRXP_LOOT_Pridewing Venom Sacs|r
.unitscan Young Pridewing
.complete 1134,1
step << Warlock
#som
#phase 3-6
>> Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.target Kaela Shadowspear
.goto The Barrens,22.71,12.91
.turnin 1070 >> Turn in On Guard in Stonetalon
.accept 1085 >> Accept On Guard in Stonetalon
step
#era/som
>> Talk to |cRXP_FRIENDLY_Kaela Shadowspear|r
.target Kaela Shadowspear
.goto The Barrens,22.71,12.91
.turnin 1070 >> Turn in On Guard in Stonetalon
.accept 1085 >> Accept On Guard in Stonetalon
step << Warlock
#som
#phase 3-6
>> Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto The Barrens,22.53,13.05
.turnin 1085 >> Turn in On Guard in Stonetalon
.accept 1071 >> Accept A Gnome's Respite
step
#era/som
>> Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto The Barrens,22.53,13.05
.turnin 1085 >> Turn in On Guard in Stonetalon
.accept 1071 >> Accept A Gnome's Respite
step << Warlock
#som
#phase 3-6
>> Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto The Barrens,22.28,10.86
.accept 1093 >> Accept Super Reaper 6000
step
#era/som
>> Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto The Barrens,22.28,10.86
.accept 1093 >> Accept Super Reaper 6000
step << Warlock
#sticky
#label sr6000
#som
#phase 3-6
.goto The Barrens,23.91,6.24
>> Look for Operators around Windshear Crag
.complete 1093,1
.unitscan Venture Co. Operator
step
#sticky
#label sr6000
#era/som
.goto The Barrens,23.91,6.24
>> Look for |cRXP_LOOT_Venture Co. Operators|r around Windshear Crag. Loot them for |cRXP_LOOT_Blueprints|r
.complete 1093,1
.unitscan Venture Co. Operator
step << Warlock
#som
#phase 3-6
.goto The Barrens,25.86,5.28
>> Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
.mob Venture Co. Deforester
.mob Venture Co. Logger
.complete 1071,1
.complete 1071,2
step
#era/som
.goto The Barrens,25.86,5.28
>> Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
.mob Venture Co. Deforester
.mob Venture Co. Logger
.complete 1071,1
.complete 1071,2
step << Warlock
#requires sr6000
#som
#phase 3-6
>> Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.goto The Barrens,22.28,10.86
.turnin 1093 >> Turn in Super Reaper 6000
.accept 1094 >> Accept Further Instructions
step
#requires sr6000
#era/som
.goto The Barrens,22.28,10.86
>> Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
.target Ziz Fizziks
.turnin 1093 >> Turn in Super Reaper 6000
.accept 1094 >> Accept Further Instructions << Warlock
step << Warlock
#label wyv1
#som
#phase 3-6
>> Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto The Barrens,22.53,13.05
.turnin 1071 >> Turn in A Gnome's Respite
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
step
#label wyv1
#era/som
>> Talk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
.target Gaxim Rustfizzle
.goto The Barrens,22.53,13.05
.turnin 1071 >> Turn in A Gnome's Respite
.accept 1072 >> Accept An Old Colleague
.accept 1075 >> Accept A Scroll from Mauren
step
#era
.goto Ashenvale,18.62,77.42
>> Finish off killing |cRXP_LOOT_Wyverns|r for |cRXP_LOOT_Pridewing Venom Sacs|r
.mob Pridewing Wyvern
.mob Pridewing Consort
.complete 1134,1
step
#era/som
.goto Ashenvale,4.61,52.55
>> Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
.target Keeper Albagorm
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step << Warlock
#som
#phase 3-6
.goto Ashenvale,4.61,52.55
>> Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
.target Keeper Albagorm
.turnin 1056 >> Turn in Journey to Stonetalon Peak
step << !Warlock
#era/som
>> Talk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.46,7.24
.fp Stonetalon >> Get the Stonetalon Flight Path
step << !Warlock
#era/som
>> Talk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.46,7.24
.fly Ashenvale >> Fly to Ashenvale
step << Warlock
>> Talk to |cRXP_FRIENDLY_Teloren|r
.target Teloren
.goto Stonetalon Mountains,36.46,7.24
.fp Stonetalon >> Get the Stonetalon Flight Path
step << Warlock
.goto Stonetalon Mountains,35.49,6.16
.vendor >> vendor trash
step << Warlock
#softcore
#completewith next
>>Make sure you have at least 4 soul shards before killing yourself, you're about to spirit rez 4 times total
.deathskip >> Die and respawn at the Spirit Healer
step << Warlock
#hardcore
#completewith next
>>You're about to go on a long journey for your Succubus since you can't deathskip
step << Warlock
.goto The Barrens,35.10,27.80
.zone The Barrens >>Run southeast to The Barrens
step << Warlock
#softcore
#completewith next
.goto The Barrens,50.5,32.5,0
.deathskip >> Once you get to The Barrens, Die and respawn at the Crossroads Graveyard
step << Warlock
#som
#phase 3-6
.goto The Barrens,49.30,57.09
>>Talk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.target Takar the Seer
.accept 1738 >> Accept Heartswood
.accept 65602 >> Accept What is Love?
step << Warlock
#era/som
.goto The Barrens,49.30,57.09
>>Talk to |cRXP_FRIENDLY_Takar the Seer|r
.turnin 1716 >> Turn in Devourer of Souls
.target Takar the Seer
.accept 1738 >> Accept Heartswood
step << Warlock
#softcore
#completewith next
.goto The Barrens,56.60,51.60
.deathskip >> Run northeast. When the zone text changes to Raptor Grounds, Die and respawn back to Ratchet
>>Do your best to avoid the quilboar mobs
step << Warlock
.goto The Barrens,62.98,37.21
>>Head to Ratchet
.target Sputtervalve
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
.turnin 1094 >> Turn in Further Instructions
step << Warlock
.goto The Barrens,63.00,37.20
.fp Ratchet>> Get the Ratchet Flight Path
step << Warlock
#completewith next
.hs >> Hearth back to Darkshore
>> Buy food/water if needed
step << Warlock
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
.turnin 4730 >> Turn in Beached Sea Creature
.turnin 4731 >> Turn in Beached Sea Turtle
.turnin 4732 >> Turn in Beached Sea Turtle
.turnin 4733 >> Turn in Beached Sea Creature
step << Warlock
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>Talk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
.turnin 4740 >> Turn in WANTED: Murkdeep!
step << Warlock
.goto Darkshore,39.37,43.48
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
.turnin 995 >> Turn in Escape Through Stealth
step << Warlock
.goto Felwood,21.04,17.72
.target Gershala Nightwhisper
>>Talk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
.turnin 3765 >> Turn in The Corruption Abroad
step << Warlock
.goto Darkshore,37.44,41.83
>>Talk to |cRXP_FRIENDLY_Archaeologist Hollee|r
.turnin 731 >> Turn in The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 >> Accept The Absent Minded Prospector
step << Warlock
.goto Darkshore,33.17,40.17,40,0
.goto Darkshore,33.17,40.17,0
.zone Teldrassil >> Take the boat to Darnassus
.zoneskip Darnassus
step << Warlock
#completewith next
.goto Teldrassil,55.95,89.88
.zone Darnassus >> Take the purple portal into Darnassus
step << Warlock
#label q741w
.goto Teldrassil,23.70,64.51
>>Talk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
.turnin 741 >> Turn in The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
.accept 942 >> Accept The Absent Minded Prospector
step << Warlock
#completewith next
.goto Teldrassil,58.39,94.01
>> Go back to Ruth'theran Village
.fp Teldrassil >> Get the Ruth'theran Village Flight Path
step << Warlock
.goto Teldrassil,58.39,94.01
.fly Ashenvale >> Fly to Ashenvale
step
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>Talk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.turnin 1134 >> Turn in Pridewings of Stonetalon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Raene Wolfrunner|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.accept 1054 >> Accept Culling the Threat
step << skip
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.accept 1035 >> Accept Fallen Sky Lake
step
#era
>> Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.target Sentinel Velene Starstrike
.goto Ashenvale,49.79,67.21
.accept 1016 >> Accept Elemental Bracers
step
#era
>> Kill |cRXP_LOOT_Water Elementals|r and loot them for |cRXP_LOOT_Intact Elemental Bracers|r
.mob Befouled Water Elemental
.collect 12220,5,1016,1
step
#era
>> Right click the Divining Scroll in your inventory
.complete 1016,1
step
#era
>> Talk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.target Sentinel Velene Starstrike
.goto Ashenvale,49.79,67.21
.turnin 1016 >> Turn in Elemental Bracers
step
#era
.goto Ashenvale,54.05,62.83
>> Kill |cRXP_ENEMY_Furbolgs|r. Be careful of Den Watchers as they thrash
.mob Foulweald Den Watcher
.mob Foulweald Ursa
.mob Foulweald Totemic
.mob Foulweald Warrior
.complete 1025,1
.complete 1025,2
.complete 1025,3
.complete 1025,4

step << skip
.goto Ashenvale,66.67,82.18
>> Do Fallen Sky Lake
>>This quest requires you to kill a level 30 mob, skip it if necessary
.complete 1035,1
step
#era
#completewith next
.goto Ashenvale,95.57,48.62
.zone Azshara >> Run east to Azshara
step
#era
.goto Azshara,11.90,77.57
.fp Azshara>> Get the Azshara flight path
.fly Astranaar >> Fly to Astranaar
step
.goto Ashenvale,39.54,36.47
>> Kill Dal Bloodclaw
.complete 1054,1
.unitscan DAL BLOODCLAW
step << !Warlock
#softcore
#completewith next
.deathskip >> Die and respawn at Astranaar
step << Warlock
.goto Ashenvale,31.50,31.50
>> Click on the tree in the middle of the cultist camp
.complete 1738,1
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>Loot the torch on the table
.collect 190307,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>Create a campfire, then use the Unlit Torch
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>Create a campfire, then use the Unlit Torch
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.61,22.01
>>Use the Burning Torch on the cart outside next to where you looted the torch, then go upstairs and loot the statue
.complete 65602,1 
step << Warlock
#softcore
#completewith end
.goto Ashenvale,24.5,39.1
.deathskip >> Run to the base of the mountain southwest of the big tower and die back to Astranaar
step << skip
#softcore
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
step
#hardcore
#era
>>Run back to Astranaar
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.turnin 1054 >> Turn in Culling the Threat
step
#softcore
#era
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.turnin 1054 >> Turn in Culling the Threat
step
#hardcore
#som
>>Run back to Astranaar
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
step
#softcore
#som
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>Talk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
step << skip
#hardcore
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>Talk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
step
#label end
.goto Ashenvale,34.41,47.98
.fly Darkshore>> Fly to Auberdine
step
.goto Darkshore,33.70,42.45
>> Level first aid/cooking while waiting for the Menethil boat
.zone Wetlands >> Take the boat to Menethil Harbor
]])
RXPGuides.RegisterGuide([[
#version 7
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#version 7
#classic
<< Alliance Mage
#name 21-22 Duskwood Mage AoE
#next 22-26 Wetlands Mage AoE
step
.goto Duskwood,81.82,19.77
.vendor >> Talk to Kzixx. Buy one of the green BoE belts (lower level = better). Buy potions too if any of these are available
step
>>Follow the road down into Darkshire.
.goto Duskwood,77.48,44.29
.fp Darkshire >> Get the Darkshire flight path
step
#completewith next
.goto Duskwood,78.00,48.34,0
>> Buy a bronze tube from Herble if you didn't get one earlier
.collect 4371,1 
step
>>If you didn't get a bronze tube, then you can do this later
.goto Duskwood,79.80,48.03
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >>Accept Look To The Stars
.turnin 174 >>Turn in Look To The Stars
.accept 175 >>Accept Look To The Stars
step
>>Inside the building
.goto Duskwood,75.34,48.74
.target Elaine Carevin
>>Talk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 163 >>Accept Raven Hill
.accept 164 >>Accept Deliveries to Sven
.accept 165 >>Accept The Hermit
step
#sticky
#label Eva
>>Go into the building
.goto Duskwood,75.80,45.35
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.accept 101 >>Accept The Totem of Infliction
step
>>Go behind Eva
.goto Duskwood,76.29,45.28
.vendor >> Buy 2 Runes of Teleportation from Alyssa
.collect 17031,2 
step << skip
.goto Duskwood,73.87,44.40
.home >> Set your hearth in Darkshire
step
#requires Eva
>>Go into the Inn. Remember you need 50 skill in cooking to accept the quest
.goto Duskwood,73.83,44.05
.target Chef Grual
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
.accept 90 >>Accept Seasoned Wolf Kabobs
step
.goto Duskwood,73.57,46.85
.target Commander Althea Ebonlocke
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 56 >>Accept The Night Watch
step
>>If Stitches has just killed this npc, skip the quest.
.goto Duskwood,45.12,67.03
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.accept 245 >>Accept Eight-Legged Menaces
step
.goto Duskwood,18.22,56.22
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >>Turn in Raven Hill
.target Jitters
.accept 5 >>Accept Jitters' Growling Gut
step
#completewith next
+start AoEing needed quest mobs in groups of 3+ that you see.
>>Keep this tutorial open in another tab for the Duskwood AoE Section if needed:
.link https://youtu.be/SxMc2GoP33c?t=376 >> CLICK HERE
step
#completewith next
>>Go to the shore. Start AoEing spiders en route to Sven's Camp
.complete 245,1 
.complete 93,1 
step
.goto Duskwood,7.80,34.05
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 164 >>Turn in Deliveries to Sven
.target Sven Yorgen
.accept 95 >>Accept Sven's Revenge
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
.accept 226 >>Accept Wolves at Our Heels
step
#completewith WolvesT
>>Go to the shore. Start AoEing spiders en route to Sven's Camp. Loot them for Gooey Spider Legs
.complete 245,1 
.complete 93,1 
step
#sticky
#label Wolves
.goto Duskwood,54.66,14.53
>>AoE Wolves all along the coast
.complete 90,1 
.complete 226,1 
.complete 226,2 
step
.goto Duskwood,28.10,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >>Turn in The Hermit
.target Abercrombie
.accept 148 >>Accept Supplies from Darkshire
step
#requires Wolves
#label WolvesT
.goto Duskwood,7.72,33.21
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
.turnin 226 >>Turn in Wolves at Our Heels
step
.goto Duskwood,10.68,59.08
>>Finish off Spiders and their Legs
.complete 245,1 
.complete 93,1 
step
>>Run to Westfall
.goto Westfall,56.33,47.52
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
.turnin 132 >>Turn in The Defias Brotherhood
.target Gryan Stoutmantle
.accept 135 >>Accept The Defias Brotherhood
.turnin 143 >>Turn in Messenger to Westfall
.accept 144 >>Accept Messenger to Westfall
step
.goto Westfall,56.55,52.64
.fly Stormwind >> Fly to Stormwind City
step
.goto Stormwind City,39.04,81.88,40,0
.goto Stormwind City,36.93,81.97,40,0
.goto Stormwind City,37.80,78.22,40,0
.goto Stormwind City,37.80,81.93,10 >> Run up the mage tower, then run through the green portal
step
.goto Stormwind City,36.87,81.15
.trainer >> Train your class spells. Make sure you have at least 20 silver for later
step
.goto Stormwind City,39.83,79.46
.trainer >> Train the SW Portal
step
#completewith next
+Remember to bind Blink to your bars
step
>>Run back through the green portal
.goto Stormwind City,45.70,38.42
.target Brother Kristoff
>>Talk to |cRXP_FRIENDLY_Brother Kristoff|r
.accept 343 >>Accept Speaking of Fortitude
step
.goto Stormwind City,58.09,16.53
.target Furen Longbeard
>>Talk to |cRXP_FRIENDLY_Furen Longbeard|r
.turnin 1338 >>Turn in Stormpike's Order
step
.goto Stormwind City,69.55,28.10,30,0
>>Run to the Stormwind Keep, then into the Library
.goto Stormwind City,74.18,7.47
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 343 >>Turn in Speaking of Fortitude
.target Milton Sheaf
.accept 344 >>Accept Brother Paxton
step
>>Go upstairs in SI:7
.goto Stormwind City,75.52,55.18,20,0
.goto Stormwind City,75.78,59.85
.target Master Mathias Shaw
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 135 >>Turn in The Defias Brotherhood
step
.goto Stormwind City,58.65,52.98,40,0
.goto Stormwind City,64.19,60.60
>> Buy Stormwind Seasoning Herbs from Felicia for the Lean Wolf Meat (Darkshire) quest
.collect 2665,1 
step
.goto Elwynn Forest,32.19,49.27,90 >> Exit Stormwind
step
>>Run into Northshire Abbey
.goto Elwynn Forest,45.50,48.25,40,0
.goto Elwynn Forest,48.82,41.65,40,0
.goto Elwynn Forest,49.60,40.41
>>Talk to |cRXP_FRIENDLY_Brother Paxton|r
.turnin 344 >>Turn in Brother Paxton
.target Brother Paxton
.accept 345 >>Accept Ink Supplies
step
.hs >> Hearth to Lakeshire. Remember to buy drink if you need
>> Buy food/water if needed
step
>>Go into the Town Hall
.goto Redridge Mountains,29.50,46.05,30,0
.goto Redridge Mountains,29.99,44.45
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 144 >>Turn in Messenger to Westfall
.target Magistrate Solomon
.accept 145 >>Accept Messenger to Darkshire
step
.goto Redridge Mountains,32.14,48.64
>>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
.turnin 345 >>Turn in Ink Supplies
.target Foreman Oslow
.accept 347 >>Accept Rethban Ore
step
>>Go into the cave. AoE Dredgers for Rethban Ore. They share respawns with Bashers
>>Be careful as Dredgers attack fast, and Bashers bash and stun
.goto Redridge Mountains,19.55,32.01,30,0
.goto Redridge Mountains,19.04,23.48
.complete 347,1 
step
>>Kill Yowler. Split pull him using Blizzard or Flamestrike, then kite him back through the path of mobs you killed
.goto Redridge Mountains,19.55,32.01,30,0
.goto Redridge Mountains,23.77,30.48,40,0
.goto Redridge Mountains,27.58,21.78
.complete 126,1 

step
.goto Redridge Mountains,30.98,47.28
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
.turnin 126 >>Turn in Howling in the Hills
step
.goto Redridge Mountains,30.59,59.41
.fly Darkshire >> Fly to Darkshire
step
#completewith next
.goto Duskwood,78.00,48.34
>> Buy a bronze tube from Herble if you didn't get one earlier
.collect 4371,1 
step
>>If you didn't get a bronze tube, then you can do this later
.goto Duskwood,79.80,48.03
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >>Accept Look To The Stars
.turnin 174 >>Turn in Look To The Stars
.accept 175 >>Accept Look To The Stars
step
>>Inside the building
.goto Duskwood,75.80,45.31
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 148 >>Turn in Supplies from Darkshire
.target Madame Eva
.accept 149 >>Accept Ghost Hair Thread
step
>>Talk to Chef Grual
.goto Duskwood,73.84,43.21
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
.turnin 5 >>Turn in Jitters' Growling Gut
.target Chef Grual
.accept 93 >>Accept Dusky Crab Cakes
.turnin 90 >>Turn in Seasoned Wolf Kabobs
.turnin 93 >>Turn in Dusky Crab Cakes
.accept 240 >>Accept Return to Jitters
step
.goto Duskwood,72.81,46.83,20,0
.goto Duskwood,71.93,46.42
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 145 >>Turn in Messenger to Darkshire
step
>>Talk to Mary in the building. Try to avoid fighting mobs
>>Check for the chest in the area near the house/outhouse
.isQuestComplete 174
.goto Duskwood,81.77,59.38
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >>Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >>Accept Return the Comb
.turnin 175 >>Turn in Look To The Stars
.accept 177 >>Accept Look To The Stars
step
.goto Duskwood,81.77,59.37
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >>Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >>Accept Return the Comb
step
>>Kill the Insane Ghoul. Outrange/Decurse its Curse of Blood, keep it slowed
.complete 177,1 
.goto Duskwood,80.87,71.58
step
>>Kill mobs in the area
.goto Duskwood,79.22,70.97
.complete 56,1 
.complete 56,2 
step
.goto Duskwood,79.80,48.01
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >>Turn in Look To The Stars
.target Viktori Prism'Antras
.accept 181 >>Accept Look To The Stars
step
.goto Duskwood,75.80,45.32
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 154 >>Turn in Return the Comb
.target Madame Eva
.accept 157 >>Accept Deliver the Thread
step
.goto Duskwood,73.58,46.91
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 56 >>Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 57 >>Accept The Night Watch
step
.xp 22 >> Grind to 22
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Respec to AoE Frost (if you didn't talent into it originally)
.goto Stormwind City,36.87,81.13
.trainer >> Train your class spells
>>MAKE SURE you save at least 30s for later (10s for another rune, 20s for IF tele)
step
#completewith next
.goto Stormwind City,55.30,68.18,40,0
.goto Stormwind City,56.47,73.42,20 >> Bank your cloth here (to do cloth turnins for extra xp later)
>>You'll eventually need 12 stacks of Wool, Silk, Mageweave and Runecloth
>>BANK YOUR LIGHT FEATHERS HERE. THIS IS SUPER IMPORTANT
step
#completewith next
.goto Stormwind City,56.12,65.26
.vendor >>Go into the building. Buy another Rune of Teleportation from Kyra
.collect 17031,1 
step
.goto Elwynn Forest,32.19,49.27,90 >> Exit Stormwind
step
>>Run into Northshire Abbey
.goto Elwynn Forest,45.50,48.25,40,0
.goto Elwynn Forest,48.82,41.65,40,0
.goto Elwynn Forest,49.60,40.41
>>Talk to |cRXP_FRIENDLY_Brother Paxton|r
.turnin 347 >>Turn in Rethban Ore
.target Brother Paxton
.accept 346 >>Accept Return to Kristoff
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Run to the outside of the Cathedral
.goto Stormwind City,45.69,38.41
.target Brother Kristoff
>>Talk to |cRXP_FRIENDLY_Brother Kristoff|r
.turnin 346 >>Turn in Return to Kristoff
step
#completewith next
.goto Stormwind City,63.68,8.49,30 >> Take the Deeprun Tram to Ironforge
step
.zone Ironforge >> Travel to Ironforge
step
.isOnQuest 968
>>Go inside the building
.goto Ironforge,51.08,8.04,20,0
.goto Ironforge,50.84,5.64
.target Gerrig Bonegrip
>>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >>Turn in The Powers Below
step
.goto Ironforge,25.51,7.08
.trainer >> Talk to Milstaff. Train the Ironforge Portal
step
.goto Ironforge,55.51,47.75
.fly Menethil >> Fly to Menethil
]])
RXPGuides.RegisterGuide([[
#version 7
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#classic
<< Alliance Mage
#name 22-26 Wetlands Mage AoE
#next 26-31 Duskwood Mage AoE
step
.goto Wetlands,8.32,58.57
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >>Accept Claws from the Deep
step
#completewith next
.vendor >> Buy an extra Rune of Teleportation from Falkan or Healing Potions from Dewin inside the house behind Falkan if needed
step
.goto Wetlands,8.55,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
step
.goto Wetlands,10.91,59.64
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 463 >>Accept The Greenwarden
step
>>Go Upstairs
#completewith next
.goto Wetlands,10.49,60.20
.vendor >> Buy Healing Potions from Samor if needed
step
.isQuestTurnedIn 741
.goto Wetlands,10.84,60.44
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 942 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.accept 943 >>Accept The Absent Minded Prospector
step
.goto Wetlands,10.70,60.95
.home >> Set your hearth to Menethil Harbor
step
.goto Wetlands,11.80,57.99
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
.accept 470 >>Accept Digging Through the Ooze
step
.goto Wetlands,11.50,52.13
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >>Accept In Search of The Excavation Team
step
#sticky
#label Skins
>>AoE Young Crocolisks. Loot them for their skins
.complete 484,1 
step
>>Run to the Raptor Excavation site
.goto Wetlands,34.51,41.70,60,0
.goto Wetlands,37.02,43.82,40,0
.goto Wetlands,37.17,48.09,40,0
.goto Wetlands,38.19,50.90
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >>Accept Ormer's Revenge
step
>>Go into the cave. do NOT loot the fossil yet
.goto Wetlands,38.81,52.39
>>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
.turnin 305 >>Turn in In Search of The Excavation Team
.target Merrin Rockweaver
.accept 306 >>Accept In Search of The Excavation Team
step
>>Go back onto the main road and follow it east
.goto Wetlands,34.51,41.70,100,0
.goto Wetlands,49.92,39.37
.target Einar Stonegrip
>>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >>Accept Daily Delivery
step
#completewith next
.goto Wetlands,50.20,37.73,0
.vendor >> Buy Healing Potions from Kixxle if you have money
step
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >>Turn in The Greenwarden
.target Rethiel the Greenwarden
.accept 276 >>Accept Tramping Paws
step
#completewith next
+It is HIGHLY Recommended you watch the Wetlands Section of the AoE guide, as the gnoll section can be a bit tricky (especially for new AoE mage players)
.link https://youtu.be/SxMc2GoP33c?t=555 >>CLICK HERE
step
.goto Wetlands,63.97,63.30,120,0
.goto Wetlands,62.69,69.21,120,0
.goto Wetlands,55.86,74.99,120,0
.goto Wetlands,61.64,72.37,120,0
.goto Wetlands,63.97,63.30,120,0
.goto Wetlands,62.69,69.21,120,0
.goto Wetlands,55.86,74.99,120,0
.goto Wetlands,61.64,72.37,120,0
>>Run back and forth between the four main gnoll camps, AoEing them all down
.complete 276,1 
.complete 276,2 
step
.xp 24 >> AoE the gnolls all the way until level 24
step
.goto Wetlands,56.32,40.41
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >>Turn in Tramping Paws
.target Rethiel the Greenwarden
.accept 277 >>Accept Fire Taboo
step
#requires Skins
.trainer >> Teleport back to Stormwind or Ironforge, and train your level 24 class spells
step
#completewith next
.goto Ironforge,35.92,60.15,0
+If you have a couple of stacks of wool/silk cloth, go to the bank and bank it
step
.hs >> Hearth to Menethil
>> Buy food/water if needed
step
>>Buy a Flagon of Mead from the Innkeeper
>>Also buy some level 25 drink down to 20 silver
.goto Wetlands,10.69,60.95
.complete 288,1 
step
.goto Wetlands,10.90,59.63
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >>Accept The Third Fleet
.turnin 288 >>Turn in The Third Fleet
.accept 289 >>Accept The Cursed Crew
step
>>Have at least 2 runes of teleportation. If you don't, buy some from Falkan
>>Remember to buy healing potions from Dewin in the building behind him too if needed
.goto Wetlands,8.33,56.45
.collect 17031,2 
step
>>Go into the Barracks. Talk to Stoutfist
.goto Wetlands,9.86,57.49
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.accept 464 >>Accept War Banners
step
.goto Wetlands,11.50,52.13
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >>Turn in In Search of The Excavation Team
step
.goto Wetlands,15.84,40.19,70,0
.goto Wetlands,19.65,40.08,70,0
.goto Wetlands,15.84,40.19,70,0
.goto Wetlands,19.65,40.08,70,0
>>AoE the murlocs in the area. Be careful as they have frost resistance, so save your cold snap for a big blizzard pull
>>If Cold Snap is down, kill the rest of the murlocs with relative safety using Arcane Explosion spam if frost nova gets resisted on pull (refer to video)
.complete 279,1 
.complete 279,2 
.unitscan Gobbler
step
.goto Wetlands,45.98,34.17
>>AoE some of the gnolls en route back to the gnolls you grinded from 22-24. Loot them for some of the flint needed
>>Trappers Net, Fenrunners run fast and at higher hp (25%), and brutes hit very hard
.collect 2611,5 
step
#sticky
#completewith next
.goto Wetlands,64.69,55.48,0
>>Also start AoEing the small Fenrunner pull at the trees just north of the northern-most AoE-able gnoll camp until you have all of your Flint
.complete 277,1 
step
.goto Wetlands,63.97,63.30,120,0
.goto Wetlands,62.69,69.21,120,0
.goto Wetlands,55.86,74.99,120,0
.goto Wetlands,61.64,72.37,120,0
>>Run back and forth between the four main gnoll camps, AoEing them all down
.xp 25 >> AoE the gnolls all the way until level 25
step
.goto Wetlands,45.98,34.17
>>Finish off getting the flint from the Gnolls
>>Trappers Net, Fenrunners run fast and at higher hp (25%), and brutes hit very hard
.collect 2611,9 
step
>>Keep AoEing the gnolls until you have less than 2 minutes on your Hearthstone cd
.goto Wetlands,56.36,40.48
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 277 >>Turn in Fire Taboo
.target Rethiel the Greenwarden
.accept 275 >>Accept Blisters on the Land
step
.hs >> Hearth to Menethil Harbor
>> Buy food/water if needed
step
.goto Wetlands,10.69,60.95
.vendor >>Buy some level 25 drink from the Innkeeper
>>Remember to Conjure level 15 food instead of buying it (and DONT buy level 25 food)
step
.goto Wetlands,8.33,58.58
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >>Turn in Claws from the Deep
.target Karl Boran
.accept 281 >>Accept Reclaiming Goods
step
.goto Wetlands,8.55,55.73
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 484 >>Turn in Young Crocolisk Skins
.target James Halloran
.accept 471 >>Accept Apprentice's Duties
step
>>Click on the Crate
.goto Wetlands,13.51,41.39
.turnin 281 >>Turn in Reclaiming Goods
.accept 284 >>Accept The Search Continues
step
>>Click on the barrel (5s casttime on opening it)
.goto Wetlands,13.62,38.20
.turnin 284 >>Turn in The Search Continues
.accept 285 >>Accept Search More Hovels
step
>>Click on the barrel
.goto Wetlands,13.94,34.80
.turnin 285 >>Turn in Search More Hovels
.accept 286 >>Accept Return the Statuette
step
#completewith next
+I suggest looking at the pulls for the undead here, as they can be extremely tricky
>>Mobs can be 3 levels above, and you have water disadvantage. There is a cheese aoe spot on the first boat you can abuse however
.link https://youtu.be/SxMc2GoP33c?t=899 >> CLICK HERE
step
#sticky
#label Snuffbox
>>Kill Snellig at the bottom of the first ship. Loot him for his Snuffbox
.goto Wetlands,13.82,30.18
.complete 289,3 
step
.goto Wetlands,13.93,29.75,60,0
.goto Wetlands,14.75,23.95,60,0
.goto Wetlands,13.93,29.75,60,0
.goto Wetlands,14.75,23.95,60,0
.complete 289,1 
.complete 289,2 
step
#sticky
#completewith Ormer
>>Kill the stealthed Fen Creepers found in the shallow parts of the inland water
.complete 275,1 
step
#requires Snuffbox
>>Kill Giant Crocolisks all along the coast. Loot them for their skins
>>Be careful as they Tendon Rip (really long movespeed slow ability)
.goto Wetlands,16.55,27.67,70,0
.goto Wetlands,25.72,20.22,70,0
.complete 471,1 
step
.isOnQuest 943
#sticky
#label Relu
>>AoE Raptors for the Stone of Relu
.complete 943,1 
step
>>AoE the raptors in the area
.goto Wetlands,29.35,45.02,70,0
.goto Wetlands,22.96,55.77,70,0
.complete 294,1 
.complete 294,2 
step
#label Ormer
.goto Wetlands,38.17,50.89
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >>Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 295 >>Accept Ormer's Revenge
step
.isOnQuest 943
>>Go into the cave. Loot the fossil on the ground
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.accept 299 >>Accept Uncovering the Past
.complete 943,2 
step
>>Go into the cave
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.accept 299 >>Accept Uncovering the Past
step
#sticky
#label Relics
>>Loot the relics found within the Excavation Site. They can be found all over (even up to where Sarltooth is)
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.goto Wetlands,34.81,44.02,80,0
.goto Wetlands,32.62,50.73,80,0
.complete 295,1 
.complete 295,2 
step
#requires Relics
>>Kite Sarltooth all the way back to Ormer without killing him until you pick up the next quest if you can, otherwise just turn in
.goto Wetlands,38.18,50.89
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >>Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 296 >>Accept Ormer's Revenge
step
>>Kill Sarltooth. Loot him for his Talon. He's found on the south-eastern part of the site, up the mountain
.goto Wetlands,33.11,51.40
.complete 296,1 
step
.goto Wetlands,38.18,50.89
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 296 >>Turn in Ormer's Revenge
step
>>Go into the cave
.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >>Turn in Uncovering the Past
step
#sticky
#label Creeperawman
>>Kill the stealthed Fen Creepers found in the shallow parts of the inland water
.complete 275,1 
step
.isOnQuest 943
#requires Relu
>>Run out of the Site to Ironbeard's Tomb. AoE Oozes. Loot them for Sida's Bag
.goto Wetlands,44.07,26.67
.complete 470,1 
step
>>Run out of the Site to Ironbeard's Tomb. AoE Oozes. Loot them for Sida's Bag
.goto Wetlands,44.07,26.67
.complete 470,1 
step
#requires Creeperawman
>>Run to the orc area. AoE them for their War Banners
>>Be careful as they attack fast, net, and have higher fire resistance
.goto Wetlands,43.71,43.98
.complete 464,1 
step
.goto Wetlands,56.36,40.48
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 275 >>Turn in Blisters on the Land
step
.hs >> Hearth to Menethil Harbor
>> Buy food/water if needed
step
#completewith Crew
.vendor >> Remember to buy level 25 drink/Healing Potions if needed. But save some money for level 26 training later
step
.isOnQuest 943
.goto Wetlands,10.84,60.43
>>Go upstairs
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 943 >>Turn in The Absent Minded Prospector
step
#label Crew
.goto Wetlands,10.91,59.63
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 289 >>Turn in The Cursed Crew
.target First Mate Fitzsimmons
.accept 290 >>Accept Lifting the Curse
step
.goto Wetlands,11.80,57.99
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >>Turn in Digging Through the Ooze
step
>>Go inside the barracks
.goto Wetlands,9.86,57.49
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 464 >> Turn in War Banners
.target Captain Stoutfist
.accept 465 >>Accept Nek'rosh's Gambit
step
.goto Wetlands,8.57,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >>Turn in Apprentice's Duties
step
#completewith next
.vendor >> Make sure you have at least 2 runes of teleportation from Falkan
.collect 17031,2 
step
.goto Wetlands,8.32,58.58
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >>Turn in Return the Statuette
step
.xp 26
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Talk to Jennea
.goto Stormwind City,38.62,79.30
.target Jennea Cannon
.target Bink
>>Talk to |cRXP_FRIENDLY_Bink|r

.accept 1939 >>Accept High Sorcerer Andromath
.trainer >> Train your level 26 spells
step
>>Go through the green portal, then turnin immediately on your left
.goto Stormwind City,37.53,81.65
>>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.turnin 1939 >>Turn in High Sorcerer Andromath
.target High Sorcerer Andromath
.accept 1938 >>Accept Ur's Treatise on Shadow Magic
step
#completewith next
+Bank cloth and/or buy more runes of teleportation if needed
>>You'll eventually need 12 stacks of Wool, Silk, Mageweave and Runecloth
step
.goto Stormwind City,66.28,62.14
.fly Redridge >> Fly to Redridge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
#classic
<< Alliance Hunter
#name 23-24 Wetlands
#next 24-27 Duskwood/Redridge
step
.goto Wetlands,8.54,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
step
.goto Wetlands,8.30,58.53
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >> Accept Claws from the Deep
step << NightElf
.goto Wetlands,9.49,59.70
.fp Wetlands >> Get the Wetlands flight path
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.accept 463 >> Accept The Greenwarden
step << !NightElf
.goto Wetlands,10.70,60.95
.home >> Set your Hearth to Menethil Harbor
>> Buy a Flagon of Mead from the Innkeeper
.complete 288,1
step
.goto Wetlands,10.84,60.43
>> Go upstairs, turn in The Absent Minded Prospector
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 942 >> Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
.accept 943 >> Accept The Absent Minded Prospector
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 288 >> Turn in The Third Fleet
step << Hunter
.goto Wetlands,11.5,52.1
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >> Accept In Search of The Excavation Team
step
#sticky
.goto Wetlands,10.75,56.75
.vendor 1448 >> Buy a Bronze Tube at the npc inside the keep
>>This is a limited supply item, skip this step if he doesn't have it

.bronzetube
step
#sticky
#label crocs
>> Kill Young Wetlands Crocolisks
.complete 484,1
step
.goto Wetlands,18.06,39.83
>> Kill Murlocs. Keep an eye out for Gobbler
.complete 279,1
.complete 279,2
.unitscan GOBBLER
step
.goto Wetlands,26.40,25.76
.vendor >> Look for a Bronze Tube at the gnome npc
>>This is a limited supply item, skip this step if he doesn't have it

.bronzetube
step << Hunter
.isQuestTurnedIn 942
#sticky
#completewith fossil
>> Kill and loot Raptors in Wetlands
.complete 943,1
step << Hunter
.goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >> Accept Ormer's Revenge
step << Hunter
.goto Wetlands,38.8,52.3
.target Merrin Rockweaver
>>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
.turnin 305 >> Turn in In Search of The Excavation Team
>>Skip the follow-up
step
.isQuestTurnedIn 942
.goto Wetlands,38.85,52.20
>> Loot the fossil on the ground at the back of the cave
.complete 943,2
step << Hunter
.goto Wetlands,24.7,48.6
>>Be careful as Screechers call for help in a 60 yard radius at about 50% health
.complete 294,1 
.complete 294,2 
step << Hunter
.goto Wetlands,38.179,50.889
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 295 >> Accept Ormer's Revenge
step << Hunter
.goto Wetlands,34.6,48.0
.complete 295,1 
.complete 295,2 
step << Hunter
.goto Wetlands,38.179,50.889
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 296 >> Accept Ormer's Revenge
step << Hunter
.goto Wetlands,33.2,51.5
.complete 296,1 
step << Hunter
#label fossil
.goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 296 >> Turn in Ormer's Revenge
>>By the time you finish this quest, if you havent found the stone of Relu from the raptors, skip this quest for now, you'll have another chance to finish that later at level 27
step
.goto Wetlands,49.91,39.36
.target Einar Stonegrip
>>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >> Accept Daily Delivery
step << Warrior
#sticky
#completewith next
.goto Wetlands,50.2,37.8
.vendor >>Check the herb vendor and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.accept 276 >> Accept Tramping Paws
.maxlevel 24
step
.goto Wetlands,61.91,71.32
>> Kill Gnolls
.complete 276,1
.complete 276,2
.maxlevel 24
step
#era
.xp 24 >> Grind to level 24
step
>>Keep grinding Gnolls until your hearth has <2 minutes left << !NightElf
.goto Wetlands,56.37,40.40
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >> Turn in Tramping Paws
.target Rethiel the Greenwarden
.accept 277 >> Accept Fire Taboo
.maxlevel 24
step << NightElf
#requires crocs
#completewith next
.goto Wetlands,63.9,78.6
.zone Loch Modan >> Logout on top of the mushrooms at the back of the cave. When you log back in, this will teleport you to Thelsamar
.link https://www.youtube.com/watch?v=21CuGto26Mk >> CLICK HERE for a reference
step << NightElf
#requires crocs
.goto Loch Modan,33.938,50.954
.fp Thelsamar >> Get the Thelsamar flight path
step << NightElf
.goto Loch Modan,21.30,68.60,40 >> Run to Dun Morogh
step << NightElf
>>Go inside the South-eastern Trogg cave. Perform a logout skip
.goto Dun Morogh,70.63,56.70,60,0
.goto Dun Morogh,70.60,54.86
.link https://www.youtube.com/watch?v=yQBW3KyguCM >> CLICK HERE
.zone Ironforge >> Logout Skip or travel to Ironforge
step << !NightElf
#requires crocs
.hs >> Hearth to Menethil
>> Buy food/water if needed
step << !NightElf
.goto Wetlands,9.49,59.70
.fly Ironforge >> Fly to Ironforge
step
#sticky
#label PowersB
.goto Ironforge,50.82,5.61
.target Gerrig Bonegrip
>>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.isOnQuest 968
step
#sticky
#label Colleague
.goto Ironforge,72.08,51.87
.target Lomac Gearstrip
>>Talk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.turnin 1072 >> Turn in An Old Colleague
.isOnQuest 1072
step
#sticky
.goto Ironforge,67.84,42.50
>> Buy a Bronze Tube if you haven't already
>>This is a limited supply item, skip this step if the npc doesn't have it

.bronzetube
step
#hidewindow
#requires PowersB
step
#requires Colleague
.goto Ironforge,76.03,50.98,30,0
.zone Stormwind City >> Take the tram to Stormwind
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
#classic
<< Alliance !Hunter
#name 23-23 Wetlands
#next 24-27 Duskwood/Redridge
step
.goto Wetlands,8.54,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.accept 484 >> Accept Young Crocolisk Skins
step
.goto Wetlands,8.30,58.53
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.accept 279 >> Accept Claws from the Deep
step << NightElf
.goto Wetlands,9.49,59.69
.fp Wetlands>> Get the Wetlands flight path
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 288 >> Accept The Third Fleet
.accept 463 >> Accept The Greenwarden
step
.goto Wetlands,10.69,60.95
.home >> Set your Hearth to Menethil Harbor
>> Buy a Flagon of Mead from the innkeeper
.complete 288,1
step
.goto Wetlands,10.84,60.43
>> Go upstairs, turn in The Absent Minded Prospector, skip the follow up
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 942 >> Turn in The Absent Minded Prospector
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 288 >> Turn in The Third Fleet
step
.goto Wetlands,10.75,56.75
.vendor 1448 >> Look for a Bronze Tube at the npc inside the keep on the bottom floor
>>This is a limited supply item, skip this step if the npc doesn't have it

.bronzetube
step
#sticky
#label crocs
>> Kill Young Wetlands Crocolisks
.complete 484,1
step
>> Kill Murlocs. Keep an eye out for Gobbler
.goto Wetlands,18.06,39.83
.complete 279,1
.complete 279,2
.unitscan GOBBLER
step
.goto Wetlands,26.40,25.76
.vendor >> Look for a Bronze Tube at the gnome npc
>>This is a limited supply item, skip this step if the npc doesn't have it

.bronzetube
step
.goto Wetlands,49.91,39.36
.target Einar Stonegrip
>>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
.accept 469 >> Accept Daily Delivery
step << Warrior
#sticky
#completewith next
.goto Wetlands,50.2,37.8
.vendor >>Check the herb vendor and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 463 >> Turn in The Greenwarden
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.accept 276 >> Accept Tramping Paws
.maxlevel 24
step
>>Kill Gnolls
.goto Wetlands,61.91,71.32
.complete 276,1
.complete 276,2
.maxlevel 24
step
>>Keep grinding Gnolls until your hearth has <2 minutes left
.goto Wetlands,56.37,40.40
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >> Turn in Tramping Paws
.target Rethiel the Greenwarden
.accept 277 >> Accept Fire Taboo
.maxlevel 24
step
#era
.goto Wetlands,61.91,71.32
.xp 24 >> Grind gnolls to level 24
step
#completewith next
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.accept 276 >> Accept Tramping Paws
step
#completewith next
>>Kill Gnolls
.goto Wetlands,61.91,71.32
.complete 276,1
.complete 276,2
step
#completewith next
>>Keep grinding Gnolls until your hearth has <2 minutes left
.goto Wetlands,56.37,40.40
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 276 >> Turn in Tramping Paws
.target Rethiel the Greenwarden
.accept 277 >> Accept Fire Taboo
step
#som
#phase 3-6
#requires crocs
.hs >> Hearth back to Menethil Harbor
>> If your hearthstone isn't up, do the Tramping Paws quest (If you haven't)
>> Buy food/water if needed
step
#era/som
#requires crocs
.hs >> Hearth back to Menethil Harbor
>> Buy food/water if needed
step
#som
#phase 3-6
.goto Wetlands,8.30,58.53
.abandon 276 >> Abandon Tramping Paws
step
.goto Wetlands,8.30,58.53
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
.accept 281 >> Accept Reclaiming Goods
step
.goto Wetlands,8.54,55.73
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 469 >> Turn in Daily Delivery
.turnin 484 >> Turn in Young Crocolisk Skins
.target James Halloran
.accept 471 >> Accept Apprentice's Duties
step
.goto Wetlands,9.49,59.69
.fly Ironforge >> Fly to Ironforge
step << !Druid
.goto Ironforge,69.88,82.90 << Hunter
.goto Ironforge,65.90,88.41 << Warrior
.goto Ironforge,50.34,5.67 << Warlock
.goto Ironforge,51.50,15.34 << Rogue
.goto Ironforge,25.21,10.75 << Priest
.goto Ironforge,27.17,8.57 << Mage
.goto Ironforge,24.55,4.46 << Paladin
.trainer >> Train your class spells
.goto Ironforge,52.7,6.1 << Warlock
.vendor >> Buy pet spellbooks for your Succubus. Buy voidwalker ones too if you have a lot of gold << Warlock
step << Mage
.goto Ironforge,25.51,7.09 << Mage
.trainer >> Train the Ironforge Portal
step
.goto Ironforge,50.82,5.61
.target Gerrig Bonegrip
>>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 968 >> Turn in The Powers Below
.isOnQuest 968
step
.goto Ironforge,67.84,42.50
.vendor >> Buy a Bronze Tube if you haven't already
>>This is a limited supply item, skip this step if the npc doesn't have it

.bronzetube
step
.goto Ironforge,72.08,51.87
.target Lomac Gearstrip
>>Talk to |cRXP_FRIENDLY_Lomac Gearstrip|r
.turnin 1072 >> Turn in An Old Colleague
.isOnQuest 1072
step
.goto Ironforge,76.61,51.28,30,0
.zone Stormwind City >> Take the tram to Stormwind
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
#classic
<< Alliance
#name 24-27 Duskwood/Redridge
#next 27-29 Wetlands/Hillsbrad
step << Hunter
#sticky
.bankdeposit 3618,3347,3397,5233,5234 >> Deposit the following items in your bank:
>>Gobbler's Head
>>Bundle of Crocolisk Skins
>>Young Crocolisk Skin (x4)
>>Stone of Relu << Hunter
>>Flagongut's Fossil << Hunter
step
#completewith next
.goto Stormwind City,55.21,7.04
.vendor >> Buy a Bronze Tube if you haven't
>>This is a limited supply item, skip this step if the npc doesn't have it

.bronzetube
step << Warlock
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb. Go downstairs
step << Warlock
.goto Stormwind City,25.25,78.55
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1738 >> Turn in Heartswood
.target Gakin the Darkbinder
.accept 1739 >> Accept The Binding
step << Warlock
.goto Stormwind City,25.16,77.43
>> Run downstairs. Summon a Succubus, then kill her while running back to the quest giver
.complete 1739,1
step << Warlock
>>Use the Succubus from now on, as they deal a lot of damage
>>Use a Voidwalker if you want to be really safe
.goto Stormwind City,25.25,78.55
.target Gakin the Darkbinder
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.turnin 1739 >> Turn in The Binding
step
#era
.goto Stormwind City,42.79,80.15
>>Talk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1075 >> Turn in A Scroll from Mauren
.target Collin Mauren
.accept 1076 >> Accept Devils in Westfall
step
#som
.goto Stormwind City,42.79,80.15
>>Talk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1075 >> Turn in A Scroll from Mauren
.target Collin Mauren
.accept 1076 >> Accept Devils in Westfall
.isOnQuest 1075
step << Rogue
.goto Stormwind City,52.8,65.4
.home >> Set your Hearthstone to Stormwind
step << Mage
#completewith next
.goto Stormwind City,56.12,65.26
.vendor >>Go into the building. Buy a Rune of Teleportation from Kyra
.collect 17031,1 
step
#completewith next
.goto Stormwind City,71.19,89.10
.zone Elwynn Forest >> Head to Elwynn Forest
step
>>Run to the north-west corner of Duskwood
.goto Westfall,68.33,39.18
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
.accept 226 >> Accept Wolves at Our Heels
.maxlevel 24
step
.isOnQuest 226
#sticky
#label Wolves
.goto Duskwood,48.0,17.2,85,0
.goto Duskwood,48.0,17.2,0
>> Kill Wolves along the North/North-West river bank
.complete 226,1
.complete 226,2
step
#som
#phase 3-6
.goto Stormwind City,66.28,62.13
.fly Redridge >> If you're level 25 or higher, Fly to Redridge
step
.goto Duskwood,75.81,45.29
>> Run to Darkshire
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.accept 66 >> Accept The Legend of Stalvan
.accept 101 >> Accept The Totem of Infliction
step << !Rogue
.goto Duskwood,73.90,43.40
.home >> Set your hearth to Duskwood
step
.goto Duskwood,73.59,46.89
>> Head towards the Town Hall
.target Commander Althea Ebonlocke
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 56 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 66 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 67 >> Accept The Legend of Stalvan
step
.goto Duskwood,75.33,48.69
>> Speak with Elaine Carevin
.target Elaine Carevin
>>Talk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 163 >> Accept Raven Hill
.accept 165 >> Accept The Hermit
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>Talk to |cRXP_FRIENDLY_Elaine Carevin|r
.accept 164 >> Accept Deliveries to Sven
>>If you can't pick up this quest you need to drop Sven's Revenge from your quest log
step
.goto Duskwood,77.5,44.3
.fp Duskwood>> Get the Duskwood Flight Path
step
#completewith next
.goto Duskwood,77.99,48.33
.vendor >> Buy a Bronze Tube if you don't have one
>>This is a limited supply item, skip this step if the npc doesn't have it

.bronzetube
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
step
.goto Duskwood,79.80,48.02
>> Skip this step if you haven't found a bronze tube yet
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 174 >> Turn in Look To The Stars
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>> Head south towards the chapel
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.target Blind Mary
.accept 177 >> Accept Look To The Stars
.isQuestTurnedIn 174
step
#completewith HistoryBook1
>>Keep an eye out for the Old History Book (zone-wide drop). This is a free quest turnin
>>Don't start the quest for it yet
.collect 2794,1,337,1 

step
#completewith next
>>Kill Warriors and Mages
>>Be careful as Mages have Frost Armor and Frostbolt, and Warriors Hamstring which deals a decent amount of damage
.goto Duskwood,79.40,70.77
.complete 56,1
.complete 56,2
step
.goto Duskwood,81.20,71.47
>> Kill the Insane Ghoul. He can be inside the Chapel or patrol around the graveyard
.complete 177,1
.isQuestTurnedIn 174
step
#label HistoryBook1
>>Kill Warriors and Mages
>>Be careful as Mages have Frost Armor and Frostbolt, and Warriors Hamstring which deals a decent amount of damage
.goto Duskwood,79.40,70.77
.complete 56,1
.complete 56,2
step
#era
.goto Westfall,97.18,65.28
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.accept 245 >> Accept Eight-Legged Menaces
step
.goto Westfall,76.55,57.05
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 163 >> Turn in Raven Hill
.target Jitters
.accept 5 >> Accept Jitters' Growling Gut
step
#era
#sticky
>> Kill spiders along the western river bank
>>Don't go out of your way to do this quest, skip it if necessary
.complete 245,1
step
#requires Wolves
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 164 >> Turn in Deliveries to Sven
.target Sven Yorgen
.accept 95 >> Accept Sven's Revenge
step
.goto Duskwood,7.71,33.19
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
.turnin 226 >> Turn in Wolves at Our Heels
step
.goto Westfall,84.06,37.84
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 165 >> Turn in The Hermit
.target Abercrombie
.accept 148 >> Accept Supplies from Darkshire
step
#era/som
>>Grind mobs until your Hearthstone cooldown is <5min
>>Kill Spiders in Duskwood
.goto Duskwood,10.69,59.86,90,0
.goto Duskwood,8.82,38.44
.collect 2251,6,93,1
.collect 1475,1,2359,1 << Rogue !Dwarf
>>You'll need 1 venom sac to craft an anti-venom for the upcoming Rogue quest in Stormwind << Rogue !Dwarf
step
#som
#phase 3-6
>>Kill Spiders in Duskwood
.goto Duskwood,10.69,59.86,90,0
.goto Duskwood,8.82,38.44
.collect 2251,6,93,1
.collect 1475,1,2359,1 << Rogue !Dwarf
>>You'll need 1 venom sac to craft an anti-venom for the upcoming Rogue quest in Stormwind << Rogue !Dwarf
step
#era
#sticky
#label devils
.goto Westfall,40.14,60.85,0
>> Look for dust devils, they can spawn all over the zone
>>Use eagle eye to find them << Hunter
.complete 1076,1
.unitscan DUST DEVIL
step
#som
#completewith MoonbrookSt
.goto Westfall,40.14,60.85,0
>> Look for dust devils, they can spawn all over the zone
>> Don't focus on completing this quest
>>Use eagle eye to find them << Hunter
.complete 1076,1
.unitscan DUST DEVIL
step
.goto Westfall,56.55,52.63
.fp Westfall>> Get the Westfall Flight Path
step << Rogue
.goto Westfall,68.5,70.0
>>Talk to |cRXP_FRIENDLY_Agent Kearnen|r
.turnin 2360 >> Turn in Mathias and the Defias
.target Agent Kearnen
.accept 2359 >> Accept Klaven's Tower
step << Rogue
.goto Westfall,70.6,72.8
>>Pickpocket one of the Defias Drones outside and loot the tower key
.complete 2359,2 
.link https://www.youtube.com/watch?v=t05Ux5Qis9k >> Click here for video reference
step << Rogue
.goto Westfall,70.4,74.0
>>Climb to the top of the tower and loot the small chest on the floor
.complete 2359,1 
.link https://www.youtube.com/watch?v=t05Ux5Qis9k >> Click here for video reference
step
#era
#requires devils
step
#label MoonbrookSt
.goto Westfall,41.51,66.72
>> Make sure you have at least 1 bag slot
>>Click on the footlocker on the ground
.turnin 67 >> Turn in The Legend of Stalvan
.accept 68 >> Accept The Legend of Stalvan
step << Druid
.goto Westfall,18.0,33.2
>>Loot the lockbox located deep underwater
.collect 15882,1,272,1 
step << Druid
.goto Moonglade,36.0,41.4
>>Teleport to moonglade
>>Combine the 2 pendants at the Shrine of Remulos
.complete 272,1 
step << Druid
.goto Moonglade,56.209,30.636
>>Teleport back to Nighthaven
>>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
.turnin 272 >> Turn in Trial of the Sea Lion
.target Dendrite Starblaze
.accept 5061 >> Accept Aquatic Form
step << Druid
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Druid
#sticky
#completewith next
.goto Moonglade,44.1,45.2
.fly Teldrassil>> Fly to Teldrassil
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 5061 >> Turn in Aquatic Form
step << Rogue
#completewith next
.goto Westfall,56.55,52.63
.hs >> Hearth to Stormwind
>> Buy food if needed
>> Run back to the Westfall Flight Master and fly to Stormwind if your hearth it isn't up
step << Rogue
.zone Stormwind City >> Travel to Stormwind
step << Rogue
.goto Stormwind City,74.90,54.00,20,0
.goto Stormwind City,78.67,59.48,20,0
.goto Stormwind City,75.9,59.9
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 2359 >> Turn in Klaven's Tower
.target Master Mathias Shaw
.accept 2607 >> Accept The Touch of Zanzil
step << Rogue
.goto Stormwind City,78.1,59.0
>>Head to the basement
.target Doc Mixilpixil
>>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
.turnin 2607 >> Turn in The Touch of Zanzil

step << fRogue
.goto Stormwind City,78.1,59.0
>>Type /lay on the chat and wait until the quest complete itself
.complete 2608,1 
step << fRogue
.goto Stormwind City,78.0,58.8
>>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
.turnin 2608 >> Turn in The Touch of Zanzil
.target Doc Mixilpixil
.accept 2609 >> Accept The Touch of Zanzil
step << fRogue
.goto Stormwind City,78.2,59.0
>>Buy a Leaded Vial from the Shady Dealer
.complete 2609,2 
step << fRogue
>>Head to the flower vendor
.complete 2609,1 
.goto Stormwind City,64.3,60.8
step << fRogue
>>Buy a Bronze Tube at the Auction House
.complete 2609,3 
.goto Stormwind City,53.6,59.3
>>Head to the shop next to the bridge between the Cathedral Square and the Park
.complete 2609,4 
.goto Stormwind City,39.8,46.5
>>If you can't find a bronze tube, you will have to skip this quest, train First Aid to 80, farm a small venom sac from spiders in Duskwood, craft an Anti-Venom and remove the Zanzil poison.
step << fRogue
.goto Stormwind City,78.0,58.9
.target Doc Mixilpixil
>>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
.turnin 2609 >> Turn in The Touch of Zanzil
step << Rogue !Dwarf
.goto Stormwind City,42.8,26.6
.train 6452 >> Train First Aid to 80, use the Venom Sac you farmed earlier to craft an Anti-Venom and remove the Zanzil poison.
step << Rogue
.goto Stormwind City,66.2,62.4
.fly Duskwood>> Fly to Duskwood
step << Paladin
.goto Westfall,42.5,88.6
>>Talk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1650 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1651 >>Accept The Tome of Valor
step << Paladin
.goto Westfall,42.5,88.6
.complete 1651,1 
>>Talk to |cRXP_FRIENDLY_Daphne Stilwell|r
.turnin 1651 >>Turn in The Tome of Valor
.target Daphne Stilwell
.accept 1652 >>Accept The Tome of Valor
step << !Rogue
#completewith next
.goto Westfall,56.55,52.63
.hs >> Hearth back to Duskwood
>> Buy food/water if needed
>> Run back to the Westfall Flight Master and fly to Darkshire if your hearth it isn't up
step << !Rogue
.zone Duskwood >> Travel to Duskwood
step
.goto Duskwood,73.88,43.45
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
.turnin 5 >> Turn in Jitters' Growling Gut
.target Chef Grual
.accept 93 >> Accept Dusky Crab Cakes
step
.goto Duskwood,73.59,46.89
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 56 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 57 >> Accept The Night Watch
step
.goto Duskwood,72.53,46.85
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 68 >> Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 69 >> Accept The Legend of Stalvan
step
.goto Duskwood,75.81,45.29
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 148 >> Turn in Supplies from Darkshire
.target Madame Eva
.accept 149 >> Accept Ghost Hair Thread
step << Hunter
#completewith next
.goto Duskwood,81.83,19.77,60,0
.goto Duskwood,93.93,10.67,60,0
.goto Duskwood,93.93,10.67,0
.zone Redridge Mountains >> Head to Redridge
step << Hunter
.goto Redridge Mountains,30.6,59.4
.fp Redridge>>Get the Redridge Mountains Flight Path
step << Hunter
#era
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>Talk to |cRXP_FRIENDLY_Guard Howe|r
.accept 128 >> Accept Blackrock Bounty
step << !Hunter
#completewith next
.goto Duskwood,77.49,44.29
.fly Redridge >> Fly to Redridge
.maxlevel 25
step
.goto Redridge Mountains,33.50,48.96
>> Head to Lakeshire
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 20 >> Accept Blackrock Menace
.maxlevel 25
step << Hunter
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.maxlevel 25
step << Hunter
.goto Redridge Mountains,15.68,49.30
>> Kill Bellygrub. Loot her for her tusk
.complete 34,1
.isOnQuest 34
step << Hunter
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
.goto Redridge Mountains,27.34,47.29
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
.accept 127 >> Accept Selling Fish
.accept 150 >> Accept Murloc Poachers
.maxlevel 25
step
#completewith next
.goto Redridge Mountains,56.4,51.8,0
>> Kill Murlocs. Loot them for Sunfish and Fins
.complete 150,1
.complete 127,1
.isOnQuest 150
.isOnQuest 127
step
.goto Redridge Mountains,61.76,43.51
>> Prioritize killing orcs
>>Once you clear the camp, kill murlocs southwest while you wait for respawns
.complete 20,1
.isOnQuest 20
step
.goto Redridge Mountains,56.4,51.8
>> Kill Murlocs. Loot them for Sunfish and Fins
.complete 150,1
.complete 127,1
.isOnQuest 150
.isOnQuest 127
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 20 >> Turn in Blackrock Menace
.isQuestComplete 20
step
#completewith next
.goto Redridge Mountains,26.75,46.43
>> Click on the wanted poster
.accept 180 >> Accept Wanted: Lieutenant Fangore
.maxlevel 25
step
.goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 127 >> Turn in Selling Fish
.isQuestComplete 127
step
.goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
.turnin 150 >> Turn in Murloc Poachers
.isQuestComplete 150
step << Hunter
.goto Redridge Mountains,26.75,46.43
>> Click on the wanted poster
.accept 180 >> Accept Wanted: Lieutenant Fangore
.maxlevel 25
step << Hunter
.goto Redridge Mountains,29.71,44.26
>> Go inside the Town Hall
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >> Accept Solomon's Law
.maxlevel 25
step
#completewith next
.goto Redridge Mountains,30.58,59.42
.fly Duskwood >> Fly to Duskwood
.zoneskip Duskwood
step
.goto Duskwood,81.98,59.08
>> Head to the small farmhouse southeast of Darkshire
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 149 >> Turn in Ghost Hair Thread
.target Blind Mary
.accept 154 >> Accept Return the Comb
step
.goto Duskwood,75.81,45.29
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 154 >> Turn in Return the Comb
.target Madame Eva
.accept 157 >> Accept Deliver the Thread
step
.goto Duskwood,49.85,77.71
.turnin 95 >> Turn in Sven's Revenge
.accept 230 >> Accept Sven's Camp
step
#era
.goto Westfall,97.18,65.28
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.turnin 245 >> Turn in Eight-Legged Menaces
.isQuestComplete 245
step
#era
#sticky
.abandon 245 >> Abandon Eight-Legged Menaces if you haven't killed all 15 spiders
step
.goto Westfall,84.06,37.84
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >> Turn in Deliver the Thread
.target Abercrombie
.accept 158 >> Accept Zombie Juice
step
.goto Westfall,68.38,39.85
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 230 >> Turn in Sven's Camp
.target Sven Yorgen
.accept 262 >> Accept The Shadowy Figure
step
#era
.goto Duskwood,21.35,46.80
.xp 25+29845 >> Grind to 29845+/34000xp
step
.goto Westfall,85.72,2.68
>>Head to Goldshire
>>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
.turnin 69 >> Turn in The Legend of Stalvan
.target Innkeeper Farley
.accept 70 >> Accept The Legend of Stalvan
step
.goto Westfall,86.25,2.70
>> Run up the stairs
>>Loot the chest on the floor
.complete 70,1
step << Mage
#sticky
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> Teleport to Stormwind
step
#era
.goto Stormwind City,43.08,80.39
>>Talk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1076 >> Turn in Devils in Westfall
.target Collin Mauren
.accept 1078 >> Accept Retrieval for Mauren << !Hunter
step
#som
.isQuestComplete 1076
.goto Stormwind City,43.08,80.39
.target Collin Mauren
>>Talk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1076 >> Turn in Devils in Westfall
step
#som
#sticky
.abandon 1076 >> Abandon Devils in Westfall
step << !Warlock !Mage
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << !Warlock !Mage
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>Talk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.accept 335 >> Accept A Noble Brew
step
.goto Stormwind City,29.56,61.93
>>Talk to |cRXP_FRIENDLY_Caretaker Folsom|r
.turnin 70 >> Turn in The Legend of Stalvan
.target Caretaker Folsom
.accept 72 >> Accept The Legend of Stalvan
step
.goto Stormwind City,29.44,61.52
>> Click on the crate nearby
.turnin 72 >> Turn in The Legend of Stalvan
.accept 74 >> Accept The Legend of Stalvan
step << Warlock/Mage
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock/Mage
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>Talk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.accept 335 >> Accept A Noble Brew
.trainer >> Train your class spells << Warlock
step << Mage
>>Teleport or run back to the mage tower
.goto Stormwind City,36.87,81.14
.trainer >> Train your class spells
step << !Mage !Warlock
.goto Stormwind City,42.66,33.75,30,0 << Paladin/Priest
.goto Stormwind City,39.81,29.79 << Paladin
.target Duthorian Rall
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
.turnin 1652 >>Turn in The Tome of Valor << Paladin
.goto Stormwind City,38.68,32.85 << Paladin
.goto Stormwind City,38.54,26.86 << Priest
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,61.61,15.27 << Hunter
.goto Stormwind City,74.64,52.82 << Rogue
.goto Stormwind City,20.89,55.50 << Druid
.trainer >> Train your class spells
step << Mage
#completewith next
.goto Stormwind City,56.12,65.26
.vendor >>Go into the building. Buy 2 Runes of Teleportation from Kyra
.collect 17031,2 
step
.goto Stormwind City,66.29,62.14
.fly Darkshire >> Fly to Duskwood
step
.isOnQuest 177
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars

step
.goto Duskwood,75.30,48.04
.target Calor
>>Talk to |cRXP_FRIENDLY_Calor|r
.accept 173 >>Accept Worgen in the Woods
step
.goto Duskwood,75.81,45.29
>> Speak with Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 262 >> Turn in The Shadowy Figure
.target Madame Eva
.accept 265 >> Accept The Shadowy Search Continues
step
.goto Duskwood,72.53,46.85
>>Head to the Town Hall
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 265 >> Turn in The Shadowy Search Continues
.target Clerk Daltry
.accept 266 >> Accept Inquire at the Inn
step
.goto Duskwood,73.77,44.48
>>Run to the Inn
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 158 >> Turn in Zombie Juice
.target Tavernkeep Smitts
.accept 156 >> Accept Gather Rot Blossoms
.turnin 266 >> Turn in Inquire at the Inn
.accept 453 >> Accept Finding the Shadowy Figure
step
.goto Duskwood,73.88,43.45
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
.turnin 93 >> Turn in Dusky Crab Cakes
.target Chef Grual
.accept 240 >> Accept Return to Jitters
step
#completewith HistoryBook
>>Keep an eye out for the Old History Book (zone-wide drop). This is a free quest turnin
>>Don't start the quest for it yet
.collect 2794,1,337,1 

step
.goto Westfall,79.63,48.10
>> Kill skeletons at the Raven Hill Cemetery
.complete 57,1
.complete 57,2
.complete 156,1
step
.goto Duskwood,18.37,56.36
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 453 >> Turn in Finding the Shadowy Figure
.target Jitters
.accept 268 >> Accept Return to Sven
.turnin 240 >> Turn in Return to Jitters
step
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >> Turn in Return to Sven
.target Sven Yorgen
.accept 323 >> Accept Proving Your Worth
step
.goto Duskwood,15.93,36.85
>> Kill undead mobs around and inside the crypt. Focus on the Skeletal Raiders. careful with the level 35 elite roaming the cemetery
.complete 323,1
.complete 323,2
.complete 323,3
.unitscan Mor'Ladim
step
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >> Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >> Accept Seeking Wisdom
step
#era/som
#completewith dusk2
.hs >> Grind mobs until your Hearthstone is off cooldown, then hearth to Darkshire
>> Buy food/water if needed
step
#som
#phase 3-6
#completewith next
.goto Westfall,56.55,52.63
.fly Darkshire >> Fly to Darkshire
step
#som
#phase 3-6
#completewith dusk2
.hs >> Hearth to Darkshire if its up, otherwise run to Westfall and fly to Darkshire
>> Buy food/water if needed
step
#softcore
#completewith next
.fly Duskwood >> If you haven't found a Bronze Tube, save your Hearthstone cooldown and fly from Westfall to Duskwood
.bronzetube
step
#label dusk2
.goto Duskwood,73.77,44.48
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 156 >> Turn in Gather Rot Blossoms
.target Tavernkeep Smitts
.accept 159 >> Accept Juice Delivery
step
.goto Duskwood,73.59,46.89
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 57 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 58 >> Accept The Night Watch
step
#label HistoryBook
#completewith RRstart2
.goto Duskwood,77.49,44.29
.fly Redridge >> Fly to Redridge
>>Run along the road north to Redridge if you don't have the redridge Flight Path yet
.zoneskip Redridge Mountains
.maxlevel 27
step
#sticky
#softcore
.home >> Set your Hearthstone to redridge if you haven't found a bronze tube
>>Skip this step if you purchased it already
.bronzetube
.maxlevel 27
step
#era
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>Talk to |cRXP_FRIENDLY_Guard Howe|r
.accept 128 >> Accept Blackrock Bounty
.maxlevel 27
step << Hunter/Warlock
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
.accept 19 >> Accept Tharil'zun
.isQuestTurnedIn 20
.maxlevel 27
step << !Hunter
.goto Redridge Mountains,31.00,47.30
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
.accept 126 >> Accept Howling in the Hills
.isQuestTurnedIn 124
.maxlevel 27
step
.goto Redridge Mountains,29.71,44.26
>> Go inside the town hall
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >> Accept Solomon's Law
.maxlevel 27
step
.goto Redridge Mountains,26.75,46.43
>> Click on the wanted poster
.accept 180 >> Accept Wanted: Lieutenant Fangore
.maxlevel 27
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
.accept 34 >> Accept An Unwelcome Guest
.maxlevel 27
step
.goto Redridge Mountains,15.68,49.30
>> Kill Bellygrub. Loot her for her tusk
.complete 34,1
.isOnQuest 34
step
#label RRstart2 << !Hunter !Warlock
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
.turnin 34 >> Turn in An Unwelcome Guest
.isQuestComplete 34
step
.goto Redridge Mountains,27.65,21.38
>>Kill Yowler, he patrols along the northern gnoll camps
.complete 126,1
.isOnQuest 126
step
#sticky
#label fangore
.goto Redridge Mountains,80.17,37.05
>> Kill Lieutenant Fangore, you'll have to deal with him and 2 adds
>> He is immune to Shadow, be careful << Warlock/Priest
.complete 180,1
.isOnQuest 180
step
#sticky
#label Eye
.goto Redridge Mountains,84.50,46.80
.turnin 94 >> Turn in A Watchful Eye
.isOnQuest 94
step
.goto Redridge Mountains,77.52,36.31
>> Kill Gnolls, loot their pendants
.complete 91,1
.isOnQuest 91
step << Hunter/Warlock
#requires Eye
.goto Redridge Mountains,71.40,55.07
>> Kite Tharil'zun towards Burning steppes
>> You can pull him from down below with your pet
>>This quest can be very hard, skip this step if you have to
.link https://www.twitch.tv/videos/669042013?t=04h12m27s >> Click here for video reference << Warlock
.link https://www.twitch.tv/videos/781037891?t=02h04m41s >> Click here for video reference << Hunter
.complete 19,1
.unitscan THARIL'ZUN
.isOnQuest 19
step
#era
#requires Eye
.goto Redridge Mountains,28.89,13.20
>> Do Blackrock Bounty
.complete 128,1
.isOnQuest 128
step
#era
#sticky
#softcore
.goto Burning Steppes,78.12,75.48,90,0
.goto Burning Steppes,66.06,21.96
.maxlevel 27
.vendor >> If you haven't found a bronze tube, skip the escort quest, run north to Burning Steppes, die on purpose, buy a bronze tube from Yuka in the cave at Flame's Crest and hearth back to Redridge
.bronzetube
step
#som
#sticky
#softcore
.goto Burning Steppes,78.12,75.48,90,0
.goto Burning Steppes,66.06,21.96
.maxlevel 27
.vendor >> If you haven't found a bronze tube, run north to Burning Steppes, die on purpose, buy a bronze tube from Yuka in the cave at Flame's Crest and hearth back to Redridge
.bronzetube
step
#era
.goto Redridge Mountains,28.40,12.60
>>Go to the back of the cave, and start the escort quest. This quest can be very hard, be careful to not pull too many mobs right after you leave the cave
.target Corporal Keeshan
>>Talk to |cRXP_FRIENDLY_Corporal Keeshan|r
.accept 219 >> Accept Missing In Action
.maxlevel 27
step
#era
>>Escort Keeshan, be careful to not pull too many mobs right after you leave the cave.
.complete 219,1
.isOnQuest 219
step << Hunter/Warlock
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 19 >> Turn in Tharil'zun
.isQuestComplete 19
step
#era
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
.turnin 219 >> Turn in Missing In Action
.isQuestComplete 219
step
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.turnin 91 >> Turn in Solomon's Law
.isQuestComplete 91
step
.goto Redridge Mountains,29.71,44.26
.target Magistrate Solomon
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 180 >> Turn in Wanted: Lieutenant Fangore
.isQuestComplete 91
step
.goto Redridge Mountains,30.97,47.27
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
.turnin 126 >> Turn in Howling in the Hills
.isQuestComplete 126
step
#era
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>Talk to |cRXP_FRIENDLY_Guard Howe|r
.turnin 128 >> Turn in Blackrock Bounty
.isQuestComplete 128
step << !Mage
.fly Stormwind>> Fly to Stormwind
step << Mage
.zone Stormwind City>> Teleport or Fly to Stormwind
]])
RXPGuides.RegisterGuide([[
#version 7
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#classic
<< Alliance Mage
#name 26-31 Duskwood Part 2 Mage AoE
#next 31-33 Hillsbrad Mage AoE
step
.goto Redridge Mountains,26.76,46.40
.accept 180 >>Accept Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,29.72,44.27
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.accept 91 >>Accept Solomon's Law
step
#sticky
#label Pendants
>>AoE gnolls. Loot them for Shadowhide Pendants
.complete 91,1 
step
>>Kill Lieutenant Fangore. Be careful as he pulls as a pack of 3. You can split pull them all with Blizzard if needed
>>Loot his paw
.goto Redridge Mountains,80.17,37.08
.complete 180,1 
step
#requires Pendants
>>Go to the top floor of the tower. Loot the Blue book sticking out of the bookcase
>>Do not pull Morganth. Be careful as the Servants have high Arcane resistance and Mana burn
>>Be careful of the slayers, as they execute you when you're below 20% hp
.goto Redridge Mountains,78.88,47.66
.complete 1938,1 
step
.zone Stormwind City >> Teleport to Stormwind
step
>>Go through the green portal, on your left
.goto Stormwind City,37.53,81.66
>>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.turnin 1938 >>Turn in Ur's Treatise on Shadow Magic
.target High Sorcerer Andromath
.accept 1940 >>Accept Pristine Spider Silk
step
.goto Stormwind City,66.28,62.14
.fly Darkshire >> Fly to Duskwood
step
>>Inside the house
.goto Duskwood,75.79,45.30
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.accept 66 >>Accept The Legend of Stalvan

step
.goto Duskwood,75.30,48.04
.target Calor
>>Talk to |cRXP_FRIENDLY_Calor|r
.accept 173 >>Accept Worgen in the Woods
step
.home >> Set your hearth to Darkshire
.goto Duskwood,73.87,44.41
step
.goto Duskwood,72.53,46.85
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 66 >>Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 67 >>Accept The Legend of Stalvan
step
>>Run to the Defias Farm. Click the dirt mound
>>Be careful as there are stealthed mobs around that slow, and mobs can run easily through the wall into the barn and awkwardly pull mobs
.goto Duskwood,49.86,77.72
.turnin 95 >>Turn in Sven's Revenge
.accept 230 >>Accept Sven's Camp
step
.isOnQuest 245
>>If Stitches has killed the questgiver, skip this and turn in some other time
.goto Duskwood,45.12,67.03
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.turnin 245 >>Turn in Eight-Legged Menaces
step
>>AoE spiders for Pristine Spider Silk and Vials of Spider Venom en route to Abercrombie
.goto Duskwood,31.70,41.98
.complete 101,2 
.complete 1940,1 
step
.goto Duskwood,28.11,31.46
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 157 >>Turn in Deliver the Thread
.target Abercrombie
.accept 158 >>Accept Zombie Juice
step
>>AoE all the nearby ghouls en route
.goto Duskwood,7.81,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 230 >>Turn in Sven's Camp
.target Sven Yorgen
.accept 262 >>Accept The Shadowy Figure
step
#completewith next
>>Keep an eye out for the Old History Book that drops from humanoids in the zone
.collect 2794,1,337
.accept 337 >> Accept An Old History Book
step
#completewith next
>>AoE kill some Fiends and Horrors until you have 4 minutes left on your hearthstone. Kill other mobs if you're waiting on respawns
.complete 57,1 
.complete 57,2 
.complete 101,3 
step
.goto Duskwood,18.14,56.47
.target Jitters
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 240 >>Turn in Return to Jitters
step
>>Run all the way west into Westfall. Go into the Moonbrook Schoolhouse and open the footlocker on the ground
.goto Westfall,41.51,66.72
.turnin 67 >>Turn in The Legend of Stalvan
.accept 68 >>Accept The Legend of Stalvan
step
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,75.81,45.32
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 262 >>Turn in The Shadowy Figure
.target Madame Eva
.accept 265 >>Accept The Shadowy Search Continues
step
.isQuestComplete 57
.goto Duskwood,73.56,46.88
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 57 >>Turn in The Night Watch
.target Commander Althea Ebonlocke
.accept 58 >>Accept The Night Watch
step
.goto Duskwood,72.52,46.85
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 68 >>Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 69 >>Accept The Legend of Stalvan
.turnin 265 >>Turn in The Shadowy Search Continues
.accept 266 >>Accept Inquire at the Inn
step
.goto Duskwood,73.78,44.49
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 266 >>Turn in Inquire at the Inn
.target Tavernkeep Smitts
.accept 453 >>Accept Finding the Shadowy Figure
.turnin 158 >>Turn in Zombie Juice
.accept 156 >>Accept Gather Rot Blossoms
step
#sticky
#completewith Grave
>>Keep an eye out for the Old History Book that drops from humanoids in the zone
.collect 2794,1,337
.accept 337 >> Accept An Old History Book
step
>>Single target burst some Shadow Weavers
.goto Duskwood,61.40,72.19
.complete 173,1 
step
.isOnQuest 245
.goto Duskwood,45.12,67.03
.target Watcher Dodds
>>Talk to |cRXP_FRIENDLY_Watcher Dodds|r
.turnin 245 >>Turn in Eight-Legged Menaces
step
.goto Duskwood,18.14,56.47
>>Talk to |cRXP_FRIENDLY_Jitters|r
.turnin 453 >>Turn in Finding the Shadowy Figure
.target Jitters
.accept 268 >>Accept Return to Sven
step
.goto Duskwood,7.79,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 268 >>Turn in Return to Sven
.target Sven Yorgen
.accept 323 >>Accept Proving Your Worth
step
#completewith next
>>Kill any Skeletal Raiders you see en route. You can finish this later
.complete 323,1 
step
>>AoE kill Fiends and Horrors. Kill Ghouls as well whilst waiting for respawns for extra xp
.goto Duskwood,22.61,46.53,90,0
.goto Duskwood,24.97,33.58,90,0
.goto Duskwood,14.43,43.54,90,0
.goto Duskwood,15.35,48.15,90,0
.goto Duskwood,22.61,46.53,90,0
.goto Duskwood,24.97,33.58,90,0
.goto Duskwood,14.43,43.54,90,0
.goto Duskwood,15.35,48.15,90,0
.complete 57,1 
.complete 57,2 
.complete 101,3 
.complete 156,1 
step
>>Kill Raiders primarily outside the crypt and near Morbent's house. Kill healers outside the crypt. Kill Warders inside the crypt
>>Be careful of warders. They can ward themselves for fire/frost immunity (and it's not interruptable by Counterspell)
.goto Duskwood,15.67,38.68,30,0
.complete 323,1 
.complete 323,2 
.complete 323,3 
step
.xp 28 >> Grind to 28 by aoeing skeletons/ghouls
step
#sticky
#label Grave
.goto Duskwood,17.73,29.06
>>Click on the grave
.accept 225 >>Accept The Weathered Grave
step
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 323 >>Turn in Proving Your Worth
.target Sven Yorgen
.accept 269 >>Accept Seeking Wisdom
step
#requires Grave
>>Go inside the Goldshire Inn
.goto Elwynn Forest,43.77,65.80
>>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
.turnin 69 >>Turn in The Legend of Stalvan
.target Innkeeper Farley
.accept 70 >>Accept The Legend of Stalvan
step
>>Go upstairs. Loot the brown chest
.goto Elwynn Forest,44.30,65.83
.complete 70,1 
step
.zone Stormwind City >> Teleport to Stormwind
step
.goto Stormwind City,36.86,81.13
.trainer >> Train your class spells
step
>>Go through the green portal. Run into the clothes shop. Turn in
>>Wait out the RP event then turn in again. Choose the Blouse
.goto Stormwind City,41.56,76.32
.target Wynne Larson
>>Talk to |cRXP_FRIENDLY_Wynne Larson|r
.turnin 1940 >>Turn in Pristine Spider Silk
.turnin 1942 >>Turn in Astral Knot Garment
step
.goto Stormwind City,29.53,61.93
>>Talk to |cRXP_FRIENDLY_Caretaker Folsom|r
.turnin 70 >>Turn in The Legend of Stalvan
.target Caretaker Folsom
.accept 72 >>Accept The Legend of Stalvan
.goto Stormwind City,29.46,61.55
.turnin 72 >>Turn in The Legend of Stalvan
.accept 74 >>Accept The Legend of Stalvan
step
#sticky
#label Diplomat
>>Talk to Thomas. He's a kid who patrols around the Cathedral
.target Thomas
>>Talk to |cRXP_FRIENDLY_Thomas|r
.accept 1274 >>Accept The Missing Diplomat
step
>>Go into Stormwind Cathedral
.goto Stormwind City,42.62,33.59,30,0
.goto Stormwind City,39.11,27.87
>>Talk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >>Turn in Seeking Wisdom
.target Bishop Farthing
.accept 270 >>Accept The Doomed Fleet
step
#requires Diplomat
>>Go into Stormwind Keep
.goto Stormwind City,69.49,28.14,30,0
.goto Stormwind City,78.28,25.39
>>Talk to |cRXP_FRIENDLY_Bishop DeLavey|r
.turnin 1274 >>Turn in The Missing Diplomat
.target Bishop DeLavey
.accept 1241 >>Accept The Missing Diplomat
step
>>Go to the Library
.isOnQuest 337
.goto Stormwind City,74.19,7.44
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 337 >>Turn in An Old History Book
.target Milton Sheaf
.accept 538 >>Accept Southshore
step
>>Leave Stormwind Keep. Go toward the front of Stormwind
.goto Stormwind City,69.49,28.14,30,0
.goto Stormwind City,73.17,78.42
>>Talk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >>Turn in The Missing Diplomat
.target Jorgen
.accept 1242 >>Accept The Missing Diplomat
step
.goto Stormwind City,56.12,65.27
>>Buy at least 3 runes of teleportation from Kyra
.collect 17031,3 
step
>>Go into the cheese shop and talk to Elling Trias
.goto Stormwind City,59.91,64.18
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1242 >>Turn in The Missing Diplomat
.target Elling Trias
.accept 1243 >>Accept The Missing Diplomat
step
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,73.78,44.48
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 156 >>Turn in Gather Rot Blossoms
.target Tavernkeep Smitts
.accept 159 >>Accept Juice Delivery
step
#completewith next
.goto Duskwood,74.08,44.83
.vendor >> Buy 3 8 slot bags from Mabel Solaj if needed
step
>>Talk to Watcher Backus. He patrols along the road north of Darkshire
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1243 >>Turn in The Missing Diplomat
.target Watcher Backus
.accept 1244 >>Accept The Missing Diplomat
.unitscan Watcher Backus
step
>>Run (blink on cooldown) all the way to Eastvale
.goto Elwynn Forest,84.60,69.37
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 74 >>Turn in The Legend of Stalvan
.target Marshal Haggard
.accept 75 >>Accept The Legend of Stalvan
step
>>Go inside the house, then upstairs. Loot the brown chest
>>When you loot it, run from the mob back to Haggard
.goto Elwynn Forest,85.70,69.54
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.38
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 75 >>Turn in The Legend of Stalvan
.target Marshal Haggard
.accept 78 >>Accept The Legend of Stalvan
step
>>Blink all the way to Redridge
.goto Redridge Mountains,29.72,44.27
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
.turnin 91 >>Turn in Solomon's Law
.target Magistrate Solomon
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 180 >>Turn in Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,30.59,59.41
.fly Darkshire >> Fly to Darkshire
step
.goto Duskwood,75.75,47.57
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 173 >>Turn in Worgen in the Woods
.target Calor
.accept 221 >>Accept Worgen in the Woods
step
>>Go inside the Inn
.goto Duskwood,73.78,44.49
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 78 >>Turn in The Legend of Stalvan
.target Tavernkeep Smitts
.accept 79 >>Accept The Legend of Stalvan
step
.goto Duskwood,73.56,46.88
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 79 >>Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
.accept 80 >>Accept The Legend of Stalvan
.turnin 57 >>Turn in The Night Watch
.accept 58 >>Accept The Night Watch
step
.goto Duskwood,72.53,46.86
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 80 >>Turn in The Legend of Stalvan
.target Clerk Daltry
.accept 97 >>Accept The Legend of Stalvan
step
>>To the room on the left of Clerk Daltry
.goto Duskwood,72.64,47.59
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 225 >>Turn in The Weathered Grave
.target Sirra Von'Indi
.accept 227 >>Accept Morgan Ladimore
step
.goto Duskwood,73.56,46.91
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 97 >>Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
.accept 98 >>Accept The Legend of Stalvan
.turnin 227 >>Turn in Morgan Ladimore
.accept 228 >>Accept Mor'Ladim
step
>>AoE Nightbane Dark Runners. Be careful as they run faster than normal mobs (and hit hard)
.goto Duskwood,63.96,51.35,70,0
.goto Duskwood,60.83,40.72,70,0
.complete 221,1 
step
>>Blink all the way over to Abercrombie
.goto Duskwood,28.11,31.46
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >>Turn in Juice Delivery
.target Abercrombie
.accept 133 >>Accept Ghoulish Effigy
step
>>AoE any type of ghoul. Loot them for ribs
>>Be careful of Brain Eaters as they have a disease that reduces mp5
.goto Duskwood,23.59,35.15,50,0
.goto Duskwood,25.62,34.46,50,0
.goto Duskwood,24.76,29.16
.complete 58,1 
.complete 101,1 
.complete 133,1 
step
.goto Duskwood,28.11,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >>Turn in Ghoulish Effigy
.target Abercrombie
.accept 134 >>Accept Ogre Thieves
step
>>Loot the strongbox inside of the house
.goto Duskwood,23.92,72.08
.complete 1244,1 
step
>>Loot the wooden box just outside of the cave
.goto Duskwood,33.42,76.37
.complete 134,1 
step
>>Go inside of the Ogre cave. Kill Zzarc'Vul
.goto Duskwood,36.82,83.78
.complete 181,1 
.unitscan Zzarc'Vul
step
.goto Duskwood,28.11,31.47
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 134 >>Turn in Ogre Thieves
.target Abercrombie
.accept 160 >>Accept Note to the Mayor
step
.hs >> Hearth to Darkshire
>>If your hearthstone is still on cooldown, AoE grind ghouls until it comes back up
step
>>Talk to Watcher Backus. He patrols along the road north of Darkshire
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
.goto Duskwood,74.58,41.38,60,0
.goto Duskwood,72.18,37.09,60,0
.goto Duskwood,73.47,31.84,60,0
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1244 >>Turn in The Missing Diplomat
.target Watcher Backus
.accept 1245 >>Accept The Missing Diplomat
step
>>Kill Stalvan Mistmantle. Loot him for his ring
>>Be careful as he attacks quickly and deals a LOT of melee damage
.goto Duskwood,77.35,36.19
.complete 98,1 
step
.goto Duskwood,79.81,48.02
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 181 >>Turn in Look To The Stars
step
.goto Duskwood,75.78,45.31
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 98 >>Turn in The Legend of Stalvan
.turnin 101 >>Turn in The Totem of Infliction
step
.goto Duskwood,75.68,47.66
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >>Turn in Worgen in the Woods
.target Calor
.accept 222 >>Accept Worgen in the Woods
step
.goto Duskwood,73.58,46.89
.target Commander Althea Ebonlocke
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 58 >>Turn in The Night Watch
step
>>Go inside the Keep
.goto Duskwood,71.93,46.42
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 160 >>Turn in Note to the Mayor
.target Lord Ello Ebonlocke
.accept 251 >>Accept Translate Abercrombie's Note
step
.goto Duskwood,72.64,47.61
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 251 >>Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
.accept 401 >>Accept Wait for Sirra to Finish
.turnin 401 >>Turn in Wait for Sirra to Finish
.accept 252 >>Accept Translation to Ello
step
.goto Duskwood,71.93,46.43
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 252 >>Turn in Translation to Ello
.target Lord Ello Ebonlocke
.accept 253 >>Accept Bride of the Embalmer
step
#completewith NightbaneW
+It is HIGHLY Recommended you watch the Worgen Duskwood Section of the AoE guide, as it's important to know the pathing you should take for doing the 4 main worgen camps
.link https://youtu.be/SxMc2GoP33c?t=2450 >>CLICK HERE
step
#sticky
#label Book
>>Keep an eye out for the Old History Book. If you don't have it yet, keep grinding for it
.collect 2794,1,337
.accept 337 >> Accept An Old History Book
step
#label NightbaneW
.goto Duskwood,72.74,71.83,120,0
.goto Duskwood,61.98,81.51,120,0
.goto Duskwood,61.25,75.17,120,0
.goto Duskwood,63.63,51.01,120,0
.goto Duskwood,72.74,71.83,120,0
.goto Duskwood,61.98,81.51,120,0
.goto Duskwood,61.25,75.17,120,0
.goto Duskwood,63.63,51.01,120,0
.complete 222,1 
.complete 222,2 
step
.xp 31+40000 >> AoE grind the worgens to 31 & 40000/50800
step
#requires Book
.goto Duskwood,75.30,48.04
>>Talk to |cRXP_FRIENDLY_Calor|r
.turnin 222 >>Turn in Worgen in the Woods
.target Calor
.accept 223 >>Accept Worgen in the Woods
step
>>Go inside
.goto Duskwood,75.32,49.02
.target Jonathan Carevin
>>Talk to |cRXP_FRIENDLY_Jonathan Carevin|r
.turnin 223 >>Turn in Worgen in the Woods
step
.zone Stormwind City >> Teleport to Stormwind
step
.goto Stormwind City,36.86,81.13
.trainer >> Train your class spells
step
>>Bottom of the mage tower
.goto Stormwind City,39.83,81.46
.target Archmage Malin
>>Talk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >>Accept Malin's Request
step
.goto Stormwind City,56.47,73.41
>>Bank your cloth. Take at least 1 Light Feather out of your bank. If there's none in the bank, buy some off the AH
>>You'll eventually need 12 stacks of Wool, Silk, Mageweave and Runecloth
.collect 17056,1 
step
>>Go to the upstairs of the cheese shop
.goto Stormwind City,59.91,64.18
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1245 >>Turn in The Missing Diplomat
.target Elling Trias
.accept 1246 >>Accept The Missing Diplomat
step
>>When you handin the quest, this will start a 1v3 against you. Just frost nova and nuke Dashel
.goto Stormwind City,70.11,47.72,20,0
.goto Stormwind City,70.55,44.89
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1246 >>Turn in The Missing Diplomat
.target Dashel Stonefist
.accept 1447 >>Accept The Missing Diplomat
step
.goto Stormwind City,70.55,44.89
.complete 1447,1 
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1447 >>Turn in The Missing Diplomat
.target Dashel Stonefist
.accept 1247 >>Accept The Missing Diplomat
step
.goto Stormwind City,59.91,64.18
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1247 >>Turn in The Missing Diplomat
.target Elling Trias
.accept 1248 >>Accept The Missing Diplomat
step
>>Go to the Library
.isOnQuest 337
.goto Stormwind City,74.19,7.44
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 337 >>Turn in An Old History Book
.target Milton Sheaf
.accept 538 >>Accept Southshore
step
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your level 32 spells
step
.goto Ironforge,55.50,47.74
.fly Menethil >> Fly to Menethil
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
#classic
<< Alliance
#name 27-29 Wetlands/Hillsbrad
#next RestedXP Alliance 30-40\29-32 Duskwood << Hunter
#next 29-30 Ashenvale << !Hunter
step
#sticky
.abandon 94 >> Abandon A Watchful Eye
step << Mage
#level 28
.goto Stormwind City,36.87,81.14
.trainer >> Train your class spells
step
.goto Stormwind City,56.48,73.41
.bankdeposit 916,1451,2378,1130 >> Deposit the follwing items in the Bank:
>>A Torn Journal Page
>>Bottle of Zombie Juice
>>Skeleton Finger
>>Vial of Spider Venom
step << Hunter
.goto Stormwind City,56.48,73.41
.bankwithdraw 3618,3347,3397,5233,5234 >> Withdraw the following items from your bank:
>>Gobbler's Head
>>Bundle of Crocolisk Skins
>>Young Crocolisk Skin (x4)
>>Stone of Relu << Hunter
>>Flagongut's Fossil << Hunter
step << Warlock
#level 28
.goto Stormwind City,26.44,78.66
.trainer >> Train your class spells << Warlock
step << !Mage !Warlock
#level 28
.goto Stormwind City,42.66,33.75,30,0 << Paladin/Priest
.goto Stormwind City,39.81,29.79 << Paladin
.goto Stormwind City,38.68,32.85 << Paladin
.goto Stormwind City,38.54,26.86 << Priest
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,61.61,15.27 << Hunter
.goto Stormwind City,74.64,52.82 << Rogue
.goto Stormwind City,20.89,55.50 << Druid
.trainer >> Train your class spells
step
.goto Stormwind City,39.11,27.88
>>Talk to |cRXP_FRIENDLY_Bishop Farthing|r
.turnin 269 >> Turn in Seeking Wisdom
.target Bishop Farthing
.accept 270 >> Accept The Doomed Fleet
step
.goto Stormwind City,40.55,30.91
.target Brother Sarno
>>Talk to |cRXP_FRIENDLY_Brother Sarno|r
.accept 2923 >> Accept Tinkmaster Overspark
step
#completewith next
.goto Stormwind City,63.73,8.43,45,0
.zone Ironforge >> Take the tram to Ironforge
>>Teleport to Ironforge if you have a lot of money and/or runes << Mage
step
.goto Ironforge,69.54,50.32
.target Tinkmaster Overspark
>>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
.turnin 2923 >> Turn in Tinkmaster Overspark
step
.goto Ironforge,55.51,47.75
.fly Wetlands>> Fly to Wetlands
step
.goto Wetlands,10.58,60.59
.target Glorin Steelbrow
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >> Turn in The Doomed Fleet
>> Skip the follow up for now
step
.goto Wetlands,10.69,60.95
.home >> Set your Hearthstone to Wetlands
step
.isQuestTurnedIn 942
.goto Wetlands,10.84,60.43
>> Go upstairs
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.accept 943 >> Accept The Absent Minded Prospector
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.accept 289 >> Accept The Cursed Crew
step
.goto Wetlands,11.79,57.99
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
.accept 470 >> Accept Digging Through the Ooze
step
.goto Wetlands,8.30,58.53
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 279 >> Turn in Claws from the Deep << Hunter
.target Karl Boran
.accept 281 >> Accept Reclaiming Goods
step
.goto Wetlands,8.54,55.73
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 469 >> Turn in Daily Delivery << Hunter
.turnin 484 >> Turn in Young Crocolisk Skins << Hunter
.target James Halloran
.accept 471 >> Accept Apprentice's Duties
step << skip
#completewith next
.goto Wetlands,9.86,57.48
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 473 >> Turn in Report to Captain Stoutfist
step
.goto Wetlands,9.86,57.48
>> Enter the keep and head upstairs
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.accept 464 >> Accept War Banners
step
.goto Wetlands,10.84,55.89
.target Harlo Barnaby
>>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >> Accept Fall of Dun Modr
step
.goto Wetlands,11.50,52.13
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.accept 305 >> Accept In Search of The Excavation Team
step
.goto Wetlands,13.52,41.37
.turnin 281 >> Turn in Reclaiming Goods
.accept 284 >> Accept The Search Continues
step
.goto Wetlands,13.60,38.22
.turnin 284 >> Turn in The Search Continues
.accept 285 >> Accept Search More Hovels
step
.goto Wetlands,13.94,34.81
.turnin 285 >> Turn in Search More Hovels
.accept 286 >> Accept Return the Statuette
step
#completewith Gnolls
.goto Wetlands,22.25,20.36,0
>> Kill Giant Crocolisks found along the coastline en route to other quests
.complete 471,1
step
.goto Wetlands,14.00,29.80
.goto Wetlands,15.0,24.0
>> Kill ghosts, enter the ship by the hole on the hull and kill Snellig
.complete 289,1
.complete 289,2
.complete 289,3
step
#label Gnolls
#completewith next
.goto Wetlands,44.14,33.50,0
>> Kill Gnolls on your way to other objectives
.complete 277,1
.isQuestComplete 276
step
#sticky
#label slimes
.goto Wetlands,44.25,25.61
>> Kill Slimes. Loot them for Sida's Bag
.complete 470,1
step
.goto Wetlands,43.14,42.62
>> Kill Orcs. Loot them for their banners
>>Be careful as they net, and attack fast
.complete 464,1
step
#completewith next
.goto Wetlands,39.52,46.70,25 >> Head towards the mountain shortcut
step << !Hunter
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.accept 294 >> Accept Ormer's Revenge
step
.goto Wetlands,38.90,52.33
>>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
.turnin 305 >> Turn in In Search of The Excavation Team
.target Merrin Rockweaver
.accept 306 >> Accept In Search of The Excavation Team
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.accept 299 >> Accept Uncovering the Past
step
.isQuestTurnedIn 942
.goto Wetlands,38.85,52.20
>> Loot the fossil on the ground
.complete 943,2
step << Hunter
.isQuestTurnedIn 942
#sticky
#label fossil2
>> Kill and loot Raptors in Wetlands
.complete 943,1
step << Hunter
.goto Wetlands,34.71,49.95
>> Search for the 4 relics, they have random spawn locations and can spawn anywhere at the digsite, including the elevated terrain around
.complete 299,1
.complete 299,2
.complete 299,3
.complete 299,4
step << Hunter
.goto Wetlands,38.8,52.2
#requires fossil2
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >> Turn in Uncovering the Past
step
.goto Wetlands,44.14,33.50
>> Finish off killing and looting Gnolls for the Crude Flint
.complete 277,1
.isQuestTurnedIn 276
step
#requires slimes
.goto Wetlands,56.37,40.40
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 277 >> Turn in Fire Taboo
.target Rethiel the Greenwarden
.accept 275 >> Accept Blisters on The Land
.isQuestTurnedIn 276
step
.goto Wetlands,64.78,75.31
>> Loot the Musquash Root by the base of the waterfall
.complete 335,2
step << Druid
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step
#completewith next
.hs >> Hearth to Menethil Harbor
>> Buy food/water if needed
step
.goto Wetlands,10.89,59.66
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
.turnin 289 >> Turn in The Cursed Crew
.target First Mate Fitzsimmons
.accept 290 >> Accept Lifting the Curse
step
.goto Wetlands,8.30,58.53
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
.turnin 286 >> Turn in Return the Statuette
step
.goto Wetlands,11.79,57.99
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
.turnin 470 >> Turn in Digging Through the Ooze
step
.goto Wetlands,9.86,57.48
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 464 >> Turn in War Banners
.target Captain Stoutfist
.accept 465 >> Accept Nek'rosh's Gambit
step
.goto Wetlands,11.50,52.13
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
.turnin 306 >> Turn in In Search of The Excavation Team
step
.isQuestTurnedIn 942
#sticky
#label fossil
>> Kill and loot Raptors
.complete 943,1
step << !Hunter
.goto Wetlands,25.58,47.40
.complete 294,1
.complete 294,2
step << !Hunter
.goto Wetlands,38.17,50.88
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 294 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 295 >> Accept Ormer's Revenge
step << !Hunter
#sticky
#label relics
.goto Wetlands,34.71,49.95,0
>> Search for the 4 relics, they have random spawn locations and can spawn anywhere at the digsite, including the elevated terrain where Sarltooth is (to the South-West)
.complete 299,1
.complete 299,2
.complete 299,3
.complete 299,4
step << !Hunter
.goto Wetlands,34.71,49.95
.complete 295,1
.complete 295,2
step << !Hunter
.goto Wetlands,38.17,50.88
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 295 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
.accept 296 >> Accept Ormer's Revenge
step << !Hunter
.goto Wetlands,38.8,52.2,0
#sticky
#requires relics
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >> Turn in Uncovering the Past
step << !Hunter
.goto Wetlands,33.25,51.50
>> Kill Sarltooth
.complete 296,1
.unitscan SARLTOOTH
step << !Hunter
#requires relics
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
.turnin 296 >> Turn in Ormer's Revenge
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
.turnin 299 >> Turn in Uncovering the Past
step
#requires fossil << !Hunter
#completewith next
>> Look for Fen Creepers that are stealthed along the river stream
.complete 275,1
step
#requires fossil
.goto Wetlands,15.44,23.60
>> Enter the ship by the broken mast
>>Kill Captain Halyndor
.complete 290,1
step
.goto Wetlands,14.37,24.04
>> Dive to the bottom of the ship
.turnin 290 >> Turn in Lifting the Curse
.accept 292 >> Accept The Eye of Paleth
step
.goto Wetlands,17.34,28.24,90,0
.goto Wetlands,20.40,21.27,90,0
.goto Wetlands,27.79,19.51
>> Kill Giant Crocolisks found along the coastline
.complete 471,1
step
.goto Wetlands,37.86,33.25
>> Finish off killing Fen Creepers. They're typically found stealthed in the shallow waters of western and central Wetlands
.complete 275,1
.unitscan Fen Creeper
.isOnQuest 275
step
.goto Wetlands,47.45,47.01
.turnin 465 >> Turn in Nek'rosh's Gambit
step << Hunter/Warlock/Mage
.goto Wetlands,47.45,47.01
.accept 474 >> Accept Defeat Nek'rosh
step << Hunter/Warlock/Mage
#sticky
#label nekrosh
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>Kill Nek'rosh. This elite quest can be very hard to solo, skip this step if you have to
>> You can split pull Nek'Rosh from the mobs around him by using Rain of Fire. Be careful as he's immune to Fire << Warlock
>> You can split pull Nek'Rosh from the mobs around him by using Blizzard. Be careful as he's immune to Fire << Mage
.complete 474,1
.link https://www.twitch.tv/videos/669042748?t=02h57m08s >> CLICK HERE for reference
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
.turnin 275 >> Turn in Blisters on The Land
.isQuestComplete 275
step
#requires nekrosh << Hunter/Warlock/Mage
.goto Wetlands,49.80,18.25
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 472 >> Turn in Fall of Dun Modr
.target Rhag Garmason
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.accept 631 >> Accept The Thandol Span
step
.goto Arathi Highlands,45.65,93.07
>>Go down the spiral staircase and click on the dwarf corpse, be careful with the 2 elite mobs patrolling nearby, you don't need to deal with them, just get the quest and run back to Wetlands
.turnin 631 >> Turn in The Thandol Span
.accept 632 >> Accept The Thandol Span
step
.goto Wetlands,49.91,18.21
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 632 >> Turn in The Thandol Span
.target Rhag Garmason
.accept 633 >> Accept The Thandol Span
step
.goto Arathi Highlands,43.24,92.64
>> Jump down into the small room inside the destroyed bridge's support column
.target Foggy MacKreel
>>Talk to |cRXP_FRIENDLY_Foggy MacKreel|r
.accept 647 >> Accept MacKreel's Moonshine
>>You can still get this quest if you don't have any kind of speed increase or slow fall
.link https://www.twitch.tv/videos/646111384 >>Click here for reference
step
#completewith next
.goto Arathi Highlands,44.28,92.88
>> Loot the Waterlogged Envelope underwater
.collect 4433,1,637
.accept 637 >> Accept Sully Balloo's Letter
step
#completewith next
.goto Arathi Highlands,52.5,90.4,45 >> Swim east toward the ramp here
step
.goto Arathi Highlands,48.79,88.04
>> Click on the cart full of explosives
.complete 633,1
step
.goto Wetlands,49.91,18.21
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 633 >> Turn in The Thandol Span
.target Rhag Garmason
.accept 634 >> Accept Plea To The Alliance
step
>>Cross the bridge into Arathi
.goto Arathi Highlands,45.83,47.55
.target Captain Nials
>>Talk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 634 >> Turn in Plea To The Alliance
step
.goto Arathi Highlands,45.73,46.09
.fp Arathi>> Get the Arathi Highlands Flight Path
step << skip
#completewith next
.goto Arathi Highlands,27.0,58.8,0
.vendor >> Buy all 3 first aid books inside Stromgarde if you are leveling first aid
step
>>Run to Southshore, into the inn, then into the basement. If you fail the timed quest, abandon it and skip this step
>>This is the only timed quest in the game that fails if you die, play safe.
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
.target Brewmeister Bilger
>>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >> Turn in MacKreel's Moonshine
step
.goto Hillsbrad Foothills,49.34,52.27
.fp Southshore>> Get the Southshore Flight Path
step << Hunter
#era
#completewith end
.xp 29.55 >> Do the murloc quests in Southshore or farm turtle meat until you are 55% into level 29
step << Hunter
#completewith next
.goto Hillsbrad Foothills,50.2,58.8
.stable >> Stable your pet and head east
step << Hunter
.goto Hillsbrad Foothills,56.6,53.8
.train 17264 >> Tame an Elder Moss Creeper, attack mobs with it to learn bite rank 4
.unitscan Elder Moss Creeper
step
#era
#completewith next
+Kill turtles along the river and farm about 5 turtle meat, you'll need 10 for a quest later, don't go out of your way to kill them
step << Druid
.goto Moonglade,52.53,40.56
>>Teleport to Moonglade
.trainer >> Train your class spells
step
#label end
.hs >> Hearth to Menethil Harbor
>> Buy food/water if needed
step
.goto Wetlands,10.58,60.59
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 292 >> Turn in The Eye of Paleth
.target Glorin Steelbrow
.accept 293 >> Accept Cleansing the Eye
step
.goto Wetlands,10.58,60.59
.target Glorin Steelbrow
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.accept 321 >> Accept Lightforge Iron
step
.isQuestTurnedIn 942
.goto Wetlands,10.84,60.43
>> Go upstairs
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
.turnin 943 >> Turn in The Absent Minded Prospector
step
.goto Wetlands,12.10,64.19
.turnin 321 >> Turn in Lightforge Iron
.accept 324 >> Accept The Lost Ingots
step
.goto Wetlands,9.54,69.70
>> Kill murlocs. Loot them for Ingots
.complete 324,1
step << Hunter
.goto Wetlands,9.54,69.70
.xp 30-15000 >> Grind until you are 15k xp away from level 30
step
.goto Wetlands,8.54,55.73
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
.turnin 471 >> Turn in Apprentice's Duties
step << Hunter/Warlock/Mage
.isQuestComplete 474
.goto Wetlands,9.86,57.48
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
.turnin 474 >> Turn in Defeat Nek'rosh
step
.goto Wetlands,10.58,60.59
.abandon 474 >> Abandon Defeat Nek'rosh
step
.goto Wetlands,10.58,60.59
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >> Turn in The Lost Ingots
.target Glorin Steelbrow
.accept 322 >> Accept Blessed Arm
step << Hunter
.goto Wetlands,9.49,59.70
.fly Ironforge >> Fly to Ironforge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 20-30
<< Alliance !Hunter
#classic
#era
#name 29-30 Ashenvale
#next RestedXP Alliance 30-40\29-32 Duskwood
step
#completewith next
.goto Wetlands,4.7,57.3,30 >> Go to the boat
.goto Wetlands,4.7,57.3,0
step
.zone Darkshore >>Get onto the boat when it comes
step
.goto Darkshore,36.33,45.58
.fly Stonetalon >> Fly to Stonetalon
step
.goto Stonetalon Mountains,37.10,8.10
.target Keeper Albagorm
>>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
.accept 1057 >> Accept Reclaiming the Charred Vale
step
#sticky
#label basilisks
>> Kill Basilisks. Loot them for their Scales
.complete 1078,1
step
.goto The Barrens,8.84,10.23
>> Kill Harpies around the Charred Vale
.complete 1057,1
.complete 1057,2
.complete 1057,3
.complete 1057,4
step
#completewith next
.goto Desolace,54.76,0.47
.zone Desolace >> Head south to Desolace
step
.goto Desolace,64.66,10.53
.fp Desolace>>Get the Desolace Flight Path
.fly Stonetalon>> Fly to Stonetalon
step
.goto Stonetalon Mountains,37.10,8.10
>>Talk to |cRXP_FRIENDLY_Keeper Albagorm|r
.turnin 1057 >> Turn in Reclaiming the Charred Vale
.target Keeper Albagorm
.accept 1059 >> Accept Reclaiming the Charred Vale
step
.goto Stonetalon Mountains,36.44,7.18
.fly Ashenvale>> Fly to Ashenvale
step
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
.accept 4581 >> Accept Kayneth Stillwind
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.accept 1054 >> Accept Culling the Threat
step
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >> Travel to Thistlefur Village. Follow the Arrow for a shortcut
step
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32
>>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.accept 973 >> Accept The Tower of Althalaxx
step
.goto Ashenvale,25.27,60.68
>>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
>>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
>>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed|r
.complete 973,1
.mob Ilkrud Magthrull
step
.goto Ashenvale,22.23,52.98
.target Sentinel Melyria Frostshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
.accept 1022 >> Accept The Howling Vale
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.accept 1021 >> Accept Vile Satyr! Dryads in Danger!
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.accept 1140 >> Accept The Tower of Althalaxx
.turnin 973 >> Turn in The Tower of Althalaxx
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1054 >> Turn in Culling the Threat
.accept 1024 >> Accept Raene's Cleansing
.accept 1025 >> Accept An Aggressive Defense
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.accept 1035 >> Accept Fallen Sky Lake
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1024 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1026 >> Accept Raene's Cleansing
step
#completewith next
.goto Ashenvale,63.0,43.8,60,0
.goto Ashenvale,59.8,42.6,60,0
.goto Ashenvale,57.6,39.2,60,0
.goto Ashenvale,57.8,33.6,60,0
.goto Ashenvale,55.0,32.8,60,0
.goto Ashenvale,63.0,46.2,60,0
.goto Ashenvale,55.0,32.8
>>Kill |cRXP_ENEMY_Withered Ancients|r and |cRXP_ENEMY_Crazed Ancients|r. Loot them for a |cRXP_LOOT_Wooden Key|r
.collect 5475,1,1026,1 
.isOnQuest 1026
.mob Withered Ancient
.mob Crazed Ancient
step
.goto Ashenvale,54.416,35.397
>>Open the |cRXP_PICK_Worn Chest|r. Loot it for the |cRXP_LOOT_Iron Shaft|r
.complete 1026,1
step
#completewith next
.goto Ashenvale,53.440,36.131,15,0
.goto Ashenvale,52.698,37.759,20 >> Run up here for a shortcut
step
.goto Ashenvale,50.49,39.12
>>Click the |cRXP_PICK_Tome of Mel'Thandris|r on the table
.complete 1022,1
step
.goto Ashenvale,78.32,44.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
.turnin 1021 >> Turn in Vile Satyr! Dryads in Danger!
.target Anilia
.accept 1031 >> Accept The Branch of Cenarius
step
.goto Ashenvale,77.99,42.41
>>Kill |cRXP_ENEMY_Geltharis|r. Loot him for his |cRXP_LOOT_Branch|r
.complete 1031,1
.mob Geltharis
step
.goto Ashenvale,85.23,44.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 4581 >> Turn in Kayneth Stillwind
.target Kayneth Stillwind
.accept 1011 >> Accept Forsaken Diseases
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
.fp Azshara>> Get the Azshara flight path
.fly Ashenvale>> Fly to Ashenvale
.target Jarrodenus
step
.goto Ashenvale,22.23,52.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
.turnin 1022 >> Turn in The Howling Vale
.target Sentinel Melyria Frostshadow
.accept 1037 >> Accept Velinde Starsong
step
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.turnin 1031 >> Turn in The Branch of Cenarius
.target Illiyana
.accept 1032 >> Accept Satyr Slaying!
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1026 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1027 >> Accept Raene's Cleansing
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.accept 1016 >> Accept Elemental Bracers
.target Sentinel Velene Starstrike
step
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>>Kill |cRXP_ENEMY_Befouled Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
.use 5456 >> |cRXP_WARN_Use the|r |T134943:0|t[Divining Scroll] |cRXP_WARN_to create the|r |T134938:0|t[Divined Scroll]
.complete 1016,1 
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
.turnin 1016 >> Turn in Elemental Bracers

.target Sentinel Velene Starstrike
step
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
.complete 1025,4 
.complete 1025,3 
.complete 1025,2 
.complete 1025,1 
.mob Foulweald Den Watcher
.mob Foulweald Ursa
.mob Foulweald Totemic
.mob Foulweald Warrior
step
.goto Ashenvale,66.649,82.189
>>Kill the |cRXP_ENEMY_Shadethicket Oracle|r. Loot it for the |cRXP_LOOT_Fallen Moonstone|r
.complete 1035,1
.mob Shadethicket Oracle
step
#completewith next
>>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse|r
>>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
.complete 1027,1 
.mob Rotting Slime
step
.goto Ashenvale,75.29,72.00
>>Loot the |cRXP_LOOT_Bottle of Disease|r on the table
>>|cRXP_WARN_Be cautious as the |cRXP_ENEMY_Forsaken|r defending it can be in|r |T132320:0|t[Stealth]
.complete 1011,1 
step
#label slimes
.goto Ashenvale,72.6,71.6,60,0
.goto Ashenvale,69.8,76.2,60,0
.goto Ashenvale,75.4,73.0,60,0
.goto Ashenvale,73.6,76.6
>>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse|r
>>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
.complete 1027,1 
.mob Rotting Slime
step
.goto Ashenvale,85.23,44.71
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 1011 >> Turn in Forsaken Diseases
step
#completewith SatyrHorns
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
.complete 1032,1 
step
.goto Ashenvale,81.59,48.57
>>Click the |cRXP_PICK_Circle of Imprisonment|r in Satyrnaar
.complete 1140,2 

step
#label SatyrHorns
.goto Ashenvale,78.776,46.765,110,0
.goto Ashenvale,73.835,47.120,100,0
.goto Ashenvale,66.62,56.99
>>Click the |cRXP_PICK_Circle of Imprisonment|r in Night Run
>>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Felmusk Shadowstalkers|r in|r |T132320:0|t[Stealth]
.complete 1140,1 
step
.goto Ashenvale,81.42,49.87
>>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
.complete 1032,1 
.mob Felmusk Felsworn
.mob Felmusk Rogue
.mob Felmusk Satyr
.mob Felmusk Shadowstalker
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1027 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1028 >> Accept Raene's Cleansing
step
#completewith next
.goto Ashenvale,56.993,51.981,20,0
.goto Ashenvale,57.369,50.953,20 >> Travel toward the |cRXP_PICK_Hidden Shrine|r
step
.goto Ashenvale,56.320,49.188
>>Click the |cRXP_PICK_Hidden Shrine|r
.turnin 1028 >> Turn in Raene's Cleansing
.accept 1055 >> Accept Raene's Cleansing
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
.turnin 1055 >> Turn in Raene's Cleansing
.target Shael'dryn
.accept 1029 >> Accept Raene's Cleansing
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
.turnin 1035 >> Turn in Fallen Sky Lake
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1025 >> Turn in An Aggressive Defense
.turnin 1029 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.accept 1030 >> Accept Raene's Cleansing
step
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
.isOnQuest 1030
step
#completewith next
.cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
.use 5462
.isOnQuest 1030
step
.goto Ashenvale,50.85,75.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
.use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
.turnin 1030 >> Turn in Raene's Cleansing
.accept 1045 >> Accept Raene's Cleansing
.target Krolg
step
.goto Ashenvale,54.210,74.082,50,0
.goto Ashenvale,54.747,79.618
>>Kill |cRXP_ENEMY_Bloodtooth Guards|r and |cRXP_ENEMY_Ran Bloodtooth|r. Loot him for his |cFF00BCD4Skull|r
.complete 1045,2 
.complete 1045,1 
.collect 5388,1,1045,1
.mob Ran Bloodtooth
.mob Bloodtooth Guard
step
#completewith krolg1
#label tkrolg1
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
.isOnQuest 1045
step
#requires tkrolg1
#completewith next
.cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
.use 5462
.isOnQuest 1045
step
#label krolg1
.goto Ashenvale,50.84,75.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
.use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
.turnin 1045 >> Turn in Raene's Cleansing
.accept 1046 >> Accept Raene's Cleansing
.target Krolg
step
#completewith next
.goto Ashenvale,36.61,49.58,30 >> Travel toward |cRXP_FRIENDLY_Raene Wolfrunner|r in Astranaar
>>|cRXP_WARN_If you Turn in Raene's Cleansing you will gain 3,050XP, but you will permanently lose|r |T135463:0|t[Dartol's Rod of Transformation]
>>|cRXP_WARN_If you wish to keep it for RP purposes, abandon Raene's Cleansing, and|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_will remain in your bags|r
.isOnQuest 1046
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
.turnin 1046 >> Turn in Raene's Cleansing
.target Raene Wolfrunner
.isOnQuest 1046
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
.turnin 1032 >> Turn in Satyr Slaying!
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
.turnin 1140 >> Turn in The Tower of Althalaxx
step
#label end
.goto Ashenvale,34.41,47.98
.fly Teldrassil>> Fly to Teldrassil
step << Warrior
.goto Darnassus,58.72,34.90
.trainer >> Train your class spells
step
.goto Teldrassil,30.04,55.08
>>Talk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.turnin 1037 >> Turn in Velinde Starsong
.target Thyn'tel Bladeweaver
.accept 1038 >> Accept Velinde's Effects
step
.goto Teldrassil,30.15,64.25
>> Loot the chest upstairs
.complete 1038,1
.complete 1038,2
step << Mage
.goto Darnassus,40.61,82.14
.trainer >> Train the Darnassus portal
step << Priest
.goto Darnassus,37.90,82.73
.trainer >> Train your class spells
step
#era
.goto Teldrassil,30.04,55.08
>>Talk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
.turnin 1038 >> Turn in Velinde's Effects
.target Thyn'tel Bladeweaver
.accept 1039 >> Accept The Barrens Port
step << Rogue
.goto Darnassus,32.12,16.48,20,0
.goto Darnassus,31.55,18.44,20,0
.goto Darnassus,36.99,21.90
.trainer >> Train your class spells
step << !Mage
.hs >> Hearth to Wetlands
>> Buy food/water if needed
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
<< Alliance
#name 29-32 Duskwood
#next 32-33 Hillsbrad/Arathi
step << Mage
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells

step
#era
#completewith start
+ This segment has a long grinding session, you can substitute that for a Gnomeregan run
step << !Mage !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.69
.fly Ironforge>> Fly to Ironforge
.target Shellei Brondir
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexander Calder|r << Warlock
.goto Ironforge,23.11,6.15 << Paladin
.goto Ironforge,50.35,5.63 << Warlock
.trainer >> Train your class spells
.target Beldruk Doombrow << Paladin
.target Alexander Calder << Warlock
step << Mage
.goto Ironforge,31.33,27.80
>>Go into the building. Buy 3 Runes of Teleportation from |cRXP_FRIENDLY_Ginny|r
.collect 17031,3 
.target Ginny Longberry
step << Warlock
.goto Ironforge,52.71,6.07 << Warlock
.vendor >> Buy spellbooks for your Succubus/Voidwalker if needed
step << Priest
#completewith next
.goto Ironforge,23.32,17.62,20,0
.goto Ironforge,23.12,15.93
>>Buy the Pestilent Wand from the vendor if it's better than your current wand
.collect 5347,1 
step << Hunter
.goto Ironforge,61.34,89.25
>>Go inside the building, head downstairs and buy a level 30 quiver from |cRXP_FRIENDLY_Thalgus Thunderfist|r
.collect 7371,1
.target Thalgus Thunderfist
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
.turnin 637 >> Turn in Sully Balloo's Letter
>>Wait for the RP sequence
.target Sara Balloo
.accept 683 >> Accept Sara Balloo's Plea
step
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 683 >> Turn in Sara Balloo's Plea
.target King Magni Bronzebeard
.accept 686 >> Accept A King's Tribute
step
.goto Ironforge,35.87,60.20
.bankwithdraw 916,1451,2378,1130,2794 >> Withdraw the following items from your bank:
>>|T133688:0|t[A Torn Journal Page]
>>|T134776:0|t[Bottle of Zombie Juice]
>>|T133718:0|t[Skeleton Finger]
>>|T134799:0|t[Vial of Spider Venom]
>>|T133741:0|t[An Old History Book] (if you have it)
step
#era/som
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >> Turn in A King's Tribute
.accept 689 >> Accept A King's Tribute
.target Grand Mason Marblesten
step
#som
#phase 3-6
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >> Turn in A King's Tribute
.target Grand Mason Marblesten
step
.goto Ironforge,72.74,94.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
.accept 1179 >>Accept The Brassbolts Brothers
.target Pilot Longbeard
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
.goto Ironforge,69.88,82.87
.trainer >> Train your class skills
>>Train pet skills
>>|cRXP_WARN_Make sure you have frost/nature resistance maxed out on your pet|r
.target Olmin Burningbeard
step << !Mage
#completewith next
.goto Ironforge,76.61,51.28,30,0
.zone Stormwind City>> Take the tram to Stormwind
step << Mage
#completewith next
.goto Ironforge,76.61,51.28,30,0
.zone Stormwind City>> Teleport to Stormwind
step
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >> Turn in Blessed Arm
.accept 325 >> Accept Armed and Ready
.target Grimand Elmore
step << Hunter
#completewith start
.trainer >> If you get level 30 turning in the next few quests in Stormwind, |cRXP_WARN_remember to buy class/pet skills|r
step
#sticky
#label Eye
.goto Stormwind City,39.60,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 293 >> Turn in Cleansing the Eye
.target Archbishop Benedictus
step
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
.accept 1274 >> Accept The Missing Diplomat
.target Thomas
step
#requires Eye
.goto Stormwind City,78.30,25.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
.turnin 1274 >> Turn in The Missing Diplomat
.accept 1241 >> Accept The Missing Diplomat
.target Bishop DeLavey
step
.goto Stormwind City,73.17,78.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
.turnin 1241 >> Turn in The Missing Diplomat
.accept 1242 >> Accept The Missing Diplomat
.target Jorgen
step
.goto Stormwind City,57.00,72.88
.bankdeposit 2784,5849,3712 >> Deposit the following items into your bank:
>>|T134187:0|t[Musquash Root]
>>|T132765:0|t[Crate of Crash Helmets]
>>|T134026:0|t[Turtle Meat]
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1242 >> Turn in The Missing Diplomat
.accept 1243 >> Accept The Missing Diplomat
.target Elling Trias
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.27,62.12
.fly Duskwood>> Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,79.80,48.02
>>|cRXP_WARN_Skip this step if you haven't found a bronze tube|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 174 >> Accept Look To The Stars
.turnin 174 >> Turn in Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 175 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,81.46,59.02
>> Head south towards the chapel
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
.turnin 175 >> Turn in Look To The Stars
.accept 177 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Blind Mary
step
.goto Duskwood,81.20,71.47
>> Kill the |cRXP_ENEMY_Insane Ghoul|r inside the chapel. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
.complete 177,1 
.isQuestTurnedIn 174
.mob Insane Ghoul
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 177 >> Turn in Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.accept 181 >> Accept Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,75.75,47.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.accept 173 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 58 >> Accept The Night Watch
.target Commander Althea Ebonlocke
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
.goto Duskwood,73.87,44.40
.home >> Set your Hearthstone to Darkshire
.target Innkeeper Trelayne
step
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1243 >> Turn in The Missing Diplomat
.accept 1244 >> Accept The Missing Diplomat
.target Watcher Backus
step
>>Kill |cRXP_ENEMY_Shadow Weavers|r in the area
.goto Duskwood,63.00,41.60
.complete 173,1 
.mob Nightbane Shadow Weaver
step
.goto Duskwood,75.75,47.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 173 >> Turn in Worgen in the Woods
.target Calor
.accept 221 >> Accept Worgen in the Woods
step
>>Kill |cRXP_ENEMY_Dark Runners|r in the area. |cRXP_WARN_Be careful as they run faster than normal mobs, and have a larger aggro range|r
.goto Duskwood,61.80,45.30
.complete 221,1 
.mob Nightbane Dark Runner
step
.goto Elwynn Forest,84.60,69.37
>> Head northeast to Elwynn Forest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 74 >> Turn in The Legend of Stalvan
.accept 75 >> Accept The Legend of Stalvan
.target Marshal Haggard
step
.goto Elwynn Forest,85.70,69.53
>> Loot the |cRXP_PICK_chest|r upstairs
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
.turnin 75 >> Turn in The Legend of Stalvan
.accept 78 >> Accept The Legend of Stalvan
.target Marshal Haggard
step
>>Run to North-west Duskwood
.goto Duskwood,28.10,31.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 159 >> Turn in Juice Delivery
.accept 133 >> Accept Ghoulish Effigy
.target Abercrombie
step
.goto Duskwood,24.26,32.90
>> Kill |cRXP_ENEMY_Ghouls/Plague Spreaders|r in the area
.complete 58,1 
.complete 133,1 
.complete 101,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
step
.goto Duskwood,28.10,31.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 133 >> Turn in Ghoulish Effigy
.accept 134 >> Accept Ogre Thieves
.target Abercrombie
step
.goto Westfall,80.83,69.17
>>Loot the |cRXP_PICK_chest|r inside the farmhouse
.complete 1244,1 
step
.goto Duskwood,33.41,76.35
>>Click on the |cRXP_PICK_crate|r on the ground
.complete 134,1 
step
.goto Duskwood,36.81,83.78
>>Kill |cRXP_ENEMY_Zzarc'Vul|r inside the cave. Loot him for the |cRXP_LOOT_Monocle|r
.complete 181,1 
.mob Zzarc'Vul
step
#som
#completewith welcome
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >> Head south to Stranglethorn Vale
step
#som
#completewith stvEnd
.goto Stranglethorn Vale,40.32,8.45,0
>> Look out for Private Thorsen's RP event while you quest. Guard him from the mobs that attack him, and accept his quest
>>He patrols down the road down the Rebel Camp every ~30 minutes
.target Private Thorsen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
.accept 215 >> Accept Jungle Secrets
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 215 >> Turn in Jungle Secrets

step
#label welcome
#som
.goto Stranglethorn Vale,35.66,10.52
.target Barnil Stonepot
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.accept 583 >> Accept Welcome to the Jungle
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 583 >> Turn in Welcome to the Jungle
step
#som
.goto Stranglethorn Vale,35.61,10.61
.target Ajeck Rouack
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.accept 185 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 190 >> Accept Panther Mastery
step
#som
#sticky
#label panthers
>>Kill |cRXP_ENEMY_Young Panthers|r
.goto Stranglethorn Vale,41.50,12.00
.complete 190,1 
.mob Young Panther
step
#som
>>Kill |cRXP_ENEMY_Young Tigers|r
.goto Stranglethorn Vale,35.40,12.50
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#som
#requires panthers
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.turnin 185 >> Turn in Tiger Mastery
.target Ajeck Rouack
.accept 186 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 190 >> Turn in Panther Mastery
step
#som
#completewith note
#label stvEnd
.goto Duskwood,44.7,85.6
.zone Duskwood >> Head back to Duskwood
step
>>Kill the |cRXP_ENEMY_spiders|r and the |cRXP_ENEMY_skeletons|r in the area. Loot them for the |cRXP_LOOT_Spider Venom|r and the |cRXP_LOOT_Fingers|r
.complete 101,2 
.goto Duskwood,29.0,49.4
.complete 101,3 
.goto Duskwood,23.0,44.0
.mob Black Widow Hatchling
.mob Carrion Recluse
.mob Skeletal Horror
.mob Skeletal Fiend
step
#label note
.goto Duskwood,28.10,31.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
.turnin 134 >> Turn in Ogre Thieves
.accept 160 >> Accept Note to the Mayor
.target Abercrombie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with |cRXP_FRIENDLY_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.accept 225 >> Accept The Weathered Grave
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >> Turn in Armed and Ready
.accept 55 >> Accept Morbent Fel
.target Sven Yorgen
step << Druid
#level 30
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
#som
.hs >> Hearth back to Darkshire
>>Buy food/water if needed
step
#era
.hs >>Hearth back to Darkshire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
>>Buy food/water. You'll need at least 2 1/2 stacks for the upcoming segment
.target Innkeeper Trelayne
step << Hunter
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r
.goto Duskwood,73.28,44.76
.vendor 228 >>Fill your quiver with arrows. Buy a few stacks extra for the upcoming segment
.target Avette Fellwood
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
.turnin 78 >> Turn in The Legend of Stalvan
.accept 79 >> Accept The Legend of Stalvan
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 58 >> Turn in The Night Watch
.turnin 79 >> Turn in The Legend of Stalvan
.accept 80 >> Accept The Legend of Stalvan
.target Commander Althea Ebonlocke
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.turnin 80 >> Turn in The Legend of Stalvan
.accept 97 >> Accept The Legend of Stalvan
.target Clerk Daltry
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 225 >> Turn in The Weathered Grave
.accept 227 >> Accept Morgan Ladimore
.target Sirra Von'Indi
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 160 >> Turn in Note to the Mayor
.accept 251 >> Accept Translate Abercrombie's Note
.target Lord Ello Ebonlocke
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
.turnin 251 >> Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
.accept 401 >> Accept Wait for Sirra to Finish
.turnin 401 >> Turn in Wait for Sirra to Finish
.accept 252 >> Accept Translation to Ello
step
.goto Duskwood,71.93,46.41
>> Talk to the mayor again
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 252 >> Turn in Translation to Ello
.target Lord Ello Ebonlocke
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.accept 253 >> Accept Bride of the Embalmer
.target Lord Ello Ebonlocke
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 97 >> Turn in The Legend of Stalvan
.accept 98 >> Accept The Legend of Stalvan
.turnin 227 >> Turn in Morgan Ladimore
.accept 228 >> Accept Mor'Ladim
.target Commander Althea Ebonlocke
step
#label exit1
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
.turnin 1244 >> Turn in The Missing Diplomat
.accept 1245 >> Accept The Missing Diplomat
.target Watcher Backus
step
#sticky
#label FlowerX
.goto Duskwood,78.35,35.94
>> Loot the |cRXP_PICK_small flower|r at the farm
.complete 335,1 
step
.goto Duskwood,77.30,36.20
>> Kill |cRXP_ENEMY_Stalvan|r inside the house. Loot him for the |cRXP_LOOT_Family Ring|r
>>|cRXP_WARN_Be careful as Stalvan is quite hard. Kite him back to town and get help from the guards if needed|r
.complete 98,1 
.mob Stalvan Mistmantle
step
#requires FlowerX
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
.turnin 98 >> Turn in The Legend of Stalvan
.turnin 101 >> Turn in The Totem of Infliction
.target Madame Eva
step
.goto Duskwood,75.75,47.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 221 >> Turn in Worgen in the Woods
.accept 222 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
.turnin 181 >> Turn in Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,62.33,81.77
>> Kill |cRXP_ENEMY_Vile Fangs/Tainted Ones|r in the area
>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after a few minutes|r
.complete 222,1 
.complete 222,2 
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
step
#era
.goto Duskwood,62.33,81.77
>>Grind |cRXP_ENEMY_worgen mobs|r. until you find |T133741:0|t[An Old History Book]
>>Don't start the quest for it yet
.collect 2794,1,337,1 

.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#era
.goto Duskwood,62.33,81.77
.xp 32 >> Grind until you are anywhere between level 31 & 75% and level 32 << !Druid
.xp 32 >> Grind until you are anywhere between 31 & 85% and 32 << Druid
>>Keep grinding until your Hearthstone cooldown is <25 minutes
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#era
#completewith next
.goto Duskwood,62.33,81.77,0
+Keep grinding |cRXP_ENEMY_worgens|r until your Hearthstone cooldown is <25 minutes
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
.goto Duskwood,28.80,31.00
>> Click on the grave to summon |cRXP_ENEMY_Eliza|r
>>Kill |cRXP_ENEMY_Eliza|r. Loot her for the |cRXP_LOOT_Embalmer's Heart|r
>>|cRXP_WARN_You can avoid dealing with her skeleton adds by using the wagon to jump on top of Abercrombie's shed|r << Hunter/Mage/Warlock/Priest
>>|cRXP_WARN_This quest can be fairly diffult, skip this step if you have to. You can evade her skeleton adds by jumping on top of Abercrombie's shed|r << Warrior/Rogue/Druid/Paladin
.complete 253,1 
.mob Eliza
step
.goto Duskwood,16.90,33.40
>>Equip |T135142:0|t[Morbent's Bane] in your off-hand
>>Kill |cRXP_ENEMY_Morbent Fel|r. Use the off-hand weapon to make him vulnerable to your attacks
>>|cRXP_WARN_This quest is HARD, you can skip this step, you'll have another opportunity to do this quest at level 35|r
.complete 55,1 
.mob Morbent Fel
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >> Turn in Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
#completewith DuskwoodEnd
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r.Loot him for his |cRXP_LOOT_skull|r. He hits very hard but he can be easily kited around some of the larger trees in the area
>>(Level 35 elite roaming the cemetery)
>>|cRXP_WARN_This quest is HARD, you can skip this step, you'll have another opportunity to do this quest at level 35|r
.complete 228,1 
.unitscan MOR'LADIM
step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >> Grind mobs in the area to 29640+/58600xp
step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >> Grind mobs in the area to 29640+/58600xp
step << Priest/Paladin/Warlock
#som
.goto Duskwood,19.59,37.28
.xp 33+24240 >> Grind mobs in the area to 24240+/58600xp
step
#som
#label DuskwoodEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
.goto Westfall,56.55,52.63
.fly Duskwood >> Go to Sentinel Hill in Westfall. Fly to Duskwood
.target Thor
step
#era
#label DuskwoodEnd
.goto Duskwood,21.4,88.6
.zone Stranglethorn Vale >> Head south to Stranglethorn Vale
step
#era
.goto Stranglethorn Vale,35.66,10.52
.target Barnil Stonepot
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.accept 583 >> Accept Welcome to the Jungle
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 583 >> Turn in Welcome to the Jungle
step
#era
.goto Stranglethorn Vale,35.61,10.61
.target Ajeck Rouack
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.accept 185 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 190 >> Accept Panther Mastery
step
#era
#completewith stvEnd2
.goto Stranglethorn Vale,40.32,8.45,0
>>Look out for |cRXP_FRIENDLY_Private Thorsen's|r event while you quest. Guard him from the mobs that attack him, and accept his quest
>>He patrols down the road down the Rebel Camp every ~30 minutes
.target Private Thorsen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
.accept 215 >> Accept Jungle Secrets
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 215 >> Turn in Jungle Secrets
step
#era
#sticky
#label panthers
>>Kill |cRXP_ENEMY_Young Panthers|r
.goto Stranglethorn Vale,41.50,12.00
.complete 190,1 
.mob Young Panther
step
#era
>>Kill |cRXP_ENEMY_Young Tigers|r
.goto Stranglethorn Vale,35.40,12.50
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#era
#requires panthers
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.turnin 185 >> Turn in Tiger Mastery
.accept 186 >> Accept Tiger Mastery
.target Ajeck Rouack
step
#era
.goto Stranglethorn Vale,35.55,10.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 190 >> Turn in Panther Mastery
.target Sir S. J. Erlgadin
step << Druid
#era
.goto Stranglethorn Vale,33.43,11.85
.xp 32 >> Grind to 32
step << Druid
#era
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
.target Loganaar
step
#era
#label stvEnd2
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >> Turn in Mor'Ladim
.isQuestComplete 228
.target Commander Althea Ebonlocke
step
.goto Duskwood,73.59,46.89
.isQuestTurnedIn 228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.accept 229 >> Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 253 >> Turn in Bride of the Embalmer
.isQuestComplete 253
.target Lord Ello Ebonlocke
step
#sticky
.destroy 3248 >>Throw away the |T134939:0|t[Translated Letter from The Embalmer]

step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
.turnin 229 >> Turn in The Daughter Who Lived
.accept 231 >> Accept A Daughter's Love
.isQuestTurnedIn 228
.target Watcher Ladimore
step
.goto Duskwood,75.75,47.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
.turnin 222 >> Turn in Worgen in the Woods
.accept 223 >> Accept Worgen in the Woods
.target Calor
step
.goto Duskwood,75.32,49.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.turnin 223 >> Turn in Worgen in the Woods
.target Jonathan Carevin
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
.goto Duskwood,77.49,44.28
.fly Stormwind>> Fly to Stormwind
.target Felicia Maline
step << Mage
#era
.zone Stormwind City >> Teleport to Stormwind
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Mage
#som
.zone Stormwind City >> Teleport to Stormwind
step << Mage
#som
#completewith next
#level 34
.trainer >> Train your class spells
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step
.goto Stormwind City,57.00,72.88
.bankwithdraw 2784,5849,3712,2794 >> Withdraw the following items:
>>|T132765:0|t[Crate of Crash Helmets]
>>|T134026:0|t[Turtle Meat]
>>|T134187:0|t[Musquash Root]
>>|T133741:0|t[An Old History Book]
step << Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Mage
.goto Stormwind City,26.44,78.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.turnin 335 >> Turn in A Noble Brew
.accept 336 >> Accept A Noble Brew
.target Zardeth of the Black Claw
step << Mage
.goto Stormwind City,39.76,81.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >> Accept Malin's Request
.target Archmage Malin
step << Mage
.goto Stormwind City,40.62,91.83
>>Go to the tavern's kitchen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
.accept 1301 >> Accept James Hyal
.target Connor Rivers
step << Mage
#era
.isOnQuest 1078
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1078 >> Turn in Retrieval for Mauren
.target Collin Mauren
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1245 >> Turn in The Missing Diplomat
.accept 1246 >> Accept The Missing Diplomat
.target Elling Trias
step << Warrior/Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r << Warrior
.goto Stormwind City,74.64,52.82 << Rogue
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.trainer >> Train your class spells
.target Osborne the Night Man << Rogue
.target Ilsa Corbin << Warrior
step
.goto Stormwind City,70.53,44.88
>>When you handin the quest, 2 mobs will spawn and Dashel will turn hostile. Just try to kill |cRXP_ENEMY_Dashel|r as fast as possible
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1246 >> Turn in The Missing Diplomat
.accept 1447 >> Accept The Missing Diplomat
.target Dashel Stonefist
.mob Dashel Stonefist

step
#completewith next
>> Beat |cRXP_FRIENDLY_Dashel Stonefist|r. Be careful as his 2 adds turn friendly, then back to hostile a few seconds after being beaten
.complete 1447,1 
.target Dashel Stonefist
step
.goto Stormwind City,70.53,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
.turnin 1447 >> Turn in The Missing Diplomat
.accept 1247 >> Accept The Missing Diplomat
.target Dashel Stonefist
step << Warrior
.goto Stormwind City,78.8,45.3
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem

>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm Ragetotem|r




.accept 1718 >> Accept The Islander
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
.turnin 1247 >> Turn in The Missing Diplomat
.accept 1248 >> Accept The Missing Diplomat
.target Elling Trias
step << !Mage
#era
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
.turnin 1078 >> Turn in Retrieval for Mauren
.isOnQuest 1078
.target Collin Mauren
step << !Mage
.goto Stormwind City,39.76,81.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
.accept 690 >> Accept Malin's Request
.target Archmage Malin
step << !Mage
>>Enter the Inn
.goto Stormwind City,40.62,91.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
.accept 1301 >> Accept James Hyal
.target Connor Rivers
step << !Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << !Mage
.goto Stormwind City,26.44,78.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.turnin 335 >> Turn in A Noble Brew
.accept 336 >> Accept A Noble Brew
.target Zardeth of the Black Claw
step << Paladin/Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r << Priest
.goto Stormwind City,42.66,33.75,30,0 << Paladin/Priest
.goto Stormwind City,38.68,32.85 << Paladin
.goto Stormwind City,38.54,26.86 << Priest
.trainer >> Train your class spells
.target Arthur the Faithful << Paladin
.target Brother Joshua << Priest
step << Warlock
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
.accept 1798 >> Accept Seeking Strahad
.trainer >> Train your class spells
.target Gakin the Darkbinder
step << Warlock
.goto Stormwind City,25.28,78.22
>> Skip this step if you already have the same quest from the Ironforge Warlock trainer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r
.accept 4738 >> Accept In Search of Menara Voidrender
.target Demisette Cloyce
step
.goto Stormwind City,75.22,31.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
.turnin 336 >> Turn in A Noble Brew
.target Lord Baurles K. Wishock
step
.goto Stormwind City,74.16,7.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.itemcount 2794,1
.accept 337 >> Accept An Old History Book
.turnin 337 >> Turn in An Old History Book
.accept 538 >> Accept Southshore
.target Milton Sheaf
step << Mage
#som
#completewith next
#level 34
.trainer >> Teleport back to the Stormwind Trainer and Train your level 34 class spells if you didn't earlier
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
.accept 397 >> Accept You Have Served Us Well
.target Zggi
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zggi|r
.turnin 397 >> Turn in You Have Served Us Well
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
.goto Stormwind City,61.61,15.27
.trainer >> Train your class spells
.target Einris Brightspear

step << !Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Take the Tram to Ironforge
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Take the Tram or Teleport to Ironforge
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.50,47.70
.fly Wetlands>> Fly to Wetlands
.target Gryth Thurden
]])
RXPGuides.RegisterGuide([[
#version 7
#defaultfor Alliance Mage
#group RestedXP Alliance Mage
#classic
<< Alliance Mage
#name 31-33 Hillsbrad Mage AoE
#next 33-60 Mage AoE
step
>>Go inside the Wetlands Inn
.goto Wetlands,10.58,60.59
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 270 >>Turn in The Doomed Fleet
.target Glorin Steelbrow
.accept 321 >>Accept Lightforge Iron
step
>>Turning this in will make the NPC behind you start to run out of the Inn. Catch up to him
.goto Wetlands,10.60,60.77
>>Talk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1248 >>Turn in The Missing Diplomat
.target Mikhail
.accept 1249 >>Accept The Missing Diplomat
step
>>Quickly run outside the Inn. Nova/Polymorph his friend, and nuke Tapoke
.goto Wetlands,10.50,59.30
.complete 1249,1 
step
>>Mikhail might be stuck in an rp animation, you may have to wait a few seconds
.goto Wetlands,10.60,60.77
.target Mikhail
>>Talk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1249 >>Turn in The Missing Diplomat
step
>>Talk to Tapoke behind you
.goto Wetlands,10.55,60.26
.target Tapoke "Slim" Jahn
>>Talk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
.accept 1250 >>Accept The Missing Diplomat
step
.goto Wetlands,10.60,60.77
>>Talk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1250 >>Turn in The Missing Diplomat
.target Mikhail
.accept 1264 >>Accept The Missing Diplomat
step
>>Run out the inn, and swim over to the murlocs
.goto Wetlands,12.11,64.20
.turnin 321 >>Turn in Lightforge Iron
.accept 324 >>Accept The Lost Ingots
step
>>Single-target nuke the murlocs. Be careful as they net
>>The droprate can be really bad on this quest
.goto Wetlands,12.99,64.06,100,0
.goto Wetlands,10.26,67.93,100,0
.goto Wetlands,9.90,72.02,100,0
.complete 324,1 
step
.goto Wetlands,10.85,55.90
.target Harlo Barnaby
>>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
.accept 472 >>Accept Fall of Dun Modr
step
>>Run up the back of the ship. Kill Captain Halyndor. Don't cast on him when he has the green shield around him, as it reflects spells
.goto Wetlands,15.92,23.15,20,0
.goto Wetlands,15.49,23.50
.complete 290,1 
step
>>Swim under the ship on the north side. Open the grey strongbox
.goto Wetlands,14.36,24.04
.turnin 290 >>Turn in Lifting the Curse
.accept 292 >>Accept The Eye of Paleth
step
>>Right click on the catapult
.goto Wetlands,47.49,46.92
.turnin 465 >>Turn in Nek'rosh's Gambit

step << skip
.goto Wetlands,53.48,54.78
.complete 474,1 
step
.goto Wetlands,49.80,18.26
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
.turnin 472 >>Turn in Fall of Dun Modr
step
.goto Wetlands,49.90,18.23
.target Rhag Garmason
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.accept 631 >>Accept The Thandol Span
step
>>Go into the doorway at the bridge. Avoid fighting mobs
>>Loot the corpse on the bottom floor
.goto Wetlands,51.30,8.11,20,0
.goto Wetlands,51.28,7.96
.turnin 631 >>Turn in The Thandol Span
.accept 632 >>Accept The Thandol Span
step
.goto Wetlands,49.90,18.23
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 632 >>Turn in The Thandol Span
.target Rhag Garmason
.accept 633 >>Accept The Thandol Span
step
>>Cross the bridge into Arathi. Get on the edge of the broken bridge, then cast Slow Fall on yourself with the feather you took out the bank earlier. Jump across
>>If you failed the jump, skip this quest
>>Accepting this quest will start a 15 minute timer. Be quick and focused
.goto Arathi Highlands,43.99,88.24,40,0
.goto Arathi Highlands,42.91,91.46,20,0
.goto Arathi Highlands,43.24,92.64
.target Foggy MacKreel
>>Talk to |cRXP_FRIENDLY_Foggy MacKreel|r
.accept 647 >>Accept MacKreel's Moonshine

step
>>Loot the letter near the dwarf corpse underwater
.goto Arathi Highlands,44.29,92.89
.collect 4433,1,637 
.accept 637 >>Accept Sully Balloo's Letter
step
#completewith next
.goto Arathi Highlands,52.5,90.4,45 >> Swim east toward the ramp here
step
>>Click on the Wagon
.goto Arathi Highlands,48.87,88.14
.complete 633,1 
step
>>Run back to Wetlands
.goto Arathi Highlands,46.25,88.14,40,0
.goto Wetlands,49.92,18.20
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
.turnin 633 >>Turn in The Thandol Span
.target Rhag Garmason
.accept 634 >>Accept Plea To The Alliance
step
>>Run to Arathi
.goto Arathi Highlands,45.83,47.56
.target Captain Nials
>>Talk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 634 >>Turn in Plea To The Alliance
step
.goto Arathi Highlands,46.65,47.01
.target Skuerto
>>Talk to |cRXP_FRIENDLY_Skuerto|r
.turnin 690 >>Turn in Malin's Request
step
#completewith next
.goto Arathi Highlands,46.34,47.03
.vendor >>Buy potions from Drovnar if you want
step
.goto Arathi Highlands,45.73,46.10
.fp Refuge Pointe >> Get the Refuge Pointe flight path
step
>>Run to Southshore, into the inn, then into the basement. If you fail the timed quest, abandon it and skip this step
.goto Arathi Highlands,19.72,29.04,40,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
.target Brewmeister Bilger
>>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
.turnin 647 >>Turn in MacKreel's Moonshine
step
>>go back upstairs
.goto Hillsbrad Foothills,51.89,58.68
.target Chef Jessen
>>Talk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >>Accept Soothing Turtle Bisque
step
>>Go back out the Inn
.goto Hillsbrad Foothills,50.34,59.05
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >>Accept Hints of a New Plague?
step
.goto Hillsbrad Foothills,49.47,58.73
.target Marshal Redpath
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 500 >>Accept Crushridge Bounty
step
.goto Hillsbrad Foothills,48.14,59.10
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 505 >>Accept Syndicate Assassins
step
.goto Hillsbrad Foothills,50.56,57.10
.target Loremaster Dibbs
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >>Turn in Southshore
step
>>Go inside the building. Buy 4 soothing spices from Micha for quests later
.goto Hillsbrad Foothills,48.93,55.02
.collect 3713,4 
step
.goto Hillsbrad Foothills,49.34,52.27
.fp Southshore >> Get the Southshore flight path
.fly Menethil >> Fly to Menethil
step
>>Run Into the inn
.goto Wetlands,10.59,60.59
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
.turnin 324 >> Turn in The Lost Ingots
.target Glorin Steelbrow
.accept 322 >>Accept Blessed Arm
.turnin 292 >>Turn in The Eye of Paleth
.accept 293 >>Accept Cleansing the Eye
step
.zone Stormwind City >> Teleport to Stormwind City
step << skip
.goto Stormwind City,36.86,81.13
.trainer >> Train your class spells
step
>>Go into Stormwind Cathedral
.goto Stormwind City,42.62,33.59,30,0
.goto Stormwind City,39.59,27.20
.target Archbishop Benedictus
>>Talk to |cRXP_FRIENDLY_Archbishop Benedictus|r
.turnin 293 >>Turn in Cleansing the Eye
step
>>Run to the Dwarven District
.goto Stormwind City,51.76,12.08
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
.turnin 322 >>Turn in Blessed Arm
.target Grimand Elmore
.accept 325 >>Accept Armed and Ready
step
.goto Stormwind City,66.27,62.12
.fly Westfall >> Fly to Westfall
step
>>Go east to Duskwood
.goto Duskwood,7.78,34.06
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >>Turn in Armed and Ready
.target Sven Yorgen
.accept 55 >>Accept Morbent Fel
step
>>Clear the mobs out inside the house. Equip Morbent's Bane in your inventory.
>>Split pull the pack in Morbent's upstairs room with a blizzard, then kite him out the building. Use Morbent's bane on him
>>Nuke him with Single Target
.goto Duskwood,17.60,33.42,20,0
.goto Duskwood,16.91,33.40
.complete 55,1 

step
>>Go to the big tree and pull Mor'Ladim when he patrols gets close. Kite him using Frostbolt and slowly kill him
.goto Duskwood,21.66,40.73
.complete 228,1 

step
>>Go to Eliza's Grave and summon her. Jump onto Abercrombie's shack behind you, and nuke Eliza down
>>Use Frost Ward if you trained it. Loot Eliza for her heart
.goto Duskwood,28.85,30.72
.turnin 254 >> Turn in Digging Through the Dirt
.complete 253,1 
step
.goto Duskwood,7.79,34.07
.target Sven Yorgen
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >>Turn in Morbent Fel
step
.hs >> Hearth to Darkshire
>> Buy food/water if needed
step
.goto Duskwood,73.57,46.88
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >>Turn in Mor'Ladim
.target Commander Althea Ebonlocke
.accept 229 >>Accept The Daughter Who Lived
step
>>Go into the Town Keep
.goto Duskwood,71.93,46.42
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
.turnin 253 >>Turn in Bride of the Embalmer
step
#sticky
.destroy 3248 >>Throw away the Translated Letter from The Embalmer
step
>>Turn in at Watcher Ladimore. She patrols the inner circle of Darkshire
.goto Duskwood,75.02,45.51
.target Watcher Ladimore
>>Talk to |cRXP_FRIENDLY_Watcher Ladimore|r
.turnin 229 >>Turn in The Daughter Who Lived
step
.zone Ironforge >> Teleport to Ironforge
step
>>You may need to wait out her short RP event
.goto Ironforge,63.79,67.78
>>Talk to |cRXP_FRIENDLY_Sara Balloo|r
.turnin 637 >>Turn in Sully Balloo's Letter
.target Sara Balloo
.accept 683 >>Accept Sara Balloo's Plea
step
.goto Ironforge,39.10,56.19
>>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 683 >>Turn in Sara Balloo's Plea
.target King Magni Bronzebeard
.accept 686 >>Accept A King's Tribute
step
#completewith next
+Bank your cloth and light feathers if needed
step
.goto Ironforge,38.75,87.04
>>Talk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 686 >>Turn in A King's Tribute
.target Grand Mason Marblesten
.accept 689 >>Accept A King's Tribute
step
.goto Ironforge,55.50,47.74
.fly Southshore >> Fly to Southshore
step
>>Go into the Inn
.goto Hillsbrad Foothills,51.17,58.92
.home >> Set your hearth to Southshore
step
.goto Hillsbrad Foothills,52.42,55.96
.target Darren Malvew
>>Talk to |cRXP_FRIENDLY_Darren Malvew|r
.accept 564 >>Accept Costly Menace
step
#completewith next
.goto Hillsbrad Foothills,55.57,55.82,100 >> Run to the river leading up to Alterac
step
#completewith next
.goto Alterac Mountains,83.14,52.75,120,0
>>AoE turtles along the river up north toward Western Plaguelands. You can get all 10 later if needed
>>Note that Turtles have frost resistance, so use Arcane Explosion and backwards strafe to kill him. Watch the video for reference
.link https://youtu.be/SxMc2GoP33c?t=3375 >> CLICK HERE
.collect 3712,10,555,1 
step
.goto Alterac Mountains,80.50,32.01,100,0
.zone Western Plaguelands >> Travel to Western Plaguelands
step
.goto Alterac Mountains,79.01,30.63
.fp Chillwind Camp >> Get the Chillwind Camp flight path
step
>>AoE ogres. Loot them for knucklebones
>>Try and avoid the level 36 brutes, as they will resist too much
.goto Alterac Mountains,45.32,61.65,120,0
.goto Alterac Mountains,54.66,52.80,120,0
.goto Alterac Mountains,45.32,61.65,120,0
.goto Alterac Mountains,54.66,52.80,120,0
.complete 500,1 
step
#sticky
#completewith Syndicate
>>Kill Lions that you see. Focus on the Hulking ones if possible
.complete 564,1 
.complete 564,2 
step
#sticky
#label Plans
>>Loot the plans from the table in the camp
.goto Alterac Mountains,67.28,47.30,90,0
.goto Alterac Mountains,58.32,67.92
.accept 510 >>Accept Foreboding Plans
.accept 511 >>Accept Encrypted Letter
step
#label Syndicate
>>AoE Syndicates in the area. Go up north and kill Ogres for knucklebones if you're waiting on respawns after clearing both camps
.goto Alterac Mountains,58.32,67.92,100,0
.goto Alterac Mountains,47.72,82.08,100,0
.complete 505,1 
.complete 505,2 
step
#requires Plans
.goto Hillsbrad Foothills,43.1,28.0,24,0
.goto Hillsbrad Foothills,43.9,31.4,24,0
.goto Hillsbrad Foothills,44.1,29.0,24,0
.goto Hillsbrad Foothills,43.6,30.2,24,0
.goto Hillsbrad Foothills,43.0,32.9,24,0
.goto Hillsbrad Foothills,41.6,31.9,24,0
.goto Hillsbrad Foothills,45.1,28.3,24,0
.goto Hillsbrad Foothills,45.2,25.2,24,0
.goto Hillsbrad Foothills,46.3,31.9,24,0
>>Loot the lighter, highlighted shards of granite against the wall. There can only be 2-3 up at a time (so you'll likely backtrack for spawns)
>>AoE the Yetis in the area
.complete 689,1 
step
.goto Alterac Mountains,39.08,92.32,150,0
.goto Hillsbrad Foothills,35.25,23.37
>>AoE Lions that you see. Focus on the Hulking ones if possible
.complete 564,1 
.complete 564,2 
step
>>Run along the shore, AoEing turtles for their meat
.goto Alterac Mountains,18.36,51.30,100,0
.goto Alterac Mountains,36.90,20.14,100,0
.collect 3712,10,555,1 

step
.hs >> Hearth to Southshore
.vendor >> Buy up to 120 level 35 drink from the Innkeeper
step
>>At the back of the Inn
.goto Hillsbrad Foothills,51.89,58.68
.target Chef Jessen
>>Talk to |cRXP_FRIENDLY_Chef Jessen|r
.turnin 555 >>Turn in Soothing Turtle Bisque
step
.goto Hillsbrad Foothills,49.47,58.73
.target Marshal Redpath
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 500 >>Turn in Crushridge Bounty
step
>>Inside the keep
.goto Hillsbrad Foothills,48.14,59.11
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 505 >>Turn in Syndicate Assassins
.turnin 510 >>Turn in Foreboding Plans
step
.goto Hillsbrad Foothills,50.57,57.10
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 511 >>Turn in Encrypted Letter
.target Loremaster Dibbs
.accept 514 >>Accept Letter to Stormpike
step
.goto Hillsbrad Foothills,52.42,55.97
.target Darren Malvew
>>Talk to |cRXP_FRIENDLY_Darren Malvew|r
.turnin 564 >>Turn in Costly Menace
step
.zone Ironforge >> Teleport to Ironforge
step
#completewith next
+Make sure to bank your cloth and repair. You're not going back to town for hours soon
step
>>If you get unlucky on the quest accept and have to wait out the RP event, start conjuring level 25 water en masse
.goto Ironforge,39.02,88.08
>>Talk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.turnin 689 >>Turn in A King's Tribute
.target Grand Mason Marblesten
.accept 700 >>Accept A King's Tribute
step
.goto Ironforge,39.07,56.23
.target King Magni Bronzebeard
>>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.turnin 700 >>Turn in A King's Tribute
step
.goto Ironforge,74.64,11.74
>>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
.turnin 514 >>Turn in Letter to Stormpike
.target Prospector Stormpike
.accept 525 >>Accept Further Mysteries
step
.goto Ironforge,55.50,47.74
.fly Arathi >> Fly to Arathi
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
<< Alliance
#name 32-33 Hillsbrad/Arathi
#next 33-34 Thousand Needles
step
.goto Wetlands,10.80,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent Hyal|r
.turnin 1301 >> Turn in James Hyal
.accept 1302 >> Accept James Hyal
.target Vincent Hyal
step
.goto Wetlands,10.59,60.77
>>Turning this quest in will start an event. Two level 34 mobs will spawn outside the Inn. Attack them
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1248 >> Turn in The Missing Diplomat
.accept 1249 >> Accept The Missing Diplomat
.target Mikhail
step
>> Go outside and defeat |cRXP_FRIENDLY_Tapoke Jahn|r. |cRXP_WARN_Try to Crowd Control (CC) his friend|r
.complete 1249,1 
.target Tapoke "Slim" Jahn
step
.goto Wetlands,10.59,60.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1249 >> Turn in The Missing Diplomat
.target Mikhail
step
.goto Wetlands,10.54,60.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
.accept 1250 >> Accept The Missing Diplomat
.target Tapoke "Slim" Jahn
step
.goto Wetlands,10.59,60.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
.turnin 1250 >> Turn in The Missing Diplomat
.accept 1264 >> Accept The Missing Diplomat
.target Mikhail
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
.goto Wetlands,9.49,59.70
.fly Southshore>> Fly to Southshore
.target Shellei Brondir
step
#label AssassinsContract
#completewith start
>>Keep a look out for the Syndicate Assassin event in Southshore
>>If you manage to kill an |cRXP_ENEMY_Assassin|r, loot it the Contract. Click it in your backs.
.collect 3668,1,522
.accept 522 >> Accept Assassin's Contract
.unitscan Shadowy Assassin
step
#requires AssassinsContract
#completewith start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 522 >> Turn in Assassin's Contract
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,52.41,55.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
.accept 564 >> Accept Costly Menace
.target Darren Malvew
step
.goto Hillsbrad Foothills,50.57,57.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
.isOnQuest 538
step
.goto Hillsbrad Foothills,50.34,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >> Accept Hints of a New Plague?
.target Phin Odelic
step
.goto Hillsbrad Foothills,51.46,58.38
> >|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.accept 536 >> Accept Down the Coast
.target Lieutenant Farren Orinelle
step
#era
.goto Hillsbrad Foothills,51.88,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.target Chef Jessen
step
#completewith next
.goto Hillsbrad Foothills,51.17,58.93
.home >> Set your Hearthstone to Southshore
step
>>Kill the |cRXP_ENEMY_Torn Fin Tidehunter|r and the |cRXP_ENEMY_Fin Oracles|r
.goto Hillsbrad Foothills,46.18,66.57
.complete 536,1 
.complete 536,2 
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.46,58.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 536 >> Turn in Down the Coast
.accept 559 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
>>Kill the |cRXP_ENEMY_Torn Fin murlocs|r in the area. Loot them for their |cRXP_LOOT_Head|r
.goto Hillsbrad Foothills,32.04,72.81
.complete 559,1 
.mob Torn Fin Muckdweller
.mob Torn Fin Coastrunner
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.46,58.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 559 >> Turn in Farren's Proof
.accept 560 >> Accept Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,49.47,58.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 560 >> Turn in Farren's Proof
.accept 561 >> Accept Farren's Proof
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.13,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 505 >> Accept Syndicate Assassins
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,51.46,58.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 561 >> Turn in Farren's Proof
.accept 562 >> Accept Stormwind Ho!
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,57.31,67.82
>> Kill the |cRXP_ENEMY_Daggerspine Nagas|r in the area
.complete 562,1 
.complete 562,2 
.mob Daggerspine Shorehunter
.mob Daggerspine Siren
step
.goto Hillsbrad Foothills,51.46,58.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
.turnin 562 >> Turn in Stormwind Ho!
.accept 563 >> Accept Reassignment
.target Lieutenant Farren Orinelle
step
#label start
.goto Hillsbrad Foothills,48.96,55.06
>> Buy 4 Soothing Spices from |cRXP_FRIENDLY_Micha Yance|r
.collect 3713,4 
step
#era/som
.goto Alterac Mountains,40.15,92.44
>> Loot |cRXP_PICK_Granite Chunks|r inside the Yeti cave
.complete 689,1 
.isOnQuest 689
step
>>Kill the |cRXP_ENEMY_Mountain Lions|r in the area
.goto Alterac Mountains,30.92,84.58
.complete 564,1 
.complete 564,2 
.mob Mountain Lion
.mob Hulking Mountain Lion
step
#sticky
#label Secretplanz
.goto Alterac Mountains,58.31,67.92
.goto Alterac Mountains,48.0,82.0
>>Click on the scroll on top of the table on either Syndicate camp
.accept 510 >> Accept Foreboding Plans
.accept 511 >> Accept Encrypted Letter
step
#completewith next
+Try to save 15 Silk Cloth for a quest for later
.collect 4306,15
step
>>Kill |cRXP_ENEMY_Syndicates|r in the area
.goto Alterac Mountains,58.31,67.92,90,0
.goto Alterac Mountains,48.0,82.0,90,0
.goto Alterac Mountains,58.31,67.92
.goto Alterac Mountains,48.0,82.0,0
.complete 505,1 
.complete 505,2 
.mob Syndicate Footpad
.mob Syndicate Thief
step
#era
#requires lions
.goto Hillsbrad Foothills,69.30,12.40
>> Kill turtles along the river. Loot them for the |cRXP_LOOT_Turtle Meat|r
.collect 3712,10,555,1


step
#requires lions
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.93,85.06
.fp Chillwind>> Get the Western Plaguelands Flight Path
.target Bibilfaz Featherwhistle
step
#requires lions
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
.goto Western Plaguelands,42.93,85.06
.fly Southshore>> Fly to Southshore
.target Bibilfaz Featherwhistle
step
.goto Hillsbrad Foothills,50.57,57.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 511 >> Turn in Encrypted Letter
.accept 514 >> Accept Letter to Stormpike
.target Loremaster Dibbs
step
#era
.goto Hillsbrad Foothills,51.88,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
.turnin 555 >> Turn in Soothing Turtle Bisque
.target Chef Jessen
step
.goto Hillsbrad Foothills,48.13,59.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 505 >> Turn in Syndicate Assassins
.turnin 510 >> Turn in Foreboding Plans
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,52.41,55.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
.turnin 564 >> Turn in Costly Menace
.target Darren Malvew
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.34,52.27
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
step
#era/som
.goto Arathi Highlands,45.83,47.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.accept 681 >> Accept Northfold Manor
.target Captain Nials
step
.goto Arathi Highlands,46.65,47.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
.turnin 690 >> Turn in Malin's Request
.target Skuerto
step
.goto Arathi Highlands,60.18,53.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.accept 658 >> Accept Hints of a New Plague?
.target Quae
step
#completewith Northfold
.goto Arathi Highlands,26.97,58.83,0
+|cRXP_WARN_If you're leveling First Aid, go into Stromgarde (hugging the right wall) and buy the First Aid books from Deneb if you have enough money (1g 63s). Be careful of the high-level Syndicate elites around|r
step
#era/som
#completewith courier
>>Use Eagle Eye to find the Forsaken Courier << Hunter
>>Kill the |cRXP_ENEMY_Forsaken Courier|r if you happen to bump into her. Loot her for the |cRXP_LOOT_Sealed Folder|r. She patrols the road between Tarren Mill and Go'Shek Farm
>>If the courier is not in Arathi, look for it in Hillsbrad after finishing Northfold Manor << Hunter
.complete 658,1 
.unitscan FORSAKEN COURIER
step
#som
#phase 3-6
#completewith courier
>>Use Eagle Eye to find the Forsaken Courier << Hunter
>>Kill the |cRXP_ENEMY_Forsaken Courier|r if you happen to bump into her. Loot her for the |cRXP_LOOT_Sealed Folder|r. She patrols the road between Tarren Mill and Go'Shek Farm
.complete 658,1 
.unitscan FORSAKEN COURIER
step
#era/som
#label Northfold
>>Kill the |cRXP_ENEMY_Syndicate forces|r in the area
.goto Arathi Highlands,33.25,30.13
.complete 681,1 
.complete 681,2 
.mob Syndicate Highwayman
.mob Syndicate Mercenary
step << Hunter
#completewith next
.hs >>Hearth back to Southshore
>>Buy food/water if needed from |cRXP_FRIENDLY_Innkeeper Anderson|r
.target Innkeeper Anderson
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
.goto Hillsbrad Foothills,50.42,58.80
.stable >> Stable your pet
.target Wesley

step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.34,52.27
.fly Arathi>> Fly to Arathi Highlands
.target Darla Harris
step
#era/som
.goto Arathi Highlands,45.83,47.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 681 >> Turn in Northfold Manor
.target Captain Nials
step << Hunter
#sticky
>>Use eagle eye to find a level 32/33 spider
.train 17265>>Tame it and learn Bite rank 5
step
#label courier
.goto Arathi Highlands,60.18,53.84
>>Turn in the Forsaken Courier quest
>>|cRXP_WARN_Don't go out of your way to find the courier, you can skip this step and finish it later|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >> Turn in Hints of a New Plague?
.target Quae
step << !Hunter
#completewith next
.hs >>Hearth to Southshore if you are far away from the Flight Path
>>Buy food/water if needed from |cRXP_FRIENDLY_Innkeeper Anderson|r
.target Innkeeper Anderson
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Hillsbrad Foothills,49.34,52.27
.fly Wetlands >> Fly to Wetlands
.target Darla Harris
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
<< Alliance
#name 33-34 Thousand Needles
#next 34-35 Stranglethorn Vale I
step
.zoneskip Dustwallow Marsh
#completewith next
.goto Wetlands,5.14,63.40,20 >> Go to the end of the dock. Wait here for the boat
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore

step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.goto Dustwallow Marsh,67.47,51.30
.fp Theramore >> Get the Theramore Flight Path
.target Baldruc
step
.goto Dustwallow Marsh,66.15,46.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
.accept 1282 >> Accept They Call Him Smiling Jim
.target Guard Byron
step
.goto Dustwallow Marsh,66.45,45.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.accept 1135 >> Accept Highperch Venom
.maxlevel 33 << !Hunter !Rogue
.target Fiora Longears
step
#completewith JamesHyjal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
.goto Dustwallow Marsh,66.6,45.2
.home >> Set your Hearthstone to Theramore
.target Innkeeper Janene
step << Hunter
#completewith JamesHyjal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
.goto Dustwallow Marsh,66.0,45.6
.stable >> Withdraw your main pet from the stables
.target Michael
step
#label JamesHyjal
.goto Dustwallow Marsh,67.8,48.2
>>Head to the 2nd floor of the keep, speak with Clerk Lendry
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Lendry|r
.turnin 1302 >> Turn in James Hyal
.target Clerk Lendry
step
.goto The Barrens,70.74,79.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r and |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1264 >> Turn in The Missing Diplomat
.target Commander Samaul
.accept 1265 >> Accept The Missing Diplomat
.target Captain Garran Vimes
.turnin 1282 >> Turn in They Call Him Smiling Jim
step
#completewith SoothingSpices
.goto Dustwallow Marsh,66.4,51.4
>>Make sure you have 3 Soothing Spices
.collect 3713,3
step
.goto Dustwallow Marsh,59.72,41.17
>>Head inside the tower at Sentry Point
.complete 1265,1
>>When you turn in, the quest npc will buff you - don't LoS his buff by running out the tower too early
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1265 >> Turn in The Missing Diplomat
.accept 1266 >> Accept The Missing Diplomat
.target Archmage Tervosh
step
#label SoothingSpices
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >> Accept Soothing Spices
.turnin 1218 >> Turn in Soothing Spices
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.44,25.92
>>Loot the |cRXP_PICK_dirt mound|r for the Spy's Report. Click it in your bags
.accept 1219 >> Accept The Orc Report
step
#softcore
.goto Dustwallow Marsh,45.2,24.6
>>For this next quest you have to beat a level 35 mob while dealing with 2 adds, |cRXP_WARN_if you can't do it at this level, skip this step, you will have another opportunity to finish it later|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324 >> Accept The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
#hardcore
.goto Dustwallow Marsh,45.2,24.6
>>This next quest you have to beat a level 35 mob while dealing with 2 adds, |cRXP_WARN_if you can't do it at this level, skip this step, you will have another opportunity to finish it later|r
>>|cRXP_WARN_BE CAREFUL, THIS QUEST WILL FLAG YOU FOR PVP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.accept 1324 >> Accept The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
>>You have to beat a level 35 mob while dealing with 2 adds, |cRXP_WARN_if you can't do it at this level, skip this step, you will have another opportunity to finish it|r
.goto Dustwallow Marsh,45.2,24.6
.complete 1324,1 
.isOnQuest 1324
.mob Private Hendel
step
.goto Dustwallow Marsh,45.2,24.2
>>After beating |cRXP_ENEMY_Private Hendel|r, wait a few seconds until Archmage Trevosh show up

>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >> Turn in The Missing Diplomat
.target Archmage Tervosh
.isQuestComplete 1324
step
.goto Dustwallow Marsh,45.2,24.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >> Turn in The Missing Diplomat
.target Lady Jaina Proudmoore
.isQuestTurnedIn 1324
step
#sticky
.abandon 1324 >> Abandon The Missing Diplomat quest if you still have it in your quest log
step
.goto Dustwallow Marsh,35.0,38.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.accept 1177 >> Accept Hungry
.target Mudcrush Durtfeet
step

>>Click on the |cRXP_FRIENDLY_Hoofprints|r, the |cRXP_FRIENDLY_Black Shield|r hanging on top of the fireplace, and on the |cRXP_FRIENDLY_Theramore Guard Badge|r on top of a wooden plank
.accept 1284 >> Accept Suspicious Hoofprints
.goto The Barrens,50.89,78.64
.accept 1253 >> Accept The Black Shield
.goto The Barrens,50.86,79.15
.accept 1252 >> Accept Lieutenant Paval Reethe
.goto The Barrens,50.96,78.95
step
#sticky
#completewith next
.goto Thousand Needles,32.09,22.33
.zone Thousand Needles>>Head southwest to Thousand Needles
step
.goto Thousand Needles,30.72,24.34
>>Click on the book next to the dead dwarf to loot |cRXP_PICK_Lonebrow's Journal|r. Click it in your bags
.accept 1100 >> Lonebrow's Journal
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
.goto Feralas,89.50,45.85
.fp Thalanaar >> Get the Thalanaar flight path
.target Thyssiana
step
.goto Thousand Needles,8.1,19.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1100 >> Turn in Lonebrow's Journal
.target Falfindel Waywarder
step
#era
.goto Thousand Needles,8.05,19.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 1059 >> Turn in Reclaiming the Charred Vale
.target Falfindel Waywarder
.isOnQuest 1059
step
.goto Dustwallow Marsh,4.16,90.45
>>Kill |cRXP_ENEMY_Wyverns|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
.complete 1135,1 
.isOnQuest 1135
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
>>Skip the other 2 quests from this quest giver
.accept 1110 >> Accept Rocket Car Parts
.target Kravel Koalbeard
step
.goto Thousand Needles,78.06,77.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
.target Fizzle Brassbolts
.accept 1104 >> Accept Salt Flat Venom
.turnin 1179 >> Turn in The Brassbolts Brothers
.target Wizzle Brassbolts
.accept 1105 >> Accept Hardened Shells
step
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1176 >> Accept Load Lightening
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
.accept 1175 >> Accept A Bump in the Road
.target Trackmaster Zherin
step
#som
#label sflats
#sticky
>>Run in circles around the race track killing mobs (|cRXP_ENEMY_Vultures, Turtles, Basilisks, Scorpions|r) and looting car parts on the ground
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.collect 3712,10 
.goto Thousand Needles,82.6,54.8,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1110,1 
.mob Salt Flats Vulture
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk

step
#era
#label sflats
#sticky
>>Run in circles around the race track killing mobs (|cRXP_ENEMY_Vultures, Turtles, Basilisks, Scorpions|r) and looting car parts on the ground
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1110,1 

step
>>Kill |cRXP_ENEMY_Saltstone Basilisks|r
.goto Thousand Needles,77.6,87.4,0
.complete 1175,2 
.complete 1175,3 
.mob Saltstone Crystalhide
.mob Saltstone Gazer
step
#requires sflats
.goto Thousand Needles,81.63,77.95
.target Trackmaster Zherin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
.turnin 1175 >> Turn in A Bump in the Road
step
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1176 >> Turn in Load Lightening
.target Pozzik
.accept 1178 >> Accept Goblin Sponsorship
step
.goto Thousand Needles,78.14,77.12
.target Wizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 1105 >> Turn in Hardened Shells
.target Fizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1104 >> Turn in Salt Flat Venom
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1110 >> Turn in Rocket Car Parts
.target Kravel Koalbeard
.accept 1111 >> Accept Wharfmaster Dizzywig
.accept 5762 >> Accept Hemet Nesingwary
step
.goto Tanaris,51.01,29.35
.fp Tanaris>> Get the Tanaris Flight Path
step
#completewith next
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
.goto Dustwallow Marsh,66.45,45.14
.target Fiora Longears
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
.turnin 1135 >> Turn in Highperch Venom
.isOnQuest 1135
step
.goto Dustwallow Marsh,65.1,47.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theramore Lieutenant|r
.turnin 1219 >> Turn in The Orc Report
.target Theramore Lieutenant
.accept 1220 >> Accept Captain Vimes
step
.goto Dustwallow Marsh,68.21,48.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1220 >> Turn in Captain Vimes
.turnin 1252 >> Turn in Lieutenant Paval Reethe
.target Captain Garran Vimes
.accept 1259 >> Accept Lieutenant Paval Reethe
.turnin 1253 >> Turn in The Black Shield
.accept 1319 >> Accept The Black Shield
.turnin 1284 >> Turn in Suspicious Hoofprints
step
.goto Dustwallow Marsh,68.04,48.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
.turnin 1259 >> Turn in Lieutenant Paval Reethe
.target Adjutant Tesoran
.accept 1285 >> Accept Daelin's Men
step
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1285 >> Turn in Daelin's Men
step
.goto Dustwallow Marsh,64.75,50.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
.turnin 1319 >> Turn in The Black Shield
.target Caz Twosprocket
.accept 1320 >> Accept The Black Shield
step
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1320 >> Turn in The Black Shield
step << Warlock
.goto Dustwallow Marsh,67.47,51.30
.fly Ratchet>> Fly to Ratchet
step << !Warlock
#completewith next
.goto Dustwallow Marsh,54.25,9.20,80 >> Grind your way northwest towards Ratchet
step << !Warlock
.goto The Barrens,62.68,36.23
.zone The Barrens >> Head to the Barrens
step << Warrior
.goto The Barrens,68.6,49.1
>>Follow the coast north and then head to the island northeast of Northwatch Hold
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1718 >> Turn in The Islander
.target Klannoc Macleod
.accept 1719 >> Accept The Affray
step << Warrior
.goto The Barrens,68.6,48.7
.complete 1719,1 
.complete 1719,2 
step << Warrior
.goto The Barrens,68.6,49.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc Macleod|r
.turnin 1719 >> Turn in The Affray
.target Klannoc Macleod
.accept 1791 >> Accept The Windwatcher
step << Warrior
.goto The Barrens,62.0,39.4
.home >> Set your Hearthstone to Ratchet
step
.goto The Barrens,62.67,37.44
.bankdeposit 3721,3521,4521,5847 >> Deposit the following items into your bank:
>>Farren's Report
>>Cleverly Encrypted Letter
>>Alterac Granite
>>Mirefin Head
step << !Warlock
.goto The Barrens,63.08,37.16
.fp Ratchet>> Get the Ratchet Flight Path
step
.goto The Barrens,62.68,36.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
.turnin 1178 >> Turn in Goblin Sponsorship
.target Gazlowe
.accept 1180 >> Accept Goblin Sponsorship
step << Warlock
.isOnQuest 4736
.goto The Barrens,62.50,35.44
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4736 >> Turn in In Search of Menara Voidrender
step << Warlock
.isOnQuest 4738
.goto The Barrens,62.50,35.44
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4738 >> Turn in In Search of Menara Voidrender
step << Warlock
.goto The Barrens,62.62,35.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 1798 >> Turn in Seeking Strahad
.target Strahad Farsan
.accept 1758 >> Accept Tome of the Cabal
step
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
.turnin 1111 >> Turn in Wharfmaster Dizzywig
.target Wharfmaster Dizzywig
.accept 1112 >> Accept Parts for Kravel
step
#era
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
.turnin 1039 >> Turn in The Barrens Port
.target Wharfmaster Dizzywig
.accept 1040 >> Accept Passage to Booty Bay
.isQuestTurnedIn 1038
step
#completewith next
.goto The Barrens,63.64,38.61,40 >> Run to the Ratchet Dock
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance Mage
#classic
<< Alliance Mage
#name 33-60 Mage AoE
step
#completewith next
+Congratulations! You're now onto the AoE grind part. If there is competition in the area you're AoEing in, then you can always log and play an alt, do dungeons, or try to kick them out the spot by being more persistent than them.
>>Good luck, and have fun!
step
.goto Arathi Highlands,60.18,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >>Turn in Hints of a New Plague?
.target Quae
.accept 658 >>Accept Hints of a New Plague?
step
#completewith next
+It's highly recommended you watch the video on how to do all 4-5 pulls effectively in the area for the orcs
.link https://youtu.be/SxMc2GoP33c?t=3477 >> CLICK HERE
step
#completewith next
.goto Arathi Highlands,66.34,64.29,120,0
.goto Arathi Highlands,63.49,67.77,120,0
.goto Arathi Highlands,61.25,72.37,120,0
.goto Arathi Highlands,64.77,73.22,120,0
.goto Arathi Highlands,70.50,69.58,120 >> Check the camps for Nimar the Slayer
step
.goto Arathi Highlands,73.20,64.88,30 >> Check the troll camps that are outside for Nimar the Slayer, as he drops a really good cloth helm
.unitscan Nimar the Slayer
>>If he's not up or you can't find him, skip this step
step
#sticky
#label Folder
>>Kill the Forsaken Courier when it spawns. Loot it for the folder
.complete 658,1 
.unitscan Forsaken Courier
step
.goto Arathi Highlands,61.89,58.12
.xp 36 >> AoE grind orcs to 36. Check the video guide linked earlier if you're struggling
>>Don't be afraid to Hearth early and restock/repair if needed
>>Remember to start saving Silk Cloth to bank later (for cloth turnins)
step
.isQuestComplete 658
.goto Arathi Highlands,60.19,53.85
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >>Turn in Hints of a New Plague?
step
.isQuestTurnedIn 658
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.accept 657 >>Accept Hints of a New Plague?
>>Talk to |cRXP_FRIENDLY_Kinelory|r

.turnin 657 >>Turn in Hints of a New Plague?
.target Kinelory

.accept 660 >>Accept Hints of a New Plague?
step
.isQuestTurnedIn 658
>>Escort Kinelory
.complete 660,1 
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.19,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >>Turn in Hints of a New Plague?
.target Quae
.accept 661 >>Accept Hints of a New Plague?
step
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
>>Bank your cloth too if needed
step
.hs >> Hearth to Southshore
.vendor >> Buy up to 140 level 35 water
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >>Turn in Hints of a New Plague?
step
.goto Hillsbrad Foothills,48.14,59.11
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 525 >>Turn in Further Mysteries
step
.goto Hillsbrad Foothills,49.34,52.27
.fly Arathi >> Fly to Arathi
step
#completewith next
.goto Arathi Highlands,45.98,47.72
.vendor >> Talk to Jannos and vendor/repair if needed
step
.goto Arathi Highlands,61.89,58.12,250 >> Run back to the orc farm
step
#sticky
#completewith next
>>Kill the Forsaken Courier when it spawns. Loot it for the folder
.complete 658,1 
.unitscan Forsaken Courier
step
.goto Arathi Highlands,61.89,58.12
.xp 37 >> AoE grind orcs to 37. Check the video guide linked earlier if you're struggling
step
.isQuestComplete 658
.goto Arathi Highlands,60.19,53.85
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 658 >>Turn in Hints of a New Plague?
step
.isQuestTurnedIn 658
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.accept 657 >>Accept Hints of a New Plague?
>>Talk to |cRXP_FRIENDLY_Kinelory|r

.turnin 657 >>Turn in Hints of a New Plague?
.target Kinelory

.accept 660 >>Accept Hints of a New Plague?
step
.isQuestTurnedIn 658
>>Escort Kinelory
.complete 660,1 
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.19,53.85
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >>Turn in Hints of a New Plague?
.target Quae
.accept 661 >>Accept Hints of a New Plague?
step
.hs >> Hearth to Southshore
.vendor >> Buy level 35 drink if needed
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >>Turn in Hints of a New Plague?
step
.goto Hillsbrad Foothills,49.34,52.27
.fly Wetlands >> Fly to Wetlands
step
#completewith next
.goto Wetlands,5.14,63.40,20 >> Go to the end of the dock. Wait here for the boat
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
step
.goto Dustwallow Marsh,67.47,51.30
.fp Theramore >> Get the Theramore Flight Path
step
>>Go into the house and buy Soothing Spices from Helenia if you didn't get them in Southshore
.goto Dustwallow Marsh,66.44,51.46
.collect 3713,3 
step
.goto Dustwallow Marsh,66.15,46.07
.target Guard Byron
>>Talk to |cRXP_FRIENDLY_Guard Byron|r
.accept 1282 >>Accept They Call Him Smiling Jim
step
>>Go into the Inn
.goto Dustwallow Marsh,66.33,45.47
.target Morgan Stern
>>Talk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1204 >>Accept Mudrock Soup and Bugs
step
.goto Dustwallow Marsh,66.59,45.22
.home >> Set your hearth to Theramore
.vendor >> Buy up to 180 level 35 drink
step
>>Go upstairs in the keep
.goto Dustwallow Marsh,67.79,47.62,30,0
.goto Dustwallow Marsh,68.02,48.71
>>Talk to |cRXP_FRIENDLY_Commander Samaul|r
.turnin 1264 >>Turn in The Missing Diplomat
.target Commander Samaul
.accept 1265 >>Accept The Missing Diplomat
step
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1282 >>Turn in They Call Him Smiling Jim
step
>>Wait for Tervosh to appear in the tower. Turn in, then wait for him to cast his buff on you
.goto Dustwallow Marsh,59.72,41.17
.complete 1265,1 
>>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1265 >> Turn in The Missing Diplomat
.target Archmage Tervosh
.accept 1266 >> Accept The Missing Diplomat
step
>>Talk to Private Hendel. This will start a 1v3 event
>>Nova the other mobs, try to focus Hendel
.goto Dustwallow Marsh,45.20,24.58
>>Talk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >>Turn in The Missing Diplomat
.target Private Hendel
.accept 1324 >>Accept The Missing Diplomat
.complete 1324,1 
step
>>Turn in behind you
.goto Dustwallow Marsh,45.19,24.27
.target Archmage Tervosh
>>Talk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >>Turn in The Missing Diplomat
.target Lady Jaina Proudmoore
>>Talk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >>Turn in The Missing Diplomat
step
>>Turn in the Soothing Spices that you got earlier from Southshore
.goto Dustwallow Marsh,55.44,26.27
.target "Swamp Eye" Jarl
>>Talk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1218 >>Accept Soothing Spices
.turnin 1218 >>Turn in Soothing Spices
step
>>Click the dirt grave
.goto Dustwallow Marsh,55.44,25.92
.accept 1219 >>Accept The Orc Report
step
#completewith next
+I HIGHLY recommend watching the mage guide for these mobs, as they are arguably the hardest part of the AoE Mage leveling experience
>>I wouldn't recommend doing the turtle pack until level 38+
.link https://youtu.be/SxMc2GoP33c?t=3824 >> CLICK HERE
step
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 38 >> AoE Murlocs to level 38
step
.trainer >> Teleport to Stormwind or Ironforge. Train your level 38 spells
>>Start being very careful with your money too, as it's very nice to have your mount at level 40
step
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
.goto Dustwallow Marsh,65.07,47.12
>>Talk to |cRXP_FRIENDLY_Theramore Lieutenant|r
.turnin 1219 >>Turn in The Orc Report
.target Theramore Lieutenant
.accept 1220 >>Accept Captain Vimes
step
>>Go upstairs in the keep
.goto Dustwallow Marsh,67.79,47.62,30,0
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>Talk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1220 >>Turn in Captain Vimes
step
#sticky
#completewith next
.goto Dustwallow Marsh,54.33,12.41,0
>>Start doing the Turtle pack just north of the north-western murloc camp
.complete 1204,1 
step
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 40 >> AoE Murlocs to level 40
step
.goto Dustwallow Marsh,64.80,40.43
>>Finish AoEing the turtles for their tongues
.complete 1204,1 
step << Gnome
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
step << Gnome
#era
.zone Dun Morogh >>Skip this step if you won't have 90g or more after vendoring trash
.trainer >>Run into Dun Morogh and get your mount and mount training.
.goto Dun Morogh,49.15,48.05
step << Gnome
#som
.zone Dun Morogh >>Skip this step if you won't have 50g or more after vendoring trash
.trainer >>Run into Dun Morogh and get your mount and mount training.
.goto Dun Morogh,49.15,48.05
step << Human
.zone Stormwind City >> Teleport to Stormwind
.trainer >> Train your class spells
step << Human
#era
.goto Stormwind City,66.27,62.13
.fly Redridge >> Fly to Redridge. Skip this step if you won't have 90g or more after vendoring trash
.goto Elwynn Forest,84.32,64.87
.trainer >>Run to Eastvale and get your mount and mount training.
step << Human
#som
.goto Stormwind City,66.27,62.13
.fly Redridge >> Fly to Redridge. Skip this step if you won't have 50g or more after vendoring trash
.goto Elwynn Forest,84.32,64.87
.trainer >>Run to Eastvale and get your mount and mount training.
step
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
.goto Dustwallow Marsh,66.33,45.47
.target Morgan Stern
>>Talk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1204 >>Turn in Mudrock Soup and Bugs
step
#hardcore
#era
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 42+80000 >> AoE Murlocs to level 42 & 80000+/101000xp
step
#som
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 42+80000 >> AoE Murlocs to level 42 & 80000+/101000xp
step
#hardcore
#era
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
step
#hardcore
#era
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
#som
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your class spells
step
#som
.hs >> Hearth to Theramore
>> Buy food/water if needed
step
>>Travel to Tanaris. You can either ride through Dustwallow -> Barrens -> Thousand Needles -> Gadgetzan
>>Or you can go straight south and swim near the fatigue water to eastern tanaris -> Gadgetzan
.goto Tanaris,52.51,27.91
.home >> Set your hearth to Gadgetzan
step
#softcore
#era
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >>Accept Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
#era
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 992 >>Accept Gadgetzan Water Survey
step
#softcore
#era
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
#era
#completewith next
+You're now going to be doing Zul'Farrak. This can be extremely difficult, but is absolutely worth the xp/hr once you learn to do it
>>Click either of the links depending on whether or not you have a mount yet
>>If you have no mount, as soon as you get 90g worth of loot, teleport back to Ironforge, go to Dun Morogh, and buy your mount. Hearth back to Gadgetzan << Gnome
>>If you have no mount, as soon as you get 90g worth of loot, teleport back to Stormwind, Fly to Redridge, run to Eastvale, then go and buy your mount. Hearth back to Gadgetzan << Human
.link https://youtu.be/TgwHw7qT4ws >> If you have a mount, CLICK HERE
.link https://youtu.be/4-yJ47T728Y?t=6 >> If you DONT have a mount, CLICK HERE
step
#softcore
#era
#sticky
#label Temper
>>Loot Troll Temper from the mobs you kill inside of Zul'Farrak
.complete 3042,1 
step
#softcore
#era
.xp 44 >> AoE Zul'Farrak to level 44
step
#softcore
#som
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1707 >>Accept Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1690 >>Accept Wastewander Justice
step
#softcore
#som
.goto Tanaris,51.84,27.02
.accept 2781 >>Accept WANTED: Caliph Scorpidsting
.accept 2875 >>Accept WANTED: Andre Firebeard
step
#softcore
#som
#completewith next
.goto Tanaris,60.18,23.29,0
>>AoE some Bandits/Thieves in Noonshade Ruins en route to Steamwheedle Port
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#softcore
#som
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >>Accept Pirate Hats Ahoy!
step
#softcore
#som
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.accept 8366 >>Accept Southsea Shakedown
step
#softcore
#som
.goto Tanaris,63.67,31.29
>>AoE Bandits and Thieves. Loot them for Water Pouches
>>Be careful as some of the mobs under the tents are bugged, and will evade all mobs aggroed onto you if you aggro one of them
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#softcore
#som
.goto Tanaris,62.22,37.75
>>Look for Caliph Scorpidsting in the area. Kill and loot him for his head
>>Be careful as he has two stealthed adds right next to him
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1707 >>Turn in Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1690 >>Turn in Wastewander Justice
.turnin 2781 >>Turn in WANTED: Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,68.73,41.49,50 >> Travel to Lost Rigger Cove. Open the AoE guide en route and watch it
.link https://youtu.be/SxMc2GoP33c?t=4113 >> CLICK HERE for reference
step
#softcore
#som
#sticky
#label Hats
>>Loot pirates you AoE in the area for their hats
.complete 8365,1 
step
#softcore
#som
#sticky
#label Andre
>>Kill Andre Firebeard
.complete 2875,1 
step
#softcore
#som
#sticky
#completewith end
>>Loot the Ship Schedule from the footlockers that drop from pirates in the area
.collect 9250,1,2876 
.accept 2876 >>Accept Ship Schedules
step
#softcore
#som
.goto Tanaris,73.72,46.86
.xp 43+91000 >> AoE Grind to 43 & 91000+/106300xp
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
step
#softcore
#som
#requires Hats
step
#softcore
#som
#requires Andre
>>Finish off killing the Southsea Mobs
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#softcore
#som
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >>Turn in Pirate Hats Ahoy!
step
#softcore
#som
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 2876 >>Turn in Ship Schedules
.turnin 8366 >>Turn in Southsea Shakedown
step
#softcore
#som
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
step
#hardcore
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1707 >>Accept Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1690 >>Accept Wastewander Justice
step
#hardcore
.goto Tanaris,51.84,27.02
.accept 2781 >>Accept WANTED: Caliph Scorpidsting
.accept 2875 >>Accept WANTED: Andre Firebeard
step
#hardcore
#completewith next
.goto Tanaris,60.18,23.29,0
>>AoE some Bandits/Thieves in Noonshade Ruins en route to Steamwheedle Port
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#hardcore
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >>Accept Pirate Hats Ahoy!
step
#hardcore
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.accept 8366 >>Accept Southsea Shakedown
step
#hardcore
.goto Tanaris,63.67,31.29
>>AoE Bandits and Thieves. Loot them for Water Pouches
>>Be careful as some of the mobs under the tents are bugged, and will evade all mobs aggroed onto you if you aggro one of them
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#hardcore
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>Talk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1707 >>Turn in Water Pouch Bounty
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1690 >>Turn in Wastewander Justice
step
#hardcore
.goto Tanaris,68.73,41.49,50 >> Travel to Lost Rigger Cove. Open the AoE guide en route and watch it
.link https://youtu.be/SxMc2GoP33c?t=4113 >> CLICK HERE for reference
step
#hardcore
#sticky
#label Hats
>>Loot pirates you AoE in the area for their hats
.complete 8365,1 
step
#hardcore
#sticky
#label Andre
>>Kill Andre Firebeard
.complete 2875,1 
step
#hardcore
#sticky
#completewith end
>>Loot the Ship Schedule from the footlockers that drop from pirates in the area
.collect 9250,1,2876 
.accept 2876 >>Accept Ship Schedules
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 44 >> AoE Grind to 44
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
step
#hardcore
#requires Hats
step
#hardcore
#requires Andre
>>Finish off killing the Southsea Mobs
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#softcore
#era
#requires Temper
.zone Ironforge >> Teleport to Ironforge
step
#softcore
#som
.zone Ironforge >> Teleport to Ironforge
step
#hardcore
.zone Ironforge >> Teleport to Ironforge
step
.goto Ironforge,27.17,8.58
.trainer >> Train your class spells
step
.goto Ironforge,31.32,27.80
.vendor >> Talk to Ginny. Buy 6 Runes of Teleportation
>>You can also go to the AH and buy bigger bags if you need
.collect 17031,6 
step
.hs >> Hearth to Gadgetzan
.vendor >> Buy 140 level 45 drink
step
#hardcore
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>Talk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >>Turn in Pirate Hats Ahoy!
step
#hardcore
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 2876 >>Turn in Ship Schedules
.turnin 8366 >>Turn in Southsea Shakedown
step
#hardcore
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
step
#hardcore
#label Caliph
.goto Tanaris,62.22,37.75
>>Look for Caliph Scorpidsting in the area. Kill and loot him for his head
>>Be careful as he has two stealthed adds right next to him
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 48 >> AoE grind to 48
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
step
#softcore
#som
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.accept 3042 >>Accept Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
#era
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >>Turn in Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.accept 2865 >> Accept Scarab Shells
step
#softcore
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
#sticky
#completewith ZF54
.goto Tanaris,39.14,29.15,0
>>If you ever hit lockout (max 5 instances per hour) and it won't let you back in ZF, do the Dowsing Widget
.complete 992,1 
step
#softcore
#era
#completewith next
+You're now going to learn to do a harder version which takes longer, but gives more xp: Pulling scarabs.
.link https://youtu.be/rFO4prcG2p0 >> CLICK HERE
step
#softcore
#som
#completewith next
+You're now going to be doing Zul'Farrak. This can be extremely difficult, but is absolutely worth the xp/hr once you learn to do it
>>Click either of the links depending on whether or not you have a mount yet
>>If you have no mount, as soon as you get 50g worth of loot, teleport back to Ironforge, go to Dun Morogh, and buy your mount. Hearth back to Gadgetzan << Gnome
>>If you have no mount, as soon as you get 50g worth of loot, teleport back to Stormwind, Fly to Redridge, run to Eastvale, then go and buy your mount. Hearth back to Gadgetzan << Human
.link https://youtu.be/TgwHw7qT4ws >> If you have a mount, CLICK HERE
.link https://youtu.be/4-yJ47T728Y?t=6 >> If you DONT have a mount, CLICK HERE
.link https://youtu.be/rFO4prcG2p0 >> CLICK HERE when you're comfortable enough to do the additional Scarab pull
step
#softcore
#sticky
#label ScarabS
>>Loot Scarab Shells inside of Zul'Farrak after you've AoE'd them
.complete 2865,1 
step
#softcore
#som
>>Loot Troll Temper from the zombies you AoE inside of Zul'Farrak
.complete 3042,1 
step
#softcore
.xp 48 >> AoE Zul'Farrak to level 48
step
#softcore
#requires ScarabS
.trainer >> Teleport to Stormwind or Ironforge. Train your level 46-48 spells
step
#hardcore
.trainer >> Teleport to Stormwind or Ironforge. Train your level 46-48 spells
step
.hs >> Hearth to Gadgetzan. Buy level 45 drink if needed
>> Buy food/water if needed
step
#hardcore
.goto Tanaris,52.46,28.52
.target Chief Engineer Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 2781 >>Turn in WANTED: Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>Talk to |cRXP_FRIENDLY_Trenton Lighthammer|r
.turnin 3042 >>Turn in Troll Temper
.vendor >> Vendor and Repair at Krinkle
step
#softcore
.isQuestComplete 992
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >>Turn in Gadgetzan Water Survey
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
step
#softcore
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
.xp 52 >> AoE Zul'Farrak to level 52
step
#hardcore
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>Talk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2876 >>Turn in Ship Schedules
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 52 >> AoE grind to 52
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
>>Remember to save 12 stacks of Mageweave. You'll need it for cloth turnins later
step
#hardcore
.zone Ironforge >> Teleport to Ironforge
.trainer >> Train your level 50-52 spells
step
#softcore
.trainer >> Teleport to Stormwind or Ironforge. Train your level 50-52 spells
step
#softcore
.hs >> Hearth to Gadgetzan. Buy level 45 drink if needed
>> Buy food/water if needed
step
.isQuestComplete 992
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >>Turn in Gadgetzan Water Survey
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2865 >> Turn in Scarab Shells
step
#softcore
.goto Tanaris,38.73,20.02,60 >> Travel to Zul'Farrak
step
#softcore
#label ZF54
.xp 54 >> AoE Zul'Farrak to level 54
>>Remember to save 12 stacks of Mageweave. You'll need it for cloth turnins later
step
#softcore
.trainer >> Teleport to Ironforge. Train your level 54 spells
step
.goto Ironforge,55.50,47.75
.fly Chillwind >> Fly to Western Plaguelands
step
.goto Western Plaguelands,42.70,84.03
.target Commander Ashlam Valorfist
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
step
.goto Western Plaguelands,42.97,83.55
.target Argent Officer Pureheart
>>Talk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.turnin 5401 >> Turn in Argent Dawn Commission
step
>>Equip your Argent Dawn Commission
>>AoE the skeletons and ghouls. Be careful when going back into melee range after pulling as they thrash (multiple attacks at once)
.goto Western Plaguelands,51.00,76.16
.complete 5092,1 
.complete 5092,2 
step
.goto Western Plaguelands,42.70,84.03
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.target Commander Ashlam Valorfist
.accept 5097 >> Accept All Along the Watchtowers
.accept 5215 >> Accept The Scourge Cauldrons
step
.goto Western Plaguelands,42.97,84.50
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >>Turn in The Scourge Cauldrons
.target High Priestess MacDonnell
.accept 5216 >>Accept Target: Felstone Field
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,40.02,71.74
.complete 5097,1 
step
>>Kill Cauldron Lord Bilemaw. Loot him for the key
.goto Western Plaguelands,37.12,57.18
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
>>Click on the Cauldron in front of you
.goto Western Plaguelands,37.21,56.88
.turnin 5216 >>Turn in Target: Felstone Field
.accept 5217 >>Accept Return to Chillwind Camp
step
>>2nd floor of the house
.goto Western Plaguelands,38.40,54.06
.target Janice Felstone
>>Talk to |cRXP_FRIENDLY_Janice Felstone|r
.accept 5021 >>Accept Better Late Than Never
step
>>Small package inside the barn. Try not to aggro the scarlet mobs if they're alive outside
.goto Western Plaguelands,38.73,55.24
.turnin 5021 >>Turn in Better Late Than Never
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,42.30,66.04
.complete 5097,2 
step
.goto Western Plaguelands,42.97,84.50
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
.accept 5219 >>Accept Target: Dalson's Tears
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,44.18,63.36
.complete 5097,3 
step
>>Kill Cauldron Lord Malvinous. Loot him for the key
.goto Western Plaguelands,46.04,52.34
.complete 5219,1 
.unitscan Cauldron Lord Malvinous
step
>>Click the Cauldron
.goto Western Plaguelands,46.19,52.01
.turnin 5219 >>Turn in Target: Dalson's Tears
.accept 5220 >>Accept Return to Chillwind Camp
step
>>Inside the barn on the ground
.goto Western Plaguelands,47.79,50.67
.turnin 5058 >> Turn in Mrs. Dalson's Diary
step
#completewith next
+Start AoEing the undead in the area. Be careful as the Skeletal Terrors fear. Watch the video for more info
.link https://youtu.be/SxMc2GoP33c?t=4759 >> CLICK HERE
step
#completewith 54Grind
#label SkeletonKey
>>Keep an eye out for the Wandering Skeleton whilst you're AoEing. Kill him then loot him for the Outhouse Key
.collect 12738,1 
step
#completewith 54Grind
#label LockedAway
#requires SkeletonKey
.goto Western Plaguelands,48.16,49.64
>>Click the outhouse. This will spawn a mob. Kill it
.turnin 5059 >> Turn in Locked Away
.collect 12739,1 
step
#completewith 54Grind
#requires LockedAway
>>Click the cabinet at the top floor of the house
.goto Western Plaguelands,47.37,49.66
.turnin 5060 >> Turn in Locked Away
step
#label 54Grind
.xp 54+156900 >>AoE Undead in the area to 54 & 156900+/173900xp
>>Remember to try and save 12 stacks of Runecloth. You'll need it for cloth turnins later
step
>>Use the Beacon Torch in your bags on the side of the doorway (do NOT kill the elite inside)
.goto Western Plaguelands,46.52,71.21
.complete 5097,4 
step
.goto Western Plaguelands,42.70,84.04
.target Commander Ashlam Valorfist
>>Talk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5097 >>Turn in All Along the Watchtowers
step
.goto Western Plaguelands,42.97,84.51
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5220 >>Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
.accept 5222 >>Accept Target: Writhing Haunt
step
>>Kill Cauldron Lord Razarch. Loot him for the key
.goto Western Plaguelands,53.11,65.98
.complete 5222,1 
step
>>Click the Cauldron
.goto Western Plaguelands,53.04,65.71
.turnin 5222 >>Turn in Target: Writhing Haunt
.accept 5223 >>Accept Return to Chillwind Camp
step
#softcore
.deathskip >> Die and Respawn back in Chillwind
step
#completewith next
.goto Western Plaguelands,42.84,83.72
.vendor >> If you would have friendly rep after turning in and using your scourgestones to Pureheart, buy as many Manna Biscuits as possible to last you to level 60
>>If you don't, skip this step
step
.goto Western Plaguelands,42.97,84.50
.target High Priestess MacDonnell
>>Talk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5223 >>Turn in Return to Chillwind Camp
step
.zone Stormwind City >> Teleport to Stormwind City
step
#softcore
#completewith SWBank
.goto Stormwind City,53.61,59.77
+If you don't have 12 stacks of each cloth, or the Feathers, buy them from the Auction House
step
#label SWBank
.goto Stormwind City,56.48,73.41,50,0
>>Withdraw all your cloth from the bank. You need 12 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
>>Also get as many Light Feathers as you can. You'll need them for later
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
.collect 17056,10 
step
>>Inside the 2nd floor of the house
>>Make sure you have no addons on that will automatically turn in extra runecloth (for rep) or you will be told to buy it again later
.goto Stormwind City,44.27,73.99
.target Clavicus Knavingham
>>Talk to |cRXP_FRIENDLY_Clavicus Knavingham|r
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
step
.zone Ironforge >> Teleport to Ironforge
step
#softcore
#completewith IFBank
.goto Ironforge,25.75,75.42
+If you don't have 9 stacks of each cloth, buy it from the Auction House
step
#label IFBank
.goto Ironforge,35.92,60.14,40,0
>>Withdraw all your cloth from the bank. You need 9 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,180 
.collect 4306,180 
.collect 4338,180 
.collect 14047,180 
step
.goto Ironforge,43.22,31.59
.target Mistina Steelshield
>>Talk to |cRXP_FRIENDLY_Mistina Steelshield|r
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
step
.goto Ironforge,74.09,48.23
.target Bubulo Acerbus
>>Talk to |cRXP_FRIENDLY_Bubulo Acerbus|r
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
step
.goto Ironforge,55.50,47.75
.fly Wetlands >> Fly to Wetlands
step
#sticky
#completewith Darkshore1
+Wait here for the boat
.goto Wetlands,4.7,57.3
step
#label Darkshore1
.zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore
step
.goto Darkshore,37.04,44.13
.home >> Set your hearth to Auberdine
step
.isQuestTurnedIn 741
.goto Darkshore,36.34,45.57
.fly Teldrassil >> Fly to Teldrassil
step
#sticky
#completewith next
+Wait here for the boat
.goto Darkshore,33.17,40.18
step
.zone Teldrassil >>Get onto the boat when it comes. Take it to Darnassus
step
.goto Teldrassil,55.95,89.88,40 >> Take the purple portal into Darnassus
step
#softcore
#completewith NEBank
.goto Darnassus,56.37,51.80
+If you don't have 3 stacks of each cloth, buy it from the Auction House
step
#label NEBank
.goto Darnassus,39.90,42.08,40,0
>>Withdraw all your cloth from the bank. You need 3 stacks of Wool, Silk, Mageweave, and Runecloth
>>If you don't have inventory space, then leave half of the cloth in the bank and skip this step
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#completewith next
.goto Darnassus,40.60,82.13
.trainer >> Train the Darnassus portal for convenience if you want (its not needed for any part of the route later)
step
.goto Darnassus,64.02,23.00
.target Raedon Duskstriker
>>Talk to |cRXP_FRIENDLY_Raedon Duskstriker|r
.turnin 7792 >> Turn in A Donation of Wool
.turnin 7798 >> Turn in A Donation of Silk
.turnin 7799 >> Turn in A Donation of Mageweave
.turnin 7800 >> Turn in A Donation of Runecloth
step
.hs >> Hearth to Auberdine
>> Buy food/water if needed
step
.goto Darkshore,37.12,43.62
.vendor >> Buy A LOT level 45 water from Allyndia if you didn't get the Manna Biscuits earlier. Fill your bags with it
>>Alternatively, if you don't want to go broke, just conjure level 45 water instead
step
.goto Darkshore,38.14,41.11
.vendor >> Repair. You're going to be AoE grinding solidly for the next 5 levels, so make sure you're at full durability
step
#completewith next
+You're now going to do the Dancing Troll Village. You can get there through Darkshore (pretty hard, needs Light Feathers, but 10 mins faster) or through Winterspring
.link https://youtu.be/1nBptJKSJto >> CLICK HERE for Darkshore
.link https://youtu.be/2aAD8pgMaF4?t=40 >> CLICK HERE for Winterspring

step
.goto Darkshore,69.07,20.58,150 >> Arrive in the Dancing Troll Village
step
.goto Darkshore,68.34,22.98,60,0
.goto Darkshore,68.42,18.97,60,0
.goto Darkshore,69.63,21.01,60,0
.goto Darkshore,68.34,22.98,60,0
.goto Darkshore,68.42,18.97,60,0
.goto Darkshore,69.63,21.01,60,0
.xp 60 >> Grind the trolls to 60
>>DO NOT DIE. Look at the video guide if needed. If you die, you'll need to do the Darkshore jumps or travel to Winterspring again
step
+Congratulations on level 60!
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
<< Alliance
#name 34-35 Stranglethorn Vale I
#next 35-36 Desolace << Hunter
#next 35-37 Desolace << !Hunter
step
.goto Stranglethorn Vale,26.34,73.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
.turnin 1180 >>Turn in Goblin Sponsorship
.accept 1181 >>Accept Goblin Sponsorship
.target Wharfmaster Lozgil
step
#era
.isQuestTurnedIn 1038
.goto Stranglethorn Vale,27.36,74.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
.turnin 1040 >>Turn in Passage to Booty Bay
.accept 1041 >>Accept The Caravan Road
.target Caravaneer Ruzzgot
step
.goto Stranglethorn Vale,27.11,77.21
>>Enter the inn from the bottom floor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 605 >>Accept Singing Blue Shards
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.04,77.31
.home >>Set your Hearthstone to Booty Bay
step
.goto Stranglethorn Vale,26.99,77.12
>>Go upstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r
.target Kebok
.accept 213 >> Accept Hostile Takeover
.target Krazek
.accept 198 >>Accept Supplies to Private Thorsen
.accept 201 >>Accept Investigate the Camp
.accept 616 >>Accept The Haunted Isle
step
.goto Stranglethorn Vale,27.22,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 616 >>Turn in The Haunted Isle
.accept 578 >>Accept The Stone of the Tides
.turnin 1181 >>Turn in Goblin Sponsorship
.accept 1182 >>Accept Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 575 >>Accept Supply and Demand
.target Drizzlik
step
#sticky
#label Scrip
.destroy 3898 >>Throw away the |T134939:0|t[Library Scrip]
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.78
.fly Westfall >>Fly to Westfall
.target Gyll
step
#requires Scrip
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with |cRXP_FRIENDLY_A Weathered Grave|r
.goto Duskwood,17.72,29.07
.turnin 231 >> Turn in A Daughter's Love
.target A Weathered Grave
step
#som
#completewith ThorsenR
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >> Head south to Stranglethorn Vale
step
#sticky
#label JungleSecrets
#completewith STVend
.goto Stranglethorn Vale,40.32,8.45,0
>>Look out for |cRXP_FRIENDLY_Private Thorsen's|r event while you quest. Guard him from the mobs that attack him, and accept his quest
>>He patrols down the road down the Rebel Camp every ~30 minutes
.accept 215 >>Accept Jungle Secrets
.target Private Thorsen
.unitscan Private Thorsen
step
#requires JungleSecrets
#completewith STVend
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.goto Stranglethorn Vale,40.32,8.45,0
.turnin 215 >>Turn in Jungle Secrets
.target Lieutenant Doren
step
#label ThorsenR
>>Run to the Rebel Camp
>>Skip this step if Private Thorsen isn't here. If you haven't accepted his quest yet, run down the road and look for him
.goto Stranglethorn Vale,38.01,3.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
.turnin 198 >>Turn in Supplies to Private Thorsen
.target Private Thorsen
step
.goto Westfall,92.05,81.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.accept 203 >>Accept The Second Rebellion
.accept 204 >>Accept Bad Medicine
.target Sergeant Yohwa
step
#completewith basilisks
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for |cRXP_LOOT_Shards|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
#completewith next
.goto Stranglethorn Vale,40.7,14.7,0
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river between Lake Nazfereti and the Westfall border. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,35.66,10.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 583 >>Accept Welcome to the Jungle
.turnin 583 >>Turn in Welcome to the Jungle
.target Hemet Nesingwary
.target Barnil Stonepot
step
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 185 >>Accept Tiger Mastery
.accept 190 >>Accept Panther Mastery
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith TigerRaptorPantherMA
.goto Stranglethorn Vale,40.7,14.7,0
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river between Lake Nazfereti and the Westfall border. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
.goto Westfall,87.74,95.51
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 5762 >> Turn in Hemet Nesingwary
step
>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
.goto Stranglethorn Vale,35.40,12.50
.complete 185,1 
.target Young Stranglethorn Tiger
step
#requires panthers
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
.turnin 185 >>Turn in Tiger Mastery
.accept 186 >>Accept Tiger Mastery
.target Ajeck Rouack
step
#sticky
#label Boxes
.goto Stranglethorn Vale,44.08,9.54
>>Loot the brown boxes outside the house for the |cRXP_PICK_Venom Fern Extract|r
.complete 204,2 
step
.goto Stranglethorn Vale,44.93,10.25
>>Kill |cRXP_ENEMY_Jungle Fighters|r. Kill |cRXP_ENEMY_Medicine Men|r and |cRXP_ENEMY_Witch Doctors|r for |cRXP_LOOT_Jungle Remedies|r
>>Those mobs can drop Liferoot, save it for later, you'll need 8 Liferoot for a quest << Warrior
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Witch Doctor
.mob Kurzen Medicine Man
step
#requires Boxes
.goto Stranglethorn Vale,46.75,15.81
>>Kill |cRXP_ENEMY_Stranglethorn Tigers|r, look for more |cRXP_ENEMY_Basilisks|r northeast
.complete 186,1 
.mob Stranglethorn Tiger
step
#completewith Prints
.goto Stranglethorn Vale,45.48,20.24,0
>>Kill |cRXP_ENEMY_Geologists|r. Loot them for the |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.52,18.45
>>Kill |cRXP_ENEMY_Foreman Cozzle|r at the top of the oil rig. Loot him for |T134241:0|t[Cozzle's Key]
.collect 5851,1 
.mob Foreman Cozzle
step
#label Prints
.goto Stranglethorn Vale,43.4,20.4
>>Use the |T134241:0|t[Cozzle's Key] to open the chest inside the house. Loot it for the |cRXP_PICK_Blueprints|r
.complete 1182,1 
step
.goto Stranglethorn Vale,45.48,20.24
>>Kill |cRXP_ENEMY_Geologists|r. Loot them for the |cRXP_LOOT_Crystals|r
.complete 213,1 
.mob Venture Co. Geologist
step
>>Kill the |cRXP_ENEMY_Young Panthers|r
.goto Stranglethorn Vale,41.89,12.49
.complete 190,1 
.mob Young Panther
step
.goto Stranglethorn Vale,37.70,3.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
.accept 210 >>Accept Krazek's Cookery
.target Corporal Kaleb
step
.goto Westfall,92.05,81.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
.turnin 203 >>Turn in The Second Rebellion
.turnin 204 >>Turn in Bad Medicine
.target Sergeant Yohwa
step
.goto Stranglethorn Vale,38.01,3.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
.turnin 198 >>Turn in Supplies to Private Thorsen
.target Private Thorsen
step
#completewith next
.goto Stranglethorn Vale,35.55,10.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 190 >>Turn in Panther Mastery
.target Sir S. J. Erlgadin
step
#label TigerRaptorPantherMA
.goto Westfall,87.67,95.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r, |cRXP_FRIENDLY_Hemet Nesingwary|r, and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 186 >>Turn in Tiger Mastery
.target Ajeck Rouack
.accept 187 >>Accept Tiger Mastery
.turnin 5762 >>Turn in Hemet Nesingwary
.target Hemet Nesingwary
.accept 194 >>Accept Raptor Mastery
.target Sir S. J. Erlgadin
.accept 191 >>Accept Panther Mastery
step
.goto Stranglethorn Vale,40.7,14.7,30,0
.goto Stranglethorn Vale,32.6,8.8,30,0
.goto Stranglethorn Vale,40.7,14.7,30,0
.goto Stranglethorn Vale,32.6,8.8,30,0
.goto Stranglethorn Vale,36.8,10.6
>>Kill |cRXP_ENEMY_River Crocolisks|r along the river between Lake Nazfereti and the Westfall border. Loot them for their |cRXP_LOOT_Skin|r
.complete 575,1 
.mob River Crocolisk
step
>>Kill the |cRXP_ENEMY_Elder Stranglethorn Tigers|r
.goto Stranglethorn Vale,32.8,18.3
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
>>Kill the |cRXP_ENEMY_Panthers|r in the area
.goto Stranglethorn Vale,28.5,13.2
.complete 191,1 
.mob Panther
step
#label basilisks
.goto Stranglethorn Vale,26.87,16.32
>>Kill |cRXP_ENEMY_Stranglethorn Raptors|r in the area
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto Stranglethorn Vale,25.55,17.89
>>Kill |cRXP_ENEMY_Basilisks|r. Loot them for |cRXP_LOOT_Shards|r
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
.mob Cold Eye Basilisk
.mob Thrashtail Basilisk
step
.goto Stranglethorn Vale,20.70,22.70
>>Head to the Island to the west
.complete 578,1 
step
#softcore
#completewith next
.deathskip >>Die and respawn at the Spirit Healer
step
#softcore
.goto Westfall,87.67,95.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r, |cRXP_FRIENDLY_Sir S. J. Erlgadin|r, and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 187 >>Turn in Tiger Mastery
.target Ajeck Rouack
.accept 188 >>Accept Tiger Mastery
.turnin 191 >>Turn in Panther Mastery
.target Sir S. J. Erlgadin
.accept 192 >>Accept Panther Mastery
.turnin 194 >>Turn in Raptor Mastery
.target Hemet Nesingwary
.accept 195 >>Accept Raptor Mastery
step
#hardcore
>>Run back to Hemet's Camp
.goto Westfall,87.67,95.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r, |cRXP_FRIENDLY_Sir S. J. Erlgadin|r, and |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 187 >>Turn in Tiger Mastery
.target Ajeck Rouack
.accept 188 >>Accept Tiger Mastery
.turnin 191 >>Turn in Panther Mastery
.target Sir S. J. Erlgadin
.accept 192 >>Accept Panther Mastery
.turnin 194 >>Turn in Raptor Mastery
.target Hemet Nesingwary
.accept 195 >>Accept Raptor Mastery
step << Druid
>>Teleport to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
.goto Moonglade,52.53,40.56
.trainer >>Train your class spells
.mob Loganaar

step
#label STVend
.hs >>Hearth to Booty Bay
>>Buy food/water if needed
step
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 605 >>Turn in Singing Blue Shards
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,26.94,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.turnin 201 >>Turn in Investigate the Camp
.turnin 210 >>Turn in Krazek's Cookery
.target Krazek
step
.goto Stranglethorn Vale,26.99,77.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.turnin 213 >>Turn in Hostile Takeover
.accept 189 >>Accept Bloodscalp Ears
.target Kebok
step
.goto Stranglethorn Vale,27.22,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 1182 >>Turn in Goblin Sponsorship
.accept 1183 >>Accept Goblin Sponsorship
.turnin 578 >>Turn in The Stone of the Tides
.accept 601 >>Accept Water Elementals
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 575 >>Turn in Supply and Demand
.accept 577 >>Accept Some Assembly Required
.target Drizzlik
step
#era
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.79
.fly Duskwood >>Fly to Duskwood
.target Gyll
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
.goto Duskwood,72.6,46.8
.turnin 1041 >>Turn in The Caravan Road
.accept 1042 >>Accept The Carevin Family
.target Clerk Daltry
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1042 >>Turn in The Carevin Family
.accept 1043 >>Accept The Scythe of Elune
.target Jonathan Carevin
step
#era
.isQuestTurnedIn 1040
>>Click on the |cRXP_PICK_dirt mound|r inside the mine
.goto Duskwood,733.7,79.0
.complete 1043,1 
step << !Hunter
#era
#softcore
#completewith next
.deathskip >>Die and respawn at the graveyard
step
#era
#softcore
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1043 >>Turn in The Scythe of Elune

.target Jonathan Carevin
step
#era
#hardcore
.isQuestTurnedIn 1040
>>Run back to Darkshire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
.goto Duskwood,75.2,48.8
.turnin 1043 >>Turn in The Scythe of Elune

.target Jonathan Carevin
step << Mage
#completewith BankFarrenCleverlyAlterac
.zone Stormwind City >>Teleport to Stormwind
.trainer >>Train your class spells

step << !Mage
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r << Hunter
.goto Stranglethorn Vale,27.53,77.78 << Hunter
.target Gyll << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r << !Hunter
.goto Duskwood,77.49,44.29 << !Hunter
.target Felicia Maline
.fly Stormwind>> Fly to Stormwind
step << !Mage
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.78
.fly Stormwind>> Fly to Stormwind
.target Gyll
step << !Warlock
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
>>Withdraw an |T134797:0|t[Elixir of Water Breathing] from your bank if you have them. Otherwise, skip this step
.collect 5996,1 
.target Newton Burnside
step
#label BankFarrenCleverlyAlterac
.goto Stormwind City,57.00,72.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
.bankwithdraw 3721,3521,4521 >>Withdraw the following items:
>>|T133461:0|t[Farren's Report]
>>|T134939:0|t[Cleverly Encrypted Letter]
>>|T135234:0|t[Alterac Granite]
.target Newton Burnside
step << !Mage !Warlock !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to your class trainer
.goto Stormwind City,74.64,52.82 << Rogue
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,42.66,33.75,30,0 << Paladin/Priest
.goto Stormwind City,38.68,32.85 << Paladin
.goto Stormwind City,38.54,26.86 << Priest
.trainer >> Train your class spells
.target Osborne the Night Man << Rogue
.target Ilsa Corbin << Warrior
.target Arthur the Faithful << Paladin
.target Brother Joshua << Priest
step
.goto Stormwind City,72.60,15.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Samuelson|r
.turnin 563 >>Turn in Reassignment
.target Major Samuelson
step
.isOnQuest 337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.goto Stormwind City,74.16,7.49
.itemcount 2794,1
.accept 337 >> Accept An Old History Book
.turnin 337 >> Turn in An Old History Book
.accept 538 >> Accept Southshore
.target Milton Sheaf
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to your class trainer
.goto Stormwind City,61.61,15.27
.trainer >>Train your class and pet spells
.target Karrina Mekenda
.target Einris Brightspear
step
#completewith end
.zoneskip Stormwind City,1
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >>Take the tram to Ironforge
step << Warlock
#som
#phase 3-6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.goto Ironforge,67.91,17.50
.accept 1453 >>Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step
#era/som
.goto Ironforge,67.91,17.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.accept 1453 >>Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step << Warlock
.goto Ironforge,74.18,9.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
.turnin 1758 >>Turn in Tome of the Cabal
.target Krom Stoutarm
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to your class trainer
.goto Ironforge,50.35,5.63 << Warlock
.trainer >>Train your class spells
.target Thistleheart
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
.goto Ironforge,52.71,6.07 << Warlock
.vendor >>Buy spellbooks for your Succubus/Voidwalker if needed
.target Jubahl Corpseseeker
step
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.goto Ironforge,74.64,11.74
.turnin 514 >>Turn in Letter to Stormpike
.target Prospector Stormpike
step
.isQuestComplete 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.goto Ironforge,39.03,88.05
.turnin 689 >>Turn in A King's Tribute
.timer 75,Marblesten RP
.target Grand Mason Marblesten
step
.abandon 689 >> Abandon the quest "A King's Tribute" if you haven't collected the granite chunks in Alterac previously
step
.isQuestTurnedIn 689
>>Wait for the RP sequence to end (takes about 75 seconds)
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
.goto Ironforge,39.03,88.05
.accept 700 >>Accept A King's Tribute
.target Grand Mason Marblesten
step
.isQuestTurnedIn 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
.goto Ironforge,39.09,56.19
.turnin 700 >>Turn in A King's Tribute
.target King Magni Bronzebeard
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
#era/som
<< Alliance Hunter
#name 35-36 Desolace
#next 36-38 Stranglethorn Vale II
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
.goto Ironforge,55.50,47.74
.fly Wetlands >>Fly to Wetlands
.target Gryth Thurden
step
#completewith next
.goto Wetlands,4.7,57.3
.zone Darkshore >>Take the boat to Darkshore.
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
.goto Darkshore,36.33,45.58
.fly Stonetalon >>Fly to Stonetalon
.target Caylais Moonfeather
step
#completewith next
.goto Desolace,54.76,0.47
.zone Desolace >> Head to Desolace
>>Fly to Desolace if you have the flight path

step
.goto Desolace,66.40,11.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.accept 1437 >>Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.53
.fp Desolace >>Get the Desolace Flight Path
.target Baritanas Skyriver
step
#completewith RelcaimersBusinessinDesolace
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.goto Desolace,66.28,6.55
.home >>Set your Hearthstone to Nijel's Point
.target Innkeeper Lyshaerya
step
#som
.goto Desolace,66.51,7.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.accept 261 >>Accept Down the Scarlet Path
.target Brother Anton
step
#label RelcaimersBusinessinDesolace
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1453 >>Turn in Reclaimers' Business in Desolace
.accept 1454 >>Accept The Karnitol Shipwreck
.accept 1458 >>Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r and |cRXP_FRIENDLY_Captain Pentigast|r
.goto Desolace,66.74,10.87
.target Corporal Melkins
.accept 1387 >>Accept Centaur Bounty
.target Captain Pentigast
.accept 1382 >>Accept Strange Alliance
step
.goto Desolace,78.06,22.55
>>Kill the |cRXP_ENEMY_Hatefury Satyrs|r in the area. Loot them for |cRXP_LOOT_Claws|r and |cRXP_LOOT_Horns|r
.complete 1458,1 
.complete 1458,2 
.mob Hatefury Trickster
.mob Hatefury Shadowstalker
.mob Hatefury Hellcaller
.mob Hatefury Betrayer
step
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1458 >>Turn in Reagents for Reclaimers Inc.
.accept 1459 >>Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#completewith KodoRoundup
>> Kill |cRXP_ENEMY_Scorpids/Aged Kodos|r as you quest. Loot them for |cRXP_LOOT_Venom|r and |cRXP_LOOT_Hides|r
>>|cRXP_WARN_If you can't find that many Scorpids, you may have to kill |cRXP_ENEMY_Basilisks|r as they share spawns with each other|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the Malen Chest
.goto Desolace,56.52,17.84
.turnin 1437 >>Turn in Vahlarriel's Search
.accept 1465 >>Accept Vahlarriel's Search
.target Malem Chest
step
#som
#phase 1-2
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.accept 5741 >>Accept Sceptre of Light
.target Azore Aldamort
step
#era
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.accept 5741 >>Accept Sceptre of Light
.target Azore Aldamort
step
#som
#phase 1-2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the small chest on the ground
.goto Desolace,36.11,30.45
.turnin 1454 >>Turn in The Karnitol Shipwreck
.accept 1455 >>Accept The Karnitol Shipwreck
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the small chest on the ground
.goto Desolace,36.11,30.45
.turnin 1454 >>Turn in The Karnitol Shipwreck
.accept 1455 >>Accept The Karnitol Shipwreck
step
#som
#phase 1-2
.goto Desolace,36.06,30.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the small book on the ground next to the chest
.accept 6161 >>Accept Claim Rackmore's Treasure!
step
#era
.goto Desolace,36.06,30.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the small book on the ground next to the chest
.accept 6161 >>Accept Claim Rackmore's Treasure!
step
#som
#phase 1-2
.goto Desolace,33.10,29.80
>>Kill the |cRXP_ENEMY_Drysnap crab people|r. Loot them for the |cRXP_LOOT_Silver Key|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#era
.goto Desolace,33.10,29.80
>>Kill the |cRXP_ENEMY_Drysnap crab people|r. Loot them for the |cRXP_LOOT_Silver Key|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith next
.hs >>Hearth back to Nijel's Point
>>Run back to Nijel's Point if your HS is not off cooldown
>>Buy food/water if needed

step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.goto Desolace,66.20,9.62
.turnin 1455 >>Turn in The Karnitol Shipwreck
.accept 1456 >>Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#som
#phase 1-2
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1455 >>Turn in The Karnitol Shipwreck
.accept 1456 >>Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1465 >>Turn in Vahlarriel's Search
.accept 1438 >>Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
.isOnQuest 5741
>>Climb the tower, kill a |cRXP_ENEMY_Burning Blade Seer|r. Loot it for the |cRXP_LOOT_Sceptre|r
.goto Desolace,55.16,30.14
.complete 5741,1 
.mob Burning Blade Seer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.goto Desolace,54.85,26.12
.turnin 1438 >>Turn in Vahlarriel's Search
.accept 1439 >>Accept Search for Tyranis
.target Dalinda Malem
step
>>Go into the building. Kill |cRXP_ENEMY_Tyranis|r. Loot him for the |cRXP_LOOT_Pendant|r
.goto Desolace,53.00,29.07
.complete 1439,1 
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.goto Desolace,54.85,26.12
.turnin 1439 >>Turn in Search for Tyranis
.target Dalinda Malem
step
.goto Desolace,54.85,26.12
>>Start the escort quest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.accept 1440 >>Accept Return to Vahlarriel
.target Dalinda Malem
step
>>Follow |cRXP_FRIENDLY_Dalinda Malem|r and escort her
.complete 1440,1 
.target Dalinda Malem
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.accept 5501 >>Accept Bone Collector
.target Bibbly F'utzbuckle
step
#label KodoRoundup
.goto Desolace,60.86,61.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.accept 5561 >>Accept Kodo Roundup
.target Smeed Scrabblescrew
.maxlevel 36
step
.goto Desolace,72.00,76.00
>>Kill |cRXP_ENEMY_Centaurs|r. Loot them for their |cRXP_LOOT_Ears|r
.complete 1387,1 
.reputation 92,friendly >> Keep killing |cRXP_ENEMY_Centaurs|r until you get friendly reputation with Gelkis Centaur
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Windchaser
.mob Magram Wrangler
step
#completewith kodos
>> Kill |cRXP_ENEMY_Scorpids/Aged Kodos|r as you quest. Loot them for |cRXP_LOOT_Venom|r and |cRXP_LOOT_Hides|r
>>|cRXP_WARN_If you can't find that many Scorpids, you may have to kill |cRXP_ENEMY_Basilisks|r as they share spawns with each other|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
#sticky
#label bones
.goto Desolace,49.7,57.2,0
>>Loot the |cRXP_PICK_Kodo Bones|r around the graveyard. Be careful as mobs can spawn from them
.complete 5501,1 
step
.isOnQuest 5561
>>Head towards the Kodo Graveyard and use the Kodo Kombobulator in your inventory to escort a Kodo back to the quest giver
>>Be on the lookout for the |cRXP_FRIENDLY_Kodos|r that patrol the zone
.goto Desolace,60.86,61.86,0
.complete 5561,1 
.mob Ancient Kodo
.mob Dying Kodo
.maxlevel 36
step
#label kodos
.isOnQuest 5561
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.goto Desolace,60.86,61.86
.turnin 5561 >>Turn in Kodo Roundup
.target Smeed Scrabblescrew
step
#era
#hardcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.goto Desolace,36.21,79.24
.turnin 1382 >>Turn in Strange Alliance
.target Uthek the Wise
step
.goto Desolace,70.14,33.92
>>Kill |cRXP_ENEMY_Scorpids/Aged Kodos|r as you quest. Loot them for |cRXP_LOOT_Venom|r and |cRXP_LOOT_Hides|r
>>|cRXP_WARN_If you can't find that many Scorpids, you may have to kill |cRXP_ENEMY_Basilisks|r as they share spawns with each other|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
#requires bones
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.goto Desolace,62.32,38.98
.turnin 5501 >>Turn in Bone Collector
.target Bibbly F'utzbuckle
step
.isQuestComplete 5741
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.goto Desolace,38.88,27.16
.turnin 5741 >>Turn in Sceptre of Light
.target Azore Aldamort
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.goto Desolace,38.88,27.16
.accept 6027 >>Accept Book of the Ancients
.target Azore Aldamort
.maxlevel 37
step
#completewith KarnitolsSatchel
.isOnQuest 6161
>>Kill |cRXP_ENEMY_Nagas|r. Loot them for the |cRXP_LOOT_Golden Key|r
.complete 6161,2 
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
step
#completewith next
.isOnQuest 1456
>>Kill |cRXP_ENEMY_Sea Witches/Tidehunters|r. Loot them for the |cRXP_LOOT_Satchel|r
>>This item has a low droprate. Be patient
.complete 1456,1 
.mob Slitherblade Tidehunter
step
.isOnQuest 6027
>>Click on the |cRXP_PICK_Naga Statue|r to summon |cRXP_ENEMY_Lord Kragaru|r. Kill and loot him for the |cRXP_LOOT_Book|r
.goto Desolace,28.26,6.57
.complete 6027,1 
step
#label KarnitolsSatchel
.isOnQuest 1456
>>Kill |cRXP_ENEMY_Sea Witches/Tidehunters|r. Loot them for the |cRXP_LOOT_Satchel|r
>>This item has a low droprate. Be patient
.goto Desolace,28.26,6.57
.complete 1456,1 
.mob Slitherblade Tidehunter
step
.isOnQuest 6161
>>Kill |cRXP_ENEMY_Nagas|r. Loot them for the |cRXP_LOOT_Golden Key|r
.goto Desolace,28.26,6.57
.goto Desolace,37.6,24.6,0
.complete 6161,2 
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon

step
.isQuestComplete 6161
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the chest
.goto Desolace,30.00,8.70
.turnin 6161 >>Turn in Claim Rackmore's Treasure!
.target Rackmore's Chest
step
.isQuestComplete 6027
>>Swim back to the mainland
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.goto Desolace,38.88,27.16
.turnin 6027 >>Turn in Book of the Ancients
.target Azore Aldamort
step
#era
#softcore
#completewith ReagentsforReclaimersInc
.hs >>Hearth to Nijel's Point
>>Buy food/water if needed
step << Hunter
#era
#softcore
#completewith tame
.stable >> Stable your pet
step
.isQuestTurnedIn 1455
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.goto Desolace,66.20,9.62
.turnin 1456 >> Turn in The Karnitol Shipwreck
.accept 1457 >> Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#label ReagentsforReclaimersInc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.goto Desolace,66.20,9.62
.turnin 1459 >> Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.goto Desolace,66.20,9.62
.accept 1466 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
.goto Desolace,66.74,10.87
.turnin 1387 >> Turn in Centaur Bounty
.target Corporal Melkins
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.goto Desolace,66.44,11.81
.turnin 1440 >> Turn in Return to Vahlarriel
.target Vahlarriel Demonslayer

step << Hunter
#label tame
#era
#sticky
.goto Desolace,43.6,62.4,0
.goto Desolace,78.8,15.8,0
>>Tame a |cRXP_ENEMY_Scorpashi Lasher|r
.train 2975 >>Learn claw rank 5
.mob Scorpashi Lasher
step
#som
>>Kill |cRXP_ENEMY_Undead Ravager|r in the area
.goto Desolace,63.76,90.25
.complete 261,1 
.mob Undead Ravager
step
#som
.goto Desolace,51.72,83.79
>>Kill |cRXP_ENEMY_Felhounds/Succubi/Doomwarder Captains|r. Loot them for |cRXP_LOOT_brains, wings and blood|r
.complete 1466,1 
.complete 1466,2 
.complete 1466,3 
.mob Ley Hunter
.mob Mage Hunter
.mob Nether Sister
.mob Doomwarder Captain
step
#softcore
#era
#completewith next
.deathskip >> Die and respawn at the Kodo Graveyard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.goto Desolace,36.21,79.24
.turnin 1382 >> Turn in Strange Alliance
.target Uthek the Wise
step
#hardcore
#completewith next
.hs >>Hearth to Nijel's Point
>>Buy food/water if needed
step
#hardcore
#som
.goto Desolace,66.51,7.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
.accept 1052 >> Accept Down the Scarlet Path
.target Brother Anton
step
#hardcore
#som
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.accept 1467 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step << Hunter
#hardcore
#completewith next
.stable >> Stable your pet
step << Hunter
#hardcore
#sticky
.goto Desolace,43.6,62.4,0
.goto Desolace,78.8,15.8,0
>>Tame a |cRXP_ENEMY_Scorpashi Lasher|r
.train 2975 >>Learn Claw Rank 5
.mob Scorpashi Lasher
step
#softcore
.goto Desolace,42.23,97.52
.zone Feralas >> Head to Feralas
step
#softcore
#completewith end
.goto Feralas,40.6,8.6
>>Once you get to Feralas, walk along the mountains to the west to avoid aggroing mobs and then die near the stone obelisks
.deathskip >> Spirit rez at Feathermoon
step
#softcore
#label end
.goto Feralas,30.2,43.3
.fp Feathermoon >>Get the Feathermoon flight path
.fly Tanaris>>Fly to Tanaris
step
#hardcore
.goto Desolace,64.66,10.54
.fly Tanaris>>Fly to Tanaris
step
.goto Thousand Needles,77.78,77.26
>> Run to Thousand Needles
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1112 >>Turn in Parts for Kravel
.target Kravel Koalbeard
step << Hunter
#era/som
.goto Thousand Needles,78.14,77.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.accept 1107 >>Accept Encrusted Tail Fins
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >>Turn in Goblin Sponsorship
.accept 1186 >>Accept The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.32,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >>Turn in The Eighteenth Pilot
.accept 1187 >>Accept Razzeric's Tweaking
.target Razzeric
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1114 >>Accept Delivery to the Gnomes
.target Kravel Koalbeard
step
.goto Thousand Needles,78.06,77.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1114 >>Turn in Delivery to the Gnomes
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1115 >>Accept The Rumormonger
.target Kravel Koalbeard
step
#som
#softcore
.hs >>Hearth to Nijel's Point
>>Buy food/water if needed
step << Hunter
#som
#softcore
.stable >>Stable your pet
step
#som
#softcore
.goto Desolace,66.51,7.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
.accept 1052 >> Accept Down the Scarlet Path
.target Brother Anton
step
#som
#softcore
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.accept 1467 >> Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step << Hunter
#som
#softcore
#sticky
.goto Desolace,43.6,62.4,0
.goto Desolace,78.8,15.8,0
>> Tame a Scorpashi Lasher
.train 2975 >>Learn claw rank 5

step
#hardcore
.zoneskip Desolace,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.54
.fly Ratchet >> Fly to Ratchet and take the boat to Booty Bay
.target Baritanas Skyriver
step
#hardcore
#completewith next
.goto The Barrens,63.64,38.61,40 >> Run to the Booty Bay dock
step
#hardcore
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
step
#softcore
#label booty
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.54
.fly Ratchet >> Fly to Ratchet and take the boat to Booty Bay
.target Baritanas Skyriver
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
#era/som << !Warlock
<< Alliance !Hunter
#name 35-37 Desolace
#next 36-38 Stranglethorn Vale II
step
.goto Ironforge,67.91,17.50
>>Go to Ironforge
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.accept 1453 >>Accept Reclaimers' Business in Desolace
.target Roetten Stonehammer
step << Warrior
.goto Wetlands,9.49,59.70
.fly Southshore >>Fly to Southshore
step << Warrior
.goto Alterac Mountains,80.4,66.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1791 >>Turn in The Windwatcher
.accept 1712 >>Accept Cyclonian
.target Bath'rah the Windwatcher
step << Warrior
#completewith next
.deathskip >> Die on purpose and respawn at Southshore
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
.goto Ironforge,55.49,47.75 << !Warrior
.goto Hillsbrad Foothills,49.34,52.27 << Warrior
.fly Wetlands >>Fly to Wetlands
.target Darla Harris
step
#completewith next
.goto Wetlands,4.7,57.3
.zone Darkshore >>Take the boat to Darkshore.
step
#completewith next
.goto Darkshore,36.33,45.58
.fly Stonetalon >>Fly to Stonetalon
step
#completewith next
.zone Desolace >> Head to Desolace
.goto Desolace,54.76,0.47
>>Fly to Desolace if you have the flight path
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.accept 1437 >>Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.53
.fp Desolace >>Get the Desolace Flight Path
.target Baritanas Skyriver
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
.goto Desolace,66.28,6.55
.home >>Set your Hearthstone to Nijel's Point
.target Innkeeper Lyshaerya
step
#era
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1454 >>Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#som
#phase 1-2
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1454 >>Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1453 >>Turn in Reclaimers' Business in Desolace
.accept 1458 >>Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#som
#phase 3-6
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
.accept 1387 >>Accept Centaur Bounty
.target Corporal Melkins
step
#era/som
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r and |cRXP_FRIENDLY_Captain Pentigast|r
.accept 1387 >> Accept Centaur Bounty
.target Corporal Melkins
.accept 1382 >> Accept Strange Alliance
.target Captain Pentigast
step
.goto Desolace,78.06,22.55
>>Kill the |cRXP_ENEMY_Hatefury Satyrs|r in the area. Loot them for |cRXP_LOOT_Claws|r and |cRXP_LOOT_Horns|r
.complete 1458,1 
.complete 1458,2 
.mob Hatefury Trickster
.mob Hatefury Shadowstalker
.mob Hatefury Hellcaller
.mob Hatefury Betrayer
step
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1458 >>Turn in Reagents for Reclaimers Inc.
.accept 1459 >>Accept Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#sticky
#label reagents
>> Kill |cRXP_ENEMY_Scorpids/Aged Kodos|r as you quest. Loot them for |cRXP_LOOT_Venom|r and |cRXP_LOOT_Hides|r
>>|cRXP_WARN_If you can't find that many Scorpids, you may have to kill |cRXP_ENEMY_Basilisks|r as they share spawns with each other|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cRXP_PICK_Malen Chest|r
.goto Desolace,56.52,17.84
.turnin 1437 >>Turn in Vahlarriel's Search
.accept 1465 >>Accept Vahlarriel's Search
.target Malem Chest
step
#era/som
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.accept 5741 >>Accept Sceptre of Light
.target Azore Aldamort
step
#era/som
.goto Desolace,36.11,30.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cRXP_PICK_small chest|r on the ground
.turnin 1454 >>Turn in The Karnitol Shipwreck
.accept 1455 >>Accept The Karnitol Shipwreck
step
#era/som
.goto Desolace,36.06,30.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cRXP_PICK_small book|r on the ground next to the chest
.accept 6161 >>Accept Claim Rackmore's Treasure!
step
#era/som
.goto Desolace,33.10,29.80
>>Kill the |cRXP_ENEMY_Drysnap crab people|r. Loot them for the |cRXP_LOOT_Silver Key|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#era/som
.goto Desolace,60.86,61.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.accept 5561 >> Accept Kodo Roundup
.target Smeed Scrabblescrew
step
#era/som
.goto Desolace,72.00,76.00
>>Kill |cRXP_ENEMY_Centaurs|r. Loot them for their |cRXP_LOOT_Ears|r
.complete 1387,1 
.reputation 92,friendly >> Keep killing |cRXP_ENEMY_Centaurs|r until you get friendly reputation with Gelkis Centaur
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Windchaser
.mob Magram Wrangler
step
#era/som
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1382 >>Turn in Strange Alliance
.accept 1384 >>Accept Raid on the Kolkar
.target Uthek the Wise
step
#era/som
#completewith next
>>Grind until your Hearthstone is off cooldown
.hs >>Hearth back to Nijel's Point
>>Buy food/water if needed
step
#era/som
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1455 >>Turn in The Karnitol Shipwreck
.accept 1456 >>Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1465 >>Turn in Vahlarriel's Search
.accept 1438 >>Accept Vahlarriel's Search
.target Vahlarriel Demonslayer
step
#era/som
.goto Desolace,73.46,48.63
>>Kill |cRXP_ENEMY_Kolkar Centaurs|r. Loot them for their |cRXP_LOOT_Charms|r
.complete 1384,1 
.mob Kolkar Destroyer
.mob Kolkar Windchaser
.mob Kolkar Battle Lord
.mob Kolkar Mauler
step
#som
#phase 3-6
.goto Desolace,73.46,48.63
>>Kill |cRXP_ENEMY_Centaurs|r in the area. Loot them for their |cRXP_LOOT_Ears|r
.complete 1366,1 
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Windchaser
.mob Magram Wrangler
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.accept 5501 >>Accept Bone Collector
.target Bibbly F'utzbuckle
step
#era/som
.goto Desolace,55.16,30.14
>>Climb the tower, kill a |cRXP_ENEMY_Burning Blade Seer|r. Loot it for the |cRXP_LOOT_Sceptre|r
.complete 5741,1 
.mob Burning Blade Seer
step
.goto Desolace,54.85,26.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.turnin 1438 >>Turn in Vahlarriel's Search
.accept 1439 >>Accept Search for Tyranis
.target Dalinda Malem
step
>>Go into the building. Kill |cRXP_ENEMY_Tyranis|r. Loot him for the |cRXP_LOOT_Pendant|r
.goto Desolace,53.00,29.07
.complete 1439,1 
step
#completewith next
.goto Desolace,54.85,26.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.turnin 1439 >> Turn in Search for Tyranis
.target Dalinda Malem
step
.goto Desolace,54.85,26.12
>>Start the escort quest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
.accept 1440 >> Accept Return to Vahlarriel
.target Dalinda Malem
step
>>Follow |cRXP_FRIENDLY_Dalinda Malem|r and escort her
.complete 1440,1 
.target Dalinda Malem
step
#era/som
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.turnin 5741 >> Turn in Sceptre of Light
.accept 6027 >> Accept Book of the Ancients
.target Azore Aldamort
step
#era/som
#sticky
#label key
>>Kill |cRXP_ENEMY_Nagas|r. Loot them for the |cRXP_LOOT_Golden Key|r
.complete 6161,2 
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
step
#era/som
#label nagas
#sticky
>>Kill |cRXP_ENEMY_Sea Witches/Tidehunters|r. Loot them for the |cRXP_LOOT_Satchel|r
>>This item has a low droprate. Be patient
.complete 1456,1 
.mob Slitherblade Tidehunter
step
#era/som
.goto Desolace,28.26,6.57
>>Click on the |cRXP_PICK_Naga Statue|r to summon |cRXP_ENEMY_Lord Kragaru|r. Kill and loot him for the |cRXP_LOOT_Book|r
.complete 6027,1 
step
#era/som
#requires key
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the chest
.goto Desolace,30.00,8.70
.turnin 6161 >>Turn in Claim Rackmore's Treasure!
.target Rackmore's Chest
step
#era/som
#requires nagas
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
.turnin 6027 >>Turn in Book of the Ancients
.target Azore Aldamort
step
#era/som
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1384 >>Turn in Raid on the Kolkar
.accept 1370 >>Accept Stealing Supplies
.target Uthek the Wise
step
#era/som
#completewith next
.goto Desolace,52.50,58.56
>>Loot the |cRXP_PICK_Kodo Bones|r around the graveyard. Be careful as mobs can spawn from them
.complete 5501,1 
step
#era/som
.goto Desolace,60.86,61.86
>>Head towards the Kodo Graveyard and use the Kodo Kombobulator in your inventory to escort a Kodo back to the quest giver
>>Be on the lookout for the |cRXP_FRIENDLY_Kodos|r that patrol the zone
.goto Desolace,60.86,61.86,0
.complete 5561,1 
.mob Ancient Kodo
.mob Dying Kodo
.maxlevel 36
step
#era/som
.goto Desolace,60.86,61.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
.turnin 5561 >> Turn in Kodo Roundup
.target Smeed Scrabblescrew
step
#era/som
.goto Desolace,73.59,73.73
>>Look for |cRXP_PICK_yellow bags|r on the ground. Loot them for the |cRXP_LOOT_Dried Meat|r
.complete 1370,1 
step
.goto Desolace,52.50,58.56
>>Loot the |cRXP_PICK_Kodo Bones|r around the graveyard. Be careful as mobs can spawn from them
.complete 5501,1 
step
.goto Desolace,52.19,57.50
>>Kill the |cRXP_ENEMY_/Aged Kodos|r. Loot them for their |cRXP_LOOT_Aged Kodo Hides|r
.complete 1459,2 
.mob Aged Kodo
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
.turnin 5501 >>Turn in Bone Collector
.target Bibbly F'utzbuckle
step
.goto Desolace,70.14,33.92
>>Kill |cRXP_ENEMY_Scorpids|r. Loot them for their |cRXP_LOOT_Venom|r
>>|cRXP_WARN_If you can't find that many Scorpids, you may have to kill |cRXP_ENEMY_Basilisks|r as they share spawns with each other|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
#era/som
#softcore
#completewith next
.deathskip >>Die and respawn at the Spirit Healer
step
#era/som
#softcore
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1370 >>Turn in Stealing Supplies
.accept 1373 >>Accept Ongeku
.target Uthek the Wise
step
#era/som
#hardcore
>>Run South-west to the Centaur
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1370 >>Turn in Stealing Supplies
.accept 1373 >>Accept Ongeku
.target Uthek the Wise
step
#completewith ReagentsforReclaimersIncB
.hs >>Hearth back to Nijel's Point
>>Buy food/water if needed
step
#era/som
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1456 >>Turn in The Karnitol Shipwreck
.accept 1457 >>Accept The Karnitol Shipwreck
.target Kreldig Ungor
step
#label ReagentsforReclaimersIncB
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1459 >>Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
.turnin 1387 >>Turn in Centaur Bounty
.target Corporal Melkins
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
.turnin 1440 >>Turn in Return to Vahlarriel
.target Vahlarriel Demonslayer
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
.goto Desolace,64.66,10.54
.fly Tanaris >>Fly to Tanaris
.target Baritanas Skyriver
step
.goto Thousand Needles,77.78,77.26
>>Run to Thousand Needles
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1112 >>Turn in Parts for Kravel
.target Kravel Koalbeard
step
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1183 >>Turn in Goblin Sponsorship
.accept 1186 >>Accept The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.32,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1186 >>Turn in The Eighteenth Pilot
.accept 1187 >>Accept Razzeric's Tweaking
.target Razzeric
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1114 >>Accept Delivery to the Gnomes
.target Kravel Koalbeard
step
.goto Thousand Needles,78.06,77.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1114 >>Turn in Delivery to the Gnomes
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1115 >>Accept The Rumormonger
.target Kravel Koalbeard
step
#hardcore
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.goto Tanaris,50.52,18.94
.fly Ratchet >>Fly to Ratchet and take the boat to Booty Bay
.target Bera Stonehammer
step
#hardcore
#completewith next
.goto The Barrens,63.64,38.61,40 >>Run to the Booty bay Dock
step
#hardcore
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>Take the Boat to Booty Bay
step
#softcore
#label booty
.goto Tanaris,50.52,18.94
>>|cRXP_WARN_You have 2 options going into the next segment:|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
.fly Ratchet >>Fly to Ratchet and take the boat to Booty Bay
.target Bera Stonehammer
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
<< Alliance
#name 36-38 Stranglethorn Vale II
#next 38-39 Swamp of Sorrows
step
#sticky
#label BankD1
>>Head to Booty Bay
.goto Stranglethorn Vale,26.56,76.50
.bankdeposit 6253,3518,5539,6245,5827,3404 >>Deposit the following items into your bank:
>>|T133633:0|t[Karnitol's Satchel]
>>|T134940:0|t[Decrypted Letter]
>>|T133460:0|t[Letter of Commendation]
>>|T133469:0|t[Fizzle Brassbolts' Letter]
>>|T134304:0|t[Buzzard Wing]
step
#sticky
#label BankW1
.bankwithdraw 2719,5996 >> Withdraw the |T134238:0|t[Small Brass Key] from your bank (if you have it) << !Warlock
.bankwithdraw 2719 >> Withdraw the |T134238:0|t[Small Brass Key] from your bank (if you have it) << Warlock
>>Withdraw the |T134797:0|t[Elixir or Water Breathing] from your bank (if you have them) << !Warlock
>>If you don't have one or other of the items, skip this step
step << !Warlock
#softcore
#requires BankW1
.goto Stranglethorn Vale,26.59,76.37
>>If you didn't have any |T134797:0|t[Elixir or Water Breathing] in your bank, try buying some from the Auction House. Skip this step if you can't find them.
.collect 5996,1 
step
#requires BankW1
#completewith next
.isOnQuest 1115
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.goto Stranglethorn Vale,26.94,77.20
.turnin 1115 >>Turn in The Rumormonger
.target Krazek
step
#requires BankW1
.goto Stranglethorn Vale,26.99,77.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r, |cRXP_FRIENDLY_Baron Revilgaz|r, and |cRXP_FRIENDLY_Drizzlik|r
.target Kebok
.accept 189 >> Accept Bloodscalp Ears
.target Baron Revilgaz
.accept 601 >> Accept Water Elementals
.target Drizzlik
.accept 577 >> Accept Some Assembly Required
step
#sticky
#softcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.home >>Set your Hearthstone to Booty Bay
>>|cRXP_WARN_OR|r
>>|cRXP_WARN_Set your Hearthstone to Duskwood or Westfall if you used the unstuck self service to teleport to Stormwind|r
.target Innkeeper Skindle
step
#sticky
#hardcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.goto Stranglethorn Vale,27.04,77.31
.home >>Set your Hearthstone to Booty Bay
.target Innkeeper Skindle
step
#hardcore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.79
.fly Westfall >> Fly to Westfall
.target Gyll
step
#softcore
#label start1
#completewith start2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.79
.fly >> Fly to Westfall or Duskwood
.target Gyll
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 325 >>Turn in Armed and Ready
.accept 55 >>Accept Morbent Fel
.target Sven Yorgen
step
.goto Duskwood,19.59,37.28
>>Kill |cRXP_ENEMY_Mor'Ladim|r, he patrols around the northern side of the graveyard. Loot him for his |cRXP_LOOT_Skull|r
>>|cRXP_WARN_He hits very hard but can be easily kited|r
.complete 228,1 
.unitscan MOR'LADIM
step
.goto Duskwood,16.90,33.40
>>Kill |cRXP_ENEMY_Morbent Fel|r. Use the off-hand weapon provided to remove his shield
>>|cRXP_WARN_This quest can be hard, proceed with caution|r
.use 7297
.complete 55,1 
.target Morbent Fel
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
.turnin 55 >>Turn in Morbent Fel
.target Sven Yorgen
step
#label start2
.goto Stranglethorn Vale,38.01,3.32
>>Run to Rebel camp in northern Stranglethorn Vale
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
.target Sergeant Yohwa
.accept 574 >>Accept Special Forces
.target Brother Nimetz
.accept 207 >>Accept Kurzen's Mystery
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.04,3.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.accept 200 >>Accept Bookie Herod
.target Lieutenant Doren
step
.goto Stranglethorn Vale,35.55,10.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r, |cRXP_FRIENDLY_Hemet Nesingwary|r, and |cRXP_FRIENDLY_Ajeck Rouack|r
.target Sir S. J. Erlgadin
.accept 192 >>Accept Panther Mastery
.target Hemet Nesingwary
.accept 195 >>Accept Raptor Mastery
.target Ajeck Rouack
.accept 188 >>Accept Tiger Mastery
step
.isQuestTurnedIn 215
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cRXP_PICK_pile of books|r upstairs in the house
.goto Stranglethorn Vale,43.67,9.37
.turnin 200 >>Turn in Bookie Herod
.accept 328 >>Accept The Hidden Key
.target Bookie Herod's Records
step
.isQuestTurnedIn 215
>>Enter the cave north of the compound
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cRXP_PICK_chest|r
.goto Stranglethorn Vale,49.61,7.56
.turnin 328 >>Turn in The Hidden Key
.accept 329 >>Accept The Spy Revealed!
.target Bookie Herod's Strongbox

step << Warrior
.goto Stranglethorn Vale,44.5,9.6
>>Keep killing |cRXP_ENEMY_Kurzen Medicine Men|r until you have all the |cRXP_LOOT_Liferoot|r you need
.complete 1712,1 
.mob Kurzen Medicine Man
step
#completewith next
+Try to save 15 Silk Cloth for a quest for later
.collect 4306,15 
step
.goto Stranglethorn Vale,47.05,7.47
>>Enter the cave north of the compound. Kill |cRXP_ENEMY_Commandos|r (they're stealthed and stun) and |cRXP_ENEMY_Headshrinkers|r
.complete 574,1 
.complete 574,2 
.mob Kurzen Commando
.mob Kurzen Headshrinker

step
>>Kill |cRXP_ENEMY_Shadowmaw Panthers|r in the area. They're stealthed
.goto Stranglethorn Vale,48.64,22.95,90,0
.goto Stranglethorn Vale,36.09,37.29,90,0
.goto Stranglethorn Vale,48.64,22.95
.goto Stranglethorn Vale,36.09,37.29,0
>>|cRXP_WARN_You can find more further south-west if needed|r
.complete 192,1 
.mob Shadowmaw Panther
step
#sticky
#label raptors
.goto Stranglethorn Vale,38.10,20.50
>>Kill |cRXP_ENEMY_Lashtail Raptors|r. |cRXP_WARN_Be careful as they have a 2 second stun and Disarm|r
.complete 195,1 
.mob Lashtail Raptor
step
.goto Stranglethorn Vale,39.1,27.2
>>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r along the river between Lake Nazfereti and the river mouth. Loot them for their |cRXP_LOOT_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
#requires raptors
>>Kill |cRXP_ENEMY_Sin'Dall|r. Loot him for his |cRXP_LOOT_Paw|r
>>|cRXP_WARN_He can either be on top of the Plateau, or patrolling around it|r
.goto Stranglethorn Vale,32.2,17.4
.complete 188,1 
.unitscan Sin'Dall
step
#completewith next
+Try to save 15 Silk Cloth for a quest for later
.collect 4306,15 
step
#completewith KurzenMystery
.goto Stranglethorn Vale,25.52,9.36,0
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r << !Warrior
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r<< Warrior
.complete 189,1 
.complete 1712,2 << Warrior 
.mob Bloodscalp Axe Thrower
.mob Bloodscalp Warrior
.mob Bloodscalp Shaman
.mob Bloodscalp Scout
step
.goto Stranglethorn Vale,29.48,19.14
>>Loot the |cRXP_PICK_first tablet|r
.complete 207,1 
step
.goto Stranglethorn Vale,24.69,8.92
>>Loot the |cRXP_PICK_fourth tablet|r
.complete 207,4 
step
#label KurzenMystery
.goto Stranglethorn Vale,22.94,12.01
>>Loot the |cRXP_PICK_third tablet|r
.complete 207,3 
step
.goto Stranglethorn Vale,25.52,9.36
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r << !Warrior
>>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r and |cRXP_LOOT_Tusks|r<< Warrior
.complete 189,1 
.complete 1712,2 << Warrior 
.mob Bloodscalp Axe Thrower
.mob Bloodscalp Warrior
.mob Bloodscalp Shaman
.mob Bloodscalp Scout
step
.goto Stranglethorn Vale,21.55,23.51
>>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 601,1 
.mob Lesser Water Elemental
step
.goto Stranglethorn Vale,24.82,23.02
>>Loot the |cRXP_PICK_second tablet|r |cRXP_WARN_underwater|r
.complete 207,2 
step
#completewith next
>>Collect |cRXP_PICK_9 Blue Pearls|r from the clams around the coral reef while avoiding the elite murlocs
>>|cRXP_WARN_Skip this step if you don't have water breathing potions|r << !Warlock
>>|cRXP_WARN_This quest can be hard, skip it if you have to|r << !Hunter
.collect 4611,9 
step << Hunter
#era/som
.goto Stranglethorn Vale,24.42,24.46
>>Kill |cRXP_ENEMY_Saltscale Murlocs|r. Loot them for their |cRXP_LOOT_Encrusted Tail Fins|r, |cRXP_WARN_only kill 1 murloc at a time and avoid fighting the casters, they are more trouble than they are worth|r
>>Skip this step if you don't have water breathing potions
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
step
.goto Stranglethorn Vale,24.42,24.46
>>Collect |cRXP_PICK_9 Blue Pearls|r from the clams around the coral reef while avoiding the elite murlocs
>>|cRXP_WARN_Skip this step if you don't have water breathing potions|r << !Warlock
>>|cRXP_WARN_This quest can be hard, skip it if you have to|r << !Hunter
.collect 4611,9 

step
#som
.goto Stranglethorn Vale,25.52,9.36
.xp 38-26000 >>Grind until you are 26k xp away from level 38
step
#era
.goto Stranglethorn Vale,25.52,9.36
.xp 38-18600 >>Grind until you are 18,600 xp away from level 38
step
#softcore
#completewith next
.deathskip >>Die and respawn at the Spirit Healer
step
#softcore
.goto Stranglethorn Vale,37.83,3.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 207 >>Turn in Kurzen's Mystery
.accept 205 >>Accept Troll Witchery
.target Brother Nimetz
step
#hardcore
>>|cRXP_WARN_Swim and run back to the Rebel Camp|r
.goto Stranglethorn Vale,37.83,3.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 207 >>Turn in Kurzen's Mystery
.accept 205 >>Accept Troll Witchery
.target Brother Nimetz
step
.goto Stranglethorn Vale,38.04,3.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 329 >>Turn in The Spy Revealed!
.accept 330 >>Accept Patrol Schedules
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.04,3.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 574 >>Turn in Special Forces
.accept 202 >>Accept Colonel Kurzen
.target Lieutenant Doren
step
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
.turnin 330 >>Turn in Patrol Schedules
.accept 331 >>Accept Report to Doren
.target Corporal Sethman
step
.goto Stranglethorn Vale,38.04,3.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 331 >>Turn in Report to Doren
.target Lieutenant Doren
step
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r, |cRXP_FRIENDLY_Hemet Nesingwary|r, and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.target Ajeck Rouack
.turnin 188 >>Turn in Tiger Mastery
.turnin 195 >>Turn in Raptor Mastery
.target Hemet Nesingwary
.accept 196 >>Accept Raptor Mastery
.turnin 192 >>Turn in Panther Mastery
.target Sir S. J. Erlgadin
.accept 193 >>Accept Panther Mastery

step
#completewith next
.hs >>Use your Hearthstone
>>Buy food/water if needed
step
#completewith next
.fly Booty Bay>> Fly to Booty Bay
step
.isQuestTurnedIn 1114
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r and |cRXP_FRIENDLY_Kebok|r
.goto Stranglethorn Vale,26.94,77.20
.turnin 1115 >>Turn in The Rumormonger
.target Krazek
.accept 1116 >>Accept Dream Dust in the Swamp
.target Kebok
.turnin 189 >>Turn in Bloodscalp Ears

step
.goto Stranglethorn Vale,26.94,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.turnin 189 >>Turn in Bloodscalp Ears
.target Kebok
step
.goto Stranglethorn Vale,27.22,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 601 >>Turn in Water Elementals
.accept 602 >>Accept Magical Analysis
.target Baron Revilgaz
step
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
.goto Stranglethorn Vale,27.04,77.31
.home >>Set your Hearthstone to Booty Bay if you haven't
.target Innkeeper Skindle

step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 577 >>Turn in Some Assembly Required
.target Drizzlik
step
.xp 38 >> Make sure you are level 38 before starting the next segment
step << !Mage
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.79
.fly Stormwind >>Fly to Stormwind
.target Gyll
step << Warrior
.goto Stormwind City,58.4,61.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
>>Buy 400 throwing daggers
.collect 29010,1 
.target Thurman Mullby
step << Mage
.zone Stormwind City >> Teleport to Stormwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class trainer
.trainer >> Train your class spells
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
#era/som << Warlock
<< Alliance
#name 38-39 Swamp of Sorrows
#next 39-40 Alterac/Arathi
step
.goto Stormwind City,57.00,72.88,0
#completewith FlyDW
.bankdeposit 4306 >> Make sure you have 15 |T132905:0|t[Silk Cloth] in the bank for later
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>Go into The Slaughtered Lamb and go downstairs
step << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class trainer << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class and pet trainer << Warlock
.goto Stormwind City,74.64,52.82 << Rogue
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,42.66,33.75,30,0 << Paladin/Priest
.goto Stormwind City,38.68,32.85 << Paladin
.goto Stormwind City,38.54,26.86 << Priest
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,74.64,52.82 << Rogue
.goto Stormwind City,61.61,15.27 << Hunter
.goto Stormwind City,26.12,77.23 << Warlock
.goto Stormwind City,20.90,55.49 << Druid
.trainer >>Train your class and pet spells << Hunter
.trainer >>Train your class spells
.goto Stormwind City,25.66,77.63 << Warlock
.vendor >>Buy Demon books for your Succubus/Voidwalker if required << Warlock

step << Mage/Warlock
.goto Stormwind City,41.50,89.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.accept 1260 >>Accept Morgan Stern
.target Angus Stern
step << Mage/Warlock
.goto Stormwind City,41.52,64.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazen Mac'Nadir|r
.accept 1363 >>Accept Mazen's Behest
.target Mazen Mac'Nadir
step
.goto Stormwind City,41.52,64.38
>>Run upstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Dellis|r
.turnin 1363 >>Turn in Mazen's Behest
.accept 1364 >>Accept Mazen's Behest
.target Acolyte Dellis
step
.goto Stormwind City,64.33,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.accept 1448 >>Accept In Search of The Temple
.target Brohann Caskbelly
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class and pet trainer
.goto Stormwind City,61.61,15.27
.trainer >>Train your class and pet spells
step << !Mage !Warlock
.goto Stormwind City,41.52,64.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazen Mac'Nadir|r
.accept 1363 >>Accept Mazen's Behest
.target Mazen Mac'Nadir
step
.goto Stormwind City,41.52,64.38
>> Run upstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Dellis|r
.turnin 1363 >>Turn in Mazen's Behest
.accept 1364 >>Accept Mazen's Behest
.target Acolyte Dellis
step << !Mage !Warlock !Warrior !Rogue !Druid !Hunter 
.goto Stormwind City,41.50,89.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stern|r
.accept 1260 >>Accept Morgan Stern
.target Angus Stern
step
#label FlyDW
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
.goto Stormwind City,66.27,62.13
.fly Duskwood >>Fly to Duskwood
.target Dungar Longdrink
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
.turnin 228 >>Turn in Mor'Ladim
.accept 229 >>Accept The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
.turnin 229 >>Turn in The Daughter Who Lived
.target Watcher Ladimore
step
#completewith next
.goto Swamp of Sorrows,6.59,60.19
.zone Swamp of Sorrows >>Run to Swamp of Sorrows
step
#completewith next
.isQuestTurnedIn 1115
.goto Swamp of Sorrows,13.96,61.67,100,0
.goto Swamp of Sorrows,13.96,61.67,0
>>Start by killing |cRXP_ENEMY_whelps|r. Loot them for the |cRXP_LOOT_Dream Dust|r
>>You won't find enough whelps to finish this quest in 1 pass
.complete 1116,1 
.mob Adolescent Whelp
.mob Dreaming Whelp
step
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.accept 1396 >>Accept Encroaching Wildlife
.target Watcher Biggs
step
#sticky
#completewith end
>>Kill all |cRXP_ENEMY_swamp creatures|r you see. Loot them for |cRXP_LOOT_Khadgar's Essays|r. |cRXP_WARN_The droprate is very low, so don't go out of your way to complete this quest|r
.complete 1364,1 
step
#completewith Dreamdust2
.goto Swamp of Sorrows,28.20,43.83,0
>>Kill beasts as you quest
.complete 1396,1 
.complete 1396,2 
.complete 1396,3 
.mob Young Sawtooth Crocolisk
.mob Sorrow Spinner
.mob Swamp Jaguar
step
.goto Swamp of Sorrows,47.10,38.83
>>Kill |cRXP_ENEMY_Noboru|r. Loot him for the |cRXP_LOOT_Cudgel|r. Click it in your bags
>>|cRXP_WARN_He patrols around the top-center of the zone|r
.collect 6196,1,1392
.accept 1392 >>Accept Noboru the Cudgel
.unitscan NOBORU THE CUDGEL

step
.goto Swamp of Sorrows,25.98,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.turnin 1392 >>Turn in Noboru the Cudgel
.accept 1389 >>Accept Draenethyst Crystals
.target Magtoor
step << Hunter
#completewith wildlife2
.goto Swamp of Sorrows,14.97,37.31,70 >>Kill some swamp elementals

step
#label Dreamdust2
.goto Swamp of Sorrows,13.96,61.67
.goto Swamp of Sorrows,61.8,54.6,0
>>Kill |cRXP_ENEMY_welps|r or |cRXP_ENEMY_dragons|r. Loot them for the |cRXP_LOOT_Dream Dust|r
>>You can also find level 42 green dragons around the lake east
.complete 1116,1 
.isQuestTurnedIn 1115
.mob Adolescent Whelp
.mob Dreaming Whelp
step
.goto Swamp of Sorrows,28.20,43.83
>>Finish killing the |cRXP_ENEMY_Beasts|r
.complete 1396,1 
.complete 1396,2 
.complete 1396,3 
.mob Young Sawtooth Crocolisk
.mob Sorrow Spinner
.mob Swamp Jaguar
step
#label wildlife2
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.turnin 1396 >>Turn in Encroaching Wildlife
.accept 1421 >>Accept The Lost Caravan
.target Watcher Biggs
step
#completewith chestcart
.isOnQuest 1373
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r. He can be found all over the Fallow Sanctuary
.complete 1373,1 
.unitscan Ongeku
step
#completewith EscordGalen
.isOnQuest 1389
>>Loot 6 |cRXP_PICK_blue crystals|r around the wooden huts
.goto Swamp of Sorrows,63.26,22.35,0
.complete 1389,1 
step
#label chestcart
.isOnQuest 1421
>>Clear out the mobs around the huts about 40 yards south of the chest
>>Loot the |cRXP_PICK_chest|r |cRXP_WARN_on top of the broken cart|r
.goto Swamp of Sorrows,64.46,18.30
.complete 1421,1 
step
.isOnQuest 1373
>>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r. He can be found all over the Fallow Sanctuary
.goto Swamp of Sorrows,64.74,22.46
.complete 1373,1 
.unitscan Ongeku
step
.isOnQuest 1421
>>Start the escort quest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Goodward|r
.goto Swamp of Sorrows,65.46,18.16
.accept 1393 >>Accept Galen's Escape
.target Galen Goodward
step
#label EscordGalen
.isOnQuest 1393
.complete 1393,1 >>Follow |cRXP_FRIENDLY_Galen Goodward|r and escort him
.target Galen Goodward
step
#requires crystals
.isOnQuest 1393
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with |cRXP_PICK_Galen's Strongbox|r
.goto Swamp of Sorrows,47.80,39.75
.turnin 1393 >>Turn in Galen's Escape

step
.isQuestComplete 1389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
.goto Swamp of Sorrows,25.98,31.40
.turnin 1389 >>Turn in Draenethyst Crystals
.target Magtoor
step
#sticky
.abandon 1389 >>Abandon Draenethyst Crystals if you haven't done the quest, this quest is not worth doing if you are level 39 or above
step
.isQuestComplete 1421
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.goto Swamp of Sorrows,26.74,59.82
.turnin 1421 >>Turn in The Lost Caravan
.target Watcher Biggs
step
#label end
.goto Swamp of Sorrows,67.00,47.00
>>Swim to the middle of the lake to the Temple of Atal'Hakkar
.complete 1448,1 
step
#completewith DreamDustintheSwamp
.hs >>|cRXP_WARN_Grind mobs until your Hearthstone is off cooldown|r
>>Hearth to Booty Bay
>>Buy food/water if needed
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
.trainer >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo up one floor and talk to |cRXP_FRIENDLY_Ian Strom|r. Train your class spells
.target Ian Strom
step
#label DreamDustintheSwamp
.isQuestComplete 1116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r at the top floor of the inn
.goto Stranglethorn Vale,26.94,77.20
.turnin 1116 >>Turn in Dream Dust in the Swamp
.target Krazek
step
.isQuestTurnedIn 1115
>>Wait for RP sequence
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r again
.goto Stranglethorn Vale,26.94,77.20
.accept 1117 >>Accept Rumors for Kravel
.target Krazek
step << !Mage
.zoneskip Stormwind City
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
.goto Stranglethorn Vale,27.53,77.79
.fly Stormwind >>Fly to Stormwind
.target Gyll
step << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class trainer
.zone Stormwind City >>Teleport to Stormwind
.trainer >> Train your class spells
step
#sticky
#label Bankandy1
.goto Stormwind City,56.48,73.41
.bankwithdraw 6253,3518,5539,6245,3960,5796,5847,5996 >>Withdraw the following items from your bank: << !Warlock
.bankwithdraw 6253,3518,5539,6245,3960,5796,5847 >>Withdraw the following items from your bank: << Warlock
>>|T134797:0|t[Exlir of Water Breathing] << !Warlock
>>|T134940:0|t[Decrypted Letter]
>>|T133460:0|t[Letter of Commendation]
>>|T133633:0|t[Karnitol's Satchel]
>>|T133633:0|t[Bag of Water Elemental Bracers]
>>|T134305:0|t[Encrusted Tail Fins]
>>|T134302:0|t[Mirefin Head]


step
.goto Stormwind City,56.48,73.41
.bankdeposit 6065,4611,4306 >> Deposit the following items into your bank: << Hunter
.bankdeposit 6065,4306 >>Deposit the Blue Pearls in your bank << !Hunter
>>|T134564:0|t[Blue Pearls]
>>|T132905:0|t[Silk Cloth] (15)
>>|T133461:0|t[Khadgar's Essays on Dimensional Convergence] (if you have it) << Hunter
step << Priest
#requres Bankandy1
#completewith next
.goto Stormwind City,44.21,70.03,40,0
.goto Stormwind City,42.85,65.14
>>Buy the |T135139:0|t[Pitchwood Wand] from the vendor if it's better than your current wand. Equip it at 40
.collect 5238,1 
step << !Mage !Hunter
#requires Bankandy1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class trainer << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class and pet trainer << Warlock
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,42.66,33.75,30,0 << Paladin/Priest
.goto Stormwind City,38.68,32.85 << Paladin
.goto Stormwind City,38.54,26.86 << Priest
.goto Stormwind City,74.91,51.55,20,0 << Warrior
.goto Stormwind City,78.67,45.80 << Warrior
.goto Stormwind City,26.12,77.23 << Warlock
.trainer >> Train your class spells
.goto Stormwind City,25.66,77.63 << Warlock
.vendor >>Buy Demon books for your Succubus/Voidwalker if required << Warlock
step
#requires Bankandy1
.goto Stormwind City,74.00,30.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.accept 543 >>Accept The Perenolde Tiara
.target Count Remington Ridgewell
step
.goto Stormwind City,64.33,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1448 >>Turn in In Search of The Temple
.accept 1449 >>Accept To The Hinterlands
.target Brohann Caskbelly
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a class and pet trainer
.goto Stormwind City,61.61,15.27
.trainer >> Train your class and pet spells
step
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.goto Stormwind City,63.73,8.43,0
.zone Ironforge >> Take the Tram to Ironforge << !Mage
.zone Ironforge >> Take the Tram or Teleport to Ironforge << Mage
step
.goto Ironforge,67.91,17.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1457 >> Turn in The Karnitol Shipwreck
.target Roetten Stonehammer
step
.goto Ironforge,74.64,11.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 525 >> Accept Further Mysteries
.target Prospector Stormpike
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 30-40
#classic
<< Alliance
#name 39-40 Alterac/Arathi
#next RestedXP Alliance 40-50\40-40 Dustwallow Marsh << Hunter
#next RestedXP Alliance 40-50\39-40 Dustwallow Marsh << !Hunter
step << !Warlock
#softcore
#completewith ss1
.goto Ironforge,25.75,75.42
>>If you don't have a Water Breathing Potion, try to buy one from the Auction House
.collect 5996,1
step << Warrior
#sticky
#sofcore
#completewith next
.goto Ironforge,25.75,75.42
+Before starting this next segment, check the AH for Thundering/Cresting/Burning Charms, you need 8 of each
>>Buying it is not required but it will save you some time later
step
#label ss1
.goto Ironforge,55.50,47.74
.fly Arathi >> Fly to Arathi Highlands
step
.goto Arathi Highlands,46.19,47.75
>> Speak with Apprentice Kryten
.target Apprentice Kryten
>>Talk to |cRXP_FRIENDLY_Apprentice Kryten|r
.accept 691 >> Accept Worth Its Weight in Gold
step << Hunter/Druid/Rogue
.goto Arathi Highlands,46.04,47.76
>> Click on the Wanted Poster
.accept 684 >> Accept Wanted! Marez Cowl
step
.goto Arathi Highlands,62.50,33.72
.accept 642 >> Accept The Princess Trapped
step
.goto Arathi Highlands,84.97,31.61
>> Kill Kobolds. Loot them for Motes of Myzrael
.complete 642,1
step
.goto Arathi Highlands,84.30,30.95
>>Click on the stone obelisk inside the back of the cave
.turnin 642 >> Turn in The Princess Trapped
.accept 651 >> Accept Stones of Binding
step
.goto Arathi Highlands,66.70,29.71
>> Loot the rock in the middle of the elementals
.complete 651,2
step << Warrior
.goto Arathi Highlands,66.8,29.8
>>Kill elementals around this area
.collect 4481,8 
step
.goto Arathi Highlands,68.33,75.39
>>Prioritize killing Witch Doctors/Shadow Hunters
.complete 691,1
.complete 691,2
.complete 691,3
step
.goto Arathi Highlands,46.19,47.75
.target Apprentice Kryten
>>Talk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 691 >> Turn in Worth Its Weight in Gold
step
.goto Arathi Highlands,45.73,46.09
.fly Southshore>> Fly to Southshore
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.accept 659 >> Accept Hints of a New Plague?
step
#completewith Analysis
.goto Hillsbrad Foothills,48.2,59.2,0
>> Kill Syndicate Assassins in Southshore
>>Accept/turn in Assassin's Contract inside the Keep
>>The scripted event related to this quest only happens once every several hours, skip this step if you can't find the assassins
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.accept 523 >> Accept Baron's Demise
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,51.17,58.93
.home >> Set your Hearthstone to Southshore
step
#som
.goto Hillsbrad Foothills,51.88,58.67
>>Talk to Chef Jessen
>>Skip this if you dropped the Turtle Meat from earlier
.target Chef Jessen
>>Talk to |cRXP_FRIENDLY_Chef Jessen|r
.accept 555 >> Accept Soothing Turtle Bisque
.turnin 555 >> Turn in Soothing Turtle Bisque
step
#som
.goto Hillsbrad Foothills,51.36,58.55
>>Head upstairs
.target Raleigh the Devout
>>Talk to |cRXP_FRIENDLY_Raleigh the Devout|r
.turnin 1052 >> Turn in Down the Scarlet Path
.isOnQuest 1052
step
.goto Hillsbrad Foothills,49.47,58.73
.target Marshal Redpath
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
.accept 500 >> Accept Crushridge Bounty
step
.goto Hillsbrad Foothills,48.13,59.10
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 525 >> Turn in Further Mysteries
.target Magistrate Henry Maleb
.accept 537 >> Accept Dark Council
.accept 512 >> Accept Noble Deaths
step
.goto Hillsbrad Foothills,50.60,57.10
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 538 >> Turn in Southshore
.target Loremaster Dibbs
.accept 540 >> Accept Preserving Knowledge
.isQuestTurnedIn 337
step
#label Analysis
.goto Alterac Mountains,18.83,78.48
>>Talk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
.turnin 602 >> Turn in Magical Analysis
.target Archmage Ansirem Runeweaver
.accept 603 >> Accept Ansirem's Key
step
.goto Alterac Mountains,32.36,68.22
.zone Alterac Mountains >> Head to ruins of Alterac
step
#completewith Ruins
#hardcore
+The next couple quests in Ruins of Alterac can be a little difficult to do but they are soloable, tread carefully and avoid aggroing multiple mobs
step
.goto Alterac Mountains,39.08,51.22
>> Kill Grel'borg, he patrols around the ruins of alterac
>> He's an elite mob but he's quite easy to deal with as long as you deal with him alone.
.complete 543,1
.unitscan GREL'BORG THE MISER
step
#label Ruins
.goto Alterac Mountains,38.5,46.5
>> Click on the bookshelf inside the town hall
>> There is an elite mob inside the town hall guarding the bookshelf, you dont need to deal with it, just cc him, loot the book and run away
.complete 540,2
.isOnQuest 540
step
#label signets
#sticky
.goto Alterac Mountains,62.39,43.64,0
>> Kill syndicate mobs
.complete 512,1
step
.goto Alterac Mountains,39.22,14.31
>> Kill Nagas
.complete 537,2
step
.goto Alterac Mountains,39.17,14.66
>> Click on the wooden chest on the ground
.collect 3706,1,551
>>Don't use the item to start the quest yet

step
#completewith next
>> Kill Shadow Mages around the syndicate camps in northern Alterac
.complete 537,1
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>Search each camp, as well as the basement inn of Strahnbrad, for Baron Vardus. Kill him and loot his head.
.complete 523,1
.isOnQuest 523
.unitscan Baron Vardus
step
.goto Alterac Mountains,60.8,43.8
>> Kill Shadow Mages around the Syndicate camps in northern Alterac
.complete 537,1
step
.goto Alterac Mountains,48.31,41.55
>> Kill Ogres. Loot them for their Knucklebones
.complete 500,1
step
.goto Alterac Mountains,37.41,53.63
>> Keep killing Ogres and looting them for Recovered Tomes
.complete 540,1
.isOnQuest 540
step << Hunter
#completewith next
+Grind mobs until your Hearthstone cooldown is <6min
step
.goto Alterac Mountains,59.52,62.68,65,0
.goto Hillsbrad Foothills,71.43,21.04,35,0
.goto Hillsbrad Foothills,84.23,31.99,45,0
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> Head to The Hinterlands
step
.goto The Hinterlands,11.80,46.75
>>Talk to |cRXP_FRIENDLY_Falstad Wildhammer|r
.turnin 1449 >> Turn in To The Hinterlands
.target Falstad Wildhammer
.accept 1450 >> Accept Gryphon Master Talonaxe
step
.goto The Hinterlands,11.08,46.16
.fp Hinterlands>> Get The Hinterlands Flight Path
step
.goto The Hinterlands,9.75,44.47
>>Talk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 1450 >> Turn in Gryphon Master Talonaxe
.target Gryphon Master Talonaxe
.accept 1451 >> Accept Rhapsody Shindigger
step
.goto The Hinterlands,26.94,48.58
.target Rhapsody Shindigger
>>Talk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.turnin 1451 >> Turn in Rhapsody Shindigger
step
#era/som
.goto The Hinterlands,26.94,48.58
.target Rhapsody Shindigger
>>Talk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.accept 1452 >> Accept Rhapsody's Kalimdor Kocktail
step
#completewith next
.hs >> Hearth to Southshore
>> Buy food/water if needed
step
.goto Hillsbrad Foothills,49.47,58.73
.target Marshal Redpath
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
.turnin 500 >> Turn in Crushridge Bounty
step
.goto Hillsbrad Foothills,48.13,59.10
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 512 >> Turn in Noble Deaths
.turnin 537 >> Turn in Dark Council
step
.goto Hillsbrad Foothills,48.13,59.10
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
.turnin 523 >> Turn in Baron's Demise
.isOnQuest 523
step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
>>Use the Ensorcelled Parchment to start the quest
.use 3706
.turnin 551 >> Turn in The Ensorcelled Parchment
.target Loremaster Dibbs

step
>> Skip this step if you don't have this quest
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.turnin 540 >> Turn in Preserving Knowledge
.target Loremaster Dibbs

.isQuestTurnedIn 337
step
.goto Arathi Highlands,60.18,53.84
>>Go to Arathi Highlands
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 659 >> Turn in Hints of a New Plague?
.target Quae
.accept 658 >> Accept Hints of a New Plague?
step
>> Look for the Forsaken Courier. Loot her for the Sealed Folder
>> She patrols the road between Tarren Mill and Go'Shek farm
.goto Hillsbrad Foothills,55.70,22.72,70,0
.goto Hillsbrad Foothills,57.81,36.66,70,0
.goto Hillsbrad Foothills,62.30,41.42,70,0
.goto Hillsbrad Foothills,67.13,44.02,70,0
.goto Hillsbrad Foothills,83.51,58.80,70 >> After you've checked Hillsbrad for her, travel to Arathi Highlands
.complete 658,1
.unitscan FORSAKEN COURIER
step
#completewith next
.goto Arathi Highlands,46.19,47.75
.zone Arathi Highlands >> Travel to Arathi Highlands
step
>> Look for the Forsaken Courier. Loot her for the Sealed Folder
>> She patrols the road between Tarren Mill and Go'Shek farm
.goto Arathi Highlands,22.73,36.59,70,0
.goto Arathi Highlands,24.46,45.65,70,0
.goto Arathi Highlands,31.60,52.00,70,0
.goto Arathi Highlands,43.23,55.49,70,0
.goto Arathi Highlands,47.62,59.82,70,0
.goto Arathi Highlands,58.80,63.26,70,0
.goto Arathi Highlands,60.93,59.40
>>If you haven't found her by the time you reached Go'Shek, grind the Orcs there for 5 minutes, then skip the step if she hasn't spawned in Jorell's house by then
.complete 658,1
.unitscan FORSAKEN COURIER
step
#completewith next
.goto Arathi Highlands,46.19,47.75
.zone Arathi Highlands >> Travel to Arathi Highlands
step
.isQuestComplete 658
.goto Arathi Highlands,60.18,53.84
.target Quae
>>Talk to |cRXP_FRIENDLY_Quae|r
.accept 658 >> Accept Hints of a New Plague?
.turnin 658 >> Turn in Hints of a New Plague?
.accept 657 >> Accept Hints of a New Plague?
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.23,53.91
>> Speak with Kinelory and start the escort quest
>>Talk to |cRXP_FRIENDLY_Kinelory|r

.turnin 657 >> Turn in Hints of a New Plague?
.target Kinelory

.accept 660 >> Accept Hints of a New Plague?
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.18,53.84
>> Escort Kinelory around the farm
.complete 660,1
step
.isQuestTurnedIn 658
.goto Arathi Highlands,60.18,53.84
>>Talk to |cRXP_FRIENDLY_Quae|r
.turnin 660 >> Turn in Hints of a New Plague?
.target Quae
.accept 661 >> Accept Hints of a New Plague?
step
.goto Arathi Highlands,46.65,47.01
.target Skuerto
>>Talk to |cRXP_FRIENDLY_Skuerto|r
.accept 693 >> Accept Wand over Fist
step
.goto Arathi Highlands,54.75,81.87
>> Kill Kor'Gresh at the back of the cave
.complete 693,1
step
#completewith next
+Perform a Logout skip on the banner next to Kor'Gresh to teleport to the Elementals
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> CLICK HERE
step
.goto Arathi Highlands,52.03,50.72
>> Loot the rock in the middle of the elementals
.complete 651,3
step << Warrior
.goto Arathi Highlands,52.0,50.8
>>Kill air elementals
.collect 4480,8 
step
.goto Arathi Highlands,25.60,30.38
>> Loot the rock in the middle of the elementals
.complete 651,1
step << Warrior
.goto Arathi Highlands,25.4,30.1
>>Kill fire elementals
.collect 4479,8 
step << Warrior
.goto Alterac Mountains,79.3,66.7
>>Head west into Hillsbrad
>>Click on the cauldron
.complete 1712,3 
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1712 >> Turn in Cyclonian
.target Bath'rah the Windwatcher
.accept 1713 >> Accept The Summoning
>>Accepting this quest will start summoning Cyclonian, he hits fairly hard, be sure to check the video for pointers on how to solo him
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> Click here for video reference
step << Warrior
.goto Alterac Mountains,80.9,62.9
>>Follow Bath'rah while he summons Cyclonian, be careful, Cyclonian can be very difficult to solo
.complete 1713,1 
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> Click here for video reference
step << Warrior
.goto Alterac Mountains,80.4,66.9
.target Bath'rah the Windwatcher
>>Talk to |cRXP_FRIENDLY_Bath'rah the Windwatcher|r
.turnin 1713 >> Turn in The Summoning
.turnin 1792 >> Turn in Whirlwind Weapon
step << Warrior
.goto Western Plaguelands,42.9,85.0
.fly Arathi>> Fly to Arathi Highlands
step << Hunter/Druid/Rogue
.goto Arathi Highlands,29.62,62.96
>> Head to Stromgarde Keep
>>Use Eagle Eye to find her first << Hunter
>>Marez Cowl has 2 different spawn locations
>>Getting there can be tricky, you can skip this quest if necessary << Hunter
.complete 684,1
.unitscan MAREZ COWL
step
.goto Arathi Highlands,36.22,57.37
.turnin 651 >> Turn in Stones of Binding
.accept 652 >> Accept Breaking the Keystone
step << Hunter
#sticky
>> Use Eagle Eye to find Fozruk
>>Make sure to kill Sleeby and the rest of the kobolds first, you can kill one add at a time and reset the fight
>>Kill Fozruk by kiting him around Refuge Point
>>This is a difficult quest solo, consider skipping this step if you can't group up
.complete 652,1
.link https://www.twitch.tv/videos/778346703 >> Click here for video reference
.unitscan Fozruk
step << !Hunter
.goto Arathi Highlands,61.43,48.09
>> Find and kill Fozruk but don't go out of your way to finish this step, he patrols the whole zone
>>This is a VERY HARD elite to solo, consider skipping this step if you're not able to group up << !Warlock !Mage
>>Fozruk can be feared. Use Rain of Fire to split pull Fozruk away from his minions, then kill him << Warlock
>>Use Blizzard to split pull Fozruk away from his minions, then kill him by kiting him with slows << Mage
.complete 652,1
.link https://www.twitch.tv/videos/669107037?t=05h51m54s >> Click here for video reference
.unitscan Fozruk
step
.goto Arathi Highlands,46.65,47.01
>>Talk to |cRXP_FRIENDLY_Skuerto|r
.turnin 693 >> Turn in Wand over Fist
.target Skuerto
.accept 694 >> Accept Trelane's Defenses
step << Hunter/Druid/Rogue
.goto Arathi Highlands,45.83,47.55
.target Captain Nials
>>Talk to |cRXP_FRIENDLY_Captain Nials|r
.turnin 684 >> Turn in Wanted! Marez Cowl
step
.goto Arathi Highlands,36.07,58.09
>> Skip this step if you haven't found Fozruk
>>After turning in this quest, an elite mob will spawn, be ready to run away
.turnin 652 >> Turn in Breaking the Keystone
.isQuestComplete 652
step
.goto Arathi Highlands,36.07,58.09
.accept 653 >> Accept Myzrael's Allies
.isQuestTurnedIn 652
step
>>Enter Stromgarde and kill Boulderfist Shamans. Interrupt their heal, and loot them for the Azure Agate
.goto Arathi Highlands,21.1,67.6
.complete 694,1 
step
#completewith next
.goto Arathi Highlands,24.57,64.60,10,0
.goto Arathi Highlands,21.25,70.33,30 >> Escape Stromgarde through the hole in the wall in the south of the Ogre area. You can do this by jumping up on either side of the metal railings near the bent lamppost and running over to it
.goto Arathi Highlands,21.98,79.75,40 >> Head to Faldir's Cove, follow the path between the mountains and Stromgarde's southeastern wall
step
.goto Arathi Highlands,31.78,82.68
.target Lolo the Lookout
>>Talk to |cRXP_FRIENDLY_Lolo the Lookout|r
.accept 663 >> Accept Land Ho!
step
.goto Arathi Highlands,32.28,81.37
.target Shakes O'Breen
>>Talk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 663 >> Turn in Land Ho!
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>Talk to |cRXP_FRIENDLY_First Mate Nilzlix|r
.accept 662 >> Accept Deep Sea Salvage
step
#sticky
#label escort
.goto Arathi Highlands,33.86,80.54
>>Start the escort quest.
.target Professor Phizzlethorpe
>>Talk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
.accept 665 >> Accept Sunken Treasure
.target Captain Steelgut
>>Talk to |cRXP_FRIENDLY_Captain Steelgut|r
.accept 664 >> Accept Drowned Sorrows
step
#requires escort
>> Do the escort quest. Kill the 2 adds that spawn at the mouth of the cave before they attack the goblin
.complete 665,1
step
.goto Arathi Highlands,33.85,80.44
>>Talk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 665 >> Turn in Sunken Treasure
.target Doctor Draxlegauge
.accept 666 >> Accept Sunken Treasure
step << !Warlock !Druid
#softcore
#completewith next
+Use the Water Breathing Potion you bought from the Auction House.
step << !Druid !Warlock !Shaman
#softcore
#completewith SLog
>>Elven Gems are big stones located on the sea floor. Equip your Goggles of Gem hunting to see them on the minimap.
.complete 666,1 
step << !Druid !Warlock !Shaman
#hardcore
#completewith SLog
>>Be VERY careful of your breath. Elven Gems are big stones located on the sea floor. Equip your Goggles of Gem hunting to see them on the minimap.
.complete 666,1 
step << Warlock/Shaman
#completewith SLog
>>Use your Water Breathing spell. Elven Gems are big stones located on the sea floor. Equip your Goggles of Gem Hunting to see them on the minimap.
.complete 666,1 
step << Druid
#completewith SLog
>>Use your Aquatic Form when your breath gets low. Elven Gems are big stones located on the sea floor. Equip your Goggles of Gem Hunting to see them on the minimap.
.complete 666,1 
step
#sticky
#completewith SLog
>>Kill the Nagas in the area
.complete 664,1 
.complete 664,2 
step
>>2nd floor of the ship, in the cauldron
.goto Arathi Highlands,23.4,85.1
.complete 662,2 
step
>>2nd floor of the ship on the pillar
.goto Arathi Highlands,23.0,84.5
.complete 662,1 
step
>>2nd floor of other ship, top of the crate next to the cannon
.goto Arathi Highlands,20.5,85.6
.complete 662,3 
step
#label SLog
>>Bottom of the ship on the ground of the sea floor
.goto Arathi Highlands,20.6,85.1
.complete 662,4 
step
#sticky
#label ElvenGems
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1
>>Use your Goggles of Gem Finding to find Elven Gems. Loot them
.complete 666,1 
step
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1
>>Finish killing the Nagas in the area
.complete 664,1 
.complete 664,2 
step
#requires ElvenGems
.goto Arathi Highlands,32.8,81.3
.target First Mate Nilzlix
>>Talk to |cRXP_FRIENDLY_First Mate Nilzlix|r
.turnin 662 >> Turn in Deep Sea Salvage
>>Re-Equip your helm
step
.goto Arathi Highlands,34.00,80.79
.target Captain Steelgut
>>Talk to |cRXP_FRIENDLY_Captain Steelgut|r
.turnin 664 >> Turn in Drowned Sorrows
>>Talk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
.turnin 666 >> Turn in Sunken Treasure
.target Doctor Draxlegauge
.accept 668 >> Accept Sunken Treasure
step
.goto Arathi Highlands,32.28,81.37
>>Talk to |cRXP_FRIENDLY_Shakes O'Breen|r
.turnin 668 >> Turn in Sunken Treasure
.target Shakes O'Breen
.accept 669 >> Accept Sunken Treasure
step
#completewith next
.goto Arathi Highlands,35.79,79.52,12
+Logout on top of the rock in the cave where you escorted the gnome, then log back in
step
.goto Arathi Highlands,46.2,47.6
>>Talk to |cRXP_FRIENDLY_Apprentice Kryten|r
.turnin 694 >> Turn in Trelane's Defenses
.target Apprentice Kryten
.accept 695 >> Accept An Apprentice's Enchantment
step
.goto Arathi Highlands,46.6,47.1
.target Skuerto
>>Talk to |cRXP_FRIENDLY_Skuerto|r
.turnin 695 >> Turn in An Apprentice's Enchantment
step << Warlock/Paladin
.xp 40 >> Grind to level 40
step << Druid
#level 40
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step
.hs >> Hearth to Southshore
>> Buy food/water if needed
step
.isQuestTurnedIn 658
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>Talk to |cRXP_FRIENDLY_Phin Odelic|r
.turnin 661 >> Turn in Hints of a New Plague?

step
.goto Hillsbrad Foothills,50.57,57.09
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.target Loremaster Dibbs
.accept 554 >> Accept Stormpike's Deciphering
step
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
.target Loremaster Dibbs
.accept 542 >> Accept Return to Milton
.isQuestTurnedIn 540
step << Warlock
.goto Hillsbrad Foothills,49.33,52.27
.fly Ironforge>> Fly to Ironforge
step << Warlock
.goto Ironforge,50.4,6.0
.target Gerrig Bonegrip
>>Talk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
>> Skip the follow up
.isOnQuest 653
step << Warlock
.goto Ironforge,50.34,5.65
>> Speak with the Warlock trainers in Ironforge
.target Briarthorn
>>Talk to |cRXP_FRIENDLY_Briarthorn|r
.accept 4487 >> Accept Summon Felsteed
.accept 4965 >> Accept Knowledge of the Orb of Orahil
.trainer >> Train your class spells
step << Paladin
.goto Hillsbrad Foothills,49.33,52.27
.fly Stormwind>> Fly to Stormwind City
step << Paladin
.goto Stormwind City,42.66,33.75,30,0
.goto Stormwind City,39.81,29.79
.target Duthorian Rall
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
.accept 1661 >>Accept The Tome of Nobility
.turnin 1661 >>Turnin The Tome of Nobility
step << Paladin
.goto Stormwind City,38.68,32.85
.trainer >> Train your class spells
step
.goto Hillsbrad Foothills,49.34,52.27 << !Warlock !Paladin
.goto Ironforge,55.50,47.70 << Warlock
.goto Stormwind City,66.27,62.13 << Paladin
.fly Wetlands>> Fly to Wetlands
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#version 7
#classic
<< Alliance !Hunter
#name 39-40 Dustwallow Marsh
#next 40-40 Desolace
step
#completewith next
.goto Wetlands,5.14,63.40,20 >> Go to the end of the dock. Wait here for the boat
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
step << Warlock
.goto Dustwallow Marsh,67.47,51.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
.fly Ratchet>> Fly to Ratchet
step << Warlock
.isOnQuest 4965
.goto The Barrens,62.50,35.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4965 >> Turn in Knowledge of the Orb of Orahil
.target Menara Voidrender
.accept 1799 >> Accept Fragments of the Orb of Orahil
step << Warlock
.isOnQuest 4968
.goto The Barrens,62.50,35.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4968 >> Turn in Knowledge of the Orb of Orahil
.target Menara Voidrender
.accept 1799 >> Accept Fragments of the Orb of Orahil
step << Warlock
.isOnQuest 4488
.goto The Barrens,62.62,35.49
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4488 >> Turn in Summon Felsteed
step << Warlock
.isOnQuest 4487
.goto The Barrens,62.62,35.49
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.turnin 4487 >> Turn in Summon Felsteed
step << Warlock
.goto The Barrens,62.62,35.49
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
.accept 4490 >> Accept Summon Felsteed
.turnin 4490 >> Turn in Summon Felsteed
step << Warlock
.goto The Barrens,62.64,35.30
.target Acolyte Wytula
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Wytula|r
.accept 4962 >> Accept Shard of a Felhound
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
.goto The Barrens,63.08,37.16
.fly Theramore>> Fly to Theramore
step
.goto Dustwallow Marsh,68.21,48.62
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.accept 1286 >> Accept The Deserters
step
#completewith start
.goto Dustwallow Marsh,67.6,48.8
>> Do the First Aid quest
.target Doctor Gustaf VanHowzen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.turnin 6624 >> Turn in Triage
.skill First Aid,<225,-1
step
#completewith next
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1260 >> Turn in Morgan Stern
step
#era/som
#label start
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1204 >> Accept Mudrock Soup and Bugs
.maxlevel 41
step
#era/som
#completewith next
.goto Dustwallow Marsh,64.89,42.25,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,59.67,17.69,0
>> Kill |cRXP_LOOT_Turtles|r along the coast. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1
.isOnQuest 1204
step
.goto Dustwallow Marsh,57.98,15.88,90,0
.goto Dustwallow Marsh,57.11,21.33,90,0
.goto Dustwallow Marsh,54.22,14.94
.goto Dustwallow Marsh,57.11,21.33,0
.goto Dustwallow Marsh,57.98,15.88,0
>>Kill |cRXP_LOOT_Mirefin Murlocs|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 1177,1
.maxlevel 41
.isOnQuest 1177
step
#era/som
.goto Dustwallow Marsh,59.67,17.69,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,64.89,42.25
>> Kill |cRXP_LOOT_Turtles|r along the coast. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1
.isOnQuest 1204
step
.goto The Barrens,64.22,67.57
.target "Swamp Eye" Jarl
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1206 >> Accept Jarl Needs Eyes
.maxlevel 41
step
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.goto Dustwallow Marsh,34.4,25.2,90,0
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.goto Dustwallow Marsh,34.4,25.2
>>Kill all the |cRXP_LOOT_Spiders|r you see. Loot them for |cRXP_LOOT_Eyes|r
.complete 1206,1 
.isOnQuest 1206
step << Warlock
.goto The Barrens,64.22,67.57
.target "Swamp Eye" Jarl
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >> Turn in Jarl Needs Eyes
.isQuestComplete 1206
step << !Warlock
.goto The Barrens,59.79,63.03
>> Start the escort quest
.target "Stinky" Ignatz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
.accept 1222 >> Accept Stinky's Escape
.maxlevel 41
step << !Warlock
.goto Dustwallow Marsh,48.76,24.49,0
>> Escort |cRXP_FRIENDLY_"Stinky" Ignatz|r. This quest is easy. Just follow him
.complete 1222,1
.isOnQuest 1222
step << !Warlock
.goto The Barrens,64.22,67.57
.target "Swamp Eye" Jarl
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >> Turn in Jarl Needs Eyes
.isQuestComplete 1206
step
#softcore
.goto Dustwallow Marsh,45.2,24.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.target Private Hendel
.accept 1324 >> Accept The Missing Diplomat
>> |cRXP_WARN_You have to beat a level 35 mob while dealing with 2 adds|r, if you can't do it at this level, skip this step, you will have another opportunity to finish it
.isQuestTurnedIn 1264
step
#hardcore
.goto Dustwallow Marsh,45.2,24.6
>> |cRXP_WARN_BE CAREFUL, THIS NEXT QUEST WILL FLAG YOU FOR PVP|r. Skip if you need to.
>> |cRXP_WARN_You have to beat a level 35 mob while dealing with 2 extra enemies|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.target Private Hendel
.accept 1324 >> Accept The Missing Diplomat
.isQuestTurnedIn 1264
step
>> |cRXP_WARN_You have to beat a level 35 mob while dealing with 2 extra enemies|r
.goto Dustwallow Marsh,45.2,24.6
.complete 1324,1
.isOnQuest 1324
step
.goto Dustwallow Marsh,45.2,24.2
>>After beating |cRXP_ENEMY_Private Hendel|r, wait a few seconds until |cRXP_FRIENDLY_Archmage Tervosh|r show up
.target Archmage Tervosh
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >> Turn in The Missing Diplomat
.isQuestComplete 1324
step
.goto Dustwallow Marsh,45.2,24.2
.target Lady Jaina Proudmoore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >> Turn in The Missing Diplomat
.isQuestTurnedIn 1324
step << Warlock
.goto The Barrens,59.79,63.03
>> Start the escort quest
.target "Stinky" Ignatz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
.accept 1222 >> Accept Stinky's Escape
.maxlevel 41
step << Warlock
.goto Dustwallow Marsh,48.76,24.49,0
>> Escort |cRXP_FRIENDLY_"Stinky" Ignatz|r. This quest is easy. Just follow him
.complete 1222,1
.isOnQuest 1222
step
.goto Dustwallow Marsh,35.0,38.2
.target Mudcrush Durtfeet
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.turnin 1177 >> Turn in Hungry
.isQuestComplete 1177
step
.abandon 1177 >> Abandon Hungry
step
.goto The Barrens,54.20,82.09
>> Beat |cRXP_FRIENDLY_Balos Jacken|r inside the tower. Talk to him afterward
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
.turnin 1286 >> Turn in The Deserters
.target Balos Jacken
.accept 1287 >> Accept The Deserters
step
.goto Dustwallow Marsh,54.10,56.50
>> Loot the |cRXP_PICK_box|r on the ground near the crashed Zeppelin
.complete 1187,1
.isOnQuest 1187
step
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1222 >> Turn in Stinky's Escape
.isQuestComplete 1222
step
#era/som
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1204 >> Turn in Mudrock Soup and Bugs
.isQuestComplete 1204
step
#era/som
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1258 >> Accept ... and Bugs
.isQuestTurnedIn 1204
step
.goto The Barrens,70.84,79.14
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1287 >> Turn in The Deserters
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
#era/som << !Warlock
<< Alliance !Hunter
#name 40-40 Desolace
#next 40-41 Badlands
step
.goto Dustwallow Marsh,67.47,51.30
.fly Desolace >> Fly to Desolace
step
.goto Desolace,66.27,6.55
.home >> Set your Hearthstone to Desolace
step
.goto Desolace,66.51,7.90
.target Brother Anton
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.accept 261 >> Accept Down the Scarlet Path
step
.goto Desolace,66.20,9.62
.target Kreldig Ungor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.accept 1466 >> Accept Reagents for Reclaimers Inc.
step
#era/som
.goto Desolace,47.83,61.82
.target Hornizz Brimbuzzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.accept 6134 >> Accept Ghost-o-plasm Round Up
step
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1373 >> Turn in Ongeku
.target Uthek the Wise
.accept 1374 >> Accept Khan Jehn
.isQuestTurnedIn 1370
step << Warlock
#completewith next
.goto Desolace,51.72,83.79
>>Kill |cRXP_LOOT_Felhounds|r for their |cRXP_LOOT_Brains|r, |cRXP_LOOT_Succubus|r for their |cRXP_LOOT_Wings|r, and |cRXP_LOOT_Doomwarders|r for their |cRXP_LOOT_Blood|r
>>Focus on Doomwarders as you have to wait out at least one wave of their respawns to be able to complete the quest
.complete 1466,1
.complete 1466,2
.complete 1466,3
step << Warlock
.goto Desolace,53.4,76.6,0
>> Kill |cRXP_LOOT_Burning Blade Summoners|r. Loot them for the |cRXP_LOOT_Infernal Orb|r
.complete 1799,1
>> Kill a |cRXP_LOOT_Felhound|r while draining it with the Felhas Ruby
.complete 4962,1
step
.goto Desolace,51.72,83.79
>>Kill |cRXP_LOOT_Felhounds|r for their |cRXP_LOOT_Brains|r, |cRXP_LOOT_Succubus|r for their |cRXP_LOOT_Wings|r, and |cRXP_LOOT_Doomwarders|r for their |cRXP_LOOT_Blood|r
.complete 1466,1
.complete 1466,2
.complete 1466,3
step
#completewith next
#era/som
.goto Desolace,64.00,91.70
>> At the Valley of Bones, use the Crate of Ghost Magnets in your inventory. Kill the |cRXP_LOOT_Ghosts|r that spawn. Loot them for the |cRXP_LOOT_Ghost-O-Plasm|r
.complete 6134,1
step
.goto Desolace,63.76,90.25
>>Kill |cRXP_ENEMY_Undead Ravagers|r in the area
.complete 261,1
step
#era/som
.goto Desolace,64.00,91.70
>> At the Valley of Bones, use the Crate of Ghost Magnets in your inventory. Kill the |cRXP_LOOT_Ghosts|r that spawn. Loot them for the |cRXP_LOOT_Ghost-O-Plasm|r
.complete 6134,1
step
.goto Desolace,65.94,80.40
>> Kill |cRXP_LOOT_Khan Jehn|r. Loot him for his |cRXP_LOOT_Head|r
.complete 1374,1 
.isQuestTurnedIn 1370
step
#era/som
#softcore
.goto Desolace,47.83,61.82
.target Hornizz Brimbuzzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.turnin 6134 >> Turn in Ghost-o-plasm Round Up
step
.goto Desolace,36.21,79.24
.target Uthek the Wise
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
.turnin 1374 >> Turn in Khan Jehn
.isQuestTurnedIn 1370
step
#era/som
#hardcore
.goto Desolace,47.83,61.82
.target Hornizz Brimbuzzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
.turnin 6134 >> Turn in Ghost-o-plasm Round Up
step
#softcore
.goto Desolace,41.13,91.72
.zone Feralas >> Head to Feralas
step
#softcore
#completewith end
.goto Feralas,40.6,8.6
>> Once you get to Feralas, walk along the mountains to the west to avoid aggroing mobs and then die near the stone obelisks
.deathskip >> Die and respawn at the Spirit Healer in Feathermoon
step
#softcore
#label end
.goto Feralas,30.2,43.3
.fp Feathermoon>>Get the Feathermoon Flight Path
.fly Tanaris>> Fly to Tanaris
step
#hardcore
#label end
>>Run back to Nijel's Point
.goto Desolace,64.66,10.53
.fly Tanaris>> Fly to Tanaris
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
<< Alliance Hunter
#name 40-40 Dustwallow Marsh
#next 40-41 Badlands
step
.goto Wetlands,10.70,60.90
.home >> Set your Hearthstone to Wetlands
step
#completewith next
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> Take the boat to Theramore
step
.goto The Barrens,70.84,79.14
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.accept 1286 >> Accept The Deserters
step
#completewith start
.goto Dustwallow Marsh,67.6,48.8
>> Do the First Aid quest
.target Doctor Gustaf VanHowzen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
.accept 6624 >> Accept Triage
.turnin 6624 >> Turn in Triage
.skill First Aid,<225,-1
step
#completewith next
#label start
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1260 >> Turn in Morgan Stern
step
#era/som
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.accept 1204 >> Accept Mudrock Soup and Bugs
step
#era/som
#completewith next
.goto Dustwallow Marsh,64.89,42.25,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,59.67,17.69,0
>> Kill |cRXP_LOOT_Turtles|r along the coast. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1
step
#era/som
.goto Dustwallow Marsh,57.98,15.88,90,0
.goto Dustwallow Marsh,57.11,21.33,90,0
.goto Dustwallow Marsh,54.22,14.94
.goto Dustwallow Marsh,57.11,21.33,0
.goto Dustwallow Marsh,57.98,15.88,0
>>Kill |cRXP_LOOT_Mirefin Murlocs|r. Loot them for their |cRXP_LOOT_Heads|r
.complete 1177,1
.maxlevel 41
.isOnQuest 1177

step
#era/som
.goto Dustwallow Marsh,59.67,17.69,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,64.89,42.25
>> Kill |cRXP_LOOT_Turtles|r along the coast. Loot them for their |cRXP_LOOT_Tongues|r
.complete 1204,1
.isOnQuest 1204
step
.goto The Barrens,64.22,67.57
.target "Swamp Eye" Jarl
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.accept 1206 >> Accept Jarl Needs Eyes
.maxlevel 41
step
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.goto Dustwallow Marsh,34.4,25.2,90,0
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.goto Dustwallow Marsh,34.4,25.2
>>Kill all the |cRXP_LOOT_Spiders|r you see. Loot them for |cRXP_LOOT_Eyes|r
.complete 1206,1 
.isOnQuest 1206
step
.goto The Barrens,59.79,63.03
>> Start the escort quest
.target "Stinky" Ignatz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
.accept 1222 >> Accept Stinky's Escape
.maxlevel 41
step
.goto Dustwallow Marsh,48.76,24.49,0
>> Escort |cRXP_FRIENDLY_Stinky|r. This quest is easy. Just follow him
.complete 1222,1
.isOnQuest 1222
step
.goto The Barrens,64.22,67.57
.target "Swamp Eye" Jarl
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
.turnin 1206 >> Turn in Jarl Needs Eyes
.isQuestComplete 1206
step
#softcore
.goto Dustwallow Marsh,45.2,24.6
>>Talk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.target Private Hendel
.accept 1324 >> Accept The Missing Diplomat
.isQuestTurnedIn 1264
step
#hardcore
.goto Dustwallow Marsh,45.2,24.6
>> |cRXP_WARN_BE CAREFUL, THIS NEXT QUEST WILL FLAG YOU FOR PVP|r
>> You have to beat a level 35 mob while dealing with 2 adds
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
.turnin 1266 >> Turn in The Missing Diplomat
.target Private Hendel
.accept 1324 >> Accept The Missing Diplomat
.isQuestTurnedIn 1264
step
>> You have to beat a level 35 mob while dealing with 2 adds
.goto Dustwallow Marsh,45.2,24.6
.complete 1324,1
.isOnQuest 1324
step
.goto Dustwallow Marsh,45.2,24.2
>>After beating Private Hendel, wait a few seconds until |cRXP_FRIENDLY_Archmage Tervosh|r show up
.target Archmage Tervosh
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
.turnin 1324 >> Turn in The Missing Diplomat
.isQuestComplete 1324
step
.goto Dustwallow Marsh,45.2,24.2
.target Lady Jaina Proudmoore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
.turnin 1267 >> Turn in The Missing Diplomat
.isQuestTurnedIn 1324
step
.goto Dustwallow Marsh,35.0,38.2
.target Mudcrush Durtfeet
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
.turnin 1177 >> Turn in Hungry
.isOnQuest 1177
step
#sticky
.abandon 1177 >> Abandon Hungry if you haven't completed this quest
step
.goto The Barrens,54.20,82.09
>> Beat |cRXP_FRIENDLY_Balos Jacken|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
.turnin 1286 >> Turn in The Deserters
.target Balos Jacken
.accept 1287 >> Accept The Deserters
step
.goto Dustwallow Marsh,54.10,56.50
>> Loot the |cRXP_PICK_box|r on the ground near the crashed Zeppelin
.complete 1187,1
.isOnQuest 1187
step
#softcore
#completewith next
>> Grind until your Hearthstone cooldown is <10min
.deathskip >>Die and respawn at the Spirit Healer
step
#hardcore
#completewith next
+Grind your way back to Theramore
step
#era/som
.goto The Barrens,69.87,77.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1204 >> Turn in Mudrock Soup and Bugs
.target Morgan Stern
.accept 1258 >> Accept ... and Bugs
step
.goto The Barrens,69.87,77.51
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1222 >> Turn in Stinky's Escape
.isQuestComplete 1222
step << Hunter
.goto Dustwallow Marsh,66.00,45.50
.stable >> Stable your pet
step
.goto The Barrens,70.84,79.14
.target Captain Garran Vimes
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
.turnin 1287 >> Turn in The Deserters
step
.goto Dustwallow Marsh,67.47,51.30
.fly Gadgetzan >> Fly to Tanaris
step << Hunter
.goto Tanaris,54.07,32.21
.train 2976 >> Tame a level 40/41 scorpid near Gadgetzan and learn Claw 6
step << Hunter
.goto Dustwallow Marsh,66.00,45.50
.stable >> Abandon the scorpid, take your main pet out of the stable
step
.goto Tanaris,50.98,22.87,60,0
.goto Thousand Needles,78.14,77.12
>> Run to Shimmering Flats
.target Fizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.accept 1106 >> Accept Martek the Exiled
step << Hunter
#era/som
.goto Thousand Needles,78.14,77.12
.target Wizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
.turnin 1107 >> Turn in Encrusted Tail Fins
.isQuestComplete 1107
step
#completewith next
.goto Thousand Needles,77.78,77.26
.target Kravel Koalbeard
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1117 >> Turn in Rumors for Kravel
step
.goto Thousand Needles,77.78,77.26
>> Wait for the roleplay sequence to finish
.target Kravel Koalbeard
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1118 >> Accept Back to Booty Bay
step
.goto Thousand Needles,80.32,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1187 >> Turn in Razzeric's Tweaking
.target Razzeric
.accept 1188 >> Accept Safety First
step
.hs >> Hearth to Menethil
>> Buy food/water if needed
step
#label end
.goto Wetlands,9.49,59.70
.fly Ironforge>> Fly to Ironforge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
<< Alliance
#name 40-41 Badlands
#next 41-43 STV/Swamp of Sorrows
step
.goto Dustwallow Marsh,67.48,51.30
.zone Tanaris >> Fly to Tanaris
step
#completewith next
.zone Thousand Needles >> Run north to Shimmering Flats
step
.goto Thousand Needles,78.06,77.12
.target Fizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.accept 1106 >> Accept Martek the Exiled
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1117 >> Turn in Rumors for Kravel
>> Wait for the RP sequence to finish
.target Kravel Koalbeard
.accept 1118 >> Accept Back to Booty Bay
.isOnQuest 1117
step
.goto Thousand Needles,80.32,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1187 >> Turn in Razzeric's Tweaking
.target Razzeric
.accept 1188 >> Accept Safety First
step << Druid
#som
#phase 3-6
#softcore
#level 40
>>Teleport to Moonglade. If you know how to use the website unstuck feature, skip this step
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Druid
#som
#phase 3-6
#hardcore
#level 40
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Druid
#era/som
#level 40
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Warlock
#som
#phase 3-6
.hs >> Hearth back to Nijel's Point
>> Buy food/water if needed
step
#era/som
.hs >> Hearth back to Nijel's Point
>> Buy food/water if needed
step << Warlock
#som
#phase 3-6
.goto Desolace,66.51,7.90
.target Brother Anton
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
>> Skip the follow up
step
#era/som
.goto Desolace,66.51,7.90
.target Brother Anton
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
.turnin 261 >> Turn in Down the Scarlet Path
>> Skip the follow up
step << Warlock
#som
#phase 3-6
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
.accept 1467 >> Accept Reagents for Reclaimers Inc.
step
#era/som
.goto Desolace,66.20,9.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
.turnin 1466 >> Turn in Reagents for Reclaimers Inc.
.target Kreldig Ungor
.accept 1467 >> Accept Reagents for Reclaimers Inc.
step << !Mage
#softcore
>> Use the website unstuck service to teleport to Stormwind
>>OR
.zone Wetlands >>Fly to Theramore and take the boat to Menethil
.zoneskip Stormwind City
step << !Mage
#hardcore
.goto Desolace,64.66,10.53
.fly Theramore>>Fly to Theramore
step << !Mage
#hardcore
.zone Wetlands >> Take the boat to Wetlands
step << Mage
>>Teleport to Ironforge
.goto Ironforge,26.30,6.73
.trainer >> Train your class spells
step << Mage
#completewith next
.goto Ironforge,31.33,27.82
>>Buy |cRXP_BUY_Runes of Teleportation|r from |cRXP_FRIENDLY_Ginny|r if needed
.collect 17031,10
step << Mage
.goto Ironforge,55.501,47.742
.fly Wetlands >> Fly to Wetlands
step << Warlock
#softcore
#completewith sw1
>>If you're coming from Wetlands, abandon the following quests:
.abandon 196 >> Abandon Raptor Mastery
.abandon 193 >> Abandon Panther Mastery
step << Warlock
#hardcore
#label sw1
>>Abandon the following quests:
.abandon 196 >> Abandon Raptor Mastery
.abandon 193 >> Abandon Panther Mastery
step << !Druid
#hardcore
.goto Ironforge,69.88,82.90 << Hunter
.goto Ironforge,65.90,88.41 << Warrior
.goto Ironforge,50.34,5.67 << Warlock
.goto Ironforge,51.50,15.34 << Rogue
.goto Ironforge,25.21,10.75 << Priest
.goto Ironforge,27.17,8.57 << Mage
.goto Ironforge,24.55,4.46 << Paladin
.trainer >> Train your class spells
.goto Ironforge,52.7,6.1 << Warlock
.vendor >> Buy pet spellbooks for your Succubus. Buy Voidwalker ones too if you have a lot of gold << Warlock
step
#softcore
.trainer >> Train your class skills in Stormwind or Ironforge
.train 15149 >>Train Growl rank 5 << Hunter
step
#softcore
.goto Stormwind City,57.02,72.97,0
.goto Ironforge,35.90,60.17,0
.bankdeposit 5862,5826,4502 >> Deposit the following items into your bank:
>>Seaforium Booster
>>Kravel's Scheme
>>Sample Elven Gem
step
#softcore
.goto Stormwind City,57.02,72.97,0
.goto Ironforge,35.90,60.17,0
.bankwithdraw 4611,3404,5827 >> Withdraw the following items from your bank:
>>9 Blue Pearls (If you have them)
>>Buzzard Wings
>>Fizzle Brassbolts' Letter
step
#hardcore
.goto Ironforge,35.90,60.17
.bankdeposit 5862,5826,4502 >> Deposit the following items into your bank:
>>Seaforium Booster
>>Kravel's Scheme
>>Sample Elven Gem
step
#hardcore
.goto Ironforge,35.90,60.17
.bankwithdraw 4611,3404,5827 >> Withdraw the following items from your bank:
>>9 Blue Pearls (If you have them)
>>Buzzard Wings
>>Fizzle Brassbolts' Letter
step
#softcore
#requires sw1 << Warlock
.zone Ironforge >> Head to Ironforge
step
#completewith start
#softcore
.goto Ironforge,25.75,75.42,0
>>Try to find the following items on the Auction House for the Badlands quests later:
.collect 3829,1,713,1
.collect 4389,1,714,1
>>-
.collect 929,1,715,1
.collect 3823,1,715,1
>>-
.collect 2868,1,716,1
>>(This step is optional)
step
#softcore
.goto Ironforge,67.91,17.50
.target Roetten Stonehammer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1467 >> Turn in Reagents for Reclaimers Inc.
.isOnQuest 1467
step
#hardcore
.goto Ironforge,67.91,17.50
.target Roetten Stonehammer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
.turnin 1467 >> Turn in Reagents for Reclaimers Inc.
.isOnQuest 1467
step
.goto Ironforge,74.64,11.74
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
.accept 707 >> Accept Ironband Wants You!
.turnin 554 >> Turn in Stormpike's Deciphering
step
.goto Ironforge,50.82,5.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
.turnin 653 >> Turn in Myzrael's Allies
.target Zaruk
.target Gerrig Bonegrip

.accept 687 >> Accept Theldurin the Lost
.isQuestTurnedIn 652
step
#label start
.goto Ironforge,55.501,47.742
.fly Loch Modan>> Fly to Loch Modan
step
.goto Loch Modan,35.5,48.4
.home >> Set your Hearthstone to Loch Modan
step
.goto Loch Modan,37.06,49.37
.target Ghak Healtouch
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.accept 2500 >> Accept Badlands Reagent Run
step
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 707 >> Turn in Ironband Wants You!
.target Prospector Ironband
.accept 738 >> Accept Find Agmond
step
#completewith StudyR
>> Kill Wolves/Vultures as you quest through Badlands. Loot them for Fangs and Gizzards
.complete 2500,1
.complete 2500,2
step
#completewith StudyR
>>Kill Vultures for 4 Buzzard Wings
.collect 3404,4,703,1
step
.goto Badlands,53.42,43.39
.target Prospector Ryedol
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.accept 719 >> Accept A Dwarf and His Tools
.target Sigrun Ironhew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.accept 718 >> Accept Mirages
step
.goto Badlands,53.02,33.94
>> Click on the |cRXP_PICK_crumpled map|r next to the tent
.accept 720 >> Accept A Sign of Hope
step
.goto Badlands,41.26,27.79
>> Kill |cRXP_LOOT_Shadowforge Dwarves|r. Loot them for the |cRXP_LOOT_Pick|r
.complete 719,1
step
.goto Badlands,66.92,23.45
>> Loot the |cRXP_PICK_crate|r in the Ogre camp
.complete 718,1
step
#era/som
.goto Badlands,53.80,43.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 718 >> Turn in Mirages
.target Sigrun Ironhew
.accept 733 >> Accept Scrounging
.target Prospector Ryedol
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 719 >> Turn in A Dwarf and His Tools
.turnin 720 >> Turn in A Sign of Hope
step
#som
#phase 3-6
.goto Badlands,53.80,43.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 718 >> Turn in Mirages
.target Sigrun Ironhew
.accept 733 >> Accept Scrounging
.accept 706 >> Accept Fiery Blaze Enchantments
.target Prospector Ryedol
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
.turnin 719 >> Turn in A Dwarf and His Tools
.turnin 720 >> Turn in A Sign of Hope
step
.goto Thousand Needles,61.27,95.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
.turnin 1106 >> Turn in Martek the Exiled
.target Martek the Exiled
.accept 1108 >> Accept Indurium
step
.goto Badlands,42.38,52.92
>>Skip this step and abandon the quest if you don't have 9 blue pearls
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 705 >> Accept Pearl Diving
.turnin 705 >> Turn in Pearl Diving
step
.abandon 705 >> Abandon Pearl Diving
step
.goto Badlands,42.38,52.92
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.accept 703 >> Accept Barbecued Buzzard Wings
step
.isQuestComplete 703
.goto Badlands,42.38,52.92
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.turnin 703 >> Turn in Barbecued Buzzard Wings
step
.goto Badlands,61.93,54.26
.target Garek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
.accept 732 >> Accept Tremors of the Earth
step
#som
#phase 3-6
.goto Badlands,68.71,52.68,60,0
.goto Badlands,75.10,66.54,60,0
.goto Badlands,81.90,31.65
>>Kill Whelps in the area. Loot them for the Black Drake's Heart
>>You can choose to skip this quest if you wish, as it can have a bad droprate
.complete 706,1 
step
#sticky
#label boss
>> Look for |cRXP_LOOT_Boss Tho'grun|r as you quest
.complete 732,1
.unitscan BOSS THO'GRUN
step
.goto Badlands,50.89,62.40
.turnin 738 >> Turn in Find Agmond
.accept 739 >> Accept Murdaloc
step
#label troggs
#sticky
.goto Badlands,50.40,68.29
>> Kill |cRXP_LOOT_Troggs|r
.complete 739,1
.complete 739,2
.complete 1108,1
step
.goto Badlands,51.38,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 687 >> Turn in Theldurin the Lost
.target Theldurin the Lost
.accept 692 >> Accept The Lost Fragments
.isQuestTurnedIn 652
step
.goto Badlands,54.66,83.91
>> Kill |cRXP_LOOT_earth elementals|r
.complete 692,1
.complete 692,2
.complete 692,3
.isOnQuest 692
step
.goto Badlands,51.38,76.87
.target Theldurin the Lost
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
.turnin 692 >> Turn in The Lost Fragments
.isOnQuest 692
step
.goto Thousand Needles,61.27,95.34
>> Speak to the goblin nearby and clear your bags while you wait for the RP sequence
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
.turnin 1108 >> Turn in Indurium
.target Martek the Exiled
.accept 1137 >> Accept News for Fizzle
step
#hardcore
.goto Badlands,25.94,44.86
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.accept 710 >> Accept Study of the Elements: Rock
step
#softcore
.goto Badlands,25.94,44.86
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.accept 710 >> Accept Study of the Elements: Rock
>>If you purchased the items from earlier, start turning in the quests
>>If you weren't able to get some of the items, skip the quests requiring them
.accept 713 >> Accept Coolant Heads Prevail
.turnin 713 >> Turn in Coolant Heads Prevail
.accept 714 >> Accept Gyro... What?
.turnin 714 >> Turn in Gyro... What?
step
.goto Badlands,16.14,40.26
>> Kill |cRXP_LOOT_earth elementals|r
.complete 710,1
step
.goto Badlands,25.94,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 710 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
.accept 711 >> Accept Study of the Elements: Rock
step
.goto Badlands,14.70,35.30
.complete 711,1
step
#label StudyR
.goto Badlands,25.94,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 711 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
.accept 712 >> Accept Study of the Elements: Rock
step
#sticky
#label Wings
.goto Badlands,16.12,60.47
>> Kill |cRXP_LOOT_Vultures|r. Loot them for |cRXP_LOOT_Wings|r
.complete 703,1
step
#completewith next
.goto Badlands,16.12,60.47
>> Kill |cRXP_LOOT_Vultures|r. Loot them for |cRXP_LOOT_Gizzards|r
.complete 2500,1
step
.goto Badlands,54.80,52.75
>> Finish off killing |cRXP_LOOT_Wolves|r and looting them for |cRXP_LOOT_Fangs|r
.complete 2500,2
step
.goto Badlands,16.12,60.47
>> Kill |cRXP_LOOT_Vultures|r. Loot them for |cRXP_LOOT_Gizzards|r
.complete 2500,1
step
#requires Wings
.goto Badlands,3.98,79.89
>>Kill |cRXP_LOOT_Greater Rock Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
.complete 712,1
step
.goto Badlands,11.15,75.64
>> Kill |cRXP_LOOT_Ogres|r. Loot them for |cRXP_LOOT_Scrap Metal|r
.complete 733,1
step
#hardcore
.goto Badlands,25.94,44.86
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 712 >> Turn in Study of the Elements: Rock
step
#softcore
.isQuestTurnedIn 714
.goto Badlands,25.94,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 712 >> Turn in Study of the Elements: Rock
.target Lotwil Veriatus
.accept 734 >> Accept This Is Going to Be Hard
step
#softcore
.goto Badlands,25.94,44.86
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 712 >> Turn in Study of the Elements: Rock
step
#softcore
.isQuestTurnedIn 714
.goto Badlands,25.82,44.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.turnin 734 >>Turn in This Is Going to Be Hard
.target Lucien Tosselwrench
.accept 777 >>Accept This Is Going to Be Hard
step
#softcore
.isQuestTurnedIn 714
>>If you purchased the items from earlier, start turning in the quests
>>If you weren't able to get some of the items, skip the quests requiring them
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
.accept 715 >>Accept Liquid Stone
.accept 716 >>Accept Stone Is Better than Cloth
.turnin 715 >>Turn in Liquid Stone
.turnin 716 >>Turn in Stone Is Better than Cloth
.itemcount 3829,1
step
#softcore
.isQuestTurnedIn 714
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 777 >>Turn in This Is Going to Be Hard
.target Lotwil Veriatus
.accept 778 >>Accept This Is Going to Be Hard
step
#softcore
.isQuestTurnedIn 714
.goto Badlands,26.07,46.69
>>Kill the |cRXP_LOOT_Fam'Retor Guardian|r
.complete 778,1 
step
#softcore
.isQuestTurnedIn 714
.goto Badlands,25.95,44.86
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 778 >>Turn in This Is Going to Be Hard
step
.goto Badlands,42.38,52.92
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
.turnin 703 >> Turn in Barbecued Buzzard Wings
step
#era/som
.goto Badlands,53.80,43.30
.target Sigrun Ironhew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 733 >> Turn in Scrounging
step
#som
#phase 3-6
.goto Badlands,53.80,43.30
.target Sigrun Ironhew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
.turnin 733 >> Turn in Scrounging
.turnin 706 >> Turn in Fiery Blaze Enchantments
step
#requires boss
.goto Badlands,61.93,54.26
.target Garek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
.turnin 732 >> Turn in Tremors of the Earth
step
#softcore
.goto Badlands,3.62,61.88,50,0
.goto Searing Gorge,72.34,55.47
.zone Searing Gorge >> Ride to Searing Gorge
step
#softcore
#completewith next
.goto Searing Gorge,63.40,60.83
.deathskip >> Once you get to Searing Gorge, die and respawn at Thorium Point
step
#softcore
.goto Searing Gorge,37.94,30.74
.fp Searing Gorge>>Get the Searing Gorge Flight Path
step << Druid
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Mage
>>Teleport to Ironforge
.goto Ironforge,26.30,6.73
.trainer >> Train your class spells
step << Mage
#completewith next
.goto Ironforge,31.33,27.82
>>Buy Runes of Teleportation from Ginny if needed
.collect 17031,10
step << Warlock
#softcore
.zone Loch Modan >> If you didn't abandon the Panther and Tiger quests earlier, Hearth to Loch Modan. If you did, Fly to Loch Modan
step << !Warlock
.hs >> Hearth back to Loch Modan
>> Buy food/water if needed
step << Warlock
#hardcore
#completewith next
.zone Loch Modan >> Run Back to Loch Modan
step << Warlock
#hardcore
.goto Loch Modan,65.93,65.62
.target Prospector Ironband
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 739 >> Turn in Murdaloc
step
.goto Loch Modan,37.06,49.37
.target Ghak Healtouch
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
.turnin 2500 >> Turn in Badlands Reagent Run
step
.goto Loch Modan,65.93,65.62
.target Prospector Ironband
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
.turnin 739 >> Turn in Murdaloc
step
#softcore
#completewith next
.goto Loch Modan,68.47,62.82
.deathskip >> Die on purpose and respawn at Thelsamar
step
.goto Loch Modan,33.94,50.95
.fly Ironforge>> Fly to Ironforge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
<< Alliance
#name 41-43 STV/Swamp of Sorrows
#somname 41-44 STV/Swamp of Sorrows
#next 43-44 Tanaris << !Warlock
#next 43-44 Tanaris/Dustwallow << Warlock
step
#sticky
.bankwithdraw 3684,3660,5826,4502 >> Withdraw the following items from your bank:
>>Perenolde Tiara
>>Tomes of Alterac
>>Kravel's Scheme
>>Sample Elven Gem

step
#completewith start
.trainer >> Visit your class trainer
>>Make sure your pet has Frost Resistance maxed out << Hunter
step
#completewith start
.goto Ironforge,75.32,50.92,40,0
.zone Stormwind City >> Take the tram to Stormwind
step
.goto Stormwind City,74.00,30.23
.target Count Remington Ridgewell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
.turnin 543 >> Turn in The Perenolde Tiara
step
.goto Stormwind City,74.16,7.49
.target Milton Sheaf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
.turnin 542 >> Turn in Return to Milton
.isOnQuest 542
step << skip
#era/som
.goto Stormwind City,41.52,64.38
>> Run upstairs and turn in Mazen's Behest
.target Mazen Mac'Nadir
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazen Mac'Nadir|r
.accept 1363 >> Accept Mazen's Behest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Dellis|r
.turnin 1363 >> Turn in Mazen's Behest
.target Acolyte Dellis
.accept 1364 >> Accept Mazen's Behest
step
.goto Stormwind City,37.52,81.65
.target High Sorcerer Andromath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
.accept 1477 >> Accept Vital Supplies
step << Warlock
.goto Stormwind City,53.57,64.79
.home >> Set your Hearthstone to Stormwind
step << Warlock
#completewith next
.goto Stormwind City,66.20,62.40
.fly Westfall>> Fly to Westfall
step << Warlock
.goto Stranglethorn Vale,35.55,10.54
>> Run to Stranglethorn Vale
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.accept 193 >> Accept Panther Mastery
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.accept 196 >> Accept Raptor Mastery
step << Warlock
.hs >> Hearth to Stormwind
>> Buy food/water if needed
.zoneskip Stormwind City
step
#label start
.goto Stormwind City,66.20,62.40
.fly Booty Bay>> Fly to Booty Bay
step
.goto Stranglethorn Vale,26.94,77.20
.target Krazek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.turnin 1116 >> Turn in Dream Dust in the Swamp
step
.goto Stranglethorn Vale,26.99,77.12
.target Kebok
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.accept 209 >> Accept Skullsplitter Tusks
step
.goto Stranglethorn Vale,27.17,77.00
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 669 >> Turn in Sunken Treasure
step
.goto Stranglethorn Vale,27.28,77.52
>>Head to the middle floor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
.turnin 603 >> Turn in Ansirem's Key
.target Catelyn the Blade
.accept 610 >> Accept "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,27.11,77.21
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.accept 600 >> Accept Venture Company Mining
.accept 621 >> Accept Zanzil's Secret
step
.goto Stranglethorn Vale,27.11,77.21
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1118 >> Turn in Back to Booty Bay
.isOnQuest 1118
step
.goto Stranglethorn Vale,27.04,77.31
.home >> Set your Hearthstone to Booty Bay
step
.goto Stranglethorn Vale,26.75,76.38
.target Privateer Bloads
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.accept 617 >> Accept Akiris by the Bundle
step
.goto Stranglethorn Vale,27.78,77.06
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 606 >> Accept Scaring Shaky
step
.goto Stranglethorn Vale,28.29,77.59
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.accept 628 >> Accept Excelsior
step
.goto Stranglethorn Vale,28.09,76.21
.target First Mate Crazz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.accept 595 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.38,69.41
>>Click on the |cRXP_PICK_map|r on top of a barrel
.turnin 595 >> Turn in The Bloodsail Buccaneers
.accept 597 >> Accept The Bloodsail Buccaneers
>> Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r
.complete 610,1
step
.goto Stranglethorn Vale,28.09,76.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
.turnin 597 >> Turn in The Bloodsail Buccaneers
.target First Mate Crazz
.accept 599 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.28,77.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
.turnin 610 >> Turn in "Pretty Boy" Duncan
.target Catelyn the Blade
.accept 611 >> Accept The Curse of the Tides
step << !Warlock
.goto Stranglethorn Vale,26.92,77.34
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.accept 587 >> Accept Up to Snuff
step
.goto Stranglethorn Vale,27.17,77.00
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 599 >> Turn in The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,28.59,75.89
.target Dizzy One-Eye
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.accept 576 >> Accept Keep An Eye Out
step
.goto Stranglethorn Vale,33.58,66.24
>> Kill |cRXP_LOOT_gorillas|r
>>Save Gorilla Fangs for later
.complete 606,1
step
.goto Stranglethorn Vale,31.45,42.46
>> Do Raptor Mastery
.complete 196,1
step
.goto Stranglethorn Vale,28.73,44.84
>> Kill |cRXP_LOOT_Tethis|r if you have the associated quest, skip this step otherwise
.complete 197,1
.isOnQuest 197
step
.goto Stranglethorn Vale,41.65,43.69
>> Kill goblins
.complete 600,1
step
.goto Stranglethorn Vale,45.70,32.62
>> Kill |cRXP_LOOT_doctors/mystics|r for |cRXP_LOOT_Skullsplitter Tusks|r
.complete 205,1
.complete 209,1
step
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>> Look for |cRXP_LOOT_Bhag'thera|r with eagle eye << Hunter
>>Bhag'thera can spawn north or west of the ogre mound
.complete 193,1
.unitscan BHAG'THERA
step
.goto Stranglethorn Vale,49.30,4.98
>> Go deep into the cave north
.complete 202,1
.complete 202,2
.complete 202,3
>>You have to solo an elite at the end, skip it if you have to
step
.goto Stranglethorn Vale,37.83,3.56
.target Brother Nimetz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
.turnin 205 >> Turn in Troll Witchery
step
.goto Stranglethorn Vale,38.04,3.01
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
.turnin 202 >> Turn in Colonel Kurzen
.isQuestComplete 202
step
.goto Stranglethorn Vale,35.55,10.54
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
.turnin 193 >> Turn in Panther Mastery
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 196 >> Turn in Raptor Mastery
.target Hemet Nesingwary
.accept 197 >> Accept Raptor Mastery
step
.goto Stranglethorn Vale,29.57,23.88
>> Look for the |cRXP_LOOT_Elder Saltwater Crocodile|r along the northwestern coast
.complete 628,1
.unitscan Elder Saltwater Crocolisk
step
.goto Stranglethorn Vale,24.96,23.59
>> Use Catelyn's Blade at the altar underwater
>>Kill Gazban
.complete 611,1
step
.hs >> Hearth back to Booty Bay
>> Buy food/water if needed
step
.goto Stranglethorn Vale,27.11,77.21
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 600 >> Turn in Venture Company Mining
step
.goto Stranglethorn Vale,26.99,77.12
.target Kebok
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
.turnin 209 >> Turn in Skullsplitter Tusks
step << Warlock
.goto Stranglethorn Vale,26.92,77.34
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.accept 587 >> Accept Up to Snuff
step
.goto Stranglethorn Vale,27.17,77.00
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.accept 604 >> Accept The Bloodsail Buccaneers
.target Baron Revilgaz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
.turnin 611 >> Turn in The Curse of the Tides
step
#completewith start2
.bankwithdraw 6065 >> Withdraw Khadgar's Essays on Dimensional Convergence if you have it
step
#softcore
#completewith start2
+ Withdraw the Green Hills pages from your bank and try to buy the missing pages from the Auction House
>>Ch.1: 1,4,6,8
>>Ch.2: 10,11,14,16
>>Ch.3: 18,20,21,24
>>Ch.4: 25,26,27
step
#hardcore
#completewith start2
+ Withdraw the Green Hills pages from your bank
>>Ch.1: 1,4,6,8
>>Ch.2: 10,11,14,16
>>Ch.3: 18,20,21,24
>>Ch.4: 25,26,27
step
.goto Stranglethorn Vale,26.89,73.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
.turnin 606 >> Turn in Scaring Shaky
.target "Shaky" Phillipe
.accept 607 >> Accept Return to MacKinley
step
.goto Stranglethorn Vale,27.78,77.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 607 >> Turn in Return to MacKinley
.target "Sea Wolf" MacKinley
.accept 609 >> Accept Voodoo Dues
step
#label start2
.goto Stranglethorn Vale,28.29,77.59
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
.turnin 628 >> Turn in Excelsior
step
#completewith Eye
.goto Stranglethorn Vale,26.92,82.77,0
>> Kill pirates. Loot them for Snuff
.complete 587,1
step
#completewith Cortellos
.goto Stranglethorn Vale,29.98,89.34,0
>> Kill pirates. Loot them for Dizzy's Eye
.complete 576,1
step
.goto Stranglethorn Vale,27.27,62.11
>> Kill |cRXP_LOOT_Nagas|r. Loot them for |cRXP_LOOT_Akiris Reeds|r
.complete 617,1
step
.goto Stranglethorn Vale,27.14,83.04
.complete 604,1
>> Kill |cRXP_ENEMY_Swashbucklers|r. Look for the |cRXP_PICK_charts/orders|r next to the tents or next to the small rowboat
.complete 604,2
.complete 604,3
step
#label Cortellos
.goto Stranglethorn Vale,29.91,89.38,0
.goto Stranglethorn Vale,33.6,88.3,0
.goto Stranglethorn Vale,30.6,92.7,0
>>Look for a small |cRXP_PICK_parchment|r on the ground that can spawn inside one of the 3 ships
>> Use eagle eye to find it first << Hunter
>>Right click the |cRXP_PICK_parchment|r and accept the quest from the item in your bag
.collect 4056,1,624
.accept 624 >> Accept Cortello's Riddle
step
#label Eye
.goto Stranglethorn Vale,26.92,82.77
>> Kill |cRXP_LOOT_pirates|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
.complete 576,1
step
.goto Stranglethorn Vale,26.92,82.77
>> Kill |cRXP_LOOT_pirates|r. Loot them for |cRXP_LOOT_Snuff|r
.complete 587,1
step
#sticky
#label zanzil
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>Kill |cRXP_LOOT_Zanzil|r enemies
.complete 621,1
step
.goto Stranglethorn Vale,39.99,58.24
>> Kill |cRXP_LOOT_Chucky "Ten Thumbs"|r
.complete 609,3
step
.goto Stranglethorn Vale,34.92,51.84
>> Kill |cRXP_LOOT_Jon-Jon the Crow|r
.complete 609,1
step
.goto Stranglethorn Vale,35.26,51.28
>> Kill |cRXP_LOOT_Maury "Club Foot" Wilkins|r
.complete 609,2
step
#requires zanzil
.goto Stranglethorn Vale,28.73,44.84
>>|cRXP_LOOT_Tethis|r spawns in a random location around this area
.complete 197,1
step
.goto Stranglethorn Vale,35.65,10.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 197 >> Turn in Raptor Mastery
.target Hemet Nesingwary
.accept 208 >> Accept Big Game Hunter
step
.goto Stranglethorn Vale,38.20,35.57
>> Kill |cRXP_LOOT_King Bangalash|r
>>|cRXP_WARN_Try to stun/fear King Bangalash just before he hits 50% health, as it will prevent 2 adds from spawning|r
.complete 208,1
>>This quest can be hard to solo, skip it if you have to
step
.goto Stranglethorn Vale,35.65,10.80
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
.turnin 208 >> Turn in Big Game Hunter
.isQuestComplete 208
step
#completewith next
>>Turn in the journal pages at the Nesinguary camp
.target Barnil Stonepot
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
.turnin 338 >> Turn in The Green Hills of Stranglethorn
>>Skip this step if you don't have all the chapters
step
.goto Duskwood,75.77,46.15
>> Run to Duskwood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watchmaster Sorigal|r
.turnin 1477 >> Turn in Vital Supplies
.target Watchmaster Sorigal
.accept 1395 >> Accept Supplies for Nethergarde
step
#completewith next
.goto Duskwood,88.47,41.00,50 >> Travel to Deadwind Pass
step
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50 >> Travel to Swamp of Sorrows
>>Nethergarde supplies has a 1hr timer, be mindful of that
step
.goto Swamp of Sorrows,22.87,48.18
>>Click on the small |cRXP_PICK_scroll|r under the bridge
.turnin 624 >> Turn in Cortello's Riddle
.isOnQuest 624
step
.goto Swamp of Sorrows,22.87,48.18
>>Click on the small |cRXP_PICK_scroll|r under the bridge
.accept 625 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
step
#completewith mazens
>> Kill all |cRXP_ENEMY_swamp creatures|r you see
.complete 1364,1
.isOnQuest 1364
step
#era/som
.goto Swamp of Sorrows,26.74,59.82
.target Watcher Biggs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.accept 1398 >> Accept Driftwood
step
#era/som
#completewith next
.goto Swamp of Sorrows,76.47,5.11
>> Loot 8 pieces of |cRXP_PICK_driftwood|r along the coast
.complete 1398,1
step
#era/som
.goto Swamp of Sorrows,76.47,5.11
>> Kill |cRXP_LOOT_crabs|r along the coast
.complete 1258,1
.isOnQuest 1258
step
#era/som
#label mazens
.goto Swamp of Sorrows,91.91,69.08
>> Finish off |cRXP_PICK_driftwood|r
.complete 1398,1
.isOnQuest 1398
step
.goto Swamp of Sorrows,14.97,37.31
>> Finish off Mazen's Behest
.complete 1364,1
.isOnQuest 1364
step
#era/som
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
.turnin 1398 >> Turn in Driftwood
.target Watcher Biggs
.accept 1425 >> Accept Deliver the Shipment
step
#completewith next
.goto Blasted Lands,51.98,7.43
.zone Blasted Lands >> Run to Blasted Lands
step
.goto Swamp of Sorrows,54.37,93.08
.target Quartermaster Lungertz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
.turnin 1395 >> Turn in Supplies for Nethergarde
step
.goto Swamp of Sorrows,54.37,93.08
.target Quartermaster Lungertz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
.turnin 1425 >> Turn in Deliver the Shipment
.isOnQuest 1425
step
.goto Swamp of Sorrows,56.02,89.84
.target Watcher Mahar Ba
>>Talk to |cRXP_FRIENDLY_Watcher Mahar Ba|r
.turnin 1364 >> Turn in Mazen's Behest
.isQuestComplete 1364
step
#sticky
.goto Blasted Lands,65.54,24.34
.abandon 1364 >> Abandon Mazen's Behest
step
#completewith next
.goto Blasted Lands,65.54,24.34
.fp Blasted Lands>> Get the Blasted Lands Flight Path
step
.goto Blasted Lands,65.54,24.34
.fly Booty Bay>> Fly to Booty Bay
step
.goto Stranglethorn Vale,26.92,77.34
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
.turnin 587 >> Turn in Up to Snuff
.target Krazek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
.accept 2864 >> Accept Tran'rek
step
.goto Stranglethorn Vale,27.17,77.00
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 604 >> Turn in The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 621 >> Turn in Zanzil's Secret
.target Crank Fizzlebub
.accept 1119 >> Accept Zanzil's Mixture and a Fool's Stout
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
.isQuestTurnedIn 1118
step
.goto Stranglethorn Vale,27.11,77.21
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 621 >> Turn in Zanzil's Secret
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.accept 580 >> Accept Whiskey Slim's Lost Grog
step
.goto Stranglethorn Vale,26.75,76.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
.turnin 617 >> Turn in Akiris by the Bundle
.target Privateer Bloads
.accept 623 >> Accept Akiris by the Bundle
step
#sticky
.bankdeposit 2799,4098 >> Deposit the following items:
>>Gorilla Fangs
>>Carfully folded note
step
#sticky
.bankwithdraw 5862 >> Withdraw the following items:
>>Seaforium Booster
step
.goto Stranglethorn Vale,27.78,77.06
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.accept 2872 >> Accept Stoley's Debt
step
.goto Stranglethorn Vale,27.78,77.06
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 609 >> Turn in Voodoo Dues
step
.goto Stranglethorn Vale,28.59,75.89
.target Dizzy One-Eye
>>Talk to |cRXP_FRIENDLY_Dizzy One-Eye|r
.turnin 576 >> Turn in Keep An Eye Out
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
<< Alliance !Warlock
#name 43-44 Tanaris
#somname 44-45 Tanaris
#next 44-48 Feralas
step
.goto The Barrens,63.08,37.16
.fly Theramore>> Fly to Theramore
step
.goto The Barrens,71.16,81.53
.target Privateer Groy
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Groy|r
.turnin 623 >> Turn in Akiris by the Bundle
step
.goto Dustwallow Marsh,66.33,45.46
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1258 >> Turn in ... and Bugs
.isQuestComplete 1258
step
.goto Dustwallow Marsh,66.59,45.22
.home >> Set your Hearthstone to Theramore
step
#completewith next
.goto Dustwallow Marsh,55.62,50.11,60 >> Swim to the hill west
step
.goto Dustwallow Marsh,31.1,66.1
.turnin 625 >> Turn in Cortello's Riddle
.accept 626 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
step << Druid
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Mage
>>Teleport to Ironforge
.goto Ironforge,26.30,6.73
.trainer >> Train your class spells
step << Mage
#completewith next
.goto Ironforge,31.33,27.82
>>Buy Runes of Teleportation from Ginny if needed
.collect 17031,10
step
#completewith next
.hs >> Hearth back to Theramore
>> Buy food/water if needed
.isOnQuest 626
step
#completewith next
.goto Dustwallow Marsh,67.47,51.30
.fly Tanaris>> Fly to Tanaris
step
.goto Tanaris,52.46,28.51
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1690 >> Accept Wastewander Justice
.target Spigot Operator Luglunket
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1707 >> Accept Water Pouch Bounty
step << Hunter
.goto Tanaris,52.25,28.00
.stable >> Stable your pet
step
.goto Tanaris,52.35,26.90
.target Curgle Cranklehop
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 3022 >> Accept Handle With Care
step
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2864 >> Turn in Tran'rek
step
#label pet1
.goto Tanaris,50.96,27.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
.turnin 1188 >> Turn in Safety First
.target Shreev
.accept 1189 >> Accept Safety First
step << Hunter
#completewith st2
.train 23111 >> Tame a Starving Blisterpaw just outside Gadgetzan and try to learn Dash 2 while you run through Thousand Needles
step
.goto Thousand Needles,78.06,77.12
>> Run to Shimmering Flats
.target Fizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1137 >> Turn in News for Fizzle
step
.goto Thousand Needles,77.78,77.26
.target Kravel Koalbeard
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.isQuestTurnedIn 1118
step
.goto Thousand Needles,80.32,76.09
.target Razzeric
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1189 >> Turn in Safety First
step
.goto Thousand Needles,80.17,75.88
.target Pozzik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1190 >> Accept Keeping Pace
step
#completewith next
.goto Tanaris,54.00,7.63,15,0
.goto Tanaris,54.00,7.63,0
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r
.turnin 1191 >> Talk with Zamek to create a diversion
.timer 30,Keeping Pace RP
step
.goto Tanaris,52.36,7.88
>>Click on the unguarded |cRXP_PICK_plans|r inside the metal hut
.turnin 1190 >> Turn in Keeping Pace
.accept 1194 >> Accept Rizzle's Schematics
step
.goto Thousand Needles,77.78,77.26
.target Kravel Koalbeard
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1120 >> Accept Get the Gnomes Drunk
.isQuestTurnedIn 1118
step
.goto Thousand Needles,77.56,76.94
.target Gnome Pit Boss
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
.turnin 1120 >> Turn in Get the Gnomes Drunk
.isQuestTurnedIn 1118
step
.goto Thousand Needles,77.78,77.26
.target Kravel Koalbeard
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.accept 1122 >> Accept Report Back to Fizzlebub
.isQuestTurnedIn 1118
step
.goto Thousand Needles,80.17,75.88
.target Pozzik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1194 >> Turn in Rizzle's Schematics
step
#sticky
.destroy 5866 >> Throw away the Sample of Indurium Ore
step
.goto Tanaris,50.50,18.52
.zone Tanaris >> Run back to Tanaris
step << Hunter
#label st2
.stable >> Withdraw your main pet from the stable
step
#era/som
#completewith end
>> Kill |cRXP_LOOT_vultures|r as you quest through tanaris, don't go out of your way to finish this quest
.complete 1452,1
.isOnQuest 1452
step
#completewith PortQ
>>Kill |cRXP_LOOT_Wastewanders|r en route to Steamwheedle Port. Loot them for |cRXP_LOOT_Water Pouches|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1
.complete 1690,2
.complete 1707,1
step
.goto Tanaris,66.55,22.26
.target Haughty Modiste
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >> Accept Pirate Hats Ahoy!
step
.goto Tanaris,66.98,22.35
.target Yeh'kinya
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3520 >> Accept Screecher Spirits
step
#label PortQ
.goto Tanaris,67.05,23.89
.target Security Chief Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.accept 8366 >> Accept Southsea Shakedown
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
.turnin 2872 >> Turn in Stoley's Debt
.target Stoley
.accept 2873 >> Accept Stoley's Shipment
step
>>Kill |cRXP_LOOT_Wastewanders|r. Loot them for |cRXP_LOOT_Water Pouches|r
.goto Tanaris,63.2,34.0
.complete 1690,1
.complete 1690,2
.complete 1707,1
step << Hunter
.goto Tanaris,52.70,45.92
.target Marvon Rivetseeker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.accept 3161 >> Accept Gahz'ridian
step << Hunter
.goto Tanaris,47.31,65.14
>>Use the helmet provided to find the |cRXP_PICK_small patches of sand|r around the ogre ruins southwest
.complete 3161,1
step << Hunter
.goto Tanaris,52.70,45.92
.target Marvon Rivetseeker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3161 >> Turn in Gahz'ridian
step
#label end
.goto Tanaris,52.46,28.51
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1690 >> Turn in Wastewander Justice
.target Spigot Operator Luglunket
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1707 >> Turn in Water Pouch Bounty
step
.goto Tanaris,52.4,28.8
.bankdeposit 5807,6257 >> Deposit the following items in your bank:
>>Fool's Stout Report
>>Roc Gizzard (if you have it)
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
<< Alliance Warlock
#name 43-44 Tanaris/Dustwallow
#somname 44-45 Tanaris/Dustwallow
#next 44-48 Feralas
step
.goto Tanaris,51.01,29.35
.fly Theramore>> Fly to Theramore
step
.goto The Barrens,71.16,81.53
.target Privateer Groy
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Groy|r
.turnin 623 >> Turn in Akiris by the Bundle
step
.goto Dustwallow Marsh,66.33,45.46
.target Morgan Stern
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
.turnin 1258 >> Turn in ... and Bugs
.isQuestComplete 1258
step
.goto Dustwallow Marsh,66.59,45.22
.home >> Set your Hearthstone to Theramore
step
.goto Dustwallow Marsh,67.47,51.30
.fly Tanaris >> Fly to Tanaris
step
.goto Tanaris,52.46,28.51
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1690 >> Accept Wastewander Justice
.target Spigot Operator Luglunket
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.accept 1707 >> Accept Water Pouch Bounty
step
.goto Tanaris,52.35,26.90
.target Curgle Cranklehop
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.accept 3022 >> Accept Handle With Care
step
.goto Tanaris,51.56,26.75
.target Tran'rek
>>Talk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 2864 >> Turn in Tran'rek
step
.goto Tanaris,50.96,27.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
.turnin 1188 >> Turn in Safety First
.target Shreev
.accept 1189 >> Accept Safety First
step
#era/som
#sticky
#completewith tend
>> Kill |cRXP_LOOT_vultures|r as you quest through tanaris, don't go out of your way to finish this quest
.complete 1452,1
step
#completewith next
>>Kill |cRXP_LOOT_Wastewanders|r en route to Steamwheedle Port. Loot them for |cRXP_LOOT_Water Pouches|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1
.complete 1690,2
.complete 1707,1
step
.goto Tanaris,66.55,22.26
.target Haughty Modiste
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.accept 8365 >> Accept Pirate Hats Ahoy!
step
.goto Tanaris,66.98,22.35
.target Yeh'kinya
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.accept 3520 >> Accept Screecher Spirits
step
.goto Tanaris,67.05,23.89
.target Security Chief Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.accept 8366 >> Accept Southsea Shakedown
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
.turnin 2872 >> Turn in Stoley's Debt
.target Stoley
.accept 2873 >> Accept Stoley's Shipment
step
>>Kill |cRXP_LOOT_Wastewanders|r. Loot them for |cRXP_LOOT_Water Pouches|r
.goto Tanaris,63.62,31.32
.complete 1690,1
.complete 1690,2
.complete 1707,1
step
#label tend
#requires wastewander
.goto Tanaris,52.46,28.51
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1690 >> Turn in Wastewander Justice
.target Spigot Operator Luglunket
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spigot Operator Luglunket|r
.turnin 1707 >> Turn in Water Pouch Bounty
step
.goto Thousand Needles,78.06,77.12
>> Run to Shimmering Flats
.target Fizzle Brassbolts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
.turnin 1137 >> Turn in News for Fizzle
step
.goto Thousand Needles,77.78,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
.turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.target Kravel Koalbeard
.accept 1120 >> Accept Get the Gnomes Drunk
.target Gnome Pit Boss
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
.turnin 1120 >> Turn in Get the Gnomes Drunk
.accept 1122 >> Accept Report Back to Fizzlebub
.isQuestTurnedIn 1118
step
.goto Thousand Needles,80.32,76.09
.target Razzeric
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
.turnin 1189 >> Turn in Safety First
step
.goto Thousand Needles,80.17,75.88
.target Pozzik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.accept 1190 >> Accept Keeping Pace
step
#completewith next
.goto Tanaris,54.00,7.63,15,0
.goto Tanaris,54.00,7.63,0
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r
.turnin 1191 >> Talk with Zamek to create a diversion
.timer 30,Keeping Pace RP
step
.goto Tanaris,52.36,7.88
>>Click on the unguarded |cRXP_PICK_plans|r inside the metal hut
.turnin 1190 >> Turn in Keeping Pace
.accept 1194 >> Accept Rizzle's Schematics
step
.goto Thousand Needles,80.17,75.88
.target Pozzik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
.turnin 1194 >> Turn in Rizzle's Schematics
step
#sticky
.destroy 5866 >> Throw away the Sample of Indurium Ore
step
.hs >> Hearth back to Theramore
>> Buy food/water if needed
step
#completewith next
.goto Dustwallow Marsh,55.62,50.11,45 >> Swim to the hill west
step
.goto Thousand Needles,67.26,2.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 1799 >> Turn in Fragments of the Orb of Orahil
.target Tabetha
.accept 4961 >> Accept Cleansing of the Orb of Orahil
step
>> Kill the elite demon that spawns, just keep him feared to avoid getting hit
.complete 4961,1
step
.goto Thousand Needles,67.26,2.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
.turnin 4961 >> Turn in Cleansing of the Orb of Orahil
.target Tabetha
.accept 4976 >> Accept Returning the Cleansed Orb
step
.goto Dustwallow Marsh,31.10,66.14
.turnin 625 >> Turn in Cortello's Riddle
.accept 626 >> Accept Cortello's Riddle
.isQuestTurnedIn 624
step
#softcore
#completewith next
.deathskip >> Die and respawn at the Spirit Healer in Theramore
step
.goto Dustwallow Marsh,67.47,51.30
.fly Ratchet>> Fly to Ratchet
step
.goto The Barrens,62.50,35.44
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.turnin 4962 >> Turn in Shard of a Felhound
.turnin 4976 >> Turn in Returning the Cleansed Orb
step
.goto The Barrens,62.50,35.44
>> Wait for the roleplay sequence to end
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
.accept 4964 >> Accept The Completed Orb of Dar'Orahil
.turnin 4964 >> Turn in The Completed Orb of Dar'Orahil
step
.goto The Barrens,62.6,37.4
.bankdeposit 5807,6257 >> Deposit the following items in your bank:
>>Fool's Stout Report
>>Roc Gizzard (if you have it)
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
<< Alliance
#name 44-48 Feralas
#somname 45-47 Feralas
#next 48-49 Tanaris/Hinterlands
step
#era/som
#sticky
#completewith start
+ There is A LOT of grinding required in this segment, you can substitute some of that for Zul'Farrak/Uldaman/Maraudon runs
step
#hardcore
.goto The Barrens,63.08,37.16 << Warlock
.goto Tanaris,51.01,29.35 << !Warlock
.fly Thalanaar>>Fly to Thalanaar
step
#softcore
.goto The Barrens,63.08,37.16 << Warlock
.goto Tanaris,51.01,29.35 << !Warlock
.fly Feathermoon>> Fly to Feathermoon
step
#hardcore
>>Run to Feathermoon Stronghold. Be careful of the horde guards in Camp Mojache en route
.goto Feralas,30.2,43.3
.fp Feathermoon>>Get the Feathermoon Flight Path
step << Hunter
#completewith next
.goto Feralas,31.6,43.2
.stable >> Stable your pet
step << Hunter
.train 17266 >> Tame a wolf south of Feathermoon Stronghold and learn Bite 6
step
#sticky
>> Restock on supplies, very long grinding session ahead
.vendor >>Buy 5 stacks of food/water
>>Make sure you have 25 stacks of ammo << Hunter
step
.goto Feralas,30.63,42.70
.target Pratt McGrubben
>>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
.accept 2821 >> Accept The Mark of Quality
step
.goto Feralas,31.0,43.4
.home >> Set your Hearthstone to Feralas
step
.goto Feralas,30.37,46.17
.target Latronicus Moonspear
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.accept 4124 >> Accept The Missing Courier
.target Shandris Feathermoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
.accept 2866 >> Accept The Ruins of Solarsal
step
.goto Feralas,31.78,45.50
.target Troyas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.accept 2939 >> Accept In Search of Knowledge
.target Angelas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
.accept 2982 >> Accept The High Wilderness
step
#label start
.goto Feralas,31.86,45.13
>> Go upstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
.turnin 4124 >> Turn in The Missing Courier
.target Ginro Hearthkindle
.accept 4125 >> Accept The Missing Courier
step
.goto Feralas,26.30,52.33
>> Click on the |cRXP_PICK_gazebo|r
.turnin 2866 >> Turn in The Ruins of Solarsal
.accept 2867 >> Accept Return to Feathermoon Stronghold
step
.goto Feralas,30.27,46.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
.turnin 2867 >> Turn in Return to Feathermoon Stronghold
.target Shandris Feathermoon
.accept 3130 >> Accept Against the Hatecrest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 3130 >> Turn in Against the Hatecrest
.target Latronicus Moonspear
.accept 2869 >> Accept Against the Hatecrest
step
.goto Feralas,26.6,53.4
>>Kill any type of |cRXP_LOOT_naga|r. Loot them for their |cRXP_LOOT_Scales|r
.complete 2869,1
step
.goto Feralas,30.37,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2869 >> Turn in Against the Hatecrest
.target Latronicus Moonspear
.accept 2870 >> Accept Against Lord Shalzaru
step
#completewith next
.goto Feralas,26.1,67.3,35 >> Enter the naga cave
step
.goto Feralas,28.49,70.46
>>Kill |cRXP_LOOT_Lord Shalzaru|r. Loot him for the |cRXP_LOOT_Relic|r
.complete 2870,1
step
#era/som
#softcore
>> Grind mobs until you find a |cRXP_LOOT_Distress Beacon|r
.collect 8705,1,2766
.accept 2766 >> Accept Find OOX-22/FE!
step
.goto Feralas,27.58,69.02
.xp 45+87500 >> Do loops around the cave, grinding nagas to level 45+87500xp
step
#completewith next
.goto Feralas,38.72,75.07,40 >> Exit the naga cave and head southeast towards the ocean
.goto Feralas,41.24,74.54,40 >> Swim to the mainland
step
.goto Feralas,45.44,64.96
>> Click on the |cRXP_PICK_Wrecked Row Boat|r
.turnin 4125 >> Turn in The Missing Courier
.accept 4127 >> Accept Boat Wreckage
step << Druid
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Mage
>>Teleport to Ironforge
.goto Ironforge,26.30,6.73
.trainer >> Train your class spells
step << Mage
#completewith next
.goto Ironforge,31.33,27.82
>>Buy |cRXP_BUY_Runes of Teleportation|r from |cRXP_FRIENDLY_Ginny|r if needed
.collect 17031,10
step
.hs >> Hearth back to Feathermoon
>> Buy food/water if needed
step
>>Upstairs
.goto Feralas,31.86,45.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
.turnin 4127 >> Turn in Boat Wreckage
.target Ginro Hearthkindle
.accept 4129 >> Accept The Knife Revealed
step
>>Upstairs
.goto Feralas,32.44,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r
.turnin 4129 >> Turn in The Knife Revealed
.target Quintis Jonespyre
.accept 4130 >> Accept Psychometric Reading
step
>>Upstairs
.goto Feralas,31.86,45.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
.turnin 4130 >> Turn in Psychometric Reading
.target Ginro Hearthkindle
.accept 4131 >> Accept The Woodpaw Gnolls
step
.goto Feralas,30.37,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
.turnin 2870 >> Turn in Against Lord Shalzaru
.target Latronicus Moonspear
.accept 2871 >> Accept Delivering the Relic
step
.goto Feralas,30.07,45.05
.target Vestia Moonspear
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
.turnin 2871 >> Turn in Delivering the Relic
step
#completewith next
.goto Feralas,47.3,44.7,45 >> Swim to the mainland
step
#sticky
#completewith spirits
>> Kill |cRXP_ENEMY_wind serpents|r, use the quest item provided on their corpse
.complete 3520,1

step
#sticky
.goto Feralas,55.41,45.54
+Get close to the Dire Maul zone border until your General Chat changes to Dire Maul, this is a pre-requisite for a quest later
.link https://youtu.be/ayEKuXSUU2A >> Click here for video reference
step
#era/som
#sticky
#label kalimdor
.goto Feralas,58.8,59.0,0
>> Kill |cRXP_LOOT_Bears|r and |cRXP_LOOT_Apes|
.complete 1452,2
.complete 1452,3
step
.goto The Barrens,8.77,97.09
.goto The Barrens,7.47,99.05
>>Kill |cRXP_ENEMY_Yetis|r
.complete 2821,1
step
#completewith next
.goto The Barrens,8.77,97.09
>>Click on the Distress beacon in your bags
.accept 2766 >> Accept Find OOX-22/FE!
step
.goto The Barrens,8.77,97.09
>> Do the chicken escort. |cRXP_WARN_This quest is HARD, skip this quest if you have to|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
.turnin 2766 >> Turn in Find OOX-22/FE!
.target Homing Robot OOX-22/FE
.accept 2767 >> Accept Rescue OOX-22/FE!
.itemcount 8705,1
step
>> Escort the robot chicken
>>This quest is HARD, waves of 3/4 mobs will spawn along the way, |cRXP_WARN_don't be afraid to run away and skip this quest if it gets out of hand|r
.complete 2767,1
.isOnQuest 2767
step
#sticky
#label egg
.goto Feralas,56.64,75.89
>> Head south and look for Hippogryph nests by the mountains
>>Loot a |cRXP_PICK_Hyppogryph Egg|r
.collect 8564,1,2741,1
step
#completewith next
.goto Feralas,58.53,70.61,60,0
.goto Feralas,60.38,66.79
>>Kill |cRXP_ENEMY_Shamans|r. You may have to kill the other ogres in the area as they share spawns with Shamans
.complete 2982,2
step
#label spirits
.goto Feralas,61.29,55.71
>> Kill |cRXP_ENEMY_Ogres|r
.complete 2982,1
.complete 2982,3
step
.goto Feralas,58.53,70.61,60,0
.goto Feralas,60.38,66.79
>>Kill |cRXP_ENEMY_Shamans|r. You may have to kill the other ogres in the area as they share spawns with Shamans
.complete 2982,2
step
#requires egg
.goto Feralas,56.5,56.3,0
.goto Feralas,53.2,47.6,0
>> Finish off |cRXP_ENEMY_Screecher Spirits|r
.complete 3520,1
step
#requires kalimdor
.goto Feralas,65.94,45.65
>>Clear some mobs around the wooden cage nearby before accepting this escort quest
.target Kindal Moonweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
.accept 2969 >> Accept Freedom for All Creatures
step
>> Open the |cRXP_PICK_bamboo cage|r and protect the faerie dragons trying to escape
.complete 2969,1
step
.goto Feralas,65.94,45.65
.target Kindal Moonweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
.turnin 2969 >> Turn in Freedom for All Creatures
.target Jer'kai Moonweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
.accept 2970 >> Accept Doling Justice
step
.goto Feralas,69.0,39.0
.complete 2970,1
.complete 2970,2
.complete 2970,3
step
.goto Feralas,65.94,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
.turnin 2970 >> Turn in Doling Justice
.target Jer'kai Moonweaver
.accept 2972 >> Accept Doling Justice
step
.goto Feralas,73.31,56.30
>> Click on the 2 |cRXP_PICK_pouches hanging on the tree|r
.turnin 4131 >> Turn in The Woodpaw Gnolls
.accept 4135 >> Accept The Writhing Deep
step
#sticky
#label parcel
>> Click on the Undelivered Parcel in your bags
.collect 11463,1,4281
.goto Feralas,73.31,56.30
.accept 4281 >> Accept Thalanaar Delivery
step
.goto Feralas,72.06,63.71
>>Go deep into the silithid hive
.turnin 4135 >> Turn in The Writhing Deep
.accept 4265 >> Accept Freed from the Hive
step
>> Wait for the roleplay sequence to end
.complete 4265,1
step
#era
#requires parcel
>> Grind mobs until your Hearthstone is off cooldown
.hs >>Hearth to Feathermoon
>> Buy food/water if needed
step
#som
#requires parcel
.goto Feralas,89.63,46.56
.target Falfindel Waywarder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 4281 >> Turn in Thalanaar Delivery
step
#som
#completewith next
.goto The Barrens,33.57,90.34
.fly Feathermoon>>Fly to Feathermoon
step
.goto Feralas,31.86,45.13
>> Go upstairs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
.turnin 4265 >> Turn in Freed from the Hive
.target Ginro Hearthkindle
.accept 4266 >> Accept A Hero's Welcome
step
.goto Feralas,30.27,46.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
.turnin 4266 >> Turn in A Hero's Welcome
.target Shandris Feathermoon
.accept 4267 >> Accept Rise of the Silithid
step
#completewith next
.vendor >> Restock on food/water and supplies
step << !Warlock !Paladin
#som
#completewith next
.goto Feralas,26.19,67.51
.xp 47.75 >> At this point you should be close to having your mount money, if you're close to the 55g mark, grind |cRXP_ENEMY_nagas|r until you have enough to buy a mount, otherwise skip this step and fly to Teldrassil
step
#era
#completewith next
.goto Feralas,26.19,67.51
+Grind |cRXP_ENEMY_nagas|r until your Hearthstone cooldown is less than 10min, don't head out to Teldrassil without having your hearthstone ready to go back
>>Grind a little bit more if you need money for a mount (100g) << !Paladin !Warlock
step
.goto Feralas,30.2,43.3
.fly Teldrassil>>Fly to Teldrassil
step
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 3661 >> Accept Favored of Elune?
step
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>Talk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3022 >> Turn in Handle With Care
step
.goto Teldrassil,55.41,92.23
.target Daryn Lightwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.turnin 2939 >> Turn in In Search of Knowledge
step
.goto Teldrassil,55.22,91.45
>> Click on the |cRXP_PICK_green book|r on the ground
.accept 2940 >> Accept Feralas: A History
step
.goto Teldrassil,55.41,92.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.turnin 2940 >> Turn in Feralas: A History
.target Daryn Lightwind
.accept 2941 >> Accept The Borrower
step
.goto Teldrassil,25.90,64.74
>> Head to the temple of the moon
.target Gracina Spiritmight
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 4267 >> Turn in Rise of the Silithid
step
.goto Teldrassil,25.33,63.90
.target Tyrande Whisperwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
step << NightElf
#completewith next
.trainer >> Train skills in Darnassus
step << NightElf
#completewith next
.goto Darnassus,38.6,15.6
+Buy a mount if you have enough money
step << Human !Warlock !Paladin
#era
#completewith next
.goto Elwynn Forest,84.0,65.4
+If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Stormwind, head to the Eastvale Logging Camp in Elwynn Forest and buy a mount
step << Dwarf !Paladin
#era
#completewith next
.goto Dun Morogh,63.4,50.6
+If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Ironforge, head to the Amberstill Ranch in Dun Morogh and buy a mount
step << Gnome !Warlock
#era
#completewith next
.goto Dun Morogh,49.2,48.0
+If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Ironforge, head to Kharanos in Dun Morogh and buy a mount
step << Human !Warlock !Paladin
#som
#completewith next
.goto Elwynn Forest,84.0,65.4
+If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Stormwind, head to the Eastvale Logging Camp in Elwynn Forest and buy a mount
step << Dwarf !Paladin
#som
#completewith next
.goto Dun Morogh,63.4,50.6
+If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Ironforge, head to the Amberstill Ranch in Dun Morogh and buy a mount
step << Gnome !Warlock
#som
#completewith next
.goto Dun Morogh,49.2,48.0
+If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Ironforge, head to Kharanos in Dun Morogh and buy a mount
step
.hs >> Hearth back to Feralas
>> Buy food/water if needed
step
#era/som
.goto Feralas,26.19,67.51
.xp 47 >> Head back to the naga cave and grind to level 47
step
#era
#phase 4
.goto Feralas,26.19,67.51
.xp 48 >> Head back to the naga cave and grind to level 48
step
#era
#phase 1-3
.goto Feralas,26.19,67.51
.xp 48.5 >> Head back to the naga cave and grind to level 48 + 50%
step
#completewith next
.hs >> Hearth back to Feathermoon if your Hearthstone is off cooldown
>> Buy food/water if needed
step
.goto Feralas,31.82,45.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
.turnin 2982 >> Turn in The High Wilderness
.target Angelas Moonbreeze
.accept 3445 >> Accept The Sunken Temple
step
.goto Feralas,30.63,42.70
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 2821 >> Turn in The Mark of Quality
step << Hunter
.goto Feralas,30.64,43.43
.vendor >> Restock/resupply
>> Make sure to buy extra stacks of ammo for the next segment
step
#completewith next
.goto Feralas,30.2,43.3
.fly Thalanaar>> Fly to Thalanaar
step
.goto Feralas,89.63,46.56
.accept 4281 >> Accept Thalanaar Delivery
.target Falfindel Waywarder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
.turnin 4281 >> Turn in Thalanaar Delivery
step
.goto Feralas,89.50,45.85
.fly Tanaris>> Fly to Tanaris
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
#name 48-49 Tanaris/Hinterlands
#somname 47-49 Tanaris/Hinterlands
#next 49-50 Tanaris/Un'Goro
<< Alliance
step
#completewith start
.goto Tanaris,52.4,28.8
.bankwithdraw 6257,6258,6259 >> Withdraw Roc Gizzard from your bank if you have it
step << skip
.goto Tanaris,51.80,28.66
.target Marin Noggenfogger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
step
.goto Tanaris,52.35,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
.turnin 2941 >> Turn in The Borrower
.target Curgle Cranklehop
.accept 2944 >> Accept The Super Snapper FX
step
.goto Tanaris,52.30,27.00
>> Click on the Egg-O-Matic and turn in your Hippogryph Egg
>>(The Super Egg-O-Matic)
>>It's a small metal console sitting next to the teleporter looking thing
.turnin 2741 >> Turn in The Super Egg-O-Matic
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
step
#label start
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 992 >> Accept Gadgetzan Water Survey
step
#era/som
#sticky
#completewith vultures
>> Kill |cRXP_LOOT_vultures|r as you go
.complete 1452,1
step
.goto Tanaris,39.00,29.40
>> Use the dowsing widget at the small pond of water
.complete 992,1
step
.goto Tanaris,50.21,27.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 992 >> Turn in Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
.accept 82 >> Accept Noxious Lair Investigation
step
#label vultures
.goto Tanaris,31.61,45.45
>> Kill |cRXP_LOOT_silithid mobs|r
.complete 82,1
step
#era/som
.goto Tanaris,44.60,39.60
>> Finish off Rhapsody's Kalimdor Kocktail by killing |cRXP_LOOT_Vultures|r
.complete 1452,1
step << skip
#completewith next
>>Don't go out of your way to kill |cRXP_LOOT_Thistleshrub|r mobs for this quest, you'll have another opportunity to do it later, focus on killing |cRXP_LOOT_Dew Collectors|r
.complete 3362,1
.complete 3362,2
step << skip
.goto Tanaris,28.70,64.06
>> Kill |cRXP_LOOT_Dew Collectors|r. Loot them for the |cRXP_LOOT_Dew Gland|r
.complete 2605,1
step
#softcore
#completewith next
.deathskip >>Die and respawn at the Spirit Healer in Gadgetzan
step << skip
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2605 >> Turn in The Thirsty Goblin
.target Marin Noggenfogger
.accept 2606 >> Accept In Good Taste
step
.goto Tanaris,52.51,27.91
.home >> Set your Hearthstone to Gadgetzan
step << skip
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >> Turn in In Good Taste
.target Sprinkle
.accept 2641 >> Accept Sprinkle's Secret Ingredient
step
.goto Tanaris,50.88,26.96
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 82 >> Turn in Noxious Lair Investigation
step
.goto Tanaris,50.23,27.46
.target Senior Surveyor Fizzledowser
>>Talk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 10 >> Accept The Scrimshank Redemption
step
.goto Tanaris,51.01,29.35
.fly Theramore>> Fly to Theramore
step
#completewith next
.goto Dustwallow Marsh,71.51,56.36,20 >> Go to the end of the dock. Wait here for the boat
step
.goto Dustwallow Marsh,71.63,56.46
.zone Wetlands >> Take the boat to Menethil Harbor
step
#completewith next
.goto Wetlands,9.49,59.69
.fly Hinterlands>> Fly to The Hinterlands
step
.goto The Hinterlands,9.75,44.47
.target Gryphon Master Talonaxe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.accept 2988 >> Accept Witherbark Cages
step
.goto The Hinterlands,14.83,44.56
.target Fraggar Thundermantle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.accept 2880 >> Accept Troll Necklace Bounty
step
#sticky
#label feathers
>> Loot |cRXP_PICK_wildkin feathers|r on the ground
.complete 3661,1
step
#era/som
.goto The Hinterlands,26.94,48.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
.turnin 1452 >> Turn in Rhapsody's Kalimdor Kocktail
.target Rhapsody Shindigger
.accept 1469 >> Accept Rhapsody's Tale
step
.goto The Hinterlands,31.98,57.31
>> Click on the third cage
.complete 2988,3
step
#sticky
#label necklaces
>> Kill |cRXP_ENEMY_forest trolls|r
.complete 2880,1
step
>> Click on the first/second cage
.complete 2988,2
.goto The Hinterlands,23.12,58.82
.complete 2988,1
.goto The Hinterlands,23.28,58.81
step
#requires necklaces
.goto The Hinterlands,14.83,44.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.turnin 2880 >> Turn in Troll Necklace Bounty
.target Fraggar Thundermantle
.accept 2877 >> Accept Skulk Rock Clean-up
step
.goto The Hinterlands,9.75,44.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2988 >> Turn in Witherbark Cages
.target Gryphon Master Talonaxe
.accept 2989 >> Accept The Altar of Zul
step << skip
.goto The Hinterlands,40.63,59.65
>> Loot a |cRXP_PICK_purple mushroom|r underwater
.complete 2641,1
step
.goto The Hinterlands,48.86,68.50
>> Climb the stairs of the pyramid. Run toward the altar to complete the objective. |cRXP_WARN_Try to avoid fighting the elite mobs at the top|r
.complete 2989,1
step
.goto The Hinterlands,57.71,42.42
>> Do Skulk Rock Clean-up. Kill |cRXP_ENEMY_slimes|r.
.complete 2877,1
.complete 2877,2
step
#requires feathers
>> Grind until your Hearthstone cooldown is <6 minutes
>>If you managed to find a Distress beacon, right click it
.accept 485 >> Accept Find OOX-09/HL!
>>Skip this step if you haven't found it
step
.goto The Hinterlands,49.35,37.65
.target Homing Robot OOX-09/HL
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.turnin 485 >> Turn in Find OOX-09/HL!
.isOnQuest 485
step
.goto The Hinterlands,49.35,37.65
>> Start the escort quest
.target Homing Robot OOX-09/HL
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
.accept 836 >> Accept Rescue OOX-09/HL!
.isQuestTurnedIn 485
step
>> Escort the robot chicken
>>This quest is HARD, you'll have to fight waves of 3 mobs along the way, be ready to abandon this quest if things get out of hand
.complete 836,1
.isOnQuest 836
step
#sticky
#label turtle
.goto The Hinterlands,81.84,49.17,60,0
.goto The Hinterlands,74.46,68.87
>> Head up then down to the coast, find Gammerita and use the Super Snapper FX on her.
.complete 2944,1
.unitscan GAMMERITA
step
.goto The Hinterlands,78.94,76.24
>> Look for small |cRXP_PICK_blue bottles|r along the coast
.complete 580,1
step
#requires turtle
.goto The Hinterlands,80.78,46.82
.turnin 626 >> Turn in Cortello's Riddle
.isOnQuest 626
step
>> Grind mobs until your Hearthstone is off cooldown
.hs >>Hearth to back Tanaris
>> Buy food/water if needed
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 40-50
#classic
#name 49-50 Tanaris/Un'Goro
#next RestedXP Alliance 50-60\50-50 Stranglethorn Vale
<< Alliance
step
#sticky
.goto Tanaris,52.4,28.8
.bankdeposit 9328,9330,10819,3900,6287 >> Deposit the following items:
>>Wildkin Feather
>>Raschal's Report
>>Atal'ai Tablet Fragment (if you have it)
step
.goto Tanaris,52.81,27.40
.target Andi Lynn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.accept 5863 >> Accept The Dunemaul Compound
step
.goto Tanaris,51.84,27.02
>> Click on the wanted poster
.accept 2781 >> Accept WANTED: Caliph Scorpidsting
.accept 2875 >> Accept WANTED: Andre Firebeard
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
step
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 10 >> Accept The Scrimshank Redemption
step << skip
.goto Tanaris,51.80,28.66
.target Marin Noggenfogger
>>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
step << skip
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >> Turn in Sprinkle's Secret Ingredient
.target Sprinkle
.accept 2661 >> Accept Delivery for Marin
step << skip
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2661 >> Turn in Delivery for Marin
.target Marin Noggenfogger
.accept 2662 >> Accept Noggenfogger Elixir
.turnin 2662 >> Turn in Noggenfogger Elixir
step << skip
#completewith tStart
+ Make sure you carry 1 stack of noggenfogger with you at all times, buy 2 extra stacks and bank it
step
.goto Tanaris,52.46,28.51
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.accept 1691 >> Accept More Wastewander Justice
step << skip
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 3362 >> Turn in Thistleshrub Valley
.isQuestComplete 3362
step
#label tStart
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3445 >> Turn in The Sunken Temple
.target Marvon Rivetseeker
.accept 3444 >> Accept The Stone Circle << Hunter
.accept 3161 >> Accept Gahz'ridian << !Hunter
step
.goto Tanaris,61.76,38.16
.complete 1691,1
.complete 1691,2
.complete 1691,3
>> Kill |cRXP_LOOT_Caliph Scorpidsting|r, |cRXP_WARN_he patrols around the area with 2 stealthed mobs|r
.complete 2781,1
.unitscan Caliph Scorpidsting
step
#completewith next
.goto Tanaris,68.85,41.55,25 >> Head to Lost Rigger Cove
step
#sticky
#label Hats
>>Loot |cRXP_LOOT_pirates|r you kill in the area for their |cRXP_LOOT_hats|r
.complete 8365,1 
step
#sticky
#label Andre
>>Kill |cRXP_LOOT_Andre Firebeard|r. Loot him for his |cRXP_LOOT_head|r
.complete 2875,1 
step
#sticky
#completewith end
>>Loot the Ship Schedule from the footlockers that drop from pirates in the area. Don't start the quest for it yet
>>Use any Captain's Keys you get on the 2nd floor of the 2nd ship to the east
.collect 9250,1,2876 

step
.goto Tanaris,72.15,46.76
>> Loot |cRXP_PICK_Stoley's Shipment|r upstairs
.complete 2873,1
step
#requires Andre
>>Finish off killing the |cRXP_ENEMY_Southsea Pirates|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#hidewindow
#requires Hats
step
#era
#completewith next
>>Grind |cRXP_LOOT_pirates|r until you find a |cRXP_LOOT_distress beacon|r.
>>If you can't find the Distress Beacon by the time you are level 49, skip this step
>>Don't start the quest from the item yet
.collect 8623,1,351

step
#era
.xp 49 >> Grind to level 49
step
#som
#completewith console
>>If you loot/looted a Distress Beacon, accept the quest from it
.collect 8623,1,351
.accept 351 >> Accept Find OOX-17/TN!
step
#completewith next
.goto Tanaris,41.04,71.69,0
>> Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Enforcers|r if you run into them. You'll finish this quest later
.complete 5863,1
.complete 5863,2
step << !Hunter
.goto Tanaris,41.04,71.69
>> Equip the Gahz'Ridian Detector in your bag. Look for small |cRXP_PICK_patches of sand|r around the ogre ruins
.complete 3161,1
step
#completewith next
>> Re-equip your helmet
.goto Tanaris,54.63,70.75,20 >> Enter the eastern bug hole
step
#label console
.goto Tanaris,55.97,71.18
>>Loot the |cRXP_PICK_machine console|r on the ground
.complete 10,1
step
>>Click on the Distress Beacon if you happen to have one, otherwise, skip this step
.collect 8623,1,351
.itemcount 8623,1
.accept 351 >> Accept Find OOX-17/TN
step
.goto Tanaris,60.23,64.71
.target Homing Robot OOX-17/TN
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
.turnin 351 >> Turn in Find OOX-17/TN!
.isOnQuest 351
step
.goto Tanaris,60.23,64.71
>> Start the escort quest
.target Homing Robot OOX-17/TN
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
.accept 648 >> Accept Rescue OOX-17/TN!
.isQuestTurnedIn 351
step
>> Escort the robot chicken
>>This quest is HARD, you'll have to deal with waves of 3 mobs along the way, be ready to let the chicken die and abandon this quest if the situation spiral out of control
.complete 648,1
.isQuestTurnedIn 351
step
.itemcount 2876,1
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.accept 2876 >>Accept Ship Schedules
.turnin 2876 >>Turn in Ship Schedules
.turnin 8366 >>Turn in Southsea Shakedown
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
.turnin 2873 >> Turn in Stoley's Shipment
.target Stoley
.accept 2874 >> Accept Deliver to MacKinley
step
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r
.turnin 2875 >>Turn in WANTED: Andre Firebeard
.turnin 8366 >>Turn in Southsea Shakedown
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
.turnin 2873 >> Turn in Stoley's Shipment
.target Stoley
.accept 2874 >> Accept Deliver to MacKinley
step
.goto Tanaris,66.55,22.26
.target Haughty Modiste
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
.turnin 8365 >> Turn in Pirate Hats Ahoy!
step
.goto Tanaris,66.98,22.35
.target Yeh'kinya
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
.turnin 3520 >> Turn in Screecher Spirits
step << Hunter
#completewith next
.goto Tanaris,67.0,22.0
.vendor >> Buy arrows before leaving the port
step << Druid
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Mage
>>Teleport to Ironforge
.goto Ironforge,26.30,6.73
.trainer >> Train your class spells
step << Mage
#completewith next
.goto Ironforge,31.33,27.82
>>Buy |cRXP_BUY_Runes of Teleportation|r from Ginny if needed
.collect 17031,10
step
.hs >> Hearth back to Gadgetzan
>> Buy food/water if needed
step
.goto Tanaris,52.46,28.51
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
.turnin 1691 >> Turn in More Wastewander Justice
.turnin 2781 >> Turn in WANTED: Caliph Scorpidsting
step
.goto Tanaris,52.81,27.40
.target Andi Lynn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.accept 5863 >> Accept The Dunemaul Compound
step
.goto Tanaris,51.80,28.66
.target Marin Noggenfogger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.accept 2605 >> Accept The Thirsty Goblin
step
.goto Tanaris,50.21,27.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 10 >> Turn in The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
.accept 110 >> Accept Insect Part Analysis
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 110 >> Turn in Insect Part Analysis
.target Alchemist Pestlezugg
.accept 113 >> Accept Insect Part Analysis
step
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 3362 >> Accept Thistleshrub Valley
step
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.turnin 113 >> Turn in Insect Part Analysis
step << !Hunter
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3161 >> Turn in Gahz'ridian
.target Marvon Rivetseeker
.accept 3444 >> Accept The Stone Circle
step
#completewith next
.goto Tanaris,41.50,57.81
>>Kill |cRXP_ENEMY_Gor'marok|r
>>Be careful as he casts |cRXP_WARN_Mortal Strike, and thrashes|r
.complete 5863,3
step
.goto Tanaris,41.78,54.85
>> Kill |cRXP_ENEMY_Ogres|r
.complete 5863,1
.complete 5863,2
step
.goto Tanaris,41.50,57.81
>>Kill |cRXP_ENEMY_Gor'marok|r
>>Be careful as he casts |cRXP_WARN_Mortal Strike, and thrashes|r
.complete 5863,3
step
#sticky
#label gland
.goto Tanaris,28.70,64.06
>> Kill |cRXP_LOOT_Dew Collectors|r. Loot them for the |cRXP_LOOT_Dew Gland|r
.complete 2605,1
step
.goto Tanaris,28.70,64.06
.complete 3362,1
.complete 3362,2
step
#requires gland
.goto Un'Goro Crater,71.63,75.95
>> Run to Un'goro Crater
.target Torwa Pathfinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4289 >> Accept The Apes of Un'Goro
.accept 4290 >> Accept The Fare of Lar'korwi
step
#completewith Uend
+Save Un'Goro Soil, you will need 25 later
step
#sticky
#label crystals
>> As you quest through Un'Goro, loot 7 |cRXP_PICK_crystals|r of each color
.collect 11186,7,4284,1
.collect 11185,7,4284,1
.collect 11184,7,4284,1
.collect 11188,7,4284,1
step
.goto Un'Goro Crater,63.02,68.60
>> Click on the |cRXP_PICK_Wrecked Raft|r
.accept 3844 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,63.10,69.05
>> Click on the |cRXP_PICK_small pack|r underwater
.turnin 3844 >> Turn in It's a Secret to Everybody
.accept 3845 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,68.73,56.70
>> Loot the threshadon carcass
.complete 4290,1
step << skip
>> Run north to Marshal's Refuge
.goto Un'Goro Crater,44.23,11.58
.target Shizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.accept 4503 >> Accept Shizzle's Flyer
>>Skip this step if you're not yet level 49
step << skip
.goto Un'Goro Crater,42.94,9.63
.target Muigin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.accept 4141 >> Accept Muigin and Larion
step << skip
.goto Un'Goro Crater,43.49,7.42
.target Spark Nilminer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.accept 3882 >> Accept Roll the Bones
>>Skip this step if you're not yet level 49
step
#completewith next
>> Open the small pack in your inventory
.complete 3845,1
.complete 3845,2
.complete 3845,3
step
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3845 >> Turn in It's a Secret to Everybody
.target Linken
.accept 3908 >> Accept It's a Secret to Everybody
step
#sticky
.destroy 11108 >> Destroy the Faded Photograph
.destroy 3108 >> Destroy the Heavy Throwing Daggers << !Rogue
step
.goto Un'Goro Crater,45.23,5.83
.fp Un'Goro>> Get the Un'Goro Crater Flight Path
step << skip
#completewith Uend
>> Kill dinos as you quest - This step is going to be finished later, don't go out of your way to complete this
.complete 4503,1
.complete 4503,2
.complete 3882,1
.isOnQuest 4503
.isOnQuest 3882
step << skip
#sticky
#completewith lashers
.goto Un'Goro Crater,67.0,28.0,0
>> Kill level 48-50 Lashers in northeastern Un'goro
.complete 4141,1
step
.goto Un'Goro Crater,71.63,75.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4290 >> Turn in The Fare of Lar'korwi
.target Torwa Pathfinder
.accept 4291 >> Accept The Scent of Lar'korwi
step
.goto Un'Goro Crater,67.30,73.10,15,0
.goto Un'Goro Crater,66.6,66.7,15,0
.goto Un'Goro Crater,67.30,73.10,0
.goto Un'Goro Crater,66.6,66.7,0
>>Step on raptor nests and kill |cRXP_ENEMY_Lar'kowi Mates|r
.complete 4291,1
step
#label lashers
.goto Un'Goro Crater,71.63,75.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4291 >> Turn in The Scent of Lar'korwi
.target Torwa Pathfinder
.accept 4292 >> Accept The Bait for Lar'korwi
step << skip
.goto Un'Goro Crater,69.52,31.02
>> Finish off Muigin and Larion
.complete 4141,1
step
#label Uend
>> Grind mobs in Un'Goro until you find A Mangled Journal
.collect 11116,1,3884
.accept 3884 >> Accept Williden's Journal
step
#softcore
#requires crystals
.hs >> Hearth back to Tanaris
>>Alternatively you can run to tanaris, die on purpose and respawn at Gadgetzan
.zoneskip Tanaris
step
#hardcore
#requires crystals
.hs >> Hearth back to Tanaris
>> Buy food/water if needed
.zoneskip Tanaris
step
#sticky
.bankwithdraw 2799,4098,5807,3900,6287 >> Withdraw the following items:
>>Carefully Folded Note (if you have it)
>>Gorilla Fangs
>>Fool's Stout Report
>>Pupellyverbos Port
>>Atal'ai Tablet Fragment (if you have it)
step
#sticky
.bankdeposit 11568,11569,11570,11830,11018,11133,8594,11114,11831 >> Deposit the following items in your bank:
>>Torwa's Pouch
>>Webbed Diemetradon Scale
>>Webbed Pterrordax Scale
>>Dinosaur Bone
>>Un'Goro Soil
>>Linken's Training Sword
>>Insect Analysis Report
step
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2605 >> Turn in The Thirsty Goblin
.target Marin Noggenfogger
.accept 2606 >> Accept In Good Taste
step
.goto Tanaris,52.81,27.40
.target Andi Lynn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
.turnin 5863 >> Turn in The Dunemaul Compound
step
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 3362 >> Turn in Thistleshrub Valley
step
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2606 >> Turn in In Good Taste
.target Sprinkle
.accept 2641 >> Accept Sprinkle's Secret Ingredient
step
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
.accept 162 >> Accept Rise of the Silithid
step
.goto Tanaris,51.01,29.35
.fly Un'Goro Crater>> Fly to Un'Goro Crater
step
.goto Un'Goro Crater,43.94,7.13
.target Williden Marshal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.turnin 3884 >> Turn in Williden's Journal
step << skip
.goto Un'Goro Crater,42.94,9.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muigin|r
.turnin 4141 >> Turn in Muigin and Larion
.target Muigin
.accept 4142 >> Accept A Visit to Gregan
step
.goto Un'Goro Crater,41.91,2.69
.target J.D. Collie
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
step
#softcore
.goto Stormwind City,52.80,65.40
.home >> Use the website unstuck self service to teleport to Stormwind, get your training, and set your Hearthstone to Stormwind
>>OR
>>Fly to Ratchet and take the boat to Stranglethorn Vale
.zoneskip Stranglethorn Vale
step
#hardcore
#completewith next
.goto Un'Goro Crater,45.23,5.83
.fly Ratchet>> Fly to Ratchet
step
#hardcore
#completewith next
.goto The Barrens,63.64,38.61,40 >> Run to the Ratchet Dock
step
#hardcore
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> Take the Boat to Booty Bay
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 50-50 Stranglethorn Vale
#next 50-51 Searing Gorge
step
#completewith next
.fly Booty>> Fly or take the boat to Booty Bay
.zoneskip Stranglethorn Vale
step
#hardcore
.goto Stranglethorn Vale,26.69,73.61
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 8551 >> Accept The Captain's Chest
step
>>Head to the top floor of the inn
.goto Stranglethorn Vale,27.17,77.00
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.accept 608 >> Accept The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.11,77.21
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
.turnin 1122 >> Turn in Report Back to Fizzlebub
step
.goto Stranglethorn Vale,27.13,77.44
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
.turnin 580 >> Turn in Whiskey Slim's Lost Grog
step
#hardcore
.goto Stranglethorn Vale,27.04,77.31
.home >> Set your Hearthstone to Booty Bay
step
.goto Stranglethorn Vale,27.78,77.06
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
.turnin 2874 >> Turn in Deliver to MacKinley
step
.goto Stranglethorn Vale,27.60,76.73
.target Fin Fizracket
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.accept 348 >> Accept Stranglethorn Fever
step
.goto Stranglethorn Vale,28.35,76.35
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 2767 >> Turn in Rescue OOX-22/FE!
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.35,76.35
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 648 >> Turn in Rescue OOX-17/TN!
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.35,76.35
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.turnin 836 >> Turn in Rescue OOX-09/HL!
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.35,76.35
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
.accept 3721 >> Accept An OOX of Your Own
.turnin 3721 >> Turn in An OOX of Your Own
.isQuestTurnedIn 836
.isQuestTurnedIn 648
.isQuestTurnedIn 2767
step
#softcore
.goto Stranglethorn Vale,26.69,73.61
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 8551 >> Accept The Captain's Chest
step << !Warrior !Rogue !Paladin
#sticky
>> Look for |cRXP_ENEMY_Mok'rash|r, an elite giant at the giant goblin statue
>>Set up a slow trap near the goblin statue and kite him with cheetah << Hunter
>>Kill him by kiting in circles around the goblin statue
>>Fear him as much as you can, he's not immune to fear or slows << Priest/Warlock
>>Once he gets to around 60% hp, use Levitate to kite him back to Booty Bay << Priest
>>Only use ranged spells (root/starfire/moonfire) he hits HARD << Druid
>>Loot and right click The Monogrammed Sash
.collect 3985,1,8552
.accept 8552 >> Accept The Monogrammed Sash
>>This can be a very hard elite to solo, skip this step if you have to
.link https://www.youtube.com/watch?v=xw2mGnQaCQM >> Click here for video reference << Priest
.link https://www.twitch.tv/videos/850022146?t=04h16m26s >> Click here for video reference << !Priest
step
#completewith bottle
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
>> Loot the green bottles along the southeastern coast
.collect 4098,1,594
.accept 594 >> Accept Message in a Bottle
step
.goto Stranglethorn Vale,29.32,88.29
>> Kill |cRXP_ENEMY_Captain Keelhaul|r. He can be found on the second floor of the ship
.complete 608,2
step
.goto Stranglethorn Vale,30.58,90.63
>> Kill |cRXP_ENEMY_Fleet Master Firallon|r. He can be found on the second floor of the ship
.complete 608,3
step
#label bottle
.goto Stranglethorn Vale,32.87,88.20
>> Kill |cRXP_ENEMY_Captain Stillwater|r. He can be found on the second floor of the ship
.complete 608,1
step
.goto Stranglethorn Vale,36.29,83.22,60,0
.goto Stranglethorn Vale,36.69,77.51,60,0
.goto Stranglethorn Vale,41.59,76.88,60,0
.goto Stranglethorn Vale,35.28,72.67,60,0
.goto Stranglethorn Vale,37.08,68.55,60,0
.goto Stranglethorn Vale,37.23,65.05,60,0
.goto Stranglethorn Vale,38.66,61.78,60,0
>> Loot the |cRXP_PICK_green bottles|r along the coast of Jaguero Isle
>> If you can't find any, go back to the mainland and check there
.collect 4098,1,594
.accept 594 >> Accept Message in a Bottle
step
.goto Stranglethorn Vale,38.53,80.57
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.turnin 594 >> Turn in Message in a Bottle
step << Mage/Warlock/Hunter/Druid
.goto Stranglethorn Vale,38.53,80.57
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.accept 630 >> Accept Message in a Bottle
step << Mage/Warlock/Hunter/Druid
.goto Stranglethorn Vale,40.94,83.89
>> Kill |cRXP_ENEMY_King Mukla|r by running in circles around a big tree
>>Keep him feared, be careful as he also can fear you << Warlock
>>This can be a very difficult elite to solo, skip if you have to
.complete 630,1
.link https://www.twitch.tv/videos/850022146?t=04h30m47s >> Click here for video reference
step << Mage/Warlock/Hunter/Druid
.goto Stranglethorn Vale,38.53,80.57
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
.turnin 630 >> Turn in Message in a Bottle
.isQuestComplete 630
step
.goto Stranglethorn Vale,36.95,69.73
>> Kill |cRXP_ENEMY_Gorlash|r, the level 47 elite sea giant, try to kite him to the guards in town
>>Don't try to solo him if you don't have cooldowns ready/healing pots << Rogue/Warrior/Paladin
.complete 8551,1
step
.goto Stranglethorn Vale,35.27,60.42
>> Turn in 10 gorilla fangs to summon Mokk the savage, you'll have to deal with 3 waves of gorillas, you don't need to kill all the gorillas from the last wave, just kill Mokk, and loot his heart
>>The last wave is very dangerous, you have to deal with 6 level 41 gorillas, this quest can be very hard to solo
.complete 348,1
.link https://www.twitch.tv/videos/850022146?t=04h38m04s >> Click here for video reference
step
.goto Stranglethorn Vale,26.69,73.61
>> Go back to Booty Bay
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8551 >> Turn in The Captain's Chest
.isQuestComplete 8551
step
.goto Stranglethorn Vale,26.69,73.61
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.turnin 8552 >> Turn in The Monogrammed Sash
.isQuestComplete 8552
step
#sticky
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 615 >> Accept The Captain's Cutlass
.target Sprogger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprogger|r
.turnin 615 >> Turn in The Captain's Cutlass
.isQuestTurnedIn 8552
step
.goto Stranglethorn Vale,26.69,73.61
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
.accept 8553 >> Accept The Captain's Cutlass
.target Sprogger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprogger|r
.turnin 8553 >> Turn in The Captain's Cutlass
.isQuestTurnedIn 8552
step
.goto Stranglethorn Vale,27.60,76.73
.target Fin Fizracket
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
.turnin 348 >> Turn in Stranglethorn Fever
.isQuestComplete 348
step
.goto Stranglethorn Vale,27.17,77.00
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
.turnin 608 >> Turn in The Bloodsail Buccaneers
step
.fly Stormwind>> Fly to Stormwind
>>Hearth back to Stormwind instead if your hearthstone is set to Stormwind
.zoneskip Stormwind City
step
#softcore
.goto Stormwind City,53.61,59.77
>> Make sure you have 15 Silk Cloth in your bags before starting the next segment. Either take it from the bank if you saved it earlier, or buy some from the AH
.collect 4306,15,4449,1
step
#hardcore
.goto Stormwind City,53.61,59.77
>> Make sure you have 15 Silk Cloth in your bags before starting the next segment. Take it from the bank if you saved it earlier
.collect 4306,15,4449,1
step
#label SWHS
.goto Stormwind City,52.80,65.60
.home >> Set your Hearthstone to Stormwind
step << Druid
.goto Stormwind City,21.39,55.80
.trainer >> Train your class spells
step
#era/som
.goto Stormwind City,64.33,20.65
.target Brohann Caskbelly
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
.turnin 1469 >> Turn in Rhapsody's Tale
.isOnQuest 1469
step << Hunter
.trainer >> Train skills
.train 15150 >>Train Growl Rank 6
>>Retrain your pet, learn fire resistance rank 4 and shadow resistance rank 3
step << !Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> Take the Tram to Ironforge
Step << Mage
.zone Ironforge >> Teleport to Ironforge
step << !Druid
.goto Ironforge,69.88,82.90 << Hunter
.goto Ironforge,65.90,88.41 << Warrior
.goto Ironforge,50.34,5.67 << Warlock
.goto Ironforge,51.50,15.34 << Rogue
.goto Ironforge,25.21,10.75 << Priest
.goto Ironforge,27.17,8.57 << Mage
.goto Ironforge,24.55,4.46 << Paladin
.trainer >> Train your class spells
.goto Ironforge,52.7,6.1 << Warlock
.vendor >> Buy pet spellbooks if needed << Warlock
step
#hardcore
.goto Ironforge,55.50,47.70
.fly Thelsamar>> Fly to Thelsamar
step
#hardcore
.goto Loch Modan,25.34,67.27,40,0
.goto Loch Modan,24.76,70.59,30,0
.goto Loch Modan,25.10,72.98,30,0
.goto Loch Modan,26.11,75.42,30,0
.goto Loch Modan,23.27,81.30,30,0
.goto Loch Modan,22.82,84.81,30,0
.goto Loch Modan,19.59,87.23,30,0
.goto Loch Modan,20.37,91.08,30,0
.goto Loch Modan,22.33,91.55,30,0
.goto Loch Modan,22.87,94.92,30,0
.goto Searing Gorge,79.60,22.1
>>Use the mountain shortcut to get to Searing Gorge
.zone Searing Gorge >> Run to Searing Gorge
.link https://www.youtube.com/watch?v=oNFXup-DCM0 >> CLICK HERE
step
#hardcore
.goto Searing Gorge,32.60,32.60,40,0
.goto Searing Gorge,37.94,30.74
.fp Searing Gorge >> Get the Searing Gorge Flight Path
>>Do NOT hit the Horde Flight Master here
step
#softcore
#label end
.goto Ironforge,55.50,47.70
.fly Thorium Point>> Fly to Searing Gorge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 50-51 Searing Gorge
#next 51-51 Blasted Lands
step
#completewith next
>> Make sure you to keep all the Silk Cloth you find during this segment for a quest later
.collect 4306,15,4449,1
step
.goto Searing Gorge,38.58,27.80
>> Talk to Hansel Heavyhands
.target Hansel Heavyhands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tkkTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.accept 7723 >> Accept Curse These Fat Fingers
.accept 7724 >> Accept Fiery Menace!
step
.goto Searing Gorge,37.64,26.47
>> Click on the wanted board
.accept 7701 >> Accept WANTED: Overseer Maltorius << Warlock
.accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
step
.goto Searing Gorge,39.05,38.98
.target Kalaran Windblade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.accept 3441 >> Accept Divine Retribution
step
.goto Searing Gorge,39.05,38.98
>> Talk to Velarok Windblade
>>Go through his whole dialogue
.complete 3441,1
.skipgossip
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.turnin 3441 >> Turn in Divine Retribution
.target Kalaran Windblade
.accept 3442 >> Accept The Flawless Flame
step
#sticky
#label key
>>Kill any type of Dark Iron Dwarf
.collect 11818,1,4451
step
#sticky
#label flawlessflame
>> Make sure you prioritize Fire Elementals/Golems
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16
.complete 3442,1
.complete 3442,2
step
#completewith shaft
>> Kill Lava Spiders along the western edge of the map
.complete 7724,1
.goto Searing Gorge,28.8,63.2,0
>> Kill War Golems
.complete 7723,1
.goto Searing Gorge,34.2,46.4,0
step
#completewith steamsmith
>> Prioritize killing Steamsmiths around the cauldron whenever they respawn.
.complete 7728,1
.goto Searing Gorge,40.90,50.31,50,0
step
#completewith lookout
>> Kill Dark Iron Lookouts around the towers
.complete 7728,2
.goto Searing Gorge,34.08,53.99,0
.goto Searing Gorge,35.7,60.6,0
step
#requires flawlessflame
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.turnin 3442 >> Turn in The Flawless Flame
.target Kalaran Windblade
.accept 3443 >> Accept Forging the Shaft
step
.goto Searing Gorge,40.90,50.31
>>Kill Dark Iron Dwarves
.complete 3443,1
step
#label shaft
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.turnin 3443 >> Turn in Forging the Shaft
.target Kalaran Windblade
.accept 3452 >> Accept The Flame's Casing
step
#completewith next
>> Kill War Golems
.complete 7723,1
.goto Searing Gorge,34.2,46.4,0
step
>> Kill Lava Spiders along the western edge of the map
.complete 7724,1
.goto Searing Gorge,28.8,63.2
step
#label steamsmith
>> Kill War Golems
.complete 7723,1
.goto Searing Gorge,34.2,46.4
step
#completewith steamsmith1
>> Prioritize killing Steamsmiths around the cauldron whenever they respawn.
.complete 7728,1
.goto Searing Gorge,40.90,50.31,50,0
step
.goto Searing Gorge,24.1,36.4
>>Kill Twilight cultists
>>This elite quest can be difficult, skip this step if you have to
.complete 3452,1 
step
.goto Searing Gorge,38.97,27.50
.target Hansel Heavyhands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.turnin 7723 >> Turn in Curse These Fat Fingers
.turnin 7724 >> Turn in Fiery Menace!
step
.target Hansel Heavyhands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.accept 7727 >> Accept Incendosaurs? Whateverosaur is More Like It
.goto Searing Gorge,38.58,27.80
.target Master Smith Burninate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
.accept 7722 >> Accept What the Flux? << !Druid
.goto Searing Gorge,38.80,28.50
step
.goto Searing Gorge,39.1,39.1
.target Kalaran Windblade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.turnin 3452 >> Turn in The Flame's Casing
.isQuestComplete 3452
step
.goto Searing Gorge,39.1,39.1
.target Kalaran Windblade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.accept 3453 >> Accept The Torch of Retribution
.isQuestTurnedIn 3452
step
.goto Searing Gorge,39.1,39.1
>>Wait for the RP sequence, don't go too far away from the NPC or the quest will fail
.complete 3453,1 
.isQuestTurnedIn 3452
step
#label steamsmith1
.goto Searing Gorge,39.1,39.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
.turnin 3453 >> Turn in The Torch of Retribution
.target Kalaran Windblade
.accept 3454 >> Accept The Torch of Retribution
.turnin 3454 >> Turn in The Torch of Retribution
.accept 3462 >> Accept Squire Maltrake
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
.turnin 3462 >> Turn in Squire Maltrake
.target Squire Maltrake
.accept 3463 >> Accept Set Them Ablaze!
.isQuestTurnedIn 3452
step
>> Kill the Steamsmiths. Loot them for the Tuyere
.complete 7728,1
.goto Searing Gorge,40.90,50.31
step
.goto Searing Gorge,33.3,54.4
>>Equip the torch in your bags and click on the small brazier at the top of the tower
.complete 3463,4 
.isQuestTurnedIn 3452
step
.goto Searing Gorge,35.7,60.6
.complete 3463,1 
.isQuestTurnedIn 3452
step
.goto Searing Gorge,44.0,60.9
.complete 3463,2 
.isQuestTurnedIn 3452
step
.goto Searing Gorge,50.10,54.70
>> Set the fourth tower on fire, make sure you finsh off the spyglass quest
.complete 3463,3
.isQuestTurnedIn 3452
step
#sticky
#requires key
.goto Searing Gorge,65.6,62.2,0
>>Click on the outhouse key and turn in the quest
.accept 4451 >> The Key to Freedom
.turnin 4451 >> The Key to Freedom
step
#label lookout
.goto Searing Gorge,65.59,62.17
.accept 4449 >> Accept Caught!
step
#sticky
#label geologists
.goto Searing Gorge,63.6,59.4,0
.goto Searing Gorge,69.2,34.4,0
>>Clear the camp next to the quest giver, you likely won't find enough of them to finish this quest in one pass
.complete 4449,1
.complete 4449,2
step
#sticky
#label lookout
.goto Searing Gorge,50.10,54.70
.goto Searing Gorge,44.0,60.9
>>Kill Dark Iron Lookouts next to the eastern towers
.complete 7728,2
step
#requires lookout
.goto Searing Gorge,72.20,73.64
>> Kill Margol the Rager, loot Margol's Horn and right click it
.accept 3181 >> Accept The Horn of the Beast
step
#sticky
#requires geologists
#label caught
.goto Searing Gorge,65.59,62.17
.turnin 4449 >> Turn in Caught!
step
.goto Searing Gorge,63.92,60.98
>> Start the escort quest
.target Dorius Stonetender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorius Stonetender|r
.accept 3367 >> Accept Suntara Stones
step
>> Escort Dorius
.complete 3367,1
step
.goto Searing Gorge,74.44,19.28
>> Click on the singed letter on the ground
.turnin 3367 >> Turn in Suntara Stones
.accept 3368 >> Accept Suntara Stones
step
#requires caught
#completewith next
.goto Searing Gorge,35.27,42.61,25 >> Jump down into the square hole just outside Thorium Point
step
#requires caught
>>Kill Dark Iron dwarves
.goto Searing Gorge,42.81,28.11
.complete 7729,1
.complete 7729,2
step << Warlock
.goto Searing Gorge,40.78,35.89
>>Kill Overseer Maltorius. Clear an area out of which to kite/fear him, split pull him using Rain of Fire, and then keep him dotted whilst fearing him
>>Be sure to use Shadow Ward and Drain Mana if it's efficient. Loot him for his head when killed
>>If you can't do it, skip this quest
.complete 7701,1 
.link https://www.twitch.tv/videos/1440175809?filter=highlights&sort=time >> CLICK HERE
step << !Druid
#requires caught
.goto Searing Gorge,40.5,35.7
>> Be careful as this quest can be VERY hard and risky. Don't be ashamed to skip it << Warrior/Priest/Rogue
>> Pull all 3 mobs with your pet and go loot the plans. << Hunter
>> Pull both mobs with a Voidwalker or Succubus (seduce one of them) and go loot the plans. << Warlock
>> Build up 25+ rage, then fear all 3 mobs at the same time and click to loot the plans. << Warrior
>> Go pull all 3 mobs and use your AOE fear to loot the plans. << Priest
>> With improved gouge this is possible. Use Sap on one target, the prepare yourself near the plans. Use blind on a second target. Last one is the hard one, you have to use gouge (5.5 sec cd) and instantly start looting the plans (5 sec) << Rogue
>> Use Polymorph on Maltorius then frostnova the other 2 elites and blink to the plans and loot them. << Mage
>> After looting the plans, jump down below to the main floor OR the ledge to the right of the plans to evade any mobs you have aggro of
.complete 7722,1
step
#label dwarves
.goto Searing Gorge,45.23,38.41,60,0
.goto Searing Gorge,47.53,24.87
>> Jump down to the lower level. Kill Incendosaurs
.complete 7727,1
step
#hardcore
#completewith next
+Logout skip out of The Slag Pit
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> CLICK HERE for a guide
step
#softcore
#completewith end
.deathskip >> Die and respawn at Thorium Point
step
#label end
.target Hansel Heavyhands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
.turnin 7727 >> Turn in Incendosaurs? Whateverosaur is More Like It
.goto Searing Gorge,38.58,27.80
.target Taskmaster Scrange
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
.turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
.goto Searing Gorge,38.97,27.50
.target Master Smith Burninate
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
.turnin 7722 >> Turn in What the Flux? << !Druid
.goto Searing Gorge,38.80,28.50
.turnin 7728 >> Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
step << Warlock
.isQuestComplete 7701
.goto Searing Gorge,37.74,26.55
.target Lookout Captain Lolo Longstriker
>>Talk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
.turnin 7701 >>Turn in WANTED: Overseer Maltorius
step
.goto Searing Gorge,39.056,38.987
.target Squire Maltrake
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
.turnin 3463 >> Turn in Set Them Ablaze!
.accept 3481 >> Accept Trinkets...
>> Open the Hoard of the Black Dragonflight and keep the Black Dragonflight Molt
.turnin 3481 >> Turn in Trinkets...
.isQuestTurnedIn 3452
step
.goto Searing Gorge,37.94,30.87
.fly Loch Modan>> Fly to Loch Modan
step
.goto Badlands,16.73,8.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3181 >> Turn in The Horn of the Beast
.target Mountaineer Pebblebitty
.accept 3182 >> Accept Proof of Deed
step << Druid
#level 52
>>Teleport to Moonglade
.goto Moonglade,52.53,40.56
.trainer >> Train your class spells
step << Mage
#level 52
>>Teleport to Ironforge
.goto Ironforge,26.30,6.73
.trainer >> Train your class spells
step << Mage
#level 52
#completewith next
.goto Ironforge,31.33,27.82
>>Buy Runes of Teleportation from Ginny if needed
.collect 17031,10
step
#completewith next
.hs >> Hearth to Stormwind
>> Buy food/water if needed
step
.goto Stormwind City,44.27,73.99
>> Do the Stormwind cloth turn ins, you'll need 3 stacks of each cloth type:
.target Clavicus Knavingham
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clavicus Knavingham|r
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
#era/som
<< Alliance
#name 51-51 Blasted Lands
#next 51-52 WPL
step << Hunter
#completewith next
.vendor >> Make sure you refill your quiver before heading to Blasted Lands
step
.fly Blasted Lands>> Fly to Blasted Lands
>>The blasted lands part of the guide is a filler section, in case you are behind on levels, if you are level 52 or above skip to the next part (WPL)
step
.goto Blasted Lands,67.56,19.29
>> Climb the tower and accept Petty Squabbles
.target Ambassador Ardalan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
.accept 2783 >> Accept Petty Squabbles
.next << 52
step
.goto Swamp of Sorrows,34.29,66.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2783 >> Turn in Petty Squabbles
.target Fallen Hero of the Horde
.accept 2801 >> Accept A Tale of Sorrow
step
>> Go through his whole dialogue.
.complete 2801,1
.skipgossip
step
.goto Blasted Lands,52.76,2.93
.target Fallen Hero of the Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
.turnin 2801 >> Turn in A Tale of Sorrow
step
#completewith BLend
#label fragment
>>Try to loot a Draenethyst fragment from any of the mobs in Blasted Lands
.collect 10593,1,3501,1
step
#requires fragment
#completewith BLend
.goto Blasted Lands,51.8,35.6
.target Kum'isha the Collector
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
.accept 3501 >> Accept Everything Counts In Large Amounts
.turnin 3501 >> Turn in Everything Counts In Large Amounts
step
#completewith BLend
#label blquests
.blastedLands
*Basilisks share spawns with boars and hyenas share spawns with scorpids
step << Hunter/Rogue
.goto Blasted Lands,50.55,14.20
>>Go back to the quest giver once you get the following:
>>3 Scorpok Pincer
>>2 Vulture Gizzard
>>1 Blasted Boar Lung
.target Bloodmage Drazial
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2585 >> Accept The Decisive Striker
.turnin 2585 >> Turn in The Decisive Striker
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.55,14.20
>>Go back to the quest giver once you get the following:
>>3 Snickerfang Jowl
>>2 Blasted Boar Lung
>>1 Scorpok Pincer
.target Bloodmage Drazial
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2581 >> Accept Snickerfang Jowls
.turnin 2581 >> Turn in Snickerfang Jowls
step
#requires blquests
.goto Blasted Lands,50.55,14.20
.target Bloodmage Drazial
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
.accept 2585 >> Accept The Decisive Striker << !Rogue !Hunter
.turnin 2585 >> Turn in The Decisive Striker << !Rogue !Hunter
.accept 2583 >> Accept A Boar's Vitality
.turnin 2583 >> Turn in A Boar's Vitality
.accept 2581 >> Accept Snickerfang Jowls << !Druid !Paladin !Warrior
.turnin 2581 >> Turn in Snickerfang Jowls << !Druid !Paladin !Warrior
.target Bloodmage Lynnore
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
.accept 2601 >> Accept The Basilisk's Bite
.turnin 2601 >> Turn in The Basilisk's Bite
.accept 2603 >> Accept Vulture's Vigor
.turnin 2603 >> Turn in Vulture's Vigor
step
#label BLend
.fly Redridge>> Fly to Redridge
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >>Head to the Burning Steppes
step
.goto Burning Steppes,82.4,63.6,60,0
.goto Burning Steppes,84.55,68.67
>> Head to Morgan's Vigil
.target Oralius
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 3823 >> Accept Extinguish the Firegut
step
.goto Burning Steppes,80.74,44.38
.complete 3823,1
.complete 3823,2
.complete 3823,3
step
.goto Burning Steppes,84.55,68.67
.target Oralius
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3823 >> Turn in Extinguish the Firegut
step
.goto Burning Steppes,84.33,68.33
.fp Burning Steppes >> Get the Burning Steppes flight path
.fly Ironforge>> Fly to Ironforge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 51-52 WPL
#next 52-52 Felwood
step
#sticky
.zone Ironforge >> Head to Ironforge
step
#sticky
.bankwithdraw 9328,9330,10819 >> Withdraw the following items from your bank:
>>Super Snapper FX
>>Snapshot of Gammerita
>>Wildkin Feather
step
#softcore
.goto Ironforge,25.75,75.42
>>Remember to get Cloth from the bank if you stored it from earlier
>>Try to find the following items on the Auction House for quests later:
.collect 2592,120 
.collect 4306,120 
.collect 4338,120 
>>-
.collect 10561,1,4244,1 
step
#sticky
#label cloth1
.goto Ironforge,43.22,31.57
>> Do the Gnomeregan cloth turn ins, you'll need 3 stacks of each
.target Bubulo Acerbus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
step
#sticky
#label cloth2
.goto Ironforge,43.22,31.57
>> Do the Ironforge cloth turn ins, you'll need 3 stacks of each
.target Mistina Steelshield
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
step
#completewith end
>>Look for the courier that walks around Ironforge
>>Skip this quest if you can't find the courier
.target Courier Hammerfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Hammerfall|r
.accept 5090 >> Accept A Call to Arms: The Plaguelands!
.unitscan COURIER HAMMERFALL
step
#hidewindow
#requires cloth1
step
#requires cloth2
#sticky
#label slime
.goto Ironforge,75.4,23.0
.target Laris Geardawdle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.accept 4512 >> Accept A Little Slime Goes a Long Way
step
#requires cloth2
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
.turnin 3182 >> Turn in Proof of Deed
.target Curator Thorius
.accept 3201 >> Accept At Last!
step
.goto Ironforge,71.83,16.12
.target Curator Thorius
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curator Thorius|r
.turnin 3368 >> Turn in Suntara Stones
step
#requires slime
.goto Ironforge,77.54,11.82
.target Historian Karnik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
.accept 3448 >> Accept Passing the Burden
step << Warlock
#som
.goto Ironforge,51.10,6.60
.target Briarthorn
.target Kaal Soulreaper
.target Zevrost
.target Demisette Cloyce
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r



.accept 8419 >> Accept An Imp's Request
step << Warlock
#era
#phase 4
.goto Ironforge,51.10,6.60
.target Briarthorn
.target Kaal Soulreaper
.target Zevrost
.target Demisette Cloyce
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r



.accept 8419 >> Accept An Imp's Request
step
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3448 >> Turn in Passing the Burden
.target Tymor
.accept 3449 >> Accept Arcane Runes
.accept 3450 >> Accept An Easy Pickup
step
.goto Ironforge,18.10,51.60
.home >> Set your Hearthstone to Ironforge
step << Hunter
#era
#phase 4
.goto Ironforge,70.90,83.60
.target Ulfir Ironbeard
.target Olmin Burningbeard
.target Dorion
.target Ormak Grimshot
.target Holt Thunderhorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r




.accept 8151 >> Accept The Hunter's Charm
step
.goto Ironforge,70.86,94.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiggs Fuselighter|r
.turnin 3450 >> Turn in An Easy Pickup
.target Xiggs Fuselighter
.accept 3451 >> Accept Signal for Pickup
.turnin 3451 >> Turn in Signal for Pickup
step
#som
#phase 3-6
.abandon 3449 >> Abandon Arcane Runes
>>You can also throw away the Standard Issue Flare Gun since it's no longer needed
step << !Druid
#level 52
#hardcore
.goto Ironforge,69.88,82.90 << Hunter
.goto Ironforge,65.90,88.41 << Warrior
.goto Ironforge,50.34,5.67 << Warlock
.goto Ironforge,51.50,15.34 << Rogue
.goto Ironforge,25.21,10.75 << Priest
.goto Ironforge,27.17,8.57 << Mage
.goto Ironforge,24.55,4.46 << Paladin
.trainer >> Train your class spells
.goto Ironforge,52.7,6.1 << Warlock
.vendor >> Buy pet spellbooks for your Succubus. Buy voidwalker ones too if you have a lot of gold << Warlock
step
#completewith next
.fly Loch Modan >> Fly to Loch Modan
step
.goto Badlands,16.73,8.64
.target Mountaineer Pebblebitty
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
.turnin 3201 >> Turn in At Last!
step
#completewith next
.fly Hinterlands>> Fly to The Hinterlands
step
.goto The Hinterlands,9.8,44.4
.target Gryphon Master Talonaxe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
.turnin 2989 >> Turn in The Altar of Zul
step
.goto The Hinterlands,14.83,44.56
.target Fraggar Thundermantle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
.turnin 2877 >> Turn in Skulk Rock Clean-up
step
.goto The Hinterlands,40.63,59.65
>> Loot a purple mushroom underwater
.complete 2641,1
step
.goto The Hinterlands,11.08,46.16
.fly Western Plaguelands>> Fly to Western Plaguelands
step
#completewith next
.goto Tirisfal Glades,98.54,95.59
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5066 >> Turn in A Call to Arms: The Plaguelands!
.turnin 5090 >> Turn in A Call to Arms: The Plaguelands!
.turnin 5091 >> Turn in A Call to Arms: The Plaguelands!
step
.goto Western Plaguelands,42.70,84.03
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
step
.goto Western Plaguelands,42.97,83.54
>>Equip the trinket for later
.target Argent Officer Pureheart
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.turnin 5401 >> Turn in Argent Dawn Commission
step
.goto Western Plaguelands,50.80,77.80
.complete 5092,1
.complete 5092,2
step
.goto Western Plaguelands,42.70,84.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.target Commander Ashlam Valorfist
.accept 5215 >> Accept The Scourge Cauldrons
step
.goto Western Plaguelands,42.97,84.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >> Turn in The Scourge Cauldrons
.target High Priestess MacDonnell
.accept 5216 >> Accept Target: Felstone Field
step
.goto Western Plaguelands,37.17,56.94
>> Kill the cauldron lord
.complete 5216,1
step
.goto Western Plaguelands,37.24,56.78
>> Click on the cauldron
.turnin 5216 >> Turn in Target: Felstone Field
.accept 5217 >> Accept Return to Chillwind Camp
step
.goto Western Plaguelands,38.40,54.05
>> Talk to Janice Felstone inside the farm house
.target Janice Felstone
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
.accept 5021 >> Accept Better Late Than Never
step
.goto Western Plaguelands,38.72,55.24
>> Click on the parcel inside the barn
.turnin 5021 >> Turn in Better Late Than Never
.accept 5022 >> Accept Better Late Than Never
step << Hunter
.xp 52-16950 >> Grind until you are 16950 XP away from 52
>>If you are not yet close, do one more cauldron quest to get you where you need to be
step
#completewith next
.deathskip >> Die and spirit rez at Chillwind Camp
step
.goto Western Plaguelands,42.97,84.50
.target High Priestess MacDonnell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >> Turn in Return to Chillwind Camp
step << !Mage
.goto Western Plaguelands,42.92,85.07
.fly Wetlands>> Fly to Wetlands
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 52-52 Felwood
#next 52-53 Feralas
step << Mage
.trainer >> Teleport to Ironforge and train skills
step << !Mage
#completewith next
.zone Darkshore >> Take the boat to Darkshore
step << !Mage
.goto Darkshore,37.0,44.0
.home >> Set your Hearthstone to Auberdine
step << !Mage
.goto Darkshore,36.4,45.6
.fly Teldrassil>> Fly to Teldrassil
step << !Mage
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
step << !Mage
#completewith next
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
>>Skip this step if you're not yet level 52
step << !Mage
.goto Teldrassil,55.41,92.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.turnin 2944 >> Turn in The Super Snapper FX
.target Daryn Lightwind
.accept 2943 >> Accept Return to Troyas
step
#sticky
#label Bankdp1
.bankdeposit 12724,10444,10445 >> Deposit the follwing items:
>>Janice's Parcel
>>Flare gun
>>Drawing kit
step
#sticky
#label Bankdp2
.bankwithdraw 9368,11466,8594,11133,11912 >> Withdraw the following items:
>>Jer'kai's Signet Ring
>>Raschal's Report
>>Insect Analysis Report
>>Linken's Training Sword
>>Package of Empty Ooze Containers
step << Mage
.zone Darnassus >> Teleport to Darnassus
step
#completewith Moonkinx
.vendor >> Restock on supplies, long grinding session ahead
step << Hunter
#era
#phase 4
#sticky
.goto Darnassus,42.44,7.36
.target Ulfir Ironbeard
.target Olmin Burningbeard
.target Dorion
.target Ormak Grimshot
.target Holt Thunderhorn
>>Talk to |cRXP_FRIENDLY_Holt Thunderhorn|r




.accept 8151 >> Accept The Hunter's Charm
step << Warrior
.goto Darnassus,58.73,34.90
.trainer >> Train your class spells
step << !Mage
#som
#phase 3-6
.goto Darnassus,67.424,15.646
.home >> Set your Hearthstone to Darnassus
step << Hunter/Druid/Priest/Rogue
.goto Darnassus,40.39,8.55 << Hunter
.goto Darnassus,34.76,7.36 << Druid
.goto Darnassus,37.89,82.74 << Priest
.goto Darnassus,32.48,16.37,30,0 << Rogue
.goto Darnassus,37.00,21.91 << Rogue
>>Go inside of the tree and follow it downward << Rogue
.trainer >> Train your class spells
step
.goto Teldrassil,25.90,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 162 >> Turn in Rise of the Silithid
.target Gracina Spiritmight
.accept 4493 >> Accept March of the Silithid
step
.goto Teldrassil,25.90,64.74
.target Gracina Spiritmight
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 4267 >> Turn in Rise of the Silithid
step
.goto Teldrassil,25.33,63.90
.target Tyrande Whisperwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
.turnin 2972 >> Turn in Doling Justice
step
#hidewindow
#requires Bankdp2
step << !Mage
#label Moonkinx
#requires Bankdp1
.goto Teldrassil,55.49,92.04
>> If you are not yet level 52, skip this step
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
step << Mage
#label Moonkinx
#requires Bankdp1
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 3661 >> Turn in Favored of Elune?
step << Mage
#sticky
#label q52
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
>>Skip this step if you're not yet level 52
step << Mage
.goto Teldrassil,55.41,92.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.turnin 2944 >> Turn in The Super Snapper FX
.target Daryn Lightwind
.accept 2943 >> Accept Return to Troyas
step << Mage
#requires q52
.fly Darkshore>> Fly to Darkshore
step << Mage
#era/som
.goto Darkshore,37.0,44.0
.home >> Set your Hearthstone to Auberdine
step
#som
#phase 1-2
.goto Darkshore,36.4,45.6
.fly Astranaar >> Fly to Ashenvale
step
#som
#phase 1-2
#completewith next
.goto Ashenvale,95.57,48.62
.zone Azshara >> Run east to Azshara
step
#som
#phase 1-2
.goto Azshara,11.90,77.57
.fp Azshara>> Get the Azshara flight path
step
#era
#completewith next
.goto Darkshore,36.4,45.6
.fly >> Fly to Azshara
step
#era
.goto Azshara,11.36,78.16
.target Loh'atu
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.accept 5535 >> Accept Spiritual Unrest
.accept 5536 >> Accept A Land Filled with Hatred
step
#era
#sticky
#label unrest
.goto Azshara,16.5,68.0,0
>> Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r
.complete 5535,1
.complete 5535,2
step
#era
.goto Azshara,20.09,61.79
>> Kill |cRXP_ENEMY_Haldarr Satyr, Halldar Tricksters|r and |cRXP_ENEMY_Haldarr Felsworn|r
>>Make sure to prioritize Satyrs
.complete 5536,1
.complete 5536,2
.complete 5536,3
step
#era
#requires unrest
.goto Azshara,11.36,78.16
.target Loh'atu
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
.turnin 5535 >> Turn in Spiritual Unrest
.turnin 5536 >> Turn in A Land Filled with Hatred
step
#completewith next
.zone Felwood >> Head to Felwood
step
.goto Felwood,54.14,86.83
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.accept 4101 >> Accept Cleansing Felwood
step
.goto Felwood,50.92,85.00
.target Grazle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.accept 8460 >> Accept Timbermaw Ally
step
.goto Felwood,48.93,90.22
>>Kill |cRXP_ENEMY_Deadwood Warriors, Pathfinder|r and |cRXP_ENEMY_Deadwood Gardener|r
.complete 8460,1
.complete 8460,2
.complete 8460,3
step
.goto Felwood,50.92,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
.turnin 8460 >> Turn in Timbermaw Ally
.target Grazle
.accept 8462 >> Accept Speak to Nafien
step
#era
#sticky
.goto Felwood,48.93,90.22
.reputation 576,Unfriendly
step
>> Run to the Emerald Sanctuary
.target Greta Mosshoof
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.accept 5155 >> Accept Forces of Jaedenar
.goto Felwood,51.21,82.10
.target Taronn Redfeather
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.accept 5156 >> Accept Verifying the Corruption
.goto Felwood,50.8,81.6
.target Eridan Bluewind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4421 >> Accept The Corruption of the Jadefire
.goto Felwood,51.2,81.6
step
.goto Felwood,40.77,66.86
>>Open the Package of Empty Ooze containers (box) in your inventory
>> Kill slimes, use the Ooze jar on their corpses
.complete 4512,1
step << Warlock
#era
#phase 4
#sticky
#label felcloth
>> Kill satyrs
.complete 8419,1
step << Warlock
#som
#sticky
#label felcloth
>> Kill satyrs
.complete 8419,1
step
.goto Felwood,32.27,67.05
>> Do The Corruption of the Jadefire
.complete 4421,1
.complete 4421,2
.complete 4421,3
.complete 4421,4
step << Warlock
#requires felcloth
#era
#phase 4
.goto Winterspring,5.91,66.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8419 >> Turn in An Imp's Request
.target Impsy
.accept 8421 >> Accept The Wrong Stuff
step << Warlock
#requires felcloth
#som
.goto Winterspring,5.91,66.03
.target Impsy
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8419 >> Turn in An Imp's Request
step
#som
#phase 1-2
.goto Winterspring,5.91,66.03
.target Impsy
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.accept 8421 >> Accept The Wrong Stuff
.isQuestTurnedIn 8419
step << Warlock
#phase 4
#era
.goto Winterspring,6.69,68.57
>> Kill Tainted Oozes
.complete 8421,2
step << Warlock
#som
#phase 1-2
.goto Winterspring,6.69,68.57
>> Kill Tainted Oozes
.complete 8421,2
step
#completewith next
>> Kill slimes, use the Ooze jar on their corpses
.complete 4512,2
step
.goto Felwood,38.45,60.72
>> Do Forces of Jaedenar
.complete 5155,1
.complete 5155,2
.complete 5155,3
.complete 5155,4
step
.goto Felwood,40.48,59.07
>> Finish off A Little Slime Goes a Long Way
.complete 4512,2
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5155 >> Turn in Forces of Jaedenar
.target Greta Mosshoof
.accept 5157 >> Accept Collection of the Corrupt Water
step
.goto Felwood,51.34,81.50
.target Eridan Bluewind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4421 >> Turn in The Corruption of the Jadefire
step
.goto Felwood,51.34,81.50
.target Eridan Bluewind
>>Talk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4906 >> Accept Further Corruption
step
.goto Felwood,50.88,81.61
.target Taronn Redfeather
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.accept 5156 >> Accept Verifying the Corruption
step
.goto Felwood,35.16,59.77
>> Fill the empty canteen at the Jaedenar moonwell
.complete 5157,1
step
.goto Felwood,44.03,40.20
>> Kill fire elementals, be careful with the elite infernals roaming the place
.complete 5156,1
.complete 5156,2
.complete 5156,3
step
.goto Felwood,39.07,22.31
>> Kill Xavaric, loot his flute and right click it
.complete 4906,4
.accept 939 >> Accept Flute of Xavaric
step
.goto Felwood,41.81,19.36
>> Kill Satyrs
.complete 4906,1
.complete 4906,2
.complete 4906,3
.complete 939,1
step << Warlock
#era/som
.goto Winterspring,12.64,45.66
>> Kill Irontree mobs
.complete 8421,1
.isOnQuest 8421
step
.goto Felwood,56.10,17.00
>> Kill Warpwood mobs inside the cave
.complete 4101,1
step
#softcore
#completewith next
.vendor >> Vendor stuff, you're about to spirit rez 3 times on the upcoming segment
step
.goto Felwood,62.50,24.24
.fp Felwood>> Get the Felwood Flight Path
step
.goto Felwood,64.76,8.12
.target Nafien
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8462 >> Turn in Speak to Nafien
step
.goto Winterspring,27.76,34.59
.zone Winterspring >> Enter the furbolg tunnel and take the east exit into Winterspring
*Depending on your reputation standing, the npcs guarding the tunnel will attack you, if that's the case, be careful to not fall into the pit at the tunnel intersection
step
#era/som
.goto Winterspring,31.26,45.16
.target Donova Snowden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 3909 >> Accept The Videre Elixir
step
.goto Winterspring,31.26,45.16
.target Donova Snowden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 3908 >> Turn in It's a Secret to Everybody
.isOnQuest 3908
step
.goto Winterspring,43.78,43.39
>> Look for Moontouched feathers on the ground
>>Skip this step if you don't have this quest
.complete 978,1
.isOnQuest 978
step
#softcore
#completewith next
.deathskip >> Die and spirit rez at Everlook
step << Hunter
#completewith next
.goto Winterspring,60.38,37.92
.stable >> Stable your pet
step
.goto Winterspring,62.2,36.6
.fly Felwood>> Fly to Felwood
step << Hunter
.goto Felwood,61.7,18.7,0
.train 17267 >> Tame a Felpaw Ravager, learn bite 7
step
#softcore
.goto Felwood,62.1,19.5
.deathskip >> Death warp to the graveyard
step << Hunter
#completewith next
.goto Felwood,49.1,36.4,0
.train 2977 >> Tame an Ironbeak Hunter or Angerclaw Mauler and learn claw 7
step << Warlock
#phase 4
#era
.goto Winterspring,5.91,66.03
.target Impsy
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8421 >> Turn in The Wrong Stuff
step << Warlock
#som
#phase 1-2
.goto Winterspring,5.91,66.03
.target Impsy
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
.turnin 8421 >> Turn in The Wrong Stuff
step
#softcore
#completewith next
.goto Felwood,40.84,66.78
>> Run south to the slime pond
.deathskip >>Death warp to southern felwood
step
#softcore
.goto Felwood,54.14,86.83
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.turnin 4101 >> Turn in Cleansing Felwood
step
#softcore
.goto Winterspring,16.27,99.89
>> Speak to the quest giver and make sure you have a Cenarion Beacon
.collect 11511,1
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5157 >> Turn in Collection of the Corrupt Water
.target Greta Mosshoof
.accept 5158 >> Accept Seeking Spiritual Aid
step
.goto Felwood,51.34,81.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 939 >> Turn in Flute of Xavaric
.target Eridan Bluewind
.accept 4441 >> Accept Felbound Ancients
.turnin 4906 >> Turn in Further Corruption
step
.goto Felwood,50.88,81.61
.target Taronn Redfeather
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
.turnin 5156 >> Turn in Verifying the Corruption
step
#hardcore
.goto Felwood,54.14,86.83
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.turnin 4101 >> Turn in Cleansing Felwood
step
#hardcore
.goto Winterspring,16.27,99.89
>> Speak to the quest giver and make sure you have a Cenarion Beacon
.collect 11511,1
step
#era/som
.hs >> Hearth to Darkshore
>> Buy food/water if needed
step
#era/som
.fly Feathermoon>> Fly to Feathermoon
step
#som
#phase 3-6
#completewith next
.goto Azshara,11.90,77.57
.fp Azshara>> Get the Azshara flight path
step
#som
#phase 3-6
.goto Azshara,11.90,77.57
.fly Ratchet>> Fly to Ratchet
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
<< Alliance
#classic
#era/som
#name 52-53 Feralas
#next 53-53 Azshara
step << Hunter
#completewith start
.stable >> Withdraw your pet from the stables
step
.goto Feralas,30.63,42.70
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.accept 7733 >> Accept Improved Quality
.maxlevel 53
step
.goto Feralas,30.97,43.49
.home >> Set your Hearthstone to Feathermoon
step
#label start
.goto Feralas,31.78,45.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.turnin 2943 >> Turn in Return to Troyas
.target Troyas Moonbreeze
.accept 2879 >> Accept The Stave of Equinex
step
#era
.goto Feralas,44.81,43.42
>> Swim to the mainland
.target Zorbin Fandazzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
.accept 7003 >> Accept Zapped Giants
.accept 7721 >> Accept Fuel for the Zapping
step
#era
.goto Feralas,46.12,62.73
>>Use the giant zapper to kill the sea giants along the coast
>> Kill water elementals
.complete 7003,1
.complete 7721,1
step
#era
.goto Feralas,44.81,43.42
.target Zorbin Fandazzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
.turnin 7003 >> Turn in Zapped Giants
.turnin 7721 >> Turn in Fuel for the Zapping
step
#completewith next
>> Keep an eye out for a pristine yeti hide while you kill them (rare drop)
.collect 18969,1,7735
.accept 7735 >> Accept Pristine Yeti Hide
.maxlevel 53
.isOnQuest 7733
step
.goto Feralas,54.84,32.84
>> Kill Yetis
.complete 7733,1
.maxlevel 53
.isOnQuest 7733
step
.goto Feralas,45.12,25.56
.target Gregan Brewspewer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
.turnin 4142 >> Turn in A Visit to Gregan
step
.goto Feralas,45.12,25.56
>> Buy some bait from Gregan
.collect 11141,1,3909,1
step
.goto Feralas,42.38,21.99
.target Rockbiter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
.accept 2844 >> Accept The Giant Guardian
step
.goto Feralas,44.64,10.59
>> Give the bait you just purchased to the gnoll guarding the Evoroot to gain access to it
.collect 11242,1,3909,1
step
#completewith next
>> Loot all 4 flames
.collect 9257,1,2879,1
.goto Feralas,40.6,12.6
.collect 9258,1,2879,1
.goto Feralas,38.5,15.8
.collect 9255,1,2879,1
.goto Feralas,37.8,12.1
.collect 9256,1,2879,1
.goto Feralas,39.9,9.5
step
.goto Feralas,38.88,13.13
>>Right click on Troyas' Staff at the monolith
.complete 2879,1
step
.goto Feralas,38.82,13.17
>> Click on the monolith
.turnin 2879 >> Turn in The Stave of Equinex
.accept 2942 >> Accept The Morrow Stone
step
#completewith next
+ Grind harpies until your HS cooldown is <8 minutes
step
#completewith next
.goto Feralas,38.22,10.29
.target Shay Leafrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay Leafrunner|r
.turnin 2844 >> Turn in The Giant Guardian
step
.goto Feralas,38.22,10.29
>>Start the escort quest
.target Shay Leafrunner
>>Talk to |cRXP_FRIENDLY_Shay Leafrunner|r
.accept 2845 >> Accept Wandering Shay
step
.goto Feralas,38.25,10.29
>> Loot the chest next to the quest giver
.complete 2845,1
step
.goto Feralas,42.38,22.00
>> Escort Shay
.complete 2845,2
step
.goto Feralas,42.38,21.99
.target Rockbiter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
.turnin 2845 >> Turn in Wandering Shay
step
.goto Feralas,45.12,25.56
>> Talk to Gregan and trade in the Evoroot
.complete 3909,1
step
#softcore
#completewith next
.goto Feralas,38.2,24.2
.deathskip >> Die on the west side of the mountain giant area and spirit rez at Feathermoon
step << !Mage
#era
#completewith end2
+Make sure you buy food/water before flying off
>>Long grinding session ahead
>>Make sure to buy extra stacks of ammo<< Hunter
step
.goto Feralas,31.78,45.50
.target Troyas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
.turnin 2942 >> Turn in The Morrow Stone
step
#completewith end2
.target Pratt McGrubben
>>Talk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7735 >> Turn in Pristine Yeti Hide
.isOnQuest 7735
step
.goto Feralas,30.63,42.70
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
.turnin 7733 >> Turn in Improved Quality
.isQuestComplete 7733
step
#label end2
.goto Feralas,30.24,43.25
.fly Ratchet>> Fly to Ratchet
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#era/som
#name 53-53 Azshara
#next 53-54 UnGoro Crater
step
#sticky
.bankdeposit 11682,11511,11947,11949 >> Deposit the follwing items:
>>Eridan's Vial
>>Cenarion Beacon
>>Filled Cursed Ooze Jar
>>Filled Tainted Ooze Jar
step
#sticky
.bankwithdraw 10445,12906,10444 >> Withdraw the following:
>>Drawing Kit
>>Flare Gun
step
>> Make sure you have at least 1 stack of noggenfogger for this next segment, skip this step if you dont have any noggenfogger in your bank
.collect 8529,20
step
.goto The Barrens,62.0,39.4
.home >> Set your Hearthstone to Ratchet
step
.goto The Barrens,63.00,37.20
.fly Azshara>> Fly to Azshara
step << Hunter
#era
#phase 4
.goto Azshara,42.37,42.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8151 >> Turn in The Hunter's Charm
.target Ogtinc
.accept 8153 >> Accept Courser Antlers
step << Hunter
#era
#phase 4
#sticky
>> Kill mosshoof coursers as you quest
.complete 8153,1
step
#era
.goto Azshara,53.45,21.82
.target Kim'jael
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.accept 3601 >> Accept Kim'jael Indeed!
step
#era
.goto Azshara,57.02,29.45
>> Loot the boxes scattered around the camp
.complete 3601,1
.complete 3601,2
.complete 3601,3
.complete 3601,4
step
#era
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 3601 >> Turn in Kim'jael Indeed!
.target Kim'jael
.accept 5534 >> Accept Kim'jael's "Missing" Equipment
step
#era
#label nagas
#sticky
.goto Azshara,37.7,53.3,0
.goto Azshara,46.2,48.8,0
>> Kill Sirens/Myrmidons
.complete 5534,1
step
.goto Azshara,39.57,50.32
>> Click on the first monolith
.complete 3449,2
step
.goto Azshara,36.95,53.18
>> Click on the second monolith
.complete 3449,1
step
.goto Azshara,39.33,55.42
>> Click on the third monolith
.complete 3449,3
step
.goto Azshara,42.34,64.14
>> Click on the fourth monolith
.complete 3449,4
step
#era
#requires nagas
.goto Azshara,53.45,21.82
.target Kim'jael
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
.turnin 5534 >> Turn in Kim'jael's "Missing" Equipment
step
#era
#phase 4
.xp 53.4 >> Grind elves until you are 40% into level 53
step
#era
#phase 1-3
.xp 54+20000 >> Grind elves to level 54+20k xp
step << Hunter
#era
#phase 4
.goto Winterspring,71.97,97.87
.target Ogtinc
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
.turnin 8153 >> Turn in Courser Antlers
step
#completewith next
.goto Azshara,73.22,87.87,25 >> Go behind the giant statue
step
.goto Azshara,77.80,91.32
>>Use Noggenfoger Elixir until you get the slow fall buff and jump down to the small island east
>>Use the flare gun at the landing pad and wait for the quest giver to show up
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r
.turnin 3449 >> Turn in Arcane Runes
.target Pilot Xiggs Fuselighter
.accept 3461 >> Accept Return to Tymor
step
#sticky
.destroy 10444 >> Destroy the flare gun
step
.hs >> Hearth to Ratchet
>> Buy food/water if needed
step
.goto The Barrens,65.82,43.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.target Islen Waterseer
.accept 5159 >> Accept Cleansed Water Returns to Felwood
step
#sticky
.bankdeposit 10445,12906 >> Deposit the following items:
>>Drawing kit
>>Purified Moonwell Water
step
.goto The Barrens,62.44,38.73
.target Liv Rizzlefix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.accept 4502 >> Accept Volcanic Activity
step
.goto The Barrens,62.50,38.54
>> Loot the small chest outside the metal hut
.complete 3444,1
step
.goto The Barrens,63.08,37.16
.fly Tanaris>> Fly to Tanaris
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 53-54 UnGoro Crater
#next 54-55 Felwood/Winterspring
step
.goto The Barrens,65.82,43.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
.turnin 5158 >> Turn in Seeking Spiritual Aid
.target Islen Waterseer
.accept 5159 >> Accept Cleansed Water Returns to Felwood
step
#era/som
.goto The Barrens,62.44,38.73
.target Liv Rizzlefix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.accept 4502 >> Accept Volcanic Activity
step
.goto The Barrens,62.50,38.54
>> Loot the small chest outside the metal hut
.complete 3444,1
step
#som
#phase 3-6
.goto The Barrens,63.08,37.16
.fly Tanaris>> Fly to Tanaris
step
#sticky
.bankwithdraw 11568,11569,11570,11830,11018,11114,11831 >> Withdraw the follwing items:
>>Torwa's Pouch
>>Webbed Diemetradon Scale
>>Webbed Pterrordax Scale
>>Dinosaur Bone
step
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 4504 >> Accept Super Sticky
step
.goto Tanaris,51.05,26.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
.turnin 2641 >> Turn in Sprinkle's Secret Ingredient
.target Sprinkle
.accept 2661 >> Accept Delivery for Marin
step
.goto Tanaris,51.80,28.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
.turnin 2661 >> Turn in Delivery for Marin
.target Marin Noggenfogger
.accept 2662 >> Accept Noggenfogger Elixir
.turnin 2662 >> Turn in Noggenfogger Elixir
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4493 >> Turn in March of the Silithid
.target Alchemist Pestlezugg
.accept 4496 >> Accept Bungle in the Jungle
step
.goto Tanaris,52.70,45.92
.target Marvon Rivetseeker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
.turnin 3444 >> Turn in The Stone Circle
step
.goto Tanaris,51.0,29.36
.fly Un'Goro>> Fly to Un'Goro
step
.goto Un'Goro Crater,71.6,76.0
.target Torwa Pathfinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.accept 4290 >> Accept The Fate of Lar'korwi
.accept 4289 >> Accept The Apes of Un'Goro
step
#label ungoroc
#sticky
>>Keep questing in Un'Goro until you have the following:
.accept 3884 >> Williden's Journal
.complete 4284,1 
.complete 4284,2 
.complete 4284,3 
.complete 4284,4 
step
.goto Un'Goro Crater,63.0,68.7
.accept 3844 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,63.1,69.0
.turnin 3844 >> Turn in It's a Secret to Everybody
.accept 3845 >> Accept It's a Secret to Everybody
step
.goto Un'Goro Crater,68.8,56.7
.complete 4290,1 
step
.goto Un'Goro Crater,71.7,75.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4290 >> Turn in The Fare of Lar'korwi
.target Torwa Pathfinder
.accept 4291 >> Accept The Scent of Lar'korwi
.turnin 9063 >> Turn in Torwa Pathfinder << Druid
step
.goto Un'Goro Crater,67.3,73.1
.goto Un'Goro Crater,66.6,66.7
>>Look for raptor nests and step on the eggs to summon the raptors you need to kill
.complete 4291,1 
step
.goto Un'Goro Crater,71.6,75.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4291 >> Turn in The Scent of Lar'korwi
.target Torwa Pathfinder
.accept 4292 >> Accept The Bait for Lar'korwi
step
.goto Un'Goro Crater,43.5,7.5
.target Spark Nilminer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.accept 3882 >> Accept Roll the Bones
step
.goto Un'Goro Crater,44.7,8.2
.target Linken
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3845 >> Turn in It's a Secret to Everybody
step
#requires ungoroc
.goto Un'Goro Crater,43.889,7.239
.target Williden Marshal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.turnin 3884 >> Turn in Williden's Journal
step
.goto Un'Goro Crater,43.889,7.239
.target Williden Marshal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.accept 3881 >> Accept Expedition Salvation
.target Hol'anyee Marshal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
.accept 3883 >> Accept Alien Ecology
step
.goto Un'Goro Crater,43.6,7.5
.target Spark Nilminer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.accept 3882 >> Accept Roll the Bones
step
.goto Un'Goro Crater,41.916,2.699
.target J.D. Collie
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4284 >> Accept Crystals of Power
.turnin 4284 >> Turn in Crystals of Power
step
.goto Un'Goro Crater,41.9,2.6
.target J.D. Collie
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.accept 4285 >> Accept The Northern Pylon
.accept 4287 >> Accept The Eastern Pylon
.accept 4288 >> Accept The Western Pylon
step
.goto Un'Goro Crater,43.6,8.4
.accept 4501 >> Accept Beware of Pterrordax
.target Spraggle Frock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.accept 4492 >> Accept Lost!
step
.goto Un'Goro Crater,44.2,11.5
.target Shizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.accept 4503 >> Accept Shizzle's Flyer
step
#sticky
#label dinos
>>Kill any type of Diemetradon
.complete 3882,1 
.complete 4503,1 
step
#sticky
#completewith equipment
>>Kill Pterrordaxes
.complete 4503,2 
step
.goto Un'Goro Crater,56.4,12.4
.complete 4285,1 
step
.goto Un'Goro Crater,64.0,16.4
.complete 4289,1 
.complete 4289,2 
.complete 4289,3 
step << skip
#requires chasingame
.goto Un'Goro Crater,67.8,26.3
>>Kill lashers in northeastern Un'Goro
.complete 4141,1 
step
.goto Un'Goro Crater,68.5,36.6
>>Loot the boxes at the abandoned camp
.complete 3881,1 
step
.goto Un'Goro Crater,77.2,49.8
.complete 4287,1 
step
.goto Un'Goro Crater,79.8,49.9
>>Open Torwa's Pouch and place the meat and the pheromone mixture on top of the stone slab lying on the floor to summon Lar'korwi
.complete 4292,1 
step
.goto Un'Goro Crater,71.6,75.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4289 >> Turn in The Apes of Un'Goro
.target Torwa Pathfinder
.accept 4301 >> Accept The Mighty U'cha
.turnin 4292 >> Turn in The Bait for Lar'korwi
step
.goto Un'Goro Crater,56.3,90.6
.goto Un'Goro Crater,44.3,90.4
.complete 4501,1 
step
#sticky
#label bungle
>>Kill silithid mobs
.complete 4496,1
step
.goto Un'Goro Crater,48.8,85.3
>>Enter the silithid hive and use the scraping vial at the center of the circular room
.complete 3883,1 
step
#requires bungle
#label equipment
.goto Un'Goro Crater,38.5,66.1
>>Loot the boxes at the abandoned camp
.complete 3881,2 
step
.goto Un'Goro Crater,40.6,48.1,0
#sticky
#label Pterrordax
.complete 4501,2 
.complete 4503,2 
step
.goto Un'Goro Crater,30.928,50.438
.target Krakle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.accept 974 >> Accept Finding the Source
step
.goto Un'Goro Crater,24.0,59.2
.complete 4288,1 
step
.goto Un'Goro Crater,49.7,45.8
>>Climb to the top of the volcano and use the thermometer at the fiery obelisk
.complete 974,1 
step
#requires Pterrordax
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
.turnin 974 >> Turn in Finding the Source
.target Krakle
.accept 980 >> Accept The New Springs
step
#era/som
#requires dinos
.goto Un'Goro Crater,49.7,45.8
>>Kill Fire Elementals around the volcano
.complete 4502,1
step
#requires dinos
.goto Un'Goro Crater,52.0,50.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
.turnin 4492 >> Turn in Lost!
.target Ringo
.accept 4491 >> Accept A Little Help From My Friends
step
.goto Un'Goro Crater,43.617,8.497
>>Escort Ringo to Marshal's Refuge, use Spraggle's Canteen on him if he faints and stop following you.
.complete 4491,1
step
.goto Un'Goro Crater,43.617,8.497
.target Spraggle Frock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.turnin 4491 >> Turn in A Little Help From My Friends
step
.goto Un'Goro Crater,43.617,8.497
.target Spraggle Frock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
.turnin 4501 >> Turn in Beware of Pterrordax
step
.goto Un'Goro Crater,43.6,7.5
.target Spark Nilminer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
.turnin 3882 >> Turn in Roll the Bones
step
.goto Un'Goro Crater,43.889,7.239
.target Williden Marshal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
.turnin 3881 >> Turn in Expedition Salvation
.target Hol'anyee Marshal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
.turnin 3883 >> Turn in Alien Ecology
step
.goto Un'Goro Crater,41.8,2.7
>>Talk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4285 >> Turn in The Northern Pylon
.turnin 4287 >> Turn in The Eastern Pylon
.turnin 4288 >> Turn in The Western Pylon
.target J.D. Collie
.accept 4321 >> Accept Making Sense of It
.turnin 4321 >> Turn in Making Sense of It
step
.goto Un'Goro Crater,44.232,11.586
.target Shizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
.turnin 4503 >> Turn in Shizzle's Flyer
step
.goto Un'Goro Crater,46.378,13.444
.target Karna Remtravel
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
.accept 4243 >> Accept Chasing A-Me 01
step
#som
#phase 3-6
.goto Un'Goro Crater,46.86,15.11,100,0
.goto Un'Goro Crater,42.03,21.77,100,0
.goto Un'Goro Crater,49.54,20.49,100,0
.goto Un'Goro Crater,52.00,27.21,100,0
.goto Un'Goro Crater,64.11,24.14,100,0
.goto Un'Goro Crater,59.65,31.29
>>Kill the Tar Beasts in the area. Loot them for their Tar
>>Be careful as the Tar Lords cast Entangling Roots << !Warrior !Rogue !Paladin
>>Be careful as the Tar Lords cast Entangling Roots, and all Tar Beasts have a thorns-like effect where you can be Disarmed for 4 seconds << Warrior/Rogue/Paladin
.complete 4504,1 
step
#hardcore
#sticky
#label ChasingAme
.goto Un'Goro Crater,67.6,16.8
.target A-Me 01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >> Turn in Chasing A-Me 01
step
.goto Un'Goro Crater,68.2,12.6
>>Kill the named Gorilla at the end of the cave
.complete 4301,1 
step
#hardcore
#requires ChasingAme
.goto Un'Goro Crater,71.6,76.0
.target Torwa Pathfinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4301 >> Turn in The Mighty U'cha
step
#softcore
.goto Un'Goro Crater,67.6,16.8
>>Wait for A-Me to respawn if she's not here
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >> Turn in Chasing A-Me 01
>>Skip the rest of this step if you didn't get a Mithril Casing earlier
.target A-Me 01
.accept 4244 >> Accept Chasing A-Me 01
.turnin 4244 >> Turn in Chasing A-Me 01
.accept 4245 >> Accept Chasing A-Me 01
step
#softcore
.isOnQuest 4245
>>Escort A-Me back to the outside of Marshal's Refuge
.goto Un'Goro Crater,46.38,13.45
.complete 4245,1 
.target Karna Remtravel
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
.turnin 4245 >>Turn in Chasing A-Me 01
step
#softcore
.goto Un'Goro Crater,71.6,76.0
.target Torwa Pathfinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
.turnin 4301 >> Turn in The Mighty U'cha
step
>> Make sure you have 25 Un'Goro Soil before leaving Un'Goro. Loot dirt piles or kill mobs for Soil
.collect 11018,25
step
#hardcore
>>Run back to Tanaris
.goto Tanaris,50.88,26.96
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4496 >> Turn in Bungle in the Jungle
step
#softcore
>>Run back to Tanaris, die and respawn at the Gadgetzan graveyard
.goto Tanaris,50.88,26.96
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4496 >> Turn in Bungle in the Jungle
step
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
step
#era/som
.hs >> Hearth to Ratchet
>> Buy food/water if needed

step
#era/som
.goto The Barrens,62.44,38.73
.target Liv Rizzlefix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
.turnin 4502 >> Turn in Volcanic Activity
step
#som
#phase 3-6
.hs >> Hearth to Darnassus << !Mage
+Teleport to Darnassus << Mage
.zoneskip Darnassus
step
#sticky
.bankwithdraw 11682,12906,11511,12383 >> Withdraw the following:
>>Eridan's vial
>>Purified Moonwell Water
>>Cenarion beacon
>>Moontouched Feathers
step
#era/som
.fly Teldrassil>> Fly to Teldrassil << !Mage
.zone Darnassus >> Teleport to Darnassus << Mage
step
#sticky
#label herald
>>Find Herald Moonstalker, she walks around Darnassus
.target Herald Moonstalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herald Moonstalker|r
.accept 1047 >> Accept The New Frontier
.unitscan Herald Moonstalker
step
#completewith end
.goto Darnassus,63.8,22.8,0
>> Do the Darnassus cloth turn ins, you'll need 3 stacks of each cloth
.target Raedon Duskstriker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raedon Duskstriker|r
.turnin 7792 >> Turn in A Donation of Wool
.turnin 7798 >> Turn in A Donation of Silk
.turnin 7799 >> Turn in A Donation of Mageweave
.turnin 7800 >> Turn in A Donation of Runecloth
step
#completewith end
.vendor >> Buy food/water before flying off to Felwood
step
.goto Darnassus,39.19,85.12
>> Use Eridan's Vial at the fountain inside the temple
.complete 4441,1
step
.goto Darnassus,67.38,15.68
.target Innkeeper Saelienne
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
.accept 3763 >> Accept Assisting Arch Druid Staghelm
step
#requires herald
.goto Darnassus,34.81,9.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 3763 >> Turn in Assisting Arch Druid Staghelm
.target Arch Druid Fandral Staghelm
.accept 3764 >> Accept Un'Goro Soil
step
#requires herald
#completewith next
.goto Darnassus,34.81,9.25
.target Arch Druid Fandral Staghelm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 1047 >> Turn in The New Frontier
step
#requires herald
.goto Darnassus,34.81,9.25
.target Arch Druid Fandral Staghelm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 6761 >> Accept The New Frontier
step
.goto Darnassus,31.48,8.23
>> Jump down to the ground level, just outside the tree house
.target Jenal
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenal|r
.turnin 3764 >> Turn in Un'Goro Soil
step
.goto Darnassus,34.81,9.25
>> Run upstairs and speak with the Arch Druid
.target Arch Druid Fandral Staghelm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.accept 3781 >> Accept Morrowgrain Research
step
#completewith next
.goto Darnassus,35.37,8.40
>> Run down to the middle floor, speak with Mathrengyl Bearwalker
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 6761 >> Turn in The New Frontier
step
.goto Darnassus,35.37,8.40
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.accept 6762 >> Accept Rabine Saturna
step
.goto Darnassus,35.37,8.40
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 3781 >> Turn in Morrowgrain Research
step
#label end
.goto Darnassus,30.41,41.40
.zone Teldrassil >> Exit Darnassus and go back to Ruth'theran Village
step
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 978 >> Accept Moontouched Wildkin
step
.goto Teldrassil,55.49,92.04
>> Skip this step if you just got this quest (Moontouched Wildkin)
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.isQuestComplete 978
step
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 979 >> Accept Find Ranshalla
.isQuestTurnedIn 978
step
.goto Teldrassil,55.41,92.23
>> Run upstairs
.target Daryn Lightwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
.accept 5250 >> Accept Starfall
step
.goto Teldrassil,58.399,94.016
.fly Felwood>> Fly to Felwood
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 54-55 Felwood/Winterspring
#next 55-56 Winterspring
step
#era/som
#sticky
#label shards
>> Kill mobs in felwood
.collect 11515,6,5882,1
step
#som
#phase 3-6
.goto Felwood,64.8,8.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8462 >> Turn in Speak to Nafien
.target Nafien
.accept 8461 >> Accept Deadwood of the North
step
#som
#phase 3-6
#sticky
#completewith firewater
.goto Winterspring,27.7,34.5,100 >> Cross the furbolg tunnel, take the east exit at the intersection and head to Winterspring
step
#som
#phase 3-6
.goto Winterspring,31.2,45.4
.target Donova Snowden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 5082 >> Accept Threat of the Winterfall
.turnin 3908 >> Turn in It's a Secret to Everybody
.turnin 980 >> Turn in The New Springs
step
#som
#phase 3-6
.goto Winterspring,31.1,36.2
>>Grind Furbolgs until you get an Empty Firewater Flask
.collect 12771,1,5083
.accept 5083 >> Accept Winterfall Firewater
step
#som
#phase 3-6
#label firewater
.goto Winterspring,31.2,45.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5083 >> Turn in Winterfall Firewater
.target Donova Snowden
.accept 5084 >> Accept Falling to Corruption
step
#som
#phase 3-6
.goto Felwood,60.2,5.9
>>Go back to felwood and click on the cauldron at the middle of the furbolg camp
.turnin 5084 >> Turn in Falling to Corruption
.accept 5085 >> Accept Mystery Goo
step
#som
#phase 3-6
.goto Felwood,62.4,8.6
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.collect 11515,6,5882 
step
#som
#phase 3-6
.goto Felwood,64.8,8.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8461 >> Turn in Deadwood of the North
.target Nafien
.accept 8465 >> Speak to Salfa
step
#som
#phase 3-6
.goto Winterspring,27.7,34.5
>>Cross the furbolg tunnel into Winterspring
.target Salfa
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8465 >> Speak to Salfa
step
#som
#phase 3-6
.goto Winterspring,31.2,45.3
>>Head back to Wintersrping
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5085 >> Turn in Mystery Goo
.target Donova Snowden
.accept 5086 >> Accept Toxic Horrors


step
.goto Felwood,51.34,81.50
>> Go inside the small hut and turn in Felbound Ancients first
.target Eridan Bluewind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4441 >> Turn in Felbound Ancients
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5159 >> Turn in Cleansed Water Returns to Felwood
.target Greta Mosshoof
.accept 5165 >> Accept Dousing the Flames of Protection
step
.goto Felwood,51.34,81.50
.target Eridan Bluewind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.accept 4442 >> Accept Purified!
.turnin 4442 >> Turn in Purified!
step
.goto Felwood,54.20,86.80
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
.accept 5882 >> Accept Salve via Hunting
.turnin 5882 >> Turn in Salve via Hunting
>>If you don't have 6 shards farm some mobs around until you do
step
#completewith next
+Look out for a Corrupted Songflower en route. Right click it if you see one to cleanse it, then right click it again to get a VERY powerful buff
>>These require you to have 2 Cenarion Plant Salves
step
.goto Felwood,35.38,58.66,50 >> Head to Shadow Hold, Jaedenar's underground lair
step
#sticky
#label redkey
.goto Felwood,36.2,55.6,0
>>Grind mobs inside the Shadow Hold
.collect 13140,1,5202
>>Click on the key to accept the quest
.accept 5202 >> Accept A Strange Red Key
step
#sticky
#requires redkey
#label eStart
.goto Felwood,36.206,55.465,0
>>Start the escort quest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Arko'narin|r
.turnin 5202 >> Turn in A Strange Red Key
.target Captured Arko'narin
.accept 5203 >> Accept Rescue From Jaedenar
step
#sticky
#requires eStart
#label escortEnd
.complete 5203,1 
>>Once you get close to the last brazier and Arko'narin gets hold of her equipment, 3 felguards will spawn, be careful
step
#label brazier
.goto Felwood,36.3,56.2
.complete 5165,1 
step
.goto Felwood,36.5,55.1
.complete 5165,4 
step
.goto Felwood,36.7,53.3
.complete 5165,3 
step
.goto Felwood,37.6,52.7
.complete 5165,2 

step
#som
#phase 3-6
#requires escortEnd
.goto Felwood,51.3,82.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5165 >> Turn in Dousing the Flames of Protection
.target Greta Mosshoof
.accept 5242 >> Accept A Final Blow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5203 >> Turn in Rescue From Jaedenar
.target Jessir Moonbow
.accept 5204 >> Accept Retribution of the Light
step
#som
#phase 3-6
.goto Felwood,38.499,50.414
>>Go deep into the Shadow Hold. Kill |cRXP_ENEMY_0Rakaiah|r
.complete 5204,1 
step
#som
#phase 3-6
.goto Felwood,38.499,50.414
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remains of Trey Lightforge|r
.turnin 5204 >> Turn in Retribution of the Light
.target Remains of Trey Lightforge
.accept 5385 >> Accept The Remains of Trey Lightforge
step
#som
#phase 3-6
.goto Felwood,38.9,46.8
>>Dive deeper into the Shadow Hold. Kill |cRXP_ENEMY_Moora|r and |cRXP_ENEMY_Salia|r. Kill |cRXP_LOOT_Fel'dan|r and loot him for his |cRXP_LOOT_Head|r
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
step
#som
#phase 3-6
.goto Felwood,49.73,31.25,120 >> Jump on top of the purple jar right next to the wall and logout to teleport to the Irontree Woods graveyard
.link https://www.twitch.tv/videos/1219250841?t=02h06m57s >> Click here for video reference
step
#som
#phase 3-6
#sticky
#label Droplets
.goto Felwood,50.0,24.7,0
>>Kill |cRXP_LOOT_water elementals|r for |cRXP_LOOT_Toxic Horror Droplets|r
.complete 5086,1 
.isOnQuest 5086

step
#requires escortEnd
.goto Felwood,49.55,29.71
>> Stop by the northern graveyard, right click on the flute of the ancients and start the escort quest
.target Arei
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arei|r

.accept 4261 >> Accept Ancient Spirit
step
>> Escort Arei
.complete 4261,1
step
#som
#phase 3-6
#requires Droplets
.goto Winterspring,27.7,34.5,100 >> Cross the furbolg tunnel, take the east exit at the intersection and head to Winterspring
.zoneskip Winterspring
step
#era/som
.goto Felwood,64.76,8.12
.target Nafien
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.accept 8461 >> Accept Deadwood of the North
step
#era/som
.goto Felwood,62.59,11.16
.complete 8461,1
.complete 8461,2
.complete 8461,3
step
#era/som
.goto Felwood,64.76,8.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
.turnin 8461 >> Turn in Deadwood of the North
.target Nafien
.accept 8465 >> Accept Speak to Salfa
step
#era/som
.goto Felwood,68.30,6.07
>> Run to Winterspring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8465 >> Turn in Speak to Salfa
.target Salfa
.accept 8464 >> Accept Winterfall Activity
step
#era/som
.goto Winterspring,31.26,45.16
.target Donova Snowden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 3909 >> Turn in The Videre Elixir
.isQuestComplete 3909
step
#era/som
#softcore
.goto Winterspring,31.26,45.16
.target Donova Snowden
>>Talk to |cRXP_FRIENDLY_Donova Snowden|r
.accept 3912 >> Accept Meet at the Grave
.isQuestTurnedIn 3912
step
.goto Winterspring,31.26,45.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 980 >> Turn in The New Springs
.target Donova Snowden
.accept 4842 >> Accept Strange Sources
.accept 5082 >> Accept Threat of the Winterfall
step
#sticky
#label furbolgs
.goto Winterspring,30.59,36.04
.complete 5082,1
.complete 5082,2
.complete 5082,3
step
#era/som
.goto Winterspring,67.17,35.52,0
>> Kill |cRXP_LOOT_furbolgs|r until you get an |cRXP_LOOT_Empty Firewater Flask|r
.collect 12771,1,5083
.accept 5083 >> Accept Winterfall Firewater
step
#requires furbolgs
.goto Winterspring,31.26,45.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5082 >> Turn in Threat of the Winterfall
.turnin 5083 >> Turn in Winterfall Firewater
.target Donova Snowden
.accept 5084 >> Accept Falling to Corruption
step
#era/som
.goto Felwood,60.2,5.9
>>Run back to Felwood
>> Click on the |cRXP_PICK_cauldron|r guarded by a bunch of furbolgs
>>You don't need to kill all of them, you can create an escape route, click on the cauldron and run away
.turnin 5084 >> Turn in Falling to Corruption
.accept 5085 >> Accept Mystery Goo
step
#era/som
.goto Winterspring,31.26,45.16
>> Run back to Winterspring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5085 >> Turn in Mystery Goo
.target Donova Snowden
.accept 5086 >> Accept Toxic Horrors
step
.goto Winterspring,43.78,43.39
>> Look for |cRXP_PICK_blue feathers|r on the ground
.complete 978,1
.isOnQuest 978
step << Hunter
#era/som
#softcore
#completewith next
.deathskip >> Die and respawn at Everlook
step << Hunter
#completewith next
.goto Winterspring,62.33,36.61
.fly Teldrassil>> Fly to Teldrassil
step << Hunter
.goto Teldrassil,55.49,92.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
.accept 979 >> Accept Find Ranshalla
.isQuestTurnedIn 3661
step
#era/som
.hs >> Hearth to Ratchet
>> Buy food/water if needed
step
#era/som
#softcore
.fly Tanaris>> Fly to Tanaris
.zoneskip Tanaris
step
#era/som
#softcore
.goto Tanaris,50.88,26.96
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4496 >> Turn in Bungle in the Jungle
step
#era/som
#softcore
#completewith next
.goto Tanaris,53.81,29.06,0
.goto Tanaris,53.81,29.06,40,0
.cast 14050 >> Use the Videre Elixir at the Tanaris graveyard, just east of Gadgetzan
step
#era/som
#softcore
.goto Tanaris,53.93,23.33
>> Speak to the ghost just north of the graveyard, you can only see him while dead
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaeriyan|r
.turnin 3912 >> Turn in Meet at the Grave
.target Gaeriyan
.accept 3913 >> Accept A Grave Situation
step
#era/som
#softcore
.goto Tanaris,53.81,29.06
>> Click on the |cRXP_PICK_Conspicuous Gravestone|r
.turnin 3913 >> Turn in A Grave Situation
.accept 3914 >> Accept Linken's Sword
step
#era/som
#softcore
#completewith next
.destroy 11243 >> Delete the Videre Elixirs from your bag
step
#era/som
#softcore
.goto Tanaris,51.01,29.35
.fly Un'Goro>> Fly to Un'Goro
step
#era/som
#softcore
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3914 >> Turn in Linken's Sword
.target Linken
.accept 3941 >> Accept A Gnome's Assistance
step
#era/som
#softcore
.goto Un'Goro Crater,41.91,2.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 3941 >> Turn in A Gnome's Assistance
.target J.D. Collie
.accept 3942 >> Accept Linken's Memory
step
#era/som
.fly Azshara>> Fly to Azshara
step
#era/som
.goto Ashenvale,85.23,44.71
>> Run to Ashenvale
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 4261 >> Turn in Ancient Spirit
.isOnQuest 4261
step
#era/som
#sticky
.destroy 11445 >> Throw away the Flute of the Ancients
.isQuestTurnedIn 4261
step
#era/som
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5165 >> Turn in Dousing the Flames of Protection
.target Greta Mosshoof
.accept 5242 >> Accept A Final Blow
step
#era/som
.goto Felwood,51.34,82.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5203 >> Turn in Rescue From Jaedenar
.target Jessir Moonbow
.accept 5204 >> Accept Retribution of the Light
step
#era/som
#softcore
.goto Winterspring,14.00,95.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 3942 >> Turn in Linken's Memory
.target Eridan Bluewind
.accept 4084 >> Accept Silver Heart
.isQuestTurnedIn 3941
step
#era/som
#softcore
#completewith next
>> Kill |cRXP_ENEMY_Bears/Wolves|r as you go through Felwood
.complete 4084,1
.isOnQuest 4084
step
#era/som
#sticky
#completewith next
.goto Felwood,35.38,58.66,50 >> Head to Shadow Hold, Jaedenar's underground lair
step
#era/som
.goto Felwood,38.49,50.40
>>Kill the |cRXP_ENEMY_succubus|r next to the ritual circle
.complete 5204,1
step
#era/som
.goto Felwood,38.49,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remains of Trey Lightforge|r
.turnin 5204 >> Turn in Retribution of the Light
.target Remains of Trey Lightforge
.accept 5385 >> Accept The Remains of Trey Lightforge
step
#era/som
.goto Felwood,38.86,46.79
>> Go deeper into the Shadow Hold
>>|cRXP_WARN_Be careful, Salia has a mind control spell|r << Hunter/Warlock
.complete 5242,1
.complete 5242,2
.complete 5242,3
step
#era/som
#softcore
#sticky
#label silverheart
>> Finish off |cRXP_ENEMY_Bears/Wolves|r
.complete 4084,1
.isOnQuest 4084

step << Rogue/Warrior
#era/som
.goto Felwood,51.21,82.10
.target Greta Mosshoof
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5242 >> Turn in A Final Blow
step << Rogue/Warrior
#era/som
.goto Felwood,51.34,82.01
.target Jessir Moonbow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5385 >> Turn in The Remains of Trey Lightforge
step
#era/som
.goto Felwood,49.52,25.10
>>Kill |cRXP_LOOT_water elementals|r and loot them for |cRXP_LOOT_Toxic Horror Droplets|r
.complete 5086,1
step
#era/som
#softcore
.goto Winterspring,12.64,45.66
>> Kill |cRXP_ENEMY_Irontree Stompers|r and loot them for |cRXP_LOOT_silvery claws|r
.complete 4084,2
step
#era/som
#requires silverheart
.goto Felwood,65.40,7.10,30 >> Go to Winterspring through the furbolg tunnel
.zoneskip Winterspring
step
#era/som
#requires silverheart
.goto Winterspring,31.26,45.16
>> Run to Winterspring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5086 >> Turn in Toxic Horrors
.target Donova Snowden
.accept 5087 >> Accept Winterfall Runners
step
#sticky
#completewith end
>> Look for |cRXP_LOOT_winterfall runners|r as you quest
.complete 5087,1
.unitscan WINTERFALL RUNNER
step
.goto Winterspring,51.97,30.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
.turnin 5250 >> Turn in Starfall
.target Wynd Nightchaser
.accept 5244 >> Accept The Ruins of Kel'Theril
step
.goto Winterspring,52.13,30.42
.target Jaron Stoneshaper
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaron Stoneshaper|r
.accept 4861 >> Accept Enraged Wildkin
.turnin 5244 >> Turn in The Ruins of Kel'Theril
.accept 5245 >> Accept Troubled Spirits of Kel'Theril
step
#label end
.goto Winterspring,50.88,41.71
>>Click on the |cRXP_PICK_patch of ice|r on top of the frozen lake
.complete 5245,2
step
.goto Winterspring,52.42,41.50
.complete 5245,4
step
.goto Winterspring,53.30,43.43
.complete 5245,3
step
.goto Winterspring,55.13,42.98
.complete 5245,1
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 55-56 Winterspring
#next 56-57 Burning Steppes
step
#hardcore
.goto Winterspring,61.30,38.90
.home >> Set your Hearthstone to Everlook
step
#softcore
#era/som
.goto Winterspring,61.30,38.90
.home >> Set your Hearthstone to Everlook
step
#sticky
.bankdeposit 15788,15790,17355,11511,11172,11173,13562,13207,12891,12896,12897,12898,12899 >> Deposit the following items:
>>Everlook report
>>Studies in spirit speaking
>>Rabine's Letter
>>Cenarion Beacon
>>Silvery Claws << !Rogue !Warrior
>>Irontree Heart << !Rogue !Warrior
>>Jaron's Pick
>>All 4 Relics
step << Hunter
.goto Winterspring,61.91,38.29
.target Witch Doctor Mau'ari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r

.accept 969 >> Accept Luck Be With You
step
#softcore
.goto Winterspring,53.14,34.68
>> Find the |cRXP_LOOT_Winterfall Runners|r, they patrol the road between winterfall village and the furbolg tunnel west
>> Use eagle eye to find them << Hunter
.complete 5087,1
.unitscan WINTERFALL RUNNER
step
#hardcore
#sticky
#completewith next
>> Look for |cRXP_LOOT_Winterfall Runners|r as you quest
.complete 5087,1
.unitscan WINTERFALL RUNNER
step
#era/som
.goto Winterspring,67.08,35.48
>> Finish killing |cRXP_ENEMY_Winterfall Shamans, Ursas|r and |cRXP_ENEMY_Den Watchers|r
>>Abandon this quest if the village is too crowded
.complete 8464,1
.complete 8464,2
.complete 8464,3
step
.goto Winterspring,58.99,59.78
>> Click on the |cRXP_PICK_damaged crate|r, be careful with the level 59 owlkins that roam the area
.turnin 4861 >> Turn in Enraged Wildkin
.accept 4863 >> Accept Enraged Wildkin
step
.goto Winterspring,61.44,60.67
.turnin 4863 >> Turn in Enraged Wildkin
.accept 4864 >> Accept Enraged Wildkin
step
.goto Winterspring,61.40,60.72
>> Click on the |cRXP_PICK_small crate|r next to Jaron's Wagon
.complete 4864,1
step
#sticky
#label amulet
.goto Winterspring,65.49,60.50
>> Kill |cRXP_LOOT_Owlbeasts|r and loot them for the |cRXP_LOOT_amulet|r
.complete 4864,2
step << Hunter
#completewith next
.goto Winterspring,63.07,59.47
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
step << Hunter
>>Kill the high level mobs from the thicket before starting the escort quest
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.accept 4901 >> Accept Guardians of the Altar
step << !Hunter
.goto Winterspring,63.07,59.47
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
>> Skip the follow up
.isOnQuest 979
step << Hunter
>> Escort Ranshalla
>>Click on the |cRXP_PICK_torches|r once she gets inside one of the caves
>>Right click the |cRXP_PICK_stone altar|r at the end
.complete 4901,1
step << Hunter
#requires amulet
#sticky
>> Loot the |cRXP_PICK_blue crystals|r around the outer perimeter of the canyon, use your pet to bait the giants away from the crystals
>>This is a hard quest to solo, skip this quest if you have to
.complete 969,1
.link https://www.twitch.tv/videos/850027450?t=00h26m14s >> Click here for video reference
step
#requires amulet
.goto Winterspring,59.52,75.23
>> Run south to Darkwhisper Gorge
.complete 4842,1
step
#hardcore
.hs >> Hearth to Everlook
>> Buy food/water if needed
step
#softcore
#era/som
.hs >> Hearth to Everlook
>> Buy food/water if needed
step
#som
#phase 3-6
#completewith next
#softcore
.deathskip >> Die and respawn at Everlook
step
.goto Winterspring,61.34,38.97
.target Gregor Greystone
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor Greystone|r
.accept 6030 >> Accept Duke Nicholas Zverenhoff
.accept 6028 >> Accept The Everlook Report
.target Jessica Redpath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Redpath|r
.accept 5601 >> Accept Sister Pamela
step << Hunter
.goto Winterspring,61.91,38.29
.target Witch Doctor Mau'ari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r

.turnin 969 >> Turn in Luck Be With You
.isQuestComplete 969
step
.goto Winterspring,52.13,30.42
.target Jaron Stoneshaper
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaron Stoneshaper|r
.turnin 4864 >> Turn in Enraged Wildkin
step
.goto Winterspring,53.14,34.68
>> Find the |cRXP_LOOT_Winterfall Runners|r, they patrol the road between winterfall village and the furbolg tunnel west
>> Use eagle eye to find them << Hunter
.complete 5087,1
.unitscan WINTERFALL RUNNER
step
.goto Winterspring,31.26,45.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 4842 >> Turn in Strange Sources
.turnin 5087 >> Turn in Winterfall Runners
.target Donova Snowden
.accept 5121 >> Accept High Chief Winterfall
step
.goto Felwood,68.30,6.07
.target Salfa
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
.turnin 8464 >> Turn in Winterfall Activity
.isQuestComplete 8464
step
#softcore
#completewith next
.deathskip >> Die and respawn at Everlook
step
#som
#phase 3-6
.goto Winterspring,62.2,36.6
.fly Azshara >> Fly to Azshara
step
#som
#phase 3-6
.goto Ashenvale,85.23,44.71
>> Run to Ashenvale
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
.turnin 4261 >> Turn in Ancient Spirit
.isOnQuest 4261
step
#som
#phase 3-6
#sticky
.destroy 11445 >> Throw away the Flute of the Ancients
.isQuestTurnedIn 4261
step
#som
#phase 3-6
>>Run to Felwood
.target Greta Mosshoof
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5242 >> Turn in A Final Blow
.goto Felwood,51.21,82.10
.target Jessir Moonbow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5385 >> Turn in The Remains of Trey Lightforge
.goto Felwood,51.34,82.01
step
#som
#phase 3-6
#hardcore
.goto Ashenvale,34.40,48.00
>>Run southwest to Astranaar
.fly Darkshore>> Fly to Darkshore
step
#softcore
#som
#phase 3-6
.hs >> Hearth to Darnassus
step
#era/som
#completewith next
.goto Winterspring,62.2,36.6
.fly Teldrassil>> Fly to Teldrassil
step << !Hunter
.goto Teldrassil,55.49,92.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 978 >> Turn in Moontouched Wildkin
.target Erelas Ambersky
.accept 979 >> Accept Find Ranshalla
step << Hunter
.goto Teldrassil,55.49,92.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
.target Erelas Ambersky
.accept 4902 >> Accept Wildkin of Elune
step << Hunter
#sticky
.bankwithdraw 10445,11947,11949,12724,10575 >> Withdraw the following:
>>Drawing Kit
>>Filled Cursed Ooze Jar
>>Filled Tainted Ooze Jar
>>Janice's Parcel
>>Black Dragonflight Molt
step << Hunter
#sticky
.trainer >> Train skills
step << Hunter
.goto Teldrassil,24.44,48.86
.target Arch Druid Fandral Staghelm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 4902 >> Turn in Wildkin of Elune
step
.goto Teldrassil,58.399,94.016
.fly Darkshore>> Fly to Darkshore
.zoneskip Darkshore
step
.goto Darkshore,32.4,43.8
.zone Wetlands >> Take the boat to Wetlands
step
.goto Wetlands,9.49,59.70
.fly Ironforge>> Fly to Ironforge
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 56-57 Burning Steppes
#next 57-59 Western/Eastern Plaguelands
step << !Hunter
#sticky
.bankwithdraw 10445,11947,11949,12724,10575 >> Withdraw the following:
>>Drawing Kit
>>Filled Cursed Ooze Jar
>>Filled Tainted Ooze Jar
>>Janice's Parcel
>>Black Dragonflight Molt
step
.goto Ironforge,75.76,23.38
.target Laris Geardawdle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
.turnin 4512 >> Turn in A Little Slime Goes a Long Way
step
.goto Ironforge,30.96,4.82
.target Tymor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
.turnin 3461 >> Turn in Return to Tymor
.isOnQuest 3461
step
.goto Ironforge,32.22,63.26
.target Lieutenant Rotimer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Rotimer|r
.accept 7261 >>Accept The Sovereign Imperative
step
.goto Ironforge,18.54,51.66
.home >> Set your Hearthstone to Ironforge
step
.goto Ironforge,38.36,55.30
.target Royal Historian Archesonus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.accept 3702 >> Accept The Smoldering Ruins of Thaurissan
step
.goto Ironforge,38.36,55.30
>> Listen to her story
.complete 3702,1
.skipgossip
step
.goto Ironforge,38.36,55.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.turnin 3702 >> Turn in The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
.accept 3701 >> Accept The Smoldering Ruins of Thaurissan
step
.goto Ironforge,55.51,47.75
.fly Burning Steppes>> Fly to Burning Steppes
.isQuestTurnedIn 3823
step
#completewith next
.goto Ironforge,55.51,47.75
.fly Redridge >> Fly to Redridge
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >>Head to the Burning Steppes
step
.goto Burning Steppes,84.55,68.67
>>Head to Morgan's Vigil
.target Oralius
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 3823 >> Accept Extinguish the Firegut
step
.goto Burning Steppes,84.55,68.67
.target Oralius
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.accept 4283 >> Accept FIFTY! YEP!
step
.goto Burning Steppes,85.82,68.94
.target Helendis Riverhorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.accept 4182 >> Accept Dragonkin Menace
step
.goto Burning Steppes,82.80,37.40
>> Finish killing |cRXP_ENEMY_Ogres|r
.complete 3823,1
.complete 3823,2
.complete 3823,3
step
.goto Burning Steppes,84.55,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3823 >> Turn in Extinguish the Firegut
.target Oralius
.accept 3824 >> Accept Gor'tesh the Brute Lord
step
#sticky
.goto Burning Steppes,95.09,31.56
>> Skip this step if you don't have the Black Dragonflight Molt
.target Cyrus Therepentous
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
.accept 4022 >> Accept A Taste of Flame
.turnin 4022 >> Turn in A Taste of Flame

step
.goto Burning Steppes,65.23,24.00
.target Tinkee Steamboil
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
.accept 4726 >> Accept Broodling Essence
.target Maxwort Uberglint
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
.accept 4296 >> Accept Tablet of the Seven
step
#sticky
#label broodlings
>> Kill |cRXP_ENEMY_broodlings|r as you go along, use the quest item when they get low
.complete 4726,1
step
#softcore
.goto Burning Steppes,85.4,27.4,0
.goto Burning Steppes,88.8,37.6,0
.goto Burning Steppes,93.4,56.2,0
.goto Burning Steppes,78.2,62.6,0
.goto Burning Steppes,56.8,61.0,0
>> Prioritize killing |cRXP_ENEMY_broodlings|r over anything else
.complete 4182,1
.complete 4182,2
.complete 4182,3
.complete 4182,4
>>This is a hard quest solo but it's worth a lot of xp in the end, try to find a group or skip this quest if you're struggling with it
step << !Warrior !Paladin !Rogue
#hardcore
.goto Burning Steppes,85.4,27.4,0
.goto Burning Steppes,88.8,37.6,0
.goto Burning Steppes,93.4,56.2,0
.goto Burning Steppes,78.2,62.6,0
.goto Burning Steppes,56.8,61.0,0
>> Prioritize killing |cRXP_ENEMY_broodlings|r over anything else
.complete 4182,1
.complete 4182,2
.complete 4182,3
.complete 4182,4
.isOnQuest 4182
>>This is a very hard quest solo, skip this quest if you have to.
step
#requires broodlings
#label q3701
#sticky
.goto Burning Steppes,57.4,36.4,0
>> Right click on the |cRXP_PICK_small stone obelisks|r on the ground near the dwarf ruins
.complete 3701,1
step
#requires broodlings
.goto Burning Steppes,54.06,40.71
>> Transcribe the tablet by clicking on the |cRXP_PICK_statue|r
.complete 4296,1
.skipgossip
step
#requires q3701
#label gortesh
#sticky
.goto Burning Steppes,38.89,54.73
>>Gor'tesh |cRXP_WARN_hits very hard and has a thrash attack, be careful|r
.complete 3824,1
step
#requires q3701
.goto Burning Steppes,41.25,34.71
>> Kill |cRXP_LOOT_Orcs|r loot them for |cRXP_LOOT_Medallions|r
.complete 4283,1
step
#requires gortesh
.goto Burning Steppes,85.82,68.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.turnin 4182 >> Turn in Dragonkin Menace
.target Helendis Riverhorn
.accept 4183 >> Accept The True Masters
.isQuestComplete 4182
step
.goto Burning Steppes,85.82,68.94
.target Helendis Riverhorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helendis Riverhorn|r
.accept 4183 >> Accept The True Masters
.isQuestTurnedIn 4182
step
.goto Burning Steppes,84.55,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 4283 >> Turn in FIFTY! YEP!
.turnin 3824 >> Turn in Gor'tesh the Brute Lord
.target Oralius
.accept 3825 >> Accept Ogre Head On A Stick = Party
step
#completewith next
.goto Burning Steppes,84.33,68.33
.fly Redridge>> Fly to Redridge Mountains
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 4183 >> Turn in The True Masters
.target Magistrate Solomon
.accept 4184 >> Accept The True Masters
.isQuestTurnedIn 4182
step
.goto Redridge Mountains,30.58,59.42
.fly Stormwind>> Fly to Stormwind
step << Paladin
#phase 4
#era
.goto Stormwind City,37.2,33.1
.target Brandur Ironhammer
.target Lord Grayson Shadowbreaker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r

.accept 8415 >>Accept Chillwind Camp
step << Paladin
#som
.goto Stormwind City,37.2,33.1
.target Brandur Ironhammer
.target Lord Grayson Shadowbreaker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r

.accept 8415 >>Accept Chillwind Camp
step
.goto Stormwind City,48.46,30.54
.target Royal Factor Bathrilor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r
.turnin 5022 >> Turn in Better Late Than Never
.isOnQuest 5022
step
.goto Stormwind City,48.46,30.54
.target Royal Factor Bathrilor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r
.accept 5048 >> Accept Good Natured Emma
.isQuestTurnedIn 5022
step
.goto Stormwind City,52.48,41.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ol' Emma|r. She can patrol around Stormwind.
.turnin 5048 >> Turn in Good Natured Emma
.target Jeremiah Payson
.target Ol' Emma

.accept 5050 >> Accept Good Luck Charm
.unitscan Ol' Emma
.isQuestTurnedIn 5022
step
.goto Stormwind City,78.22,17.97
.target Highlord Bolvar Fordragon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.accept 6182 >> Accept The First and the Last
step
.goto Stormwind City,78.22,17.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 4184 >> Turn in The True Masters
.target Highlord Bolvar Fordragon
.accept 4185 >> Accept The True Masters
.isQuestTurnedIn 4182
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|tSpeak with |cRXP_FRIENDLY_Lady Katrana Prestor|r and go through her whole dialogue
.complete 4185,1
.skipgossip
.isQuestTurnedIn 4182
step
.goto Stormwind City,78.22,17.97
.target Highlord Bolvar Fordragon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 4185 >> Turn in The True Masters
.isQuestTurnedIn 4182
step
.goto Stormwind City,78.22,17.97
.target Highlord Bolvar Fordragon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.accept 4186 >> Accept The True Masters
.isQuestTurnedIn 4182
step
.goto Stormwind City,75.77,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 6182 >> Turn in The First and the Last
.target Master Mathias Shaw
.accept 6183 >> Accept Honor the Dead
.turnin 6183 >> Turn in Honor the Dead
.accept 6184 >> Accept Flint Shadowmore
step
#completewith next
.goto Stormwind City,66.28,62.13
.fly Redridge>> Fly to Redridge Mountains
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
.turnin 4186 >> Turn in The True Masters
.target Magistrate Solomon
.accept 4223 >> Accept The True Masters
.isQuestTurnedIn 4182
step
.goto Redridge Mountains,30.58,59.42
.fly Burning Steppes>> Fly to Burning Steppes
.zoneskip Burning Steppes
step
.goto Burning Steppes,84.74,69.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4223 >> Turn in The True Masters
.target Marshal Maxwell
.accept 4224 >> Accept The True Masters
.isQuestTurnedIn 4182
step
.goto Burning Steppes,65.23,24.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
.turnin 4726 >> Turn in Broodling Essence
.target Tinkee Steamboil
.accept 4808 >> Accept Felnok Steelspring
.target Maxwort Uberglint
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
.turnin 4296 >> Turn in Tablet of the Seven
step
.goto Burning Steppes,65.0,23.8
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged John|r
.complete 4224,1
.skipgossip
.isQuestTurnedIn 4182
step
.goto Burning Steppes,81.04,46.71
>> Click on the |cRXP_PICK_dirt mound|r on top of the mountain
.complete 3825,1
step
.goto Burning Steppes,84.55,68.67
.target Oralius
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
.turnin 3825 >> Turn in Ogre Head On A Stick = Party
step
.goto Burning Steppes,84.74,69.01
.target Marshal Maxwell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Maxwell|r
.turnin 4224 >> Turn in The True Masters
.isQuestTurnedIn 4182
step << Druid
.trainer >>Teleport to Moonglade and train your level 56 spells
step
.hs >> Hearth to Ironforge
>> Buy food/water if needed
step << !Druid
#sticky
#completewith end
.trainer >> Train your level 56 spells
step
#sticky
.bankwithdraw 15788,15790,12891,12896,12897,12898,12899 >> Withdraw the follwing items:
>>Everlook report
>>Studies in spirit speaking
>>4 relic fragments and Jaron's pick
step
#sticky
.bankdeposit 12438 >> Deposit Tinkee's Letter in your bank
step << !Priest !Mage
>> Make sure you have 2 stacks of noggenfogger with you, having slow fall will save you about 5+ minutes later on
>>Skip this step if you don't have any in your bank
.collect 8529,40
step << Priest/Mage
>> Make sure you have some light feathers for the next segment, having Slow Fall will save you about 5+ minutes later on << Mage
>> Make sure you have some light feathers for the next segment, having Levitate will save you about 5+ minutes later on << Priest
.collect 17056,5
step
.goto Ironforge,32.22,63.26
.target Lieutenant Rotimer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Rotimer|r
.accept 7261 >>Accept The Sovereign Imperative
step
#sticky
.goto Ironforge,43.22,31.57
>> Do the Gnomeregan cloth turn ins
.target Bubulo Acerbus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
.turnin 7807 >> Turn in A Donation of Wool
.turnin 7808 >> Turn in A Donation of Silk
.turnin 7809 >> Turn in A Donation of Mageweave
.turnin 7811 >> Turn in A Donation of Runecloth
step
#sticky
.goto Ironforge,43.22,31.57
>> Do the Ironforge cloth turn ins
.target Mistina Steelshield
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
.turnin 7802 >> Turn in A Donation of Wool
.turnin 7803 >> Turn in A Donation of Silk
.turnin 7804 >> Turn in A Donation of Mageweave
.turnin 7805 >> Turn in A Donation of Runecloth
step
.goto Ironforge,38.36,55.30
.target Royal Historian Archesonus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Historian Archesonus|r
.turnin 3701 >> Turn in The Smoldering Ruins of Thaurissan
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 57-59 Western/Eastern Plaguelands
#next 59-59 Winterspring/Silithus part 1
step << Paladin
#phase 4
.goto Stormwind City,37.2,33.1
.target Brandur Ironhammer
.target Lord Grayson Shadowbreaker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r

.accept 8415 >>Accept Chillwind Camp
step
.goto Stormwind City,48.8,30.6
.target Royal Factor Bathrilor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r
.turnin 5022 >> Turn in Better Late Than Never
.isOnQuest 5022
step
.goto Stormwind City,48.8,30.6
.target Royal Factor Bathrilor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royal Factor Bathrilor|r
.accept 5048 >> Accept Good Natured Emma
.isQuestTurnedIn 5022
step
.goto Stormwind City,52.3,41.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ol' Emma|r. She walks around Stormwind.
.turnin 5048 >> Turn in Good Natured Emma
.target Jeremiah Payson
.target Ol' Emma

.accept 5050 >> Accept Good Luck Charm
.isQuestTurnedIn 5022
step
#level 56
.goto Stormwind City,78.1,18.0
.target Highlord Bolvar Fordragon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.accept 6182 >> Accept The First and the Last
step
#level 56
.goto Stormwind City,75.9,59.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
.turnin 6182 >> Turn in The First and the Last
.target Master Mathias Shaw
.accept 6183 >> Accept Honor the Dead
.turnin 6183 >> Turn in Honor the Dead
.accept 6184 >> Accept Flint Shadowmore
step
#label sshore
.fly Southshore>> Fly to Southshore
step
.goto Hillsbrad Foothills,51.17,58.93
.home >> Set your Hearthstone to Southshore
step
>>Ride up to Alterac Mountains
.goto Hillsbrad Foothills,43.38,19.51
.target Lieutenant Haggerdin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Haggerdin|r
.turnin 7261 >>Turn in The Sovereign Imperative
step
.goto Alterac Mountains,80.68,32.46
.zone Western Plaguelands>> Travel to Western Plaguelands
step << Paladin
#phase 4
#era
.goto Western Plaguelands,42.8,84.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8415 >>Turn in Chillwind Camp
.target Commander Ashlam Valorfist

step << Paladin
#phase 4
#era
.goto Western Plaguelands,43.0,83.6
>>Make sure you have the Argent Dawn Trinket
.collect 12846,1
step << Paladin
#phase 4
#era
#label sstones
#sticky
>>Equip the Arget Dawn trinket and kill |cRXP_LOOT_undead mobs|r. Loot them for |cRXP_LOOT_Scourgestones|r

.collect 12840,20,8414,1 
step << Paladin
#som
.goto Western Plaguelands,42.8,84.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8415 >>Turn in Chillwind Camp
.target Commander Ashlam Valorfist
.accept 8414 >>Accept Dispelling Evil
step << Paladin
#som
.goto Western Plaguelands,43.0,83.6
>>Make sure you have the Argent Dawn Trinket
.collect 12846,1
step << Paladin
#som
#label sstones
#sticky
>>Equip the Arget Dawn trinket and kill |cRXP_LOOT_undead mobs|r. Loot them for |cRXP_LOOT_Scourgestones|r
.complete 8414,1
step
.goto Western Plaguelands,42.7,84.1
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5092 >> Accept Clear the Way
step
.goto Western Plaguelands,50.3,79.0
>> Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r
.complete 5092,1 
.complete 5092,2 
step
.goto Western Plaguelands,42.701,84.033
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5092 >> Turn in Clear the Way
.target Commander Ashlam Valorfist
.accept 5215 >> Accept The Scourge Cauldrons
step
.goto Western Plaguelands,43.0,84.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5215 >> Turn in The Scourge Cauldrons
.target High Priestess MacDonnell
.accept 5216 >> Accept Target: Felstone Field
step
.goto Western Plaguelands,37.3,56.8
.turnin 5216 >> Turn in Target: Felstone Field
.accept 5217 >> Accept Return to Chillwind Camp
step
.goto Western Plaguelands,42.9,84.5
.target High Priestess MacDonnell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5217 >> Turn in Return to Chillwind Camp
step
.goto Western Plaguelands,42.9,84.5
.target High Priestess MacDonnell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.accept 5219 >> Accept Target: Dalson's Tears
step
.goto Western Plaguelands,42.8,84.0
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.accept 5097 >> Accept All Along the Watchtowers
step
.goto Western Plaguelands,43.0,83.6
.target Argent Officer Pureheart
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
.turnin 6028 >> Turn in The Everlook Report
step
.goto Western Plaguelands,43.418,84.834
.target Nathaniel Dumah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r

.accept 5903 >> Accept A Plague Upon Thee
step
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
.turnin 6184 >> Turn in Flint Shadowmore
.target Flint Shadowmore
.accept 6185 >> Accept The Eastern Plagues
.isQuestTurnedIn 6183
step
.goto Western Plaguelands,46.6,71.2
>>Use the beacon torch in your bags
.complete 5097,4 
step
.goto Western Plaguelands,53.7,64.7
.target Mulgris Deepriver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
.accept 4984 >> Accept The Wildlife Suffers Too
step
#label wolves
#sticky
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,46.6,40.4,0
>>The |cRXP_ENEMY_Diseased Wolves|r share spawns with Carrion Lurkers. Kill them too if you're unable to find Wolves.
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,47.8,50.8
>>Click on the |cRXP_PICK_diary|r inside the barn
.turnin 5058 >> Turn in Mrs. Dalson Diary
step
#completewith lockedaway
#label outhousekey
.goto Western Plaguelands,46.9,51.5,0
>>Look for the |cRXP_LOOT_Wandering Skeleton|r that patrols the area around the farmhouse. Loot him for the |cRXP_LOOT_outhouse key|r.
.collect 12738,1,5060,1 
.unitscan Wandering Skeleton
step
.goto Western Plaguelands,46.2,52.1
>>Kill |cRXP_LOOT_Cauldron Lord Malvinious|r and loot his |cRXP_LOOT_key|r
.turnin 5219 >> Turn in Target: Dalson's Tears
.accept 5220 >> Accept Return to Chillwind Camp
step
#requires outhousekey
#sticky
#completewith next
>> Click on the |cRXP_PICK_outhouse|r
.goto Western Plaguelands,48.2,49.7
.turnin 5059 >> Turn in Locked Away
step
#requires outhousekey
.goto Western Plaguelands,48.2,49.7
>>Kill |cRXP_LOOT_Farmer Dalson|r
.collect 12739,1,5060,1 
step
#label lockedaway
.goto Western Plaguelands,47.4,49.7
>>Click on the |cRXP_PICK_cabinet|r at the top floor of the farmhouse
.turnin 5060 >> Turn in Locked Away
step
#requires wolves
.goto Western Plaguelands,38.401,54.053
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
.turnin 5050 >> Turn in Good Luck Charm
.target Janice Felstone
.accept 5051 >> Accept Two Halves Become One
.isQuestTurnedIn 5022
step
#sticky
#completewith next
.goto Western Plaguelands,36.9,58.2
>>Kill the |cRXP_LOOT_Jabbering Ghoul|r that walks around the farm and loot him
.collect 12722,1
.isQuestTurnedIn 5022
step
>>Right click on the half-charm to combine them
.complete 5051,1 
.isQuestTurnedIn 5022
step
.goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Felstone|r
.turnin 5051 >> Turn in Two Halves Become One
.isQuestTurnedIn 5022
step
.goto Western Plaguelands,44.3,63.2
>>Use the beacon torch in your bags
.complete 5097,3 
step
.goto Western Plaguelands,42.3,66.2
>>Use the beacon torch in your bags
.complete 5097,2 
step
.goto Western Plaguelands,40.1,71.6
>>Use the beacon torch in your bags
.complete 5097,1 
step
.goto Western Plaguelands,42.701,84.033
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5097 >> Turn in All Along the Watchtowers

.target Commander Ashlam Valorfist
.accept 5533 >> Accept Scholomance
step
.goto Western Plaguelands,42.7,83.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.turnin 5533 >> Turn in Scholomance
.target Alchemist Arbington
.accept 5537 >> Accept Skeletal Fragments
step
.goto Western Plaguelands,42.9,84.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5220 >> Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
.accept 5222 >> Accept Target: Writhing Haunt
step
.goto Western Plaguelands,53.1,66.0
>> Kill |cRXP_LOOT_Cauldron Lord Razarch|r for his |cRXP_LOOT_key|r
.complete 5222,1 
step
.goto Western Plaguelands,53.0,65.7
.turnin 5222 >> Turn in Target: Writhing Haunt
.accept 5223 >> Accept Return to Chillwind Camp
step
.goto Western Plaguelands,53.7,64.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
.turnin 4984 >> Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
.accept 4985 >> Accept The Wildlife Suffers Too
step
.goto Eastern Plaguelands,7.6,43.6
.target Tirion Fordring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5542 >> Accept Demon Dogs
.accept 5543 >> Accept Blood Tinged Skies
.accept 5544 >> Accept Carrion Grubbage
step
#label grubs
#sticky
>>Kill |cRXP_LOOT_Carrion Worms|r and loot them for |cRXP_LOOT_meat|r
.complete 5544,1 
step
#label fordring1
#sticky
>> Kill |cRXP_ENEMY_Plaguebats|r and |cRXP_ENEMY_Plaguehound Runts|r
.goto Eastern Plaguelands,40.8,68.1,0
.complete 5543,1 
.complete 5542,1 



step
.goto Eastern Plaguelands,27.2,75.0
>>Click the |cRXP_PICK_skeleton|r on the ground. Loot it for the Insignia
.complete 6185,2 
.complete 6185,4 
.isQuestTurnedIn 6183
step
.goto Eastern Plaguelands,28.8,74.9
>>Click the |cRXP_PICK_skeleton|r on the ground. Loot it for the Insignia
.complete 6185,3 
.isQuestTurnedIn 6183
step
.goto Eastern Plaguelands,28.8,79.8
>>Click the |cRXP_PICK_skeleton|r on the ground. Loot it for the Insignia
.complete 6185,1 
.isQuestTurnedIn 6183
step
.goto Eastern Plaguelands,36.5,90.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5601 >> Turn in Sister Pamela
.target Pamela Redpath
.accept 5149 >> Accept Pamela's Doll
step
.goto Eastern Plaguelands,39.2,91.6
>>Loot the 3 |cRXP_PICK_doll parts|r around Darrowshire and then combine them together by clicking them in your bags
.complete 5149,1 
step
.goto Eastern Plaguelands,36.4,90.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
.turnin 5149 >> Turn in Pamela's Doll
.target Pamela Redpath
.accept 5152 >> Accept Auntie Marlene
.accept 5241 >> Accept Uncle Carlin
step
#requires fordring1
.goto Eastern Plaguelands,52.7,59.1,0
.goto Eastern Plaguelands,52.7,59.1,120,0
>> Kill |cRXP_ENEMY_Plaguehounds|r
.complete 5542,2 
step
.goto Eastern Plaguelands,81.4,59.8
.target Duke Nicholas Zverenhoff
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
.turnin 6030 >> Turn in Duke Nicholas Zverenhoff
step
.goto Eastern Plaguelands,81.6,59.3
.fp Chapel >> Get the Light's Hope Chapel flight path
step
.goto Eastern Plaguelands,81.4,59.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5241 >> Turn in Uncle Carlin
.target Carlin Redpath
.accept 5211 >> Accept Defenders of Darrowshire
step
.goto Eastern Plaguelands,79.7,63.6
.target Caretaker Alen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
.accept 5281 >> Accept The Restless Souls
.accept 6021 >> Accept Zaeldarr the Outcast
step
#sticky
#completewith EPL1
>>Kill |cRXP_ENEMY_ghouls|r and then talk to the |cRXP_FRIENDLY_Darrowshire spirits|r that spawn from their corpses
.complete 5211,1
step
.goto Eastern Plaguelands,53.5,22.1
.turnin -5245 >> Turn in Troubled Spirits of Kel'Theril
step
.goto Eastern Plaguelands,34.0,28.1
>>Look for |cRXP_PICK_termite mounds|r around Plaguewood
.complete 5903,1 
step
.goto Eastern Plaguelands,14.5,33.6
.target Egan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
.turnin 5281 >> Turn in The Restless Souls
step
.goto Eastern Plaguelands,23.5,37.4
>> Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
.complete 5542,3 
step
#requires grubs
#label EPL1
.goto Eastern Plaguelands,7.6,43.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5542 >> Turn in Demon Dogs
.turnin 5543 >> Turn in Blood Tinged Skies
.turnin 5544 >> Turn in Carrion Grubbage
.target Tirion Fordring
.accept 5742 >> Accept Redemption
step
.goto Eastern Plaguelands,7.6,43.7
>>Go through his whole dialogue
.complete 5742,1 
.skipgossip
step
.goto Eastern Plaguelands,7.6,43.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5742 >> Turn in Redemption
.target Tirion Fordring
.accept 5781 >> Accept Of Forgotten Memories
step
.goto Eastern Plaguelands,27.4,84.9
>>Enter the troll crypt. Kill and loot |cRXP_LOOT_Zaeldarr|r for his |cRXP_LOOT_Head|r
.complete 6021,1 
step
.goto Eastern Plaguelands,27.3,85.2
>>Click on the |cRXP_PICK_scroll|r on the ground
.accept 6024 >> Accept Hameya's Plea
step
.goto Eastern Plaguelands,28.4,86.6
>>Summon |cRXP_LOOT_Mercutio|r and his goons by clicking on the dirt pile, you have to kill him while handling 3 other adds
>>|cRXP_WARN_This quest can be very hard, skip it if you have to|r
.complete 5781,1 
step
.goto Eastern Plaguelands,7.6,43.7
.target Tirion Fordring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5781 >> Turn in Of Forgotten Memories
.isQuestComplete 5781
step
.goto Eastern Plaguelands,7.6,43.7
.target Tirion Fordring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.accept 5845 >> Accept Of Lost Honor
.isQuestTurnedIn 5742
step
.hs >> Hearth to Southshore
>> Buy food/water if needed
step
.goto Hillsbrad Foothills,49.34,52.27
.fly Western Plaguelands>> Fly to Western Plaguelands
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5223 >> Turn in Return to Chillwind Camp
.target High Priestess MacDonnell
.accept 5225 >> Accept Target: Gahrron's Withering
step
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r

.turnin 5903 >> Turn in A Plague Upon Thee
.target Nathaniel Dumah

.accept 5904 >> Accept A Plague Upon Thee
step
.goto Western Plaguelands,43.6,84.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
.turnin 6185 >> Turn in The Eastern Plagues
.target Flint Shadowmore
.accept 6186 >> Accept The Blightcaller Cometh
.isQuestTurnedIn 6183
step
.goto Western Plaguelands,49.2,78.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
.turnin 5152 >> Turn in Auntie Marlene
.target Marlene Redpath
.accept 5153 >> Accept A Strange Historian
step
.goto Western Plaguelands,49.6,76.8
>>Loot the |cRXP_PICK_gravestone|r right outside the house
.complete 5153,1 
step << Paladin
#phase 4
#era
.goto Western Plaguelands,42.8,84.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.target Commander Ashlam Valorfist
.accept 8414 >>Accept Dispelling Evil
step << Paladin
#phase 4
#requires sstones
.goto Western Plaguelands,52.0,83.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
.turnin 8414 >>Turn in Dispelling Evil
.target High Priest Thel'danis
.accept 8416 >>Accept Inert Scourgestones
step
#sticky
#label skeletons
.goto Western Plaguelands,42.4,68.0,0
>>Kill |cRXP_LOOT_skeletons|r in Andorhal
.complete 5537,1 
step
.goto Western Plaguelands,39.5,66.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.turnin 5153 >> Turn in A Strange Historian
.target Chromie
.accept 5154 >> Accept The Annals of Darrowshire
.accept 4971 >> Accept A Matter of Time
step
#sticky
#label parasites
.goto Western Plaguelands,46.7,62.3
>>Use the temporal displacer on the grain silos. They evade in water if too many spawn.
.complete 4971,1 
step
.goto Western Plaguelands,43.4,69.6
>>Loot |cRXP_PICK_books|r inside the Andorhal town hall until you get the correct one
*The correct book's pages has a lighter shade of grey and sometimes the correct book won't spawn
*If you're unlucky, you have to keep looting bad tomes until a good one spawns
.complete 5154,1 
step
#requires parasites
.goto Western Plaguelands,39.5,66.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.turnin 4971 >> Turn in A Matter of Time
.target Chromie
.accept 4972 >> Accept Counting Out Time
.turnin 5154 >> Turn in The Annals of Darrowshire
.accept 5210 >> Accept Brother Carlin
step
.goto Western Plaguelands,41.3,67.1
>>Look for small |cRXP_PICK_lockboxes|r inside the burnt houses
.complete 4972,1 
step
.goto Western Plaguelands,39.4,66.9
.target Chromie
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
.turnin 4972 >> Turn in Counting Out Time
step
#requires skeletons
.goto Western Plaguelands,42.7,83.9
.target Alchemist Arbington
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
.turnin 5537 >> Turn in Skeletal Fragments
step << Paladin
#phase 4
.goto Western Plaguelands,42.6,84.1
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 8416 >>Turn in Inert Scourgestones
step
.goto Western Plaguelands,42.92,85.06
.fly Eastern Plaguelands>> Fly to Eastern Plaguelands
step
#phase 6
.home >> Set your Hearthstone to Light's Hope Chapel
step
.goto Eastern Plaguelands,81.5,59.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5210 >> Turn in Brother Carlin
.target Carlin Redpath
.accept 5181 >> Accept Villains of Darrowshire
.accept 5168 >> Accept Heroes of Darrowshire
step
.goto Eastern Plaguelands,79.7,63.7
.target Caretaker Alen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
.turnin 6021 >> Turn in Zaeldarr the Outcast
step
.goto Eastern Plaguelands,71.3,34.0
>>Loot the |cRXP_PICK_banner|r underwater
.complete 5845,1 
.isQuestTurnedIn 5781
step
.goto Eastern Plaguelands,70.8,16.2
>>Kill |cRXP_ENEMY_Infiltrator Hameya|r, he walks around the shallow graves
*|cRXP_WARN_Tread carefully, troll scouts will run away and call for help and Shadow Hunters can dismount you|r
.complete 6024,1 
step
.goto Eastern Plaguelands,51.2,49.9
>>Loot the |cRXP_PICK_skull|r underwater
.complete 5181,1 
step
.goto Eastern Plaguelands,60.6,68.4
>>Kill |cRXP_ENEMY_ghouls|r and then talk to the |cRXP_FRIENDLY_Darrowshire spirits|r that spawn from their corpses
.complete 5211,1
step
.goto Eastern Plaguelands,53.9,65.8
>>Loot the |cRXP_PICK_sword|r on the ground
.complete 5181,2 
step
.goto Eastern Plaguelands,28.1,86.1
.turnin 6024 >> Turn in Hameya's Plea
step
.goto Eastern Plaguelands,7.6,43.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
.turnin 5845 >> Turn in Of Lost Honor
.target Tirion Fordring
.accept 5846 >> Accept Of Love and Family
.isQuestTurnedIn 5781
step
#completewith Withering
.goto Western Plaguelands,63.3,49.5,0
>>The |cRXP_ENEMY_Diseased Grizzlies|r share spawns with Plague Lurkers. Kill them too if you're unable to find Grizzlies.
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,63.8,57.2
>>Loot the |cRXP_PICK_shield|r on the ground, just outside the barn
.complete 5168,2 
step
.goto Western Plaguelands,62.8,58.7
>> Kill |cRXP_LOOT_Cauldron Lord Soulwrath|r for the |cRXP_LOOT_key|r
.complete 5225,1 
step
#label Withering
.goto Western Plaguelands,62.9,58.5
.turnin 5225 >> Turn in Target: Gahrron's Withering
.accept 5226 >> Accept Return to Chillwind Camp
step
#completewith Withering
.goto Western Plaguelands,63.3,49.5
>>The |cRXP_ENEMY_Diseased Grizzlies|r share spawns with Plague Lurkers. Kill them too if you're unable to find Grizzlies.
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.7,64.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
.turnin 4985 >> Turn in The Wildlife Suffers Too
.target Mulgris Deepriver
.accept 4986 >> Accept Glyphed Oaken Branch
step
.goto Western Plaguelands,48.4,31.9
.turnin 5904 >> Turn in A Plague Upon Thee
.accept 6389 >> Accept A Plague Upon Thee
step
.goto Western Plaguelands,51.9,28.2
.target Kirsta Deepshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.accept 6004 >> Accept Unfinished Business
step
.goto Western Plaguelands,51.80,44.25,90,0
.goto Western Plaguelands,40.53,51.79,90,0
.goto Western Plaguelands,40.53,51.79,0
.goto Western Plaguelands,51.80,44.25
>>Kill |cRXP_ENEMY_Knights|r if you're unable to find |cRXP_ENEMY_Mages|r, as they share spawns together
>>Kill all mobs around |cRXP_ENEMY_Medics|r and |cRXP_ENEMY_Hunters|r in the camps, as they all share spawns together
.complete 6004,1 
.complete 6004,2 
.complete 6004,3 
.complete 6004,4 
step
.goto Western Plaguelands,51.920,28.058
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6004 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.accept 6023 >> Accept Unfinished Business
step
.goto Western Plaguelands,55.1,23.5
>>Look for |cRXP_ENEMY_Cavalier Durgen|r
*There is a level 63 elite mob that can spawn at the top of the tower (Scarlet High Clerist), if that's the case just be patient and wait for Durgen to come down
.complete 6023,2 
.unitscan SCARLET HIGH CLERIST
.unitscan Cavalier Durgen
step
.goto Western Plaguelands,57.8,36.2
>> Kill |cRXP_ENEMY_Huntsman Radley|r
.complete 6023,1 
step
.goto Western Plaguelands,51.9,28.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6023 >> Turn in Unfinished Business
.target Kirsta Deepshadow
.accept 6025 >> Accept Unfinished Business
step
.goto Western Plaguelands,45.7,18.8
>>Climb the tower in the middle of the town, you don't need to deal with the elite mobs, just run straight to the top of the tower and jump down
>>Be careful with the level 61 elite that patrols the town, he is very strong
>>This quest can be a little difficult, skip it if you have to
.complete 6025,1 
.link https://www.twitch.tv/videos/680869322?t=00h43m31s >> Click here for video reference
step
.goto Western Plaguelands,42.5,18.9
>>Loot the |cRXP_PICK_libram|r inside the town hall
>>The elite mobs guarding the libram are fairly weak but you will be in serious trouble if you have to fight more than one at a time
>>Be careful with the level 61 elite that patrols the town, he is very strong
>>Skip this quest if you have to
.complete 5168,1 
.link https://www.twitch.tv/videos/680869322?t=00h51m03s >> Click here for video reference << !Warlock
.link https://www.twitch.tv/videos/1440267520 >> Click here for video reference << Warlock
step
.goto Western Plaguelands,51.9,28.0
.target Kirsta Deepshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
.turnin 6025 >> Turn in Unfinished Business
.isQuestComplete 6025
step
#phase 1-5
.hs >> Hearth to Southshore
>> Buy food/water if needed
step
#phase 1-5
.goto Hillsbrad Foothills,49.33,52.27
.fly Western Plaguelands>> Fly to Western Plaguelands
step
#phase 1-5
.goto Western Plaguelands,42.9,84.5
.target High Priestess MacDonnell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5226 >> Turn in Return to Chillwind Camp
step
#phase 1-5
.goto Western Plaguelands,42.701,84.033
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5237 >> Turn in Mission Accomplished!
step
#phase 1-5
.goto Western Plaguelands,43.418,84.834
.target Nathaniel Dumah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r

.turnin 6389 >> Turn in A Plague Upon Thee
step
#phase 1-5
.goto Western Plaguelands,65.7,75.4
.target Artist Renfray
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
.turnin 5846 >> Turn in Of Love and Family
.isQuestTurnedIn 5781
step
#phase 1-5
.goto Western Plaguelands,42.92,85.06
.fly Light's Hope>>Fly to Eastern Plaguelands
step
#phase 6
.hs >> Hearth to Light's Hope Chapel
>> Buy food/water if needed
step
.goto Eastern Plaguelands,81.5,59.8
.target Carlin Redpath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5181 >> Turn in Villains of Darrowshire
.turnin 5211 >> Turn in Defenders of Darrowshire
step
.goto Eastern Plaguelands,81.5,59.8
.target Carlin Redpath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
.turnin 5168 >> Turn in Heroes of Darrowshire
.isQuestComplete 5168
step
#phase 6
#completewith next
.fly Western Plaguelands>> Fly to Western Plaguelands
step
#phase 6
.goto Western Plaguelands,42.9,84.5
.target High Priestess MacDonnell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
.turnin 5226 >> Turn in Return to Chillwind Camp
step
#phase 6
.goto Western Plaguelands,42.701,84.033
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
.turnin 5237 >> Turn in Mission Accomplished!
step
#phase 6
.goto Western Plaguelands,43.418,84.834
.target Nathaniel Dumah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r

.turnin 6389 >> Turn in A Plague Upon Thee
step
#phase 6
.goto Western Plaguelands,65.7,75.4
.target Artist Renfray
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
.turnin 5846 >> Turn in Of Love and Family
.isQuestTurnedIn 5781
step << !Mage
#softcore
.fly Ironforge>>Fly to Ironforge
.zoneskip Stormwind City
.zoneskip Elwynn Forest
step << !Mage
#hardcore
.fly Ironforge>>Fly to Ironforge
step
.zone Stormwind City>>Take tram to Stormwind << !Mage
.zone Stormwind City>>Teleport to Stormwind << Mage
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 59-59 Winterspring/Silithus part 1
#next 59-60 Winterspring/Silithus part 2
step
#completewith WSstart
.bankwithdraw 12438 >> Withdraw Tinkee's Letter from your bank
step
.goto Stormwind City,78.22,17.97
.target Highlord Bolvar Fordragon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
.turnin 6186 >> Turn in The Blightcaller Cometh
.isQuestTurnedIn 6183
step
#completewith next
.goto Stormwind City,44.27,73.99
>> Do the Stormwind cloth turn ins:
.target Clavicus Knavingham
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clavicus Knavingham|r
.turnin 7791 >> Turn in A Donation of Wool
.turnin 7793 >> Turn in A Donation of Silk
.turnin 7794 >> Turn in A Donation of Mageweave
.turnin 7795 >> Turn in A Donation of Runecloth
step
#completewith next
.goto Stormwind City,66.27,62.13
.fly Booty Bay>> Fly to Booty Bay
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> Take the Boat to Ratchet
step
.fly Winterspring >> Fly to Winterspring
step << Hunter
#completewith next
.stable >> Stable your current pet
step << Hunter
#sticky
.train 3666 >> Head to northern winterspring and look for a level 58/59 Owl, learn Claw rank 8
step
.goto Winterspring,61.30,38.90
.home >> Set your hearthstone to Everlook
step
#label WSstart
.goto Winterspring,61.62,38.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4808 >> Turn in Felnok Steelspring
.target Felnok Steelspring
.accept 4809 >> Accept Chillwind Horns
step << !Warrior !Mage
#som << Paladin
.goto Winterspring,61.91,38.29
.target Witch Doctor Mau'ari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r

.accept 969 >> Accept Luck Be With You
step
.goto Winterspring,60.88,37.61
.target Umi Rumplesnicker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.accept 3783 >> Accept Are We There, Yeti?
step
.goto Winterspring,66.3,42.6
>> Kill |cRXP_LOOT_Yetis|r and loot them for |cRXP_LOOT_Thick Yeti Fur|r
.complete 3783,1
step
.goto Winterspring,60.88,37.61
.target Umi Rumplesnicker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 3783 >> Turn in Are We There, Yeti?
step
.goto Winterspring,60.88,37.61
.target Umi Rumplesnicker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.accept 977 >> Accept Are We There, Yeti?
step
#completewith WSend
>> Kill |cRXP_LOOT_chillwind chimeras|r, don't go out of your way to finish this quest
.complete 4809,1
step
.goto Winterspring,69.56,38.30
>> Kill |cRXP_LOOT_High Chief Winterfall|r, he is an elite mob followed by 2 adds, proceed with caution, you can kill the adds, reset the fight and deal with him alone
.complete 5121,1
step
.goto Winterspring,69.56,38.30
>> Loot the |cRXP_LOOT_Crudely-written Log|r from the |cRXP_LOOT_High Chief|r and right click it
.accept 5123 >> Accept The Final Piece
step
.goto Winterspring,67.9,41.9
>> Kill |cRXP_LOOT_Patriarchs/Matriarchs|r inside the cave and loot them for |cRXP_LOOT_horns|r
.complete 977,1
step
.goto Winterspring,63.07,59.47
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
.isOnQuest 979
step
.goto Winterspring,63.07,59.47
>> Start the escort quest
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.accept 4901 >> Accept Guardians of the Altar
.isQuestTurnedIn 979
step
>> Escort Ranshalla and click on the |cRXP_PICK_torches|r once she enters one of the caves
>>Right click the |cRXP_PICK_stone altar|r at the end
.complete 4901,1
step << !Warrior !Mage
#som << Paladin
.goto Winterspring,59.06,68.33
>> Head south to Frowstwhisper Gorge
>>Loot the |cRXP_PICK_ice shards|r around the outer perimiter of the canyon
>>Crowd control the giants guarding the crystals, loot and run away << !Hunter
>>You can use your pet to bait the giants away from the crystals << Hunter/Warlock
>>This quest can be HARD, skip this step if you have to
.complete 969,1
step
.hs >> Hearth to Everlook
>> Buy food/water if needed
step
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 977 >> Turn in Are We There, Yeti?
.target Umi Rumplesnicker
.accept 5163 >> Accept Are We There, Yeti?
step
.goto Winterspring,61.54,38.61
>> Use the Mechanical Yet on |cRXP_FRIENDLY_Legacki|r
.complete 5163,1
step << !Warrior !Mage
#som << Paladin
.goto Winterspring,61.91,38.29
.target Witch Doctor Mau'ari
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r

.turnin 969 >> Turn in Luck Be With You
.isQuestComplete 969
step
#sticky
.bankwithdraw 17355,11172,11173,13562,13207 >> Withdraw from your bank:
>>Rabine's Letter
>>Silvery Claws
>>Irontree Heart
>>Remains of Trey Lightforge
>>Shadow Lord Fel'dan's Head
step
.goto Winterspring,31.26,45.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
.turnin 5121 >> Turn in High Chief Winterfall
.turnin 5123 >> Turn in The Final Piece
.target Donova Snowden
.accept 5128 >> Accept Words of the High Chief
step << !Druid
#completewith next
.goto Moonglade,35.6,73.3
.zone Moonglade >> Enter the furbolg tunnel and take the north exit into Moonglade
step << Druid
.zone Moonglade >> Teleport to Moonglade
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 6762 >> Turn in Rabine Saturna
.target Rabine Saturna
.accept 1124 >> Accept Wasteland
step

.goto Moonglade,51.68,45.09
>> Finish the dialogue with Rabine
>>Skip this step if the Dire Maul dialogue is not available
.target Rabine Saturna
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.accept 5527 >> Accept A Reliquary of Purity
.skipgossip
step << !Druid
#completewith next
.goto Moonglade,48.13,67.34
.fp Moonglade >> Get the Moonglade Flight path
step
#hardcore
.goto Moonglade,48.13,67.34
.fly Talonbranch >> Fly to Felwood
step
#softcore
.goto Felwood,49.4,31.0
>> Head back to the furbolg tunnel
>>Open your reputation panel, mark "At War" with Timbermaw Hold
>> Once the General chat changes to Felwood, pull a bunch of furbolgs and die
.deathskip >> Spirit rez at Irontree Woods
step
#softcore
.goto Felwood,40.84,66.78
>> Run south to the slime pond
.deathskip >>Death warp to southern Felwood
step
.goto Felwood,51.21,82.10
.target Greta Mosshoof
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
.turnin 5242 >> Turn in A Final Blow
step
.goto Felwood,51.34,82.01
.target Jessir Moonbow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
.turnin 5385 >> Turn in The Remains of Trey Lightforge
step
.goto Winterspring,13.83,95.78
.target Kelek Skykeeper
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
.turnin 5128 >> Turn in Words of the High Chief
step
#era/som
#softcore
.goto Winterspring,14.00,95.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
.turnin 4084 >> Turn in Silver Heart
.target Eridan Bluewind
.accept 4005 >> Accept Aquementas
.isQuestTurnedIn 3942
step
#completewith next
+Turn in your remaining Shards for Cenarion Plant Salves at |cRXP_FRIENDLY_Arathendris|r. Find another |cRXP_PICK_Corrupted Songflower|r, cleanse it, and get the hour-long buff
>>Skip this step if the nearby spawns aren't up
.goto Felwood,52.91,87.84,50,0
.goto Felwood,54.15,86.83,0
.goto Felwood,48.26,75.65,0
.goto Felwood,45.95,85.20,0
step
#softcore
#completewith next
>>Pull a mob from Felwood into the Ashenvale border
.deathskip >> Once the General chat changes to Ashenvale, die and spirit rez at Astranaar
>>|cRXP_WARN_Skip this step if you have the Songflower buff|r
step
#softcore
.goto Ashenvale,34.41,47.99
.fly Tanaris>> Fly to Tanaris
step
#hardcore
>>Run to Astranaar
.goto Ashenvale,34.41,47.99
.fly Tanaris>> Fly to Tanaris
step
.goto Tanaris,50.88,26.96
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.accept 4507 >> Accept Pawn Captures Queen
step
.goto Tanaris,51.05,26.87
>> Use the Mechanical Yeti on |cRXP_FRIENDLY_Sprinkle|r
.complete 5163,2
step
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.accept 4504 >> Accept Super Sticky
step
#era/som
#softcore
.goto Tanaris,70.43,49.93
>> Head to the pirate area
>>Right click on Eridan's Supplies
>>Use the book of Aquor to summon Aquementas
.complete 4005,1
.isQuestComplete 4084
step
.goto Tanaris,51.01,29.35
>> Head back to Gadgetzan
.fly Un'Goro>>Fly to Un'Goro Crater
step
#era/som
#softcore
.goto Un'Goro Crater,41.91,2.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
.turnin 4005 >> Turn in Aquementas
.target J.D. Collie
.accept 3961 >> Accept Linken's Adventure
.isQuestComplete 4084
step
#era/som
#softcore
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3961 >> Turn in Linken's Adventure
.target Linken
.accept 3962 >> Accept It's Dangerous to Go Alone
.isQuestComplete 4084
step
.goto Un'Goro Crater,43.67,9.38
>> Use the Mechanical Yeti on |cRXP_FRIENDLY_Quixxil|r
.complete 5163,3
step
.goto Tanaris,16.71,16.13
>> Finish killing |cRXP_LOOT_Elementals|r for |cRXP_LOOT_Tar|r
.complete 4504,1
step
#softcore
#sticky
#label chest
.goto Un'Goro Crater,50.28,49.98
>> Click on the |cRXP_PICK_chest|r at the back of the cave
.complete 3962,2
step
#era/som
#softcore
#sticky
.goto Un'Goro Crater,50.28,49.98,0
>> Equip the Silver Totem of Aquementas on your off-hand
>>Use it to weaken |cRXP_LOOT_Blazerunner|r at the top of the volcano
.complete 3962,1
.isQuestComplete 4084
step
#requires chest
.goto Un'Goro Crater,44.6,81.6
>>Go deep into the silithid hive and use the quest item provided at the silithid crystal to summon the |cRXP_LOOT_Hive Queen|r and loot her |cRXP_LOOT_brain|r
>>Proceed with caution, clear the room before summoning the queen, this quest is hard, you have to deal with 3 waves of 3 mobs and you only have 1 attempt on this quest (so it's optional). Remember to kill mobs outside the room so you can eat/drink after
*At the last wave, you can ignore the 2 adds, kill the queen and loot the quest item
.complete 4507,1
step
#completewith next
.goto Silithus,88.40,23.81,60,0
.goto Silithus,88.40,23.81,0
.zone Silithus >> Head to Silithus
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1124 >> Turn in Wasteland
.target Layo Starstrike
.accept 1125 >> Accept The Spirits of Southwind
step
#completewith end
.xpto60 >> Skip to the part 2 of the guide once you have enough xp to ding 60
step
#phase 4
.goto Silithus,51.80,38.60
>> Talk to the goblin at the 2nd floor of the inn
.target Beetix Ficklespragg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
.accept 8277 >> Accept Deadly Desert Venom
step
#phase 4
.goto Silithus,51.30,38.20
>> Click on the |cRXP_PICK_wanted poster|r
.accept 8283 >> Accept Wanted - Deathclasp, Terror of the Sands
step
#phase 4
#completewith next
.goto Silithus,51.15,38.29
.target Windcaller Proudhorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8275 >> Turn in Taking Back Silithus
step
#phase 4
.goto Silithus,51.20,38.20
.target Windcaller Proudhorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.accept 8280 >> Accept Securing the Supply Lines
step
#phase 4
.goto Silithus,49.60,37.30
.target Geologist Larksbane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
.accept 8284 >> Accept The Twilight Mystery
step
#phase 4
.goto Silithus,49.20,34.20
.target Commander Mar'alith
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.accept 8304 >> Accept Dearest Natalia
step
#phase 4
.goto Silithus,48.60,37.80
.target Bor Wildmane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
.accept 8318 >> Accept Secret Communication
step
#phase 4
#completewith s1
>> Kill |cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1
step
#phase 4
#sticky
#completewith s1
>> Kill |cRXP_LOOT_Sand Skitterers|r and |cRXP_LOOT_Stonelash Scorpids|r for quest items
.complete 8277,1
.complete 8277,2
step
#sticky
#label spirits
.goto Silithus,63.53,49.90
>> Kill |cRXP_ENEMY_Tortured Druids|r and |cRXP_ENEMY_Tortured Sentinels|r around the village, be careful every time a spirit dies it has a chance of spawning a bug
.complete 1125,1
.complete 1125,2
step
.goto Silithus,63.22,55.35
>> Click on the |cRXP_PICK_small urn|r inside the lodge
.complete 5527,1
.isOnQuest 5527
step
#requires spirits
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1125 >> Turn in The Spirits of Southwind
.target Layo Starstrike
.accept 1126 >> Accept Hive in the Tower
step
.goto Silithus,60.22,52.55
>> Clear the 3 |cRXP_ENEMY_bugs|r that |cRXP_WARN_spawn at the base of the tower when you enter|r
>>Click on the |cRXP_PICK_object|r at the top of the tower. |cRXP_WARN_This will spawn adds|r
>>Kill the 2 |cRXP_ENEMY_ambushers|r that spawn after clicking it
.complete 1126,1
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
.turnin 1126 >> Turn in Hive in the Tower
.target Layo Starstrike
.accept 6844 >> Accept Umber, Archivist
step
#phase 4
#label s1
.goto Silithus,23.50,13.70
>>Look for |cRXP_PICK_small tablets|r on the ground
.complete 8284,1
step
#phase 4
.goto Silithus,67.68,41.98
>> Kill |cRXP_LOOT_Sand Skitterers|r and |cRXP_LOOT_Stonelash Scorpids|r for quest items
.complete 8277,1
.complete 8277,2
.complete 8280,1
step
#phase 4
.goto Silithus,49.70,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
.turnin 8284 >> Turn in The Twilight Mystery
.target Geologist Larksbane
.accept 8285 >> Accept The Deserter
step
#phase 4
.goto Silithus,51.10,38.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8280 >> Turn in Securing the Supply Lines
.target Windcaller Proudhorn
.accept 8281 >> Accept Stepping Up Security
step
#phase 4
.goto Silithus,51.70,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
.turnin 8277 >> Turn in Deadly Desert Venom
.target Beetix Ficklespragg
.accept 8278 >> Accept Noggle's Last Hope
step
#phase 4
#sticky
#label s2
>> Kill |cRXP_LOOT_Rock Stalkers|r, |cRXP_LOOT_Stonelash Pincer|r and |cRXP_LOOT_Stonelash Flayers|r and loot them for quest items
.complete 8278,1
.complete 8278,2
.complete 8278,3
step
#phase 4
#label s3
#sticky
.goto Silithus,39.31,53.33,0
>> Kill |cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1
step
#phase 4
.goto Silithus,41.30,88.50
>> Speak with |cRXP_FRIENDLY_Rutgar|r
.complete 8304,2
step
#phase 4
.goto Silithus,40.80,88.80
>> Speak with |cRXP_FRIENDLY_Frankal|r
.complete 8304,1
step
#phase 4
.goto Silithus,45.00,92.20
>> Kill |cRXP_LOOT_Deathclasp|r and loot him for |cRXP_LOOT_Deathclasp's Pincer|r
>> Be careful as this quest is HARD. skip it if needed
>> |cRXP_WARN_Do NOT let him get in melee range, as he has an 8-second stun|r
.complete 8283,1
step
#phase 4
.goto Silithus,67.20,69.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
.turnin 8285 >> Turn in The Deserter
.target Hermit Ortell
.accept 8279 >> Accept The Twilight Lexicon
step
#phase 4
#requires s2
.goto Silithus,51.10,38.20
.target Windcaller Proudhorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
.turnin 8281 >> Turn in Stepping Up Security
step
#phase 4
.goto Silithus,51.70,38.50
.target Beetix Ficklespragg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
.turnin 8278 >> Turn in Noggle's Last Hope
.target Noggle Ficklespragg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
.accept 8282 >> Accept Noggle's Lost Satchel
step
#phase 4
.goto Silithus,49.20,34.30
.target Commander Mar'alith
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.turnin 8304 >> Turn in Dearest Natalia
step
#phase 4
.goto Silithus,50.80,33.60
.target Vish Kozus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r
.turnin 8283 >> Turn in Wanted - Deathclasp, Terror of the Sands
step
#sticky
#phase 4
#sticky
#label texts
>> Kill |cRXP_LOOT_Twilight Cultists|r and loot them for |cRXP_LOOT_Encrypted Twilight Texts|r
.collect 20404,10,8323,1
step
#phase 4
.goto Silithus,40.86,42.22
>> Kill |cRXP_LOOT_Twilight Keeper Havunth|r and loot them for the |cRXP_LOOT_Twilight Lexicon - Chapter 3|r
>>He patrols the twilight camp next to Cenarion Hold
.complete 8279,3
.unitscan TWILIGHT KEEPER HAVUNTH
step
#phase 4
.goto Silithus,26.34,36.62
>> Kill |cRXP_LOOT_Twilight Keeper Mayna|r and loot them for the |cRXP_LOOT_Twilight Lexicon - Chapter 1|r
>>She patrols the twilight camp directly west of Cenarion Hold
.complete 8279,1
.unitscan TWILIGHT KEEPER MAYNA
step
#phase 4
.goto Silithus,16.08,86.37
>> Kill |cRXP_LOOT_Twilight Keeper Exeter|r and loot him for the |cRXP_LOOT_Twilight Lexicon - Chapter 2|r
>>He is at the back of the southwestern twilight camp
.complete 8279,2
step
#phase 4
#requires texts
.goto Silithus,44.50,91.40
>> Kill |cRXP_LOOT_Deathclasp|r and collect |cRXP_LOOT_Noggle's Satchel|r
.complete 8282,1
step
#phase 4
.goto Silithus,67.20,69.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
.turnin 8279 >> Turn in The Twilight Lexicon
.target Hermit Ortell
.accept 8287 >> Accept A Terrible Purpose
.accept 8323 >> Accept True Believers
.turnin 8323 >> Turn in True Believers
step
#phase 4
.goto Silithus,51.70,38.50
>> Head to Cenarion Hold
.target Noggle Ficklespragg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
.turnin 8282 >> Turn in Noggle's Lost Satchel
step
#phase 4
.goto Silithus,49.20,34.20
.target Commander Mar'alith
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
.turnin 8287 >> Turn in A Terrible Purpose
step
#phase 4
.goto Silithus,48.70,37.50
>> Kill |cRXP_LOOT_cultists|r and loot them for |cRXP_LOOT_encrypted notes|r
.complete 8318,1
step
#phase 4
.goto Silithus,48.60,37.70
.target Bor Wildmane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
.turnin 8318 >> Turn in Secret Communication
step
#softcore
#completewith next
.goto Silithus,50.59,34.45
.fly Un'Goro >> Fly to Un'Goro Crater
step
#era/som
#softcore
.goto Un'Goro Crater,44.65,8.09
.target Linken
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.isQuestComplete 4084
step
#completewith end
.fly Tanaris>> Fly to Tanaris
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4507 >> Turn in Pawn Captures Queen
.target Alchemist Pestlezugg
.accept 4508 >> Accept Calm Before the Storm
step
#label end
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
]])
RXPGuides.RegisterGuide([[
#version 7
#group RestedXP Alliance 50-60
#classic
<< Alliance
#name 59-60 Winterspring/Silithus part 2
step
#softcore
#completewith next
.goto Silithus,50.59,34.45
.fly Un'Goro >> Fly to Un'Goro Crater
step
#era/som
#softcore
.goto Un'Goro Crater,44.65,8.09
.target Linken
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
.turnin 3962 >> Turn in It's Dangerous to Go Alone
.isQuestComplete 4084
step
#completewith tanaris
.fly Tanaris>> Fly to Tanaris
step
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
.turnin 4507 >> Turn in Pawn Captures Queen
.target Alchemist Pestlezugg
.accept 4508 >> Accept Calm Before the Storm
step
#label tanaris
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
.turnin 4504 >> Turn in Super Sticky
step
.hs >> Hearth to Everlook
>> Buy food/water if needed
step
.goto Winterspring,60.88,37.61
.target Umi Rumplesnicker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
.turnin 5163 >> Turn in Are We There, Yeti?
step
.goto Winterspring,63.07,59.47
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.turnin 979 >> Turn in Find Ranshalla
.isOnQuest 979
step
.goto Winterspring,63.07,59.47
>> Start the escort quest
.target Ranshalla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranshalla|r
.accept 4901 >> Accept Guardians of the Altar
.isQuestTurnedIn 979
step
>> Escort Ranshalla and click on the |cRXP_PICK_torches|r once she enters one of the caves
>>Right click the |cRXP_PICK_stone altar|r at the end
.complete 4901,1
.isOnQuest 4901
step
#label horns
#completewith next
>>Kill |cRXP_LOOT_chimeras|r just north of Everlook and loot them for |cRXP_LOOT_Uncracked Chillwind Horns|r
.complete 4809,1
.goto Winterspring,60.4,23.2
.target Felnok Steelspring
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felnok Steelspring|r
.turnin 4809 >> Turn in Chillwind Horns
.goto Winterspring,61.6,38.6
step
#completewith horns
.xpto60 >> Skip the Winterspring quests and turn in the quests you have once you're ready to ding 60
step
.fly Moonglade>> Fly to Moonglade
step
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
.turnin 6844 >> Turn in Umber, Archivist
.target Umber
.accept 6845 >> Accept Uncovering Past Secrets
step
.goto Moonglade,51.68,45.09
.target Rabine Saturna
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 6845 >> Turn in Uncovering Past Secrets
step
.goto Moonglade,51.68,45.09
.target Rabine Saturna
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
.turnin 5527 >> Turn in A Reliquary of Purity
step
.goto Moonglade,44.87,35.62
.target Umber
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
.accept 1185 >> Accept Under the Chitin Was...
.turnin 1185 >> Turn in Under the Chitin Was...
step
#sticky
.xpto60 >> Grind Furbolgs in northern felwood until you have enough XP to 60
step
.fly >> Fly to Teldrassil
step
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.turnin 4901 >> Turn in Guardians of the Altar
step
.goto Teldrassil,55.49,92.04
.target Erelas Ambersky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
.accept 4902 >> Accept Wildkin of Elune
step
.goto Darnassus,41.85,85.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r
.turnin 4508 >> Turn in Calm Before the Storm
.target Gracina Spiritmight
.accept 4510 >> Accept Calm Before the Storm
step
.goto Darnassus,39.38,42.43
.target Idriana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Idriana|r
.turnin 4510 >> Turn in Calm Before the Storm
step
.goto Teldrassil,24.56,48.68
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
.turnin 4986 >> Turn in Glyphed Oaken Branch
step
.goto Teldrassil,24.44,48.86
.target Arch Druid Fandral Staghelm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
.turnin 4902 >> Turn in Wildkin of Elune
]])
