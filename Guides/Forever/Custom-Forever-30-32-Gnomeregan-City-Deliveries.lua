RXPGuides.RegisterGuide([[
#forever
#version 7
#group Forever Trio Launch
#name 30-32 Gnomeregan & City Deliveries
#next RestedXP Forever Guide (A)\32-33 Hillsbrad/Arathi
#displayname Gnomeregan & City Deliveries
<< Alliance

-- Mandatory trio dungeon chapter after the final Wetlands Moonshine delivery.
-- Dungeon quest order and original coordinates follow the filtered default 29-32 Duskwood route.

step
    >>Finish MacKreel's Moonshine in the preceding Wetlands chapter before this city trip. This chapter runs Gnomeregan and the saved city deliveries, then returns the party to Southshore for Hillsbrad.
    >>Free quest-log space for seven dungeon quests, plus the optional escort and ring. Keep Fallen in the Fen, Plea To The Alliance, A Daughter's Love, James Hyal and The Missing Diplomat for their later destinations.
    +Confirm the party is ready for Gnomeregan

step
    .goto Hillsbrad Foothills,51.170,58.927
    >>Talk to Innkeeper Anderson. Keep Southshore as home throughout the dungeon and city visits.
    .home >> Set your Hearthstone to Southshore
    .target Innkeeper Anderson

step
    .goto 1424/0,-512.15,-715.14
    .fp Southshore >> Get the Southshore flight path
    .target Darla Harris

step
    .goto 1424/0,-512.15,-715.14
    .fly Ironforge >> Fly to Ironforge
    .target Darla Harris

step
    .goto Ironforge,63.50,67.30
    >>Deliver the letter to Sara Balloo before the dungeon pickups.
    .turnin 637 >> Turn in Sully Balloo's Letter
    .target Sara Balloo
    .isOnQuest 637

step
    .goto Ironforge,63.50,67.30
    >>Wait for Sara's conversation after delivering Sully's Letter, then take her plea to the King.
    .timer 17,Sully Balloo's Letter RP
    .accept 683 >> Accept Sara Balloo's Plea
    .target Sara Balloo
    .isQuestTurnedIn 637

step
    .goto 1455/0,-1022.65,-4865.70
    >>Deliver Sara's plea to King Magni and take the memorial request to Grand Mason Marblesten.
    .turnin 683 >> Turn in Sara Balloo's Plea
    .accept 686 >> Accept A King's Tribute
    .target King Magni Bronzebeard
    .isOnQuest 683

step
    .goto 1455/0,-1022.17,-5033.80
    >>Talk to Grand Mason Marblesten. Keep the granite quest for the default Hillsbrad cave visit; its later Ironforge return handles the delivery.
    .turnin 686 >> Turn in A King's Tribute
    .accept 689 >> Accept A King's Tribute
    .target Grand Mason Marblesten
    .isOnQuest 686

step
    .goto 1455/0,-1288.69,-5065.35
    >>Talk to Pilot Longbeard. Keep this delivery for Wizzle Brassbolts during default 33-34 Thousand Needles.
    .accept 1179 >> Accept The Brassbolts Brothers
    .target Pilot Longbeard

step
    .goto Ironforge,69.930,18.548
    >>Deliver the Prehistoric Prism to High Explorer Magellas in the Hall of Explorers.
    .turnin 98824 >> Turn in Prehistoric Prism
    .target High Explorer Magellas
    .isOnQuest 98824

step
    .goto Ironforge,77.539,11.834
    >>Deliver Whelgar's relic package to Historian Karnik in the Hall of Explorers library.
    .turnin 98313 >> Turn in For Further Study
    .target Historian Karnik
    .isOnQuest 98313

step
    .goto Ironforge,50.826,5.613
    >>Deliver any outstanding BFD manuscript to Gerrig Bonegrip.
    .turnin 971 >> Turn in Knowledge in the Deeps
    .target Gerrig Bonegrip
    .isQuestComplete 971

step
    >>Train, repair and restock before leaving Ironforge. Bring one Silver Bar and one Moss Agate if you want to finish the optional ring upgrade after the run.
    >>Gyrodrillmatic Excavationators should already be in your log from Shoni during the Stockades visit. If anyone missed it, take the tram to Stormwind's Dwarven District, collect quest 2928 from Shoni, then return here before entering the dungeon.
    +Confirm everyone has their supplies and Shoni's quest

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2927 >> Accept The Day After
    .target +Gnoarn
    .goto 1455/0,-1260.56,-4835.98
    .accept 2922 >> Accept Save Techbot's Brain!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Accept The Grand Betrayal
    .target +High Tinker Mekkatorque
    .goto 1455/0,-1257.09,-4827.60
    .accept 2930 >> Accept Data Rescue
    .target +Master Mechanic Castpipe
    .goto 1455/0,-1265.63,-4823.02
    .accept 2924 >> Accept Essential Artificials
    .target +Klockmort Spannerspan
    .goto 1455/0,-1250.62,-4812.47

step
    #completewith next
    .goto 1426/0,-832.79,-5022.97
    .zone Dun Morogh>>Exit Ironforge

step
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-457.85,-5498.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >> Turn in The Day After
    .accept 2926 >> Accept Gnogaine
    .target Ozzie Togglevolt

step
    #label StartGnomer
    #completewith next
    .goto 1426/0,602.85,-5183.19,0
    .goto 1426/0,602.85,-5183.19,30,0
    .goto 1415,43.42,53.81,45 >> Travel to Gnomeregan

step
    .goto 1415,43.40,53.41,50,0
    .goto 1415,43.13,53.36,50,0
    .goto 1415,43.38,52.94,50,0
    .goto 1415,43.40,53.41
    .use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Invader|r or |cRXP_ENEMY_Irradiated Pillager|r must be ALIVE when you use it|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2926,1
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926

step
    #completewith next
    .goto 1426/0,-463.66,-5474.00,40 >> Travel to |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
    >>|cRXP_WARN_You will get a follow up for when you go inside the dungeon|r
    .isOnQuest 2926

step
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-457.85,-5498.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >> Turn in Gnogaine
    .target Ozzie Togglevolt
    .isQuestComplete 2926

step
    .goto 1426/0,-457.85,-5498.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2962 >> Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926

step
    #completewith next
    .goto 1426/0,602.85,-5183.19,0
    .goto 1426/0,602.85,-5183.19,30,0
    .goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
    .isOnQuest 2962

step
    .goto 1415,43.37,53.11,70,0
    .goto 1415,43.10,52.81
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1,2930,1,1
    >>Kill |cRXP_ENEMY_Techbot|r. Loot him for his |cRXP_LOOT_Memory Core|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2922,1
    .mob Techbot
    .isOnQuest 2922

step
    .goto 1415,43.40,53.41,50,0
    .goto 1415,43.13,53.36,50,0
    .goto 1415,43.38,52.94,50,0
    .goto 1415,43.40,53.41
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .isOnQuest 2930

step
    .goto 1415,43.364,52.892,-1
    .goto 1415,43.411,52.898,-1
    .goto 1415,43.402,52.672,-1
    .goto 1415,43.430,52.675,-1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_White Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .collect 9280,1,2930,1
    .itemcount 9279,1
    .skipgossip
    .isOnQuest 2930

step
    .goto 1415,43.17,53.36,40,0
    .goto 1415,42.78,53.81
    .subzone 721,2 >> Enter the Gnomeregan instance portal

step
    #completewith Thermaplugg
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1
    .isOnQuest 2928

step
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-B|r
    >>The console looking machine is located at the gnomish safe zone at the bottom floor, next to the big circular room where the slimes are located
    .collect 9282,1,2930,1
    .itemcount 9280,1
    .skipgossip
    .isOnQuest 2930

step
    >>Check The Dormitory beside the Clean Zone for Kernobee. If he is present, regroup and accept A Fine Mess before continuing; if absent, continue the dungeon. Its later delivery is in Booty Bay.
    .unitscan Kernobee
    +Check for Kernobee and accept his escort if available

step
    #optional
    >>If Kernobee is absent, skip this pickup. Keep the completed quest for a later Booty Bay visit.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_This will start an escort quest. |cRXP_FRIENDLY_Kernobee|r spawns randomly in The Dormitory, right outside of the gnomish safe zone|r
    .accept 2904 >> Accept A Fine Mess
    .unitscan Kernobee

step
    >>Escort |cRXP_FRIENDLY_Kernobee|r back to the start of the dungeon
    .complete 2904,1
    .isOnQuest 2904

step
    .use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[Heavy Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r or|r |cRXP_ENEMY_Irradiated Horror|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Slime|r or |cRXP_ENEMY_Irradiated Horror|r must be ALIVE when you use it|r
    >>|cRXP_WARN_Note: You must turn this quest in within 2 hours of acquiring the|r |T136006:0|t[High Potency Radioactive Fallout]
    .complete 2962,1
    .mob Irradiated Slime
    .mob Irradiated Horror
    .isOnQuest 2962

step
    #completewith Thermaplugg
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    .complete 2924,1
    .isOnQuest 2924

step
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Blue Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-C|r
    >>The Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r. Defeat him before continuing
    .collect 9281,1,2930,1
    .itemcount 9282,1
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000

step
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Red Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
    >>Find it in the Engineering Labs before the final boss.
    .complete 2930,1
    .itemcount 9281,1
    .skipgossip
    .isOnQuest 2930

step
    #label Thermaplugg
    >>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r. Assign a player to switch off the bomb buttons while the tank holds the boss
    .complete 2929,1
    .isOnQuest 2929

step
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    >>If you still haven't finished this quest, go back to places where you looted them before, since they respawn after a few minutes
    .complete 2924,1
    .isOnQuest 2924

step
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1
    .isOnQuest 2928

step
    >>|cRXP_WARN_Use the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to start the quest|r
    .accept 2945 >> Accept Grime-Encrusted Ring
    .collect 9326,1,2945
    .itemcount 9326,1
    .use 9326

step
    >>|cRXP_WARN_Take the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to |cRXP_PICK_The Sparklematic 5200|r in The Clean Zone|r
    *You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
    .turnin 2945 >> Turn in Grime-Encrusted Ring
    .itemcount 9326,1

step
    >>Click the |cRXP_PICK_The Sparklematic 5200|r one more time
    .accept 2947 >> Accept Return of the Ring
    .isQuestTurnedIn 2945

step
    >>Walk back through the entrance and leave Gnomeregan. Keep your Hearthstone for Southshore. Return directly to Ozzie before shopping: the radioactive fallout expires two hours after collection.
    .zone Dun Morogh >> Leave Gnomeregan

step
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-457.85,-5498.29
    >>Talk to Ozzie Togglevolt in Kharanos.
    .turnin 2962 >> Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestComplete 2962

step
    .goto 1426/0,-541.23,-5242.29,40,0
    .goto 1426/0,-669.77,-5216.35,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >> Return to Ironforge

step
    .goto Ironforge,36.0,4.0
    >>Talk to Talvash del Kissel if you found and cleaned the ring.
    .turnin 2947 >> Turn in Return of the Ring
    .accept 2948 >> Accept Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2947

step
    .goto Ironforge,36.0,4.0
    >>Use a Silver Bar and a Moss Agate to upgrade the ring. If you do not have both, keep Gnome Improvement for a later Ironforge visit.
    .turnin 2948 >> Turn in Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2948
    .itemcount 2842,1
    .itemcount 1206,1

step
    .goto Ironforge,69.540,50.325
    .turnin 2922 >> Turn in Save Techbot's Brain!
    .target Tinkmaster Overspark
    .isQuestComplete 2922

step
    .goto 1455/0,-1257.09,-4827.60
    .turnin 2929 >> Turn in The Grand Betrayal
    .target High Tinker Mekkatorque
    .isQuestComplete 2929

step
    .goto 1455/0,-1265.63,-4823.02
    .turnin 2930 >> Turn in Data Rescue
    .target Master Mechanic Castpipe
    .isQuestComplete 2930

step
    .goto 1455/0,-1250.62,-4812.47
    .turnin 2924 >> Turn in Essential Artificials
    .target Klockmort Spannerspan
    .isQuestComplete 2924

step
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>Optional: buy one Hillman's Cloak and one Bolt of Woolen Cloth for Bartolo's Yeti Fur Cloak in Hillsbrad, and four Lesser Bloodstone Ore for Favor for Krazek in Stranglethorn. Keep the supplies for default. Skip this step if you do not want these quests or the items are unavailable or too expensive.
    .collect 3719,1,565,1
    .collect 2997,1,565,1
    .collect 4278,4,627,1
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler

step
    .goto Ironforge,76.3,51.2
    .zone Stormwind City >> Take the Deeprun Tram to Stormwind

step
    .goto StormwindClassic,55.511,12.502
    >>Deliver the Robo-mechanical Guts to Shoni in the Dwarven District.
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
    .isQuestComplete 2928

step << Warrior
    .goto Stormwind City,78.680,45.802
    >>Train with Wu Shen and take the level-30 referral. Keep it for Klannoc Macleod on Fray Island during default 33-34.
    .xp 30 >> Reach level 30 for The Islander
    .trainer >> Train your class spells
    .accept 1718 >> Accept The Islander
    .target Wu Shen

step
    .goto 1453/0,845.37,-9008.89
    >>Talk to Archmage Malin. Keep his delivery for Skuerto at Refuge Pointe when the default guide takes you there.
    .accept 690 >> Accept Malin's Request
    .target Archmage Malin

step
    .goto 1453/0,1025.56,-8983.64
    >>Give Zardeth the Tear of Tilloa from Duskwood and Musquash Root from Wetlands. If a plant was unavailable, keep A Noble Brew for a later attempt; this delivery skips until both objectives are complete.
    .turnin 335 >> Turn in A Noble Brew
    .target Zardeth of the Black Claw
    .isQuestComplete 335

step
    .goto 1453/0,1025.56,-8983.64
    >>Take the finished brew to Lord Baurles K. Wishock in the Hall of Petitioners.
    .accept 336 >> Accept A Noble Brew
    .target Zardeth of the Black Claw
    .isQuestTurnedIn 335

step << Warlock
    .goto 1453/0,1041.48,-8983.30
    >>Talk to Gakin downstairs in the Slaughtered Lamb. Keep the level-30 felhunter referral for Strahad in Ratchet during default 33-34.
    .xp 30 >> Reach level 30 for Seeking Strahad
    .accept 1798 >> Accept Seeking Strahad
    .target Gakin the Darkbinder

step << Warlock
    .goto 1453/0,1041.10,-8980.01
    >>Talk to Demisette in the same cellar. Keep the referral for Menara in Ratchet. Skip this pickup if already carrying an equivalent Menara referral from another city.
    .accept 4738 >> Accept In Search of Menara Voidrender
    .target Demisette Cloyce
    .isQuestAvailable 4738

step
    .goto 1453/0,369.73,-8562.730
    >>Deliver the brew to Lord Baurles K. Wishock during this Stormwind city visit.
    .turnin 336 >> Turn in A Noble Brew
    .target Lord Baurles K. Wishock
    .isOnQuest 336

step
    .goto 1453/0,383.76,-8345.76
    >>If An Old History Book dropped during the southern worgen circuit, use it and deliver it to Milton Sheaf in the Keep library before taking Southshore.
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794
    .target Milton Sheaf
    .itemcount 2794,1

step
    .goto 1453/0,383.76,-8345.76
    >>Talk to Milton Sheaf in the Keep library if you previously delivered An Old History Book. Keep his Southshore breadcrumb for Loremaster Dibbs when the default chapter starts.
    .accept 538 >> Accept Southshore
    .target Milton Sheaf
    .isQuestTurnedIn 337

step
    .goto Stormwind City,39.60,27.20
    >>Deliver the Eye of Paleth to Archbishop Benedictus in the Cathedral.
    .turnin 293 >> Turn in Cleansing the Eye
    .target Archbishop Benedictus
    .isOnQuest 293

step
    >>Train, repair and restock before returning to Southshore. Keep A Fine Mess for a later Booty Bay visit if you completed Kernobee's escort; keep Gnome Improvement if its reagents were unavailable.
    >>Fallen in the Fen remains for Lakeshire, Plea To The Alliance for Refuge Pointe, A Daughter's Love for the default Raven Hill grave visit, and James Hyal and The Missing Diplomat for Theramore.
    >>Keep A King's Tribute for Hillsbrad granite, Malin's Request for Refuge Pointe, The Brassbolts Brothers for Thousand Needles. The Warrior keeps The Islander; the Warlock keeps Seeking Strahad and the Menara referral. Deliver Southshore to Dibbs at the default handoff.
    >>Keep Bloom of the Heavens (98209) and Nord'el for the default 35-37 Desolace boat stop in Auberdine. Deliver to Thundris Windweaver at Darkshore 37.394,40.128 before taking the flight to Desolace.
    +Confirm the city deliveries and default-guide pickups are finished

step
    .hs >> Hearth to Southshore
    .zoneskip Hillsbrad Foothills

step
    >>Regroup in Southshore. Continue with the default 32-33 Hillsbrad/Arathi guide. Its opening Menethil steps skip while you are in Hillsbrad.
    >>On the later default 33-34 visit, the Warlock should travel with the party from Theramore to Ratchet and unlock its flight path on arrival. The default Warlock flight instruction assumes an earlier Ratchet visit that this trio route did not make.
    +Confirm everyone is back in Southshore

]])
