RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 6
#group Forever Trio Launch
#name 22 Duskwood Return
#displayname 22 Duskwood Return
#next 22-24 Deadmines
<< Alliance (Warlock/Priest/Warrior)

-- After the RoL hearth to Lakeshire and flight to Darkshire, before Deadmines.
-- One east-to-west pass: Darkshire -> Sven's farm -> Sven's western camp -> Sentinel Hill.
-- Carry town follow-ups and any spider legs to the Darkshire visit after Deadmines.
-- Quest details and coordinates follow the installed Classic Alliance Duskwood routes.
step
    .goto Duskwood,73.8,43.3
    >>Start in Darkshire after the Lakeshire hearth and flight from Redridge. Talk to |cRXP_FRIENDLY_Chef Grual|r in the inn before heading west
    .turnin 5 >> Turn in Jitters' Growling Gut
    .accept 93 >> Accept Dusky Crab Cakes
    >>Collect spider legs along the westward route; keep them for the Darkshire visit after Deadmines
    .target Chef Grual

step
    .goto Duskwood,75.7,45.3
    >>All three players must be level 22 before accepting The Legend of Stalvan. Check the lowest party member before leaving Darkshire
    .xp 22 >> Reach level 22 before starting The Legend of Stalvan
    +Confirm all three players are level 22 or higher

step
    .goto Duskwood,75.7,45.3
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r with the hermit's request before leaving town
    .turnin 148 >> Turn in Supplies from Darkshire
    .accept 149 >> Accept Ghost Hair Thread
    .accept 66 >> Accept The Legend of Stalvan
    >>Keep Ghost Hair Thread for a later eastern Duskwood visit. Continue west toward Sven's farm and camp now
    .target Madame Eva

step
    .goto Duskwood,72.6,46.9
    >>Talk to |cRXP_FRIENDLY_Clerk Daltry|r in the Darkshire town hall before heading west
    .turnin 66 >> Turn in The Legend of Stalvan
    .accept 67 >> Accept The Legend of Stalvan
    >>Keep this for the Old Footlocker in Moonbrook before entering Deadmines. All three players must have this part
    .target Clerk Daltry

step
    #completewith SecondDuskwoodSvenCamp
    .isOnQuest 93
    >>Kill nearby |cRXP_ENEMY_Venom Web Spiders|r for |cRXP_LOOT_Gooey Spider Legs|r while moving west. Each player needs six; keep moving if the drops are unfinished
    .complete 93,1 -- Gooey Spider Leg (6)
    .mob Venom Web Spider

step
    #completewith SecondDuskwoodSvenCamp
    .isOnQuest 226
    >>Kill nearby |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r while moving west. Keep any remaining kills and the turn-in for the third Duskwood pass after DM
    .complete 226,1 -- Starving Dire Wolf slain (12)
    .mob +Starving Dire Wolf
    .complete 226,2 -- Rabid Dire Wolf slain (8)
    .mob +Rabid Dire Wolf

step
    .isOnQuest 95
    .goto Duskwood,49.9,77.8
    >>Follow the southern road west from Darkshire toward Yorgen Farmstead. Approach the |cRXP_PICK_Mound of Loose Dirt|r behind the buildings together and clear only the guards needed to reach it
    >>Click the mound to finish Sven's Revenge, then take the book delivery back to Sven's western camp
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp

step
    .isOnQuest 240
    .goto Duskwood,18.4,56.6
    >>If you already have the cake delivery, give it to |cRXP_FRIENDLY_Jitters|r while passing Raven Hill on the way northwest
    .turnin 240 >> Turn in Return to Jitters
    .target Jitters

step
    #label SecondDuskwoodSvenCamp
    .goto Duskwood,7.781,34.069
    >>Continue northwest to |cRXP_FRIENDLY_Sven Yorgen|r at the western camp. Deliver the book before crossing into Westfall
    .turnin 230 >> Turn in Sven's Camp
    .accept 262 >> Accept The Shadowy Figure
    >>Keep the next Darkshire delivery for the town visit after Deadmines
    .target Sven Yorgen

step
    .zone Westfall >> Cross west over the river after the camp turn-in
    >>Continue directly to Sentinel Hill for Deadmines

step
    .goto Westfall,56.6,52.6,100
    >>Regroup in Sentinel Hill after the east-to-west Duskwood pass and assemble the Deadmines party

]])
