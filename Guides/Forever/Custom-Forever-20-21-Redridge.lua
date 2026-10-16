RXPGuides.RegisterGuide([[
#forever
#version 35
<< Alliance (Warlock/Paladin/Warrior)
#group Forever Trio Launch
#name 23-23 Redridge
#displayname 23-23 Redridge
#next 23-23 Duskwood & Defias Escort
#defaultfor Alliance (Warlock/Paladin/Warrior)

-- Third Redridge visit: arrive after the immediate Ashenvale loop and Stormwind hearth, around level 20.
-- Named targets may be up to +5; sustained farming must stay at +2 or below.
-- Pick up A Watchful Eye at 20 on the Goldshire -> Redridge journey; finish the tower chain on visit 4.
-- Visit 4 groups Blackrock Menace with Yowler, Blackrock Bounty and Missing In Action; finish Menace before Keeshan's escort.
-- Alther's Mill is deferred to visit 4; pick it up then after this visit's bridge turn-in.
step
    #include Forever Trio Launch\01-60 City Supplies - Stormwind

step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
    .goto 1453/0,323.3,-8689.29

    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin

step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs

step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells

    .target Ursula Deline

step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>Talk to |cRXP_FRIENDLY_Arthur the Faithful|r inside Stormwind Cathedral before leaving for Redridge
    .trainer >> Train your class spells
    .target Arthur the Faithful

step << Paladin
    .xp <20,1
    .goto 1453/0,845.95,-8545.70
    >>Talk to |cRXP_FRIENDLY_Duthorian Rall|r in Stormwind Cathedral. Obtain and read the |cRXP_LOOT_Tome of Valor|r before leaving Stormwind
    .collect 6776,1,1649 -- Tome of Valor (1)
    .use 6776
    .accept 1649 >> Accept The Tome of Valor
    .target Duthorian Rall

step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>Speak to |cRXP_FRIENDLY_Duthorian Rall|r again. Keep the delivery to Daphne for the Westfall coastal departure before the Grom'gol swim
    .turnin 1649 >> Turn in The Tome of Valor
    .accept 1650 >> Accept The Tome of Valor
    .target Duthorian Rall

step
    .isOnQuest 118
    .goto 1429/0,87.73,-9456.79
    >>Run to Goldshire and talk to |cRXP_FRIENDLY_Smith Argus|r
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
    >>Continue east to the Tower of Azora, then deliver the reply in Lakeshire during visit 3
    .target Smith Argus

step
    .xp <20,1
    .goto Elwynn Forest,65.2,69.8
    >>Talk to |cRXP_FRIENDLY_Theocritus|r atop the Tower of Azora on the way to Redridge
    .accept 94 >> Accept A Watchful Eye
    >>Hold this for the eastern and Stonewatch loops on Redridge visit 4, around level 26
    .target Theocritus
step
    .zone Redridge Mountains >> Follow the road east and regroup in Lakeshire for Redridge visit 3

step
    .goto 1433/0,-2152.62,-9223.67
    >>Talk to |cRXP_FRIENDLY_Innkeeper Brianna|r inside the Lakeshire inn. Each player must bind here before leaving Redridge
    .home 69 >> Set your Hearthstone to Lakeshire for the return after RoL
    .target Innkeeper Brianna

step << Warlock
    .skill cooking,<80,1
    .train 25704,1 -- Skip if Smoked Sagefish is already learned
    .goto 1433/0,-2145.89,-9211.36
    >>Buy |cRXP_BUY_Recipe: Smoked Sagefish|r from |cRXP_FRIENDLY_Barkeep Daniels|r inside the Lakeshire inn now that your Cooking is 80 or higher
    .collect 21099,1 -- Recipe: Smoked Sagefish (1)
    .target Barkeep Daniels


step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r after the level-16 Lost Tools turn-in
    .accept 89 >> Accept The Everstill Bridge to complete with Baying
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
    .target Verner Osgood
step
    .goto 1433/0,-2221.65,-9218.60
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 121 >> Turn in Messenger to Stormwind
    .accept 143 >> Accept Messenger to Westfall
    .target Magistrate Solomon


step
    .goto Redridge Mountains,37.0,37.0,50,0
    .goto Redridge Mountains,38.0,32.0,50,0
    .goto Redridge Mountains,34.0,26.0
    >>Kill |cRXP_ENEMY_Redridge Brutes|r and |cRXP_ENEMY_Redridge Mystics|r in the southern canyon camps
    >>Avoid |cRXP_ENEMY_Yowler|r and the deeper northern packs
    .complete 124,1 -- Redridge Brute (10)
    .complete 124,2 -- Redridge Mystic (8)
    .complete 89,1 -- Iron Pike (5)
    .complete 89,2 -- Iron Rivet (5)
    >>Loot bridge supplies for each character during the same gnoll loop
    .mob Redridge Brute
    .mob Redridge Mystic
step
    .goto 1433/0,-2268.32,-9279.12
    >>Talk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 89 >> Turn in The Everstill Bridge
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>Talk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 124 >> Turn in A Baying of Gnolls
    .target Verner Osgood
step
    .isQuestAvailable 34
    .goto 1433/0,-2045.38,-9245.82
    >>Talk to |cRXP_FRIENDLY_Martie Jainrose|r to pick up the Bellygrub hunt
    .accept 34 >> Accept An Unwelcome Guest
    >>Bellygrub is level 24 and fits the named-target allowance at level 20
    .target Martie Jainrose
step
    .isOnQuest 34
    .goto 1433/0,-1911.22,-9288.82
    >>Kill the difficult |cRXP_ENEMY_Bellygrub|r together and loot his tusk for each character
    .complete 34,1
    .mob Bellygrub
step
    .isQuestComplete 34
    .goto 1433/0,-2045.38,-9245.82
    .turnin 34 >> Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    >>After the Lakeshire turn-ins and Bellygrub hunt, follow the road south into Duskwood and continue to Darkshire
    .zone Duskwood >> Run to Duskwood for the three western deliveries and flight path

]])
