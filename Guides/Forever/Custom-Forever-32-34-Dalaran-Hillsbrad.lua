RXPGuides.RegisterGuide([[
#forever
#version 1
#group Forever Trio Launch
#name 32-34 Dalaran & Hillsbrad
#displayname 32-34 Dalaran & Hillsbrad
#next RestedXP Forever Guide (A)\33-34 Thousand Needles
<< Alliance

-- Hillsbrad objectives/coordinates adapted from installed default 32-33 Hillsbrad/Arathi v23.
-- This custom chapter replaces its Hillsbrad loop and includes its unchanged Arathi tail.
-- Route: Southshore coast -> Darrow Hill -> western lions -> Dalaran ->
-- Syndicate/eastern lions/turtles -> Chillwind -> Southshore -> Arathi -> Menethil.
-- Beta research, 2026-10-13:
-- https://www.wowhead.com/forever/quest=92432/an-alarming-request
-- https://www.wowhead.com/forever/quest=92458/heart-of-disruption
-- https://www.wowhead.com/forever/quest=92457/starving-arcane
-- https://www.wowhead.com/forever/quest=92489/power-overwhelming
-- https://www.wowhead.com/forever/quest=92456/a-green-sample
-- https://www.wowhead.com/forever/quest=92459/friend-of-the-kirin-tor
-- https://www.wowhead.com/forever/guide/city-of-dalaran-dungeon-overview-location-rewards
-- Entrance coordinate: firsthand report on Forever item 275989, Silverpine 69.2,45.6.
-- No unverified instance map, boss-kill IDs or indoor waypoints are used.
-- Shylamiir's beta coordinates conflict between sources; use her NPC target and shop description.

step
    >>Keep Southshore as home. Bring Power Overwhelming and A Green Sample from the preceding Stormwind visit.
    >>Free space for the Dalaran chain, Starving Arcane and Hillsbrad quests. Finish the coast before heading north; collect granite and optional yeti fur on the approach, then finish the eastern Hillsbrad loop after Dalaran.
    +Confirm everyone is ready for Dalaran and Hillsbrad

step
    .goto 1424/0,-473.97,-861.25
    >>Talk to |cRXP_FRIENDLY_Emissary Jacques|r inside the Southshore Town Hall.
    .accept 92432 >> Accept An Alarming Request
    .target Emissary Jacques::247264
    .isQuestAvailable 92458
    .isNotOnQuest 92458

step
    #completewith LeaveSS
    >>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
    >>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
    >>|cRXP_WARN_Skip this step if you don't see the event|r
    .collect 3668,1,522
    .use 3668
    .accept 522 >> Accept Assassin's Contract
    .unitscan Shadowy Assassin

step
    .goto 1424/0,-610.81,-793.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
    .accept 564 >> Accept Costly Menace
    .target Darren Malvew

step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
    .target Loremaster Dibbs

step
    .goto 1424/0,-544.34,-859.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .accept 659 >> Accept Hints of a New Plague?
    .target Phin Odelic

step
    .goto 1424/0,-580.21,-845.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Accept Down the Coast
    .target Lieutenant Farren Orinelle

step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Anderson|r
    .home >> Set your Hearthstone to Southshore
    .target Innkeeper Anderson

step
    .goto 1424/0,-494.93,-973.87,50,0
    .goto 1424/0,-398.93,-956.80,50,0
    .goto 1424/0,-345.81,-1038.93,50,0
    .goto 1424/0,-229.65,-1078.400,50,0
    .goto 1424/0,-88.21,-1082.670,50,0
    .goto 1424/0,-363.41,-1034.45
    >>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r and |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1
    .mob +Torn Fin Tidehunter
    .complete 536,2
    .mob +Torn Fin Oracle

step
    .goto 1424/0,-580.21,-845.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >> Turn in Down the Coast
    .accept 559 >> Accept Farren's Proof
    .target Lieutenant Farren Orinelle

step
    .goto 1424/0,-494.93,-973.87,50,0
    .goto 1424/0,-398.93,-956.80,50,0
    .goto 1424/0,-345.81,-1038.93,50,0
    .goto 1424/0,-229.65,-1078.400,50,0
    .goto 1424/0,-88.21,-1082.670,50,0
    .goto 1424/0,-363.41,-1034.45,50,0
    .goto 1424/0,4.59,-1074.130,50,0
    .goto 1424/0,59.63,-1146.88,50,0
    .goto 1424/0,144.75,-1161.17,50,0
    .goto 1424/0,271.79,-1097.81,50,0
    .goto 1424/0,4.59,-1074.130
    >>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r, |cRXP_ENEMY_Torn Fin Oracles|r, |cRXP_ENEMY_Torn Fin Coastrunners|r and |cRXP_ENEMY_Torn Fin Muckdwellers|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 559,1
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle

step
    .goto 1424/0,-580.21,-845.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >> Turn in Farren's Proof
    .accept 560 >> Accept Farren's Proof
    .target Lieutenant Farren Orinelle

step
    .goto 1424/0,-516.47,-852.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >> Turn in Farren's Proof
    .accept 561 >> Accept Farren's Proof
    .target Marshal Redpath

step
    .goto 1424/0,-473.97,-861.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 505 >> Accept Syndicate Assassins
    .target Magistrate Henry Maleb

step
    .goto 1424/0,-473.97,-861.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    >>|cRXP_WARN_Don't accept the follow up|r
    .turnin 522 >> Turn in Assassin's Contract
    .isOnQuest 522
    .target Magistrate Henry Maleb

step
    #label LeaveSS
    .goto 1424/0,-580.21,-845.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >> Turn in Farren's Proof
    .accept 562 >> Accept Stormwind Ho!
    .target Lieutenant Farren Orinelle

step
    .goto 1424/0,-628.37,-979.63,60,0
    .goto 1424/0,-703.57,-951.47,60,0
    .goto 1424/0,-800.53,-1015.89,60,0
    .goto 1424/0,-838.93,-1166.51,60,0
    .goto 1424/0,-756.37,-1029.55
    >>Kill |cRXP_ENEMY_Daggerspine Sirens|r and |cRXP_ENEMY_Daggerspine Shorehunters|r
    >>|cRXP_WARN_You may need to swim out in the water for them|r
    .complete 562,1
    .mob +Daggerspine Shorehunter
    .complete 562,2
    .mob +Daggerspine Siren

step
    .goto 1424/0,-580.21,-845.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >> Turn in Stormwind Ho!
    .accept 563 >> Accept Reassignment
    .target Lieutenant Farren Orinelle

step
    .goto 1424/0,-499.32,-773.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 4|r |T134059:0|t[Soothing Spices] |cRXP_BUY_and 1|r |T132912:0|t[Fine Thread] |cRXP_BUY_from him|r
    .collect 3713,4,1218,1
    .collect 2321,1
    .target Micha Yance
    .itemcount 3719,1
    .itemcount 2997,1

step
    .goto 1424/0,-499.32,-773.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 4|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from him|r
    .collect 3713,4,1218,1
    .target Micha Yance
    .itemcount 3719,<1
    .itemcount 2997,<1

step
    .goto 1424/0,-515.13,-784.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
    .accept 565 >> Accept Bartolo's Yeti Fur Cloak
    .itemcount 3719,1
    .itemcount 2997,1
    .target Bartolo Ginsetti

step
    .isOnQuest 689
    .isQuestNotComplete 689
    #completewith next
    .goto 1424/0,-388.05,-266.67,40 >> Enter the Darrow Hill Yeti Cave

step
    #completewith next
    .isOnQuest 565
    >>Kill |cRXP_ENEMY_Yetis|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 565,4
    .mob Cave Yeti
    .mob Ferocious Yeti
    .mob Mountain Yeti
    .mob Giant Yeti
    .itemcount 3719,1
    .itemcount 2997,1

step
    .isOnQuest 689
    .goto 1424/0,-352.85,-164.91,50,0
    .goto 1424/0,-281.49,-299.730,50,0
    .goto 1424/0,-357.01,-234.45
    >>Loot the |cRXP_LOOT_Alterac Granite|r on the ground
    >>|cRXP_LOOT_Alterac Granite|r |cRXP_WARN_spawns throughout the entire Cave|r
    .complete 689,1

step
    .isOnQuest 565
    .goto 1424/0,-352.85,-164.91,50,0
    .goto 1424/0,-281.49,-299.730,50,0
    .goto 1424/0,-357.01,-234.45
    .goto 1416/0,-381.47,286.67,0
    .goto 1416/0,-241.47,182.13,0
    .goto 1416/0,-90.27,514.40,0
    >>Kill |cRXP_ENEMY_Yetis|r. Loot them for their |cRXP_LOOT_Fur|r
    >>|cRXP_WARN_If all of the |cRXP_ENEMY_Yetis|r are dead inside of the cave you may kill the |cRXP_ENEMY_Yetis|r to the north around Alterac Mountains as well|r
    .complete 565,4
    .mob Cave Yeti
    .mob Ferocious Yeti
    .mob Mountain Yeti
    .mob Giant Yeti
    .itemcount 3719,1
    .itemcount 2997,1

step
    #completewith DalaranApproach
    >>Kill |cRXP_ENEMY_Mountain Lions|r and |cRXP_ENEMY_Hulking Mountain Lions|r on the western hills while travelling toward Dalaran. Finish any remaining counts on the eastern loop after the dungeon.
    .complete 564,1
    .mob +Mountain Lion
    .complete 564,2
    .mob +Hulking Mountain Lion
    .isOnQuest 564

step
    .goto Alterac Mountains,34.3,83.5,50 >> Head to the Alterac Mountains hill located furthest west
    .isOnQuest 564
    .isQuestNotComplete 564

step
    #completewith DalaranApproach
    .goto 1421,69.2,45.6,35 >> Travel west to Lordamere Lake and follow the shore to the sewer gate on Dalaran's northwest side
    >>Stay clear of Tarren Mill. |cRXP_FRIENDLY_Image of Archmage Modera|r is outside the sewer gate.
    .isOnQuest 92432

step
    #label DalaranApproach
    .goto 1421,69.2,45.6
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r outside the sewer gate.
    .turnin 92432 >> Turn in An Alarming Request
    .target Image of Archmage Modera::269127
    .isOnQuest 92432

step
    .goto 1421,69.2,45.6
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r. Accept her quest to receive the |cRXP_LOOT_Dalaran Sewer Key|r.
    .accept 92458 >> Accept Heart of Disruption
    .target Image of Archmage Modera::269127
    .isQuestTurnedIn 92432

step
    .goto 1421,69.2,45.6
    >>Accept the elemental kill quest before entering.
    .accept 92457 >> Accept Starving Arcane
    .target Image of Archmage Modera::269127
    .isQuestTurnedIn 92432

step
    >>Regroup at the sewer gate and form a full five-player party. Have the Warlock summon the remaining players with two helpers.
    +Confirm everyone is ready to enter City of Dalaran
    .isOnQuest 92458
    .isQuestNotComplete 92458

step
    >>Open the sewer gate with the Dalaran Sewer Key and enter the instance together.
    +Enter City of Dalaran
    .isOnQuest 92458
    .isQuestNotComplete 92458

step
    #optional
    #completewith DalaranClear
    >>Kill the three kinds of elementals throughout the clear. Spawns vary: keep unfinished counters for another run.
    .complete 92457,1
    .mob +Seeking Remnant
    .complete 92457,2
    .mob +Saturated Remnant
    .complete 92457,3
    .mob +Mana Echo
    .isOnQuest 92457

step
    >>Clear the sewers through |cRXP_ENEMY_Atrexis the Grave Knight|r and emerge into the city. Clear the city bosses before the final tower.
    >>Defeat |cRXP_ENEMY_Arcanic Enigma|r in the northeastern Path of Renewal for Andromath's quest. If returning with the Arcane Mote already collected, enter the dungeon again for any unfinished Stormwind objectives.
    .complete 92489,1
    .mob Arcanic Enigma
    .isOnQuest 92489

step
    >>Search the central garden around |cRXP_ENEMY_Fel Ancient|r for the |cRXP_LOOT_Fel Infused Blossom|r.
    .complete 92456,1
    .isOnQuest 92456

step
    #label DalaranClear
    >>Enter the Violet Citadel and use the NPC's portal to the Purple Parlor. Defeat |cRXP_ENEMY_Shade of the Archmage|r and loot the |cRXP_LOOT_Arcane Mote|r.
    .complete 92458,1
    .mob Shade of the Archmage
    .isOnQuest 92458

step
    .goto 1421,69.2,45.6
    >>Leave the instance through the sewers and return to |cRXP_FRIENDLY_Image of Archmage Modera|r.
    .turnin 92458 >> Turn in Heart of Disruption
    .target Image of Archmage Modera::269127
    .isQuestComplete 92458

step
    #optional
    .goto 1421,69.2,45.6
    >>Turn in Starving Arcane if all three counters are finished. Keep it for a later clear if incomplete; do not reset the dungeon for this chapter.
    .turnin 92457 >> Turn in Starving Arcane
    .target Image of Archmage Modera::269127
    .isQuestComplete 92457

step
    .goto 1421,69.2,45.6
    >>Take Modera's message into the city.
    .accept 92459 >> Accept Friend of the Kirin Tor
    .target Image of Archmage Modera::269127
    .isQuestTurnedIn 92458

step
    >>Leave the dungeon and enter the outdoor City of Dalaran. Speak to |cRXP_FRIENDLY_Archmage Celindra|r inside the Violet Citadel.
    .turnin 92459 >> Turn in Friend of the Kirin Tor
    .target Archmage Celindra::252085
    .isOnQuest 92459

step
    >>Keep Power Overwhelming and A Green Sample for the existing Stormwind visit during default 34-35 Stranglethorn Vale I. Use the Dalaran Stormwind Deliveries helper there, then resume your saved default chapter.
    >>Leave the outdoor city and travel east to the Syndicate hills. Finish the remaining Hillsbrad objectives before returning to Southshore.
    +Confirm the party is ready for the eastern Hillsbrad loop

step
    #completewith FinishSyndicate
    .goto 1416/0,-82.43,-78.83,0,0
    >>Kill |cRXP_ENEMY_Mountain Lions|r and |cRXP_ENEMY_Hulking Mountain Lions|r
    >>Keep killing |cRXP_ENEMY_Hulking Mountain Lions|r on the eastward journey. The western hill was checked on the Dalaran approach.
    .complete 564,1
    .mob +Mountain Lion
    .complete 564,2
    .mob +Hulking Mountain Lion

step
    #completewith next
    >>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
    >>|cRXP_WARN_Kill all|r |cRXP_ENEMY_Syndicate|r |cRXP_WARN_mobs you see in the camp on the hill west of the road. This quest objective may be hard to complete if you skip mobs and you'd have to backtrack|r
    .complete 505,1
    .mob +Syndicate Footpad
    .complete 505,2
    .mob +Syndicate Thief

step
    .goto 1416/0,-849.54,231.58
    >>Click the |cRXP_PICK_Syndicate Documents|r on the table
    .accept 510 >> Accept Foreboding Plans
    .accept 511 >> Accept Encrypted Letter

step
    #label FinishSyndicate
    >>Kill |cRXP_ENEMY_Syndicate Thieves|r and |cRXP_ENEMY_Syndicate Footpads|r
    .goto 1416/0,-849.35,232.16,90,0
    .goto Alterac Mountains,48.0,82.0,90,0
    .goto 1416/0,-849.35,232.16
    .goto Alterac Mountains,48.0,82.0,0
    .complete 505,1
    .mob +Syndicate Footpad
    .complete 505,2
    .mob +Syndicate Thief

step
    .goto 1416/0,-560.95,62.48,65,0
    .goto 1416/0,-449.51,37.28,65,0
    .goto 1416/0,-295.79,-133.15,65,0
    .goto 1416/0,-302.51,-199.97,65,0
    .goto 1416/0,-159.43,-56.05,65,0
    .goto 1416/0,-75.71,-87.79,65,0
    .goto 1416/0,-302.51,-199.97
    >>Finish killing |cRXP_ENEMY_Mountain Lions|r keep killing any |cRXP_ENEMY_Hulking Mountain Lions|r you see
    .complete 564,1
    .mob +Mountain Lion
    .complete 564,2
    .mob Hulking Mountain Lion

step
    .goto Alterac Mountains,71.4,68.6
    .goto Alterac Mountains,75.1,64.4,0
    .goto Alterac Mountains,78.7,61.2,0
    .goto Alterac Mountains,80.8,55.7,0
    .goto Alterac Mountains,83.1,52.2,0
    .goto Alterac Mountains,69.8,73.7,0
    .goto Alterac Mountains,68.2,77.1,0
    .goto Alterac Mountains,69.7,72.7,0
    >>Kill |cRXP_ENEMY_Snapjaws|r. Loot them for their |cRXP_LOOT_Turtle Meat|r
    >>|cRXP_WARN_Go up and down along the River until you've completed it|r
    >>|cRXP_WARN_Be careful not to run into|r |cRXP_ENEMY_Narillasanz|r |cRXP_WARN_a level 44 elite red dragon that may be patrolling around the area|r
    .unitscan Narillasanz
    .collect 3712,10,555,1
    .mob Snapjaw

step
    .goto 1416/0,-1411.87,602.13
    .goto 1416/0,-1403.47,525.60,0
    .goto 1416/0,-1451.07,562.93,0
    .goto 1416/0,-1025.47,785.07,0
    .goto 1416/0,-947.07,833.60,0
    >>Finish killing |cRXP_ENEMY_Hulking Mountain Lions|r. If there are not enough spawns, check north of Strahnbrad.
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Narillasanz|r, the level 44 elite dragon patrolling this area.|r
    .complete 564,2
    .mob Hulking Mountain Lion

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto 1422/0,-1429.07,928.25
    .fp Chillwind>> Get the Western Plaguelands Flight Path
    .target Bibilfaz Featherwhistle

step
    #completewith letter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto 1422/0,-1429.07,928.25
    .fly Southshore>> Fly to Southshore
    .target Bibilfaz Featherwhistle

step
    .goto 1424/0,-499.32,-773.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 1|r |T132912:0|t[Fine Thread] |cRXP_BUY_from him|r
    .collect 2321,1,565,1
    .itemcount 2997,1
    .itemcount 3719,1
    .itemcount 3720,10
    .target Micha Yance

step
    .goto 1424/0,-499.32,-773.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micha Yance|r
    >>|cRXP_BUY_Buy 1|r |T134059:0|t[Soothing Spice] |cRXP_BUY_from him|r
    .collect 3713,1,555,1
    .target Micha Yance

step
    .isQuestComplete 565
    .goto 1424/0,-515.13,-784.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
    .turnin 565 >> Turn in Bartolo's Yeti Fur Cloak
    .target Bartolo Ginsetti

step
    #label letter
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >> Turn in Encrypted Letter
    .accept 514 >> Accept Letter to Stormpike
    .target Loremaster Dibbs

step
    .goto 1424/0,-593.65,-851.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
    .accept 555 >> Accept Soothing Turtle Bisque
    .turnin 555 >> Turn in Soothing Turtle Bisque
    .target Chef Jessen
    .itemcount 3712,10

step
    .goto 1424/0,-473.97,-861.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 505 >> Turn in Syndicate Assassins
    .turnin 510 >> Turn in Foreboding Plans
    .target Magistrate Henry Maleb

step
    .goto 1424/0,-610.81,-793.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
    .turnin 564 >> Turn in Costly Menace
    .target Darren Malvew

step
    #include RestedXP Forever Guide (A)\32-33 Hillsbrad/Arathi@fly2

]])

RXPGuides.RegisterGuide([[
#forever
#version 3
#group Forever Trio Launch
#name 34-35 Dalaran Stormwind Deliveries
#displayname 34-35 Dalaran Stormwind Deliveries
#next RestedXP Forever Guide (A)\34-35 Stranglethorn Vale I
<< Alliance

-- Select during the existing default 34-35 Stormwind visit, before taking the tram.
-- No extra city trip or hearthstone change.

step
    .goto 1453/0,870.96,-9018.52
    >>Talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r in the Mage Tower.
    .turnin 92489 >> Turn in Power Overwhelming
    .target High Sorcerer Andromath::5694
    .isQuestComplete 92489

step
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r in the herbalist shop in the northwest part of the Park.
    .turnin 92456 >> Turn in A Green Sample
    .target Shylamiir::5502
    .isQuestComplete 92456

step
    #include Forever Trio Launch\01-60 City Supplies - Stormwind

step
    >>Resume your saved 34-35 Stranglethorn Vale I chapter after the city deliveries.
    .clicknext RestedXP Forever Guide (A)\34-35 Stranglethorn Vale I >> Click here to resume the default guide
    +Confirm the Dalaran city deliveries are finished
]])

