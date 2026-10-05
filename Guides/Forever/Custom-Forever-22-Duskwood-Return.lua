RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 11
#group Forever Trio Launch
#name 22 Duskwood Return
#displayname 22 Duskwood Return
#next 22-24 Deadmines
<< Alliance (Warlock/Priest/Warrior)

-- After the RoL hearth to Lakeshire and flight to Darkshire, before Deadmines.
-- One east-to-west pass: Darkshire -> Sven's farm -> Raven Hill -> Sven's western camp -> Sentinel Hill.
-- Carry town follow-ups and any spider legs to the Darkshire visit after Deadmines.
-- Quest details and coordinates follow the installed Classic Alliance Duskwood routes.
-- The Valor Family: https://www.wowhead.com/forever/quest=96139/the-valor-family
step
    .goto Duskwood,77.992,48.328
    >>Check |cRXP_FRIENDLY_Herble Baubbletump|r for |cRXP_BUY_Bronze Tubes|r on this Darkshire visit. Buy any available tubes
    >>Limited supply: continue if he is out of stock; check again on the next visit
    .vendor >> Check Bronze Tube stock
    .target Herble Baubbletump
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
    .goto Duskwood,71.93,46.42
    >>After landing in Darkshire, talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r in the town hall with Solomon's message
    .turnin 145 >> Turn in Messenger to Darkshire
    .accept 146 >> Accept Messenger to Darkshire
    >>Keep Ello's reply for Solomon during the later Redridge return after the first Wetlands loop
    .target Lord Ello Ebonlocke

step
    .goto Duskwood,75.34,48.74
    >>Talk to |cRXP_FRIENDLY_Elaine Carevin|r before heading west
    .accept 163 >> Accept Raven Hill
    >>Collect spider legs along the westward route; keep them for the Darkshire visit after Deadmines
    .target Elaine Carevin




step
    .goto Duskwood,72.64,47.59
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r in the room beside Clerk Daltry before leaving Darkshire
    .accept 96139 >> Accept The Valor Family
    .target Sirra Von'Indi

step
    #completewith SecondDuskwoodSvenCamp
    >>Kill nearby |cRXP_ENEMY_Venom Web Spiders|r for |cRXP_LOOT_Gooey Spider Legs|r while moving west. Each player needs six; keep moving if the drops are unfinished
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
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
    .isOnQuest 96139
    .goto Duskwood,21.2,55.7
    >>Loot the |cRXP_PICK_Raven Hill Tome|r inside the house, on the broken octagonal table. Each player needs a copy
    .complete 96139,1 -- Raven Hill Tome (1)
    >>Keep the tome for Sirra during the Darkshire visit after Deadmines

step
    .goto Duskwood,18.4,56.6
    >>Talk to |cRXP_FRIENDLY_Jitters|r at Raven Hill on the way northwest to Sven
    .turnin 163 >> Turn in Raven Hill
    .accept 5 >> Accept Jitters' Growling Gut
    >>Keep the Darkshire delivery for the town visit after Deadmines
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
