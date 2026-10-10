RXPGuides.RegisterGuide([[
#forever
#version 13
#group Forever Trio Launch
#name 21-22 Ruins of Lordaeron
#displayname 21-22 Ruins of Lordaeron
#next 22 Duskwood Return
<< Alliance

-- Follow-up from the Duskwood deliveries and Defias escort, arriving by Grom'gol zeppelin.
-- Hearth to Lakeshire after the dungeon; batch Stormwind deliveries with Deadmines later.
-- The Sleeping Bag chain is deferred to later leveling.
-- Outbound route: Sentinel Hill -> Westfall Lighthouse -> Grom'gol -> Tirisfal Glades.
-- Sources: installed Forever Alliance guides;
-- https://www.wowhead.com/forever/guide/dungeons/every-dungeon-quest-location
-- https://www.wowhead.com/forever/news/three-new-ship-routes-debuting-in-forever-382891
-- https://www.wowhead.com/forever/guide/ruins-of-lordaeron-dungeon-overview-location-rewards
-- https://www.wowhead.com/forever/quest=95250/abominable-creatures
-- https://www.wowhead.com/forever/quest=95195/bloodied-insignia
-- https://www.wowhead.com/forever/quest=95189/crest-of-lordaeron
-- https://www.wowhead.com/forever/quest=92415/remember-that-i-love-you

step
    .zone Tirisfal Glades >> Arrive on the Undercity zeppelin from Grom'gol
    >>Leave the tower together and run south to the surface Ruins of Lordaeron

step
    .goto Tirisfal Glades,61.2,67.4,100
    >>Run together to the surface Ruins of Lordaeron above Undercity. The dungeon entrance is on the left as you enter the ruins.

step
    .goto Tirisfal Glades,61.2,67.4,100
    >>Find two more party members for the Warlock, Paladin and Warrior trio. Have the Warlock cast Ritual of Summoning at the entrance, with the Paladin and Warrior helping to summon the other two.
    +Form a full party and summon everyone to Ruins of Lordaeron

step
    >>Enter the dungeon together. |cRXP_FRIENDLY_Captain Truman|r is just to the left inside the entrance. Everyone should accept his quest before the group moves on. Watch for the Crest of Lordaeron throughout the run; it can spawn in several places.
    .accept 95250 >> Accept Abominable Creatures
    .target Captain Truman

step
    >>Kill and loot skeletons until each player finds the quest-starting |cRXP_LOOT_Bloodied Insignia|r. Right-click it to start the quest, then keep looting skeletons for nine more.
    .use 268535
    .accept 95195 >> Accept Bloodied Insignia

step
    >>Defeat |cRXP_ENEMY_The Baron|r in King's Alley and loot his head for every player. Keep the tank topped up for his hard-hitting Knockout.
    .complete 95250,1 >> Loot the Head of the Baron
    .mob The Baron

step
    >>In the Lordaeron Graveyard near |cRXP_ENEMY_Rath'mael|r, find the |cRXP_PICK_Blood-Stained Letter|r on the ground. Every player should loot and right-click it to start a delivery to Stormwind and then Duskwood.
    .use 251522
    .accept 92415 >> Accept Remember That I Love You
    .mob Rath'mael

step
    >>Search for the |cRXP_PICK_Crest of Lordaeron|r as you clear. It has one random spawn per instance: check tower walls and floors, the crypt near the spider area, and the pavilion near Bjork. Everyone must loot and right-click it to start the Alliance quest.
    .use 268579
    .accept 95189 >> Accept Crest of Lordaeron

step
    >>Before leaving, check that everyone has ten Bloodied Insignias. Clear more skeletons if anyone is short.
    .complete 95195,1 >> Collect 10 Bloodied Insignias
    .mob Skeletal Soldier

step
    >>Return to |cRXP_FRIENDLY_Captain Truman|r near the dungeon entrance with the Baron's head. Each player can choose a reward.
    .turnin 95250 >> Turn in Abominable Creatures
    .target Captain Truman

step
    >>Use the Lakeshire bind set during the level-20 Redridge visit. Keep the Bloodied Insignias, Crest and letter for the Stormwind batch after Deadmines
    .hs >> Hearth to Lakeshire after Ruins of Lordaeron
    .cooldown item,6948,>0,1
    .bindlocation 69,1
    .zoneskip Redridge Mountains

step
    .skill cooking,<80,1
    .train 25704,1 -- Skip if Smoked Sagefish is already learned
    .goto 1433/0,-2145.89,-9211.36
    >>Buy |cRXP_BUY_Recipe: Smoked Sagefish|r from |cRXP_FRIENDLY_Barkeep Daniels|r inside the Lakeshire inn now that your Cooking is 80 or higher
    .collect 21099,1 -- Recipe: Smoked Sagefish (1)
    .target Barkeep Daniels

step
    .goto Redridge Mountains,27.01,44.82,60
    >>Regroup in Lakeshire after the hearth. If it is unavailable or bound elsewhere, return to the Eastern Kingdoms and make your way to Lakeshire before continuing

step
    .goto 1433/0,-2221.65,-9218.60
    >>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r in the Lakeshire town hall after the RoL hearth. Deliver Gryan's reply and take the Darkshire message before flying
    .turnin 144 >> Turn in Messenger to Westfall
    .accept 145 >> Accept Messenger to Darkshire
    .target Magistrate Solomon

step
    .goto 1433/0,-2234.89,-9435.35
    >>Talk to |cRXP_FRIENDLY_Ariena Stormfeather|r. Start the east-to-west Duskwood pass, ending at Sven's camp and Sentinel Hill
    .fly Duskwood >> Fly to Darkshire after the RoL hearth
    .target Ariena Stormfeather

]])
