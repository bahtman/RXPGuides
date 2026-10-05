RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 9
#group Forever Trio Launch
#name 21 Duskwood & Defias Escort
#displayname 21 Duskwood & Defias Escort
#next 21-22 Ruins of Lordaeron
<< Alliance (Warlock/Priest/Warrior)

-- After the level-20 Redridge circuit, before RoL and the second Duskwood loop.
-- First pass ends in Sentinel Hill: Darkshire pickups -> Westfall -> western Duskwood -> Sentinel Hill.
-- Keep the Lakeshire bind set in Redridge for the return from RoL.
-- Quest details and coordinates follow the installed Classic Alliance Duskwood routes.
step
    .goto Duskwood,75.34,48.74
    >>Run south from Redridge to Darkshire. Talk to |cRXP_FRIENDLY_Elaine Carevin|r inside the building
    .accept 164 >> Accept Deliveries to Sven
    .accept 165 >> Accept The Hermit
    .target Elaine Carevin

step
    .goto Duskwood,77.5,44.4
    >>Talk to |cRXP_FRIENDLY_Felicia Maline|r before leaving Darkshire
    .fp Duskwood >> Get the Darkshire flight path
    .target Felicia Maline

step
    .goto Duskwood,77.5,44.4
    >>Talk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Fly to Sentinel Hill before entering western Duskwood
    .target Felicia Maline

step
    .goto 1436/0,1045.12,-10508.80
    >>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r while passing Sentinel Hill
    .turnin 143 >> Turn in Messenger to Westfall
    .accept 144 >> Accept Messenger to Westfall
    >>Keep the reply for Lakeshire immediately after the RoL hearth. Do the Duskwood deliveries before starting the Defias Traitor escort
    .target Gryan Stoutmantle

step
    .zone Duskwood >> Run east across the river into western Duskwood

step
    .goto Duskwood,7.781,34.069
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r at his camp
    .turnin 164 >> Turn in Deliveries to Sven
    .accept 95 >> Accept Sven's Revenge
    >>Keep Sven's Revenge for the east-to-west Duskwood pass after RoL; continue with Lars and the hermit now
    .target Sven Yorgen

step
    .goto Duskwood,7.7,33.3
    >>Talk to |cRXP_FRIENDLY_Lars|r beside Sven before killing wolves along the route to the hermit
    .accept 226 >> Accept Wolves at Our Heels
    .target Lars

step
    #completewith FirstDuskwoodExit
    .isOnQuest 226
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r while travelling to the hermit and back toward Westfall. Keep unfinished kills for the later Duskwood passes; turn in at Lars on the third pass
    .complete 226,1 -- Starving Dire Wolf slain (12)
    .mob +Starving Dire Wolf
    .complete 226,2 -- Rabid Dire Wolf slain (8)
    .mob +Rabid Dire Wolf

step
    #label FirstDuskwoodHermit
    .goto Duskwood,28.0,31.5
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r at the hermit's shack north of Raven Hill Cemetery
    .turnin 165 >> Turn in The Hermit
    .accept 148 >> Accept Supplies from Darkshire
    >>Keep the delivery for the second Duskwood loop after RoL
    .target Abercrombie

step
    #label FirstDuskwoodExit
    .goto Westfall,56.6,52.6,100
    >>Cross back into Westfall and return to Sentinel Hill. Gather all three before starting the escort; everyone must accept the group quest prompt

step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    >>|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_The Defias Traitor|r to spawn if he's not there|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor

step
    #sticky
    #label PeoplesMilitia13
    .isOnQuest 13
    >>Kill |cRXP_ENEMY_Defias Pillagers|r and |cRXP_ENEMY_Defias Looters|r during the escort. Finish any remaining kills in Moonbrook after the escort
    >>|cRXP_WARN_Stay with |cRXP_FRIENDLY_The Defias Traitor|r until the escort is complete|r
    .complete 13,1 -- Defias Pillager slain (15)
    .mob +Defias Pillager
    .complete 13,2 -- Defias Looter slain (15)
    .mob +Defias Looter
step
    .goto 1436/0,1527.07,-11073.23
    >>Escort the |cRXP_FRIENDLY_The Defias Traitor|r to The Deadmines
    >>|cRXP_WARN_Stay beside |cRXP_FRIENDLY_The Defias Traitor|r at all times! Be ready to fight |cRXP_ENEMY_The Defias|r upon reaching Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor

step
    #label PeoplesMilitia13Finish
    .isOnQuest 13
    >>Kill |cRXP_ENEMY_Defias Pillagers|r and |cRXP_ENEMY_Defias Looters|r during the escort. Finish any remaining kills in Moonbrook after the escort
    >>|cRXP_WARN_Stay with |cRXP_FRIENDLY_The Defias Traitor|r until the escort is complete|r
    .complete 13,1 -- Defias Pillager slain (15)
    .mob +Defias Pillager
    .complete 13,2 -- Defias Looter slain (15)
    .mob +Defias Looter
step
    #requires PeoplesMilitia13Finish
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 13 >> Turn in The People's Militia
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .accept 214 >> Accept Red Silk Bandanas
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell
    
step
    >>Keep the VanCleef quest and Red Silk Bandanas for Deadmines after RoL and the second Duskwood loop
    >>Each player should have |cRXP_LOOT_Swim Speed Potions|r ready for the coastal swim from the lighthouse to Grom'gol
    +Check Swim Speed Potions before leaving Sentinel Hill

step
    .goto Westfall,30.0,86.0,80
    >>Run southwest to the |cRXP_FRIENDLY_Westfall Lighthouse|r after the escort and militia turn-ins

step
    .train 7827,1 -- Skip if Rainbow Fin Albacore is already learned
    .goto Westfall,36.2,90.2
    >>Talk to |cRXP_FRIENDLY_Kriggon Talsone|r southeast of the lighthouse before swimming toward Grom'gol
    >>Buy |cRXP_BUY_Recipe: Rainbow Fin Albacore|r. Keep it until you have 50 Cooking if you cannot learn it yet
    .collect 6368,1 -- Recipe: Rainbow Fin Albacore (1)
    .target Kriggon Talsone

step
    .goto 1436/0,1718.17,-11480.4,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1004.57,-12317.37,60,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,492.15,-12499.03,60
    >>Swim south along the coast from the lighthouse toward Grom'gol. |cRXP_WARN_Use your Swim Speed Potions during the long swim|r
    >>Stay clear of the islands and Vile Reef; follow the coastal waypoints together
    .use 6372

step
    .goto Stranglethorn Vale,30.51,29.10,60
    >>Regroup off Grom'gol's western shore, then approach the zeppelin tower together. Avoid the camp's Horde guards

step
    .goto Stranglethorn Vale,31.5,29.0,0
    >>Climb Grom'gol's zeppelin tower and board the |cRXP_WARN_Undercity / Tirisfal Glades|r zeppelin together. Check its destination before boarding
    .zone Tirisfal Glades >> Take the Grom'gol zeppelin to Tirisfal Glades for RoL

]])
