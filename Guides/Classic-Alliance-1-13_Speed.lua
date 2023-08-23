local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire
#version 1
#group RestedXP Alliance Speed 1-20
#defaultfor Human
#next 6-11 Elwynn Forest

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Accept A Threat Within
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Kill |cRXP_ENEMY_Young Wolves|r until you have 10c+ worth of vendor trash
    >>|cRXP_WARN_You will train|r |T132333:0|t[Battle Shout] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Brother Danil
    .target Llane Beshere
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Accept Eagan Peltskinner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> Turn in Eagan Peltskinner

step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Kill |cRXP_ENEMY_Kobold Vermins|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)


step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    .vendor >>|cRXP_BUY_Buy a|r |T135650:0|t[Dirk]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135650:0|t[Dirk]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock

step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .vendor >> |cRXP_WARN_Vendor trash|r
--N need SoM xp note

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Accept Brotherhood of Thieves
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Turn in Brotherhood of Thieves << Paladin
    .turnin 18,1 >> Turn in Brotherhood of Thieves << Rogue/Warlock
    .turnin 18,5 >> Turn in Brotherhood of Thieves << Mage
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Priest
    .turnin 18,3 >> Turn in Brotherhood of Thieves << Warrior
    .turnin 18 >> Turn in Brotherhood of Thieves << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step << Paladin
    #completewith next
    +Equip the |T133052:0|t[Militia Warhammer]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6

step 
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
    .target Milly Osworth

step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> Turn in Encrypted Letter
    >>|cRXP_WARN_You don't need to train any spells|r

step
    .goto Elwynn Forest,57.5,48.2
    >>Kill |cRXP_ENEMY_Garrick Padfoot|r. Loot him for his |cRXP_LOOT_Head|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
    .complete 3904,1 >> One look for Garrick and one harvesting



step
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Turn in Milly's Harvest
    .accept 3905 >> Accept Grape manifest
    .target Milly Osworth

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> Turn in Bounty on Garrick Padfoot << Warrior/Rogue/Paladin
    .turnin 6,1 >> Turn in Bounty on Garrick Padfoot << !Warrior !Rogue !Paladin



step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Llane Beshere|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Brother Sammuel|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells

    step
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Neals|r
    .turnin 3905 >> Turn in Grape manifest
    .target Brother Neals

    step
    >> Leave Northshire Valley and talk to |cFF00FF25Falkhaan Isenstrider|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
]])


RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 6-11 Elwynn Forest
#version 1
#group RestedXP Alliance Speed 1-20
#defaultfor Human
#next 11-13 Loch Modan

step
    #hardcore
    >> Talk to |cFF00FF25Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.283,65.721
    .accept 60 >> Accept Kobold Candles
    step << Rogue
    >> Talk to |cFF00FF25Brog Hamfist|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> Buy the level 3 thrown from Brog. Equip it

step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>Go upstairs

step << Rogue
    .money <0.01
    >> Talk to |cFF00FF25Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    >> Talk to |cFF00FF25Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later

step << Warrior
    >> Talk to |cFF00FF25Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cFF00FF25Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells

step
    >> Speak with |cFF00FF25Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange

step
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r and |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine

step
    #completewith next
    >> Logoutskip on the hanging logs in mine
    .goto Elwynn Forest,39.5,60.5,200 >> Run to Goldshire


step
    >> Talk to |cFF00FF25Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step
    >> Talk to |cFF00FF25Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    
step << Warrior/Paladin/Rogue
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Train Blacksmithing from |cFF00FF25Smith Argus|r. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. Make around 20 of them max. << Warrior/Rogue
    .trainer >> Train Blacksmithing from |cFF00FF25Smith Argus|r. This will allow you to make +2 damage weightstones for your weapon which are very strong. Make around 20 of them max. << Paladin
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step
    >> Talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.283,65.721
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp

step
    .goto Elwynn Forest,43.771,65.803
    >> Talk to |cFF00FF25Innkeeper Farley|r
    .target Innkeeper Farley
    >>Do NOT buy any food/drink here << Warlock
    .turnin 2158,1 >> Turn in Rest and Relaxation << Rogue/Warrior
    .turnin 2158,2 >> Turn in Rest and Relaxation << !Rogue !Warrior
    .home >> Set your Hearthstone to Goldshire


step
    #completewith BoarMeat1
    >>Start killing |cFF00BCD4Boars|r you see for |cFF00BCD4Chunks of Boar Meat|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >> Talk to |cFF00FF25Ma Stonefield|r and |cFF00FF25"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Accept Princess Must Die!
	.goto Elwynn Forest,34.660,84.482

step << Warrior
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    >> Talk to |cFF00FF25Maybell Maclure|r in the small house
    .target Maybell Maclure
    .goto Elwynn Forest,43.2,89.6
    .accept 106 >> Accept Young Lovers
step << !Mage !Priest !Warlock tbc
    >> Talk to |cFF00FF25Joshua Maclure|r
    .target Joshua Maclure
    .goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash
step
    #completewith next
    >>Grind |cFF00BCD4Boars|r you see for |cFF00BCD4Chunks of Boar Meat|r en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >> Head back to the Stonefield farm, then keep going to the river. Talk to |cFF00FF25Tommy Joe Stonefield|r
    .target Tommy Joe Stonefield
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma


step
    >> Hogger?!?!?
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish killing |cFF00BCD4Boars|r you see for |cFF00BCD4Chunks of Boar Meat|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    >> Return to |cFF00FF25"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    >> Speak with |cFF00FF25Gramma Stonefield|r inside the house
    .target Gramma Stonefield
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #sticky
    #completewith next
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r and |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>Grind mobs east through the outside of the mine and talk to |cFF00FF25Billy Maclure|r on the farm
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth

step << Warrior
    >>|cFFFCDC00Pool as much rage as you can|r (grind Rage off of other mobs) then kill |cFF00BCD4Goldtooth|r for |cFF00BCD4Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << !Warrior
    >>Kill |cFF00BCD4Goldtooth|r for |cFF00BCD4Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #label KoboldTurnins
    .goto Elwynn Forest,40.5,82.3
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r and |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Goldtooth
    #requires KoboldTurnins
    >> Head back to |cFF00FF25"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> Turn in Goldtooth

step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from |cFF00FF25Brog Hamfist|r
	.target Brogg
step << Warrior
    >> Talk to |cFF00FF25Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cFF00FF25Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Rogue
    >> Talk to |cFF00FF25Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    >> Talk to |cFF00FF25Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step
    >>Grind |cFF00BCD4Murlocs|r toward the east and loot them for |cFF00BCD4Crystal Kelp Frond|r.
	.target Murloc
	.target Murloc Streamrunner
    .goto Elwynn Forest,47.6,63.3,100,0
    .goto Elwynn Forest,51.4,64.6,100,0
    .goto Elwynn Forest,57.6,62.8,100,0
    .goto Elwynn Forest,56.4,66.6,100,0
    .goto Elwynn Forest,53.8,66.8,100,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
    >>Grind mobs en route
    .goto Elwynn Forest,61.8,54.0,70,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >> Talk to |cFF00FF25Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #sticky
    #completewith Prowlers
    >>Kill |cFFFF5722Prowlers|r as you do other quests
	.target Prowler
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Kill |cFFFF5722Young Forest Bears|r as you do other quests. Go out of your way for bears.
	.unitscan Young Forest Bear
    .complete 52,2 --Kill Young Forest Bear (x5)
step
	>> Click on the |cFFDB2EEFcorpse|r on the ground
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    >> Talk to |cFF00FF25Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Accept A Bundle of Trouble
step
    >> Talk to |cFF00FF25Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.3,66.1
    .vendor >> Vendor trash, repair
step << Paladin
    #hardcore
    #completewith Bundles
    >>Collect the |cFFDB2EEFbundles of wood|r at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << !Paladin
    #sticky
    #completewith next
    >>Collect the |cFFDB2EEFbundles of wood|r at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >> Go toward the guard's corpse

step << !Paladin
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Click on the |cFFDB2EEFcorpse|r on the ground << Mage
    >> Pool Rage, then kill the 2 mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and keep one hamstrung whilst killing the other. Run away when you kill one (use marbles on it), then pull and kill the other. Click on the |cFFDB2EEFcorpse|r on the ground << Warrior
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and nuke one mob. Use Evasion. Run away when you kill one, then kill the other. Click on the |cFFDB2EEFcorpse|r on the ground << Rogue
     >>Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Click on the |cFFDB2EEFcorpse|r on the ground << Warlock
    >> |cFFFCDC00Be careful as this quest is difficult|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas

step << Paladin
    #hardcore
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away, and nuke one of the hut mobs. Bubble, heal/run away if needed, then come back and kill the other mob
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    >>Start running back, finish off the turn|cFFDB2EEFbundles of wood|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles2
	 >> Talk to |cFF00FF25Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
	    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> Grind to 9
step
    #label Bears
	>> Talk to |cFF00FF25Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Accept Red Linen Goods
step
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
	>> Talk to |cFF00FF25Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
    >>Keep an eye out for |cFF00BCD4Westfall Deed|r from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing |cFF00BCD4Defias|r and looting them for |cFF00BCD4Red Linen Bandanas|r
	.target Defias Bandit
    .complete 83,1 --Collect Red Linen Bandana (x6)
step << Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Pool Rage, then kill |cFF00BCD4Princess|r. Use a Lesser Heal Potion from before if needed. Loot her for the |cFF00BCD4Brass Collar|r
    .complete 88,1 --Collect Brass Collar (x1)
step << Rogue
    .goto Elwynn Forest,69.4,79.2
    >>Make sure Evasion is up, then kill |cFF00BCD4Princess|r. Use a Lesser Heal Potion from before if needed. Loot her for the |cFF00BCD4Brass Collar|r
	>>If you're struggling, you can use the Fence with Throwing Weapons to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
step << !Rogue !Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Kill |cFF00BCD4Princess|r. Use a Lesser Heal Potion from before if needed. Loot her for the |cFF00BCD4Brass Collar|r
    >>If you're struggling, you can use the Fence to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Click here if struggling
step
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> Grind to 3400+/6500xp
step
    #label Deed
	>> Talk to |cFF00FF25Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.5,68.9
    .turnin 83 >> Turn in Red Linen Goods

step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Grind until 4475+/6500xp
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .zone Redridge Mountains >> Travel east to Redridge Mountains
step << !Warlock
    #hardcore
    >>Run toward the Flight Path. Be exceedingly careful to not aggro or die to any mobs en route. Try sticking to the road and keeping an eye out
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    .hs >> Hearth to Goldshire
step
	>> Talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.283,65.721
    >>Don't wait for his rp event
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    >> Talk to |cFF00FF25Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
	>> Talk to |cFF00FF25Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.2,65.8
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
step
	>> Talk to |cFF00FF25Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >> Accept Elmore's Task
step
    .xp 10 >> Grind to 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
.target Ilsa Corbin
.target Lyria Du Lac
>>Talk to |cFF00FF25Lyria Du Lac|r
-->>Talk to |cFF00FF25Ilsa Corbin|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
	>> Talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.283,65.721
    .accept 114 >> Accept The Escape

step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs

step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    >>|cFFFCDC00Be VERY careful about your money when training here.|r Make sure you train Dual Wield and Sprint though
    .trainer >> Train your class spells
step << Rogue
    #som
    .goto Elwynn Forest,41.7,65.9
    .money >0.3197
    .vendor >>You don't have enough money, so buy Stiletto for your Offhand
step << Rogue
    #era
    .goto Elwynn Forest,41.7,65.9
    .money >0.3152
    .vendor >>You don't have enough money, so buy Stiletto for your Offhand
step
	>> Talk to |cFF00FF25Maybell Maclure|r
    .target Maybell Maclure
    >>Run out of the inn and go south
    .goto Elwynn Forest,43.2,89.6
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin

step
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .goto Elwynn Forest,24.2,74.5
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
step << Warrior
    .money >0.3174
    #som
    >>Grind a bit until you have 31s 74c+ of vendorables/money
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 11 thrown, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0
step << Warrior
    .money >0.3129
    #era
    >>Grind a bit until you have 31s 29c+ of vendorables/money
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 3 thrown, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0

step << Rogue/Paladin
    #era
    #label Armbands
    .money >0.3152
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue/Paladin
    #som
    #label Armbands
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .money >0.3197
    .goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue/Paladin
    .goto Elwynn Forest,27.0,93.9
    >> Kill |cFF00BCD4Gnolls|r. Loot them for |cFF00BCD4Painted Gnoll Armbands|r
	.target Riverpaw Outrunner
	.target Riverpaw Runt
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
    .isOnQuest 11
step << Warlock/Rogue/Paladin
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .goto Elwynn Forest,24.2,74.5
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step << Rogue/Paladin
    .abandon 123 >>Abandon The Collector
step
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.95,19.36
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .accept 64 >>Accept The Forgotten Heirloom
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Talk to |cFF00FF25Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .accept 151 >>Accept Poor Old Blanchy
step
    .goto Westfall,56.04,31.22
.target Farmer Saldean
>>Talk to |cFF00FF25Farmer Saldean|r
    .accept 9 >>Accept The Killing Fields
step
    .goto Westfall,56.416,30.519
>>Talk to |cFF00FF25Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
.target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >>Accept Goretusk Liver Pie

step
    .goto Westfall,56.327,47.520
>>Talk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
.target Gryan Stoutmantle
step << Human
    .goto Westfall,57.002,47.169
    .vendor >>vendor trash
.target Quartermaster Lewis
>>Talk to |cFF00FF25Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
step << Rogue
    #era
    .money >0.3152
    +Grind until you have 31s 52c of vendorables/money

--Not taking into account Shipment q turnin money so its insurance money
step
    .goto Westfall,56.6,52.6
>>Talk to |cFF00FF25Thor|r
    .turnin 6181 >> Turn in A Swift Message << Human
.target Thor
    .accept 6281 >> Accept Continue To Stormwind << Human
step
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind

step << Rogue
    #era
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 3 thrown from Thurman. Equip it
step
    .goto StormwindClassic,56.2,64.6
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
.target Morgan Pestle
>>Talk to |cFF00FF25Morgan Pestle|r
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warrior
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train 2h Swords if you have enough money. You must save 20s for later
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>Buy a Cutlass from Gunther and equip it, Stiletto in Offhand
step << Paladin
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 2h Swords
step << Human
    .goto StormwindClassic,74.3,47.2
>>Talk to |cFF00FF25Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
.target Osric Strang
    .accept 6261 >> Accept Dungar Longdrink
step << Warrior
     >>Enter the inn
    .goto StormwindClassic,71.7,39.9,20,0
    .goto StormwindClassic,74.3,37.3
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
.target Harry Burlguard
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
.target Bartleby
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
.target Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
    step << Warrior/Paladin/Rogue
        >>Put Sunder Armor on your bars (it's better damage than Heroic Strike) << Warrior
        .goto StormwindClassic,56.3,17.0
        .vendor >>Buy a Mining Pick. You'll train Mining later
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Enter the Deeprun Tram
step
    >>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Accept q when you get to the other side << Rogue/Warrior/Paladin
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Get the Ironforge flight path
step << Warrior
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces and Thrown
    
step
    .goto Ironforge, 20.0, 53.4
    .home >> Set HS and do candle logoutskip
step
    #sticky
    #era
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
    >>Equip your level 3 thrown << Warrior
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    #sticky
    #label Cooking
    .goto Dun Morogh,68.4,54.5
    .trainer >> Train Cooking from Ghilm
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy food+water << !Rogue !Warrior
    .vendor >>Vendor, buy food << Rogue/Warrior
step
    #requires Cooking
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.3,55.5
    .train 2575 >>Train Mining, cast Find Minerals
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave
    >>Keep an eye out for nodes to get more rough stones. << Rogue/Warrior/Paladin
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step << !Warlock
    .xp 10+6350 >>Grind until 6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Click the Dwarf Corpse
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.9,37.0
    .complete 417,1 --Collect Mangy Claw (x1)

step
    #era
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand << Rogue
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 11-13 Loch Modan
#version 1
#group RestedXP Alliance Speed 1-20
#defaultfor Human
#next 13-15 Darkshore

step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step
    .goto Loch Modan,24.764,18.397
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
.target Mountaineer Stormpike
    .accept 307 >> Accept Filthy Paws
step
    #sticky
    #completewith next
    >>Kill Spiders in the zone for Spider Ichor
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Kill Bears in the zone for Bear Meat
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Kill Boars in the zone for Boar Intestines. Save all of the Chunks of Boar Meat you get too
    .collect 3172,3 --Collect Boar Intestines (x3)
step
    .goto Loch Modan,35.1,47.8,130 >>Grind mobs en route for cooking quest later
step
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    #sticky
    #label StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy 1-2 6 slot bags
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy food/water (try to have 40 level 5 drink, 20 level 5 food) << Priest/Mage/Warlock/Paladin
    .vendor >> Buy food, try to have about 40 level 5 food << Rogue/Warrior
step
    #requires StormpikeO
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    #sticky
    #completewith Thelsamar1
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .complete 418,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .complete 418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    .goto Loch Modan,35.5,18.2,45 >>Go to the entrance of the cave whilst killing rats
step
    .goto Loch Modan,36.3,24.7
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>You can backtrack after looting one further in the cave, as the crates can respawn behind you
    .complete 307,1 --Collect Miners' Gear (x4)
step << Paladin/Warrior
    #sticky
    #label Mace
    .goto Loch Modan,42.9,9.9
    .vendor >> Check the vendor for the green 2h mace he can sell. If it's up and you have enough money, buy it. Otherwise, grind money from kobolds here until you have enough << Paladin/Warrior
    >>If the weapon isn't there by the time you have 80 silver, skip this step
step
    >> Kill Kobolds. Loot them for their Ears
    >> Make sure to save 10 Linen Cloth for later. do NOT vendor it << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step << Paladin/Warrior
    #requires Mace
step
    #sticky
    #completewith Thelsamar2
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .complete 418,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .complete 418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto Loch Modan,23.3,17.9,45 >>Run back to the bunker, grinding en route
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,100,0
    .goto Loch Modan,30.9,10.6,100,0
    .goto Loch Modan,28.6,15.4,100,0
    .goto Loch Modan,30.5,26.6,100,0
    .goto Loch Modan,33.4,30.3,100,0
    .goto Loch Modan,39.4,33.3,100,0
    .goto Loch Modan,26.9,10.7,100,0
    .goto Loch Modan,30.9,10.6,100,0
    .goto Loch Modan,28.6,15.4,100,0
    .goto Loch Modan,30.5,26.6,100,0
    .goto Loch Modan,33.4,30.3,100,0
    .goto Loch Modan,39.4,33.3,100,0
    .goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,100,0
    .goto Loch Modan,28.0,20.6,100,0
    .goto Loch Modan,33.8,40.5,100,0
    .goto Loch Modan,36.2,30.9,100,0
    .goto Loch Modan,39.0,32.1,100,0
    .goto Loch Modan,31.9,16.4,100,0
    .goto Loch Modan,28.0,20.6,100,0
    .goto Loch Modan,33.8,40.5,100,0
    .goto Loch Modan,36.2,30.9,100,0
    .goto Loch Modan,39.0,32.1,100,0
    .goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .complete 418,3 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,100,0
    .goto Loch Modan,37.1,39.8,100,0
    .goto Loch Modan,29.8,35.9,100,0
    .goto Loch Modan,27.7,25.3,100,0
    .goto Loch Modan,28.6,22.6,100,0
    .goto Loch Modan,38.0,34.9,100,0
    .goto Loch Modan,37.1,39.8,100,0
    .goto Loch Modan,29.8,35.9,100,0
    .goto Loch Modan,27.7,25.3,100,0
    .goto Loch Modan,28.6,22.6,100,0
    .goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .complete 418,1 --Collect Boar Intestines (x3)
step
    #hidewindow
    #requires Meat9
step
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 1 Flint and Tinder, and 1 Simple Wood. Buy more 6 slots if needed
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
step
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
step
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,29.9,68.2,45 >> Run to the Troggs Entrance
step
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step
    .goto Loch Modan,22.2,73.3
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat

step
    .hs >> HS to Ironforge.

step << Warrior
    .goto Ironforge,65.89,88.43
    .trainer >> Train your class spells

step << Rogue
    .goto Ironforge,51.50,15.34
    .trainer >> Go upstairs. Train your class spells

step << Paladin
   .goto Ironforge,24.55,4.46 << Paladin
    .trainer >> Train your class spells

    step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot
step
    #hardcore
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,62.1,41.5,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,61.0, 25.0,40,0
    .goto Dun Morogh,61.1, 18.3,40,0
    .goto Dun Morogh, 61.1,15.4,40,0



    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    >>Avoid the Crocodiles when crossing the sea
    .target Wetlands Crocolisk
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor


    step
    >>Go inside in
    .target Samor Festivus
    .vendor >> Jump on chandelier and buy healing pots


    step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Wait here for the boat. Make a Campfire from your spellbook and start cooking the chunks of boar meat you saved from earlier. You need at least 10 skill now, and 50 later (so cook all of it)
    .goto Wetlands,4.7,57.3
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore.
    
]])