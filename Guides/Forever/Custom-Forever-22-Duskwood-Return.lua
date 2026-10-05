RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 13
#group Forever Trio Launch
#name 22 Duskwood Return
#displayname 22 Duskwood Return
#next 22-24 Deadmines
<< Alliance (Warlock/Priest/Warrior)

-- After the RoL hearth to Lakeshire and flight to Darkshire, before Deadmines.
-- Darkshire -> Blind Mary -> Tranquil Gardens (The Night Watch) -> Sven's farm -> Raven Hill -> Sven's camp -> Sentinel Hill.
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
    .itemcount 4371,1
    .goto Duskwood,79.80,48.02
    >>If you have a |cRXP_LOOT_Bronze Tube|r, give it to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look to the Stars
    .turnin 174 >> Turn in Look to the Stars
    .target Viktori Prism'Antras

step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>Take Viktori's request for Blind Mary
    .accept 175 >> Accept Look to the Stars
    .target Viktori Prism'Antras


step
    .goto Duskwood,75.7,45.3
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r with the hermit's request before leaving town
    .turnin 148 >> Turn in Supplies from Darkshire
    .accept 149 >> Accept Ghost Hair Thread
    .accept 101 >> Accept The Totem of Infliction
    .accept 66 >> Accept The Legend of Stalvan
    >>Visit Blind Mary and finish the first Night Watch objectives before continuing west toward Sven's farm
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
    .goto Duskwood,73.59,46.89
    >>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r before leaving town
    .accept 56 >> Accept The Night Watch
    .target Commander Althea Ebonlocke

step
    .goto Duskwood,81.98,59.08
    >>Talk to |cRXP_FRIENDLY_Blind Mary|r before heading south to Tranquil Gardens
    .turnin 149 >> Turn in Ghost Hair Thread
    .accept 154 >> Accept Return the Comb
    .target Blind Mary

step
    .isOnQuest 175
    .goto Duskwood,81.98,59.08
    >>Ask |cRXP_FRIENDLY_Blind Mary|r about Viktori's looking glass during the same stop
    .turnin 175 >> Turn in Look to the Stars
    .accept 177 >> Accept Look to the Stars
    .target Blind Mary

step
    .isOnQuest 56
    .goto Duskwood,79.22,70.97
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r in Tranquil Gardens before travelling west to Sven's farm
    .complete 56,1
    .complete 56,2
    .mob Skeletal Warrior
    .mob Skeletal Mage

step
    .isOnQuest 177
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r inside or near the chapel. Loot |cRXP_LOOT_Mary's Looking Glass|r before continuing west
    .complete 177,1
    .mob Insane Ghoul

step
    #completewith SecondDuskwoodSvenCamp
    .isOnQuest 101
    >>Loot spiders, skeletons and ghouls along this route for |cRXP_LOOT_The Totem of Infliction|r materials. Keep unfinished objectives for later Duskwood passes
    .complete 101,1
    .complete 101,2
    .complete 101,3

step
    #completewith SecondDuskwoodSvenCamp
    >>Kill nearby |cRXP_ENEMY_Venom Web Spiders|r for |cRXP_LOOT_Gooey Spider Legs|r while moving west. Each player needs six; keep moving if the drops are unfinished
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Venom Web Spider


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
