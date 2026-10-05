# Upstream merge and Custom Trio review — 2026-10-05

Merged RestedXP/RXPGuides `upstream/main` through `2f0d3353` into local main at `b2ee6469`. This incorporates 49 commits since our previous merge base, including releases v4.11.13–v4.11.15. No merge conflicts. The three existing uncommitted Wetlands guide edits were preserved. Nothing was pushed.

## Changes carried into Trio

- Dun Morogh: add upstream's clickable `/sit` macro and 59-second timer to The Great Outdoors (96608). The existing quest objectives still control completion.
- Deadmines: add the upstream warning that Collecting Memories (168) gives no dungeon bonus XP and takes longer. Retain the existing quest itinerary; the party decides whether to finish it.
- Bump each edited guide's version for cache refresh.

## Existing Trio behavior already covers upstream fixes

- Redridge Goulash (60d89ce2): snouts now require being on quest 92. Trio already accepts it on the level-16 visit before collecting snouts, with `.isOnQuest 92` on the collection step. The level-20 return buys only condor/spider meat and has a recovery pickup before farming. Keep this arrangement.
- Dun Morogh training (551437b8): Trio already has Warlock stops at Gimrizz during Kharanos visits. Hunter additions do not apply to Warlock/Priest/Warrior.
- Easy Strider Living: Trio already requires five Strider Meat and Cooking 10 before its optional turn-in.
- Fishin' Time: Trio already purchases the bauble/nightcrawlers and completes quest 95065 at the Stormwind harbor visit.
- Westfall well routing: Trio already samples Molsen on the northbound leg after the Messenger. Upstream's reordered opening circuit starts differently; copying its whole sequence would not preserve Trio's itinerary.
- Deadmines: Trio already tracks Thistlenettle and cards outside the instance, Sneed and VanCleef inside, and the letter/bandanas and Stormwind follow-ups. The new upstream dungeon route mostly adds other entry routes and a Shaman water-totem branch.

## Changes excluded from Trio

- Hunter/Skyborne routing, bow upgrades, Night Elf/Druid class quests, Horde starting zones and Barrens fixes are outside this party's route.
- Buzzbox completion guards do not apply: Trio deliberately excludes Buzzbox quests.
- Never Coming Back / A Void Path (cdf34313) is added to the Horde Ashenvale route only. Upstream does not establish Alliance availability; do not insert it into Trio on that evidence.
- Upstream's Astranaar hearth changes are Hunter-specific. Trio intentionally preserves its Stormwind bind through Darkshore/Ashenvale and uses Lakeshire after level-20 Redridge.
- Bank/bag fixes, map-pin settings, `.showwhiledead`, UI support and TOC updates are inherited through the merge and need no Trio route edits.

## Validation

Reviewed changed Alliance leveling/dungeon guides and the relevant Horde Ashenvale/campfire commits against the custom route. Checked macro/timer support in the merged parser. Static checks cover whitespace, guide wrappers, TOC loading, and unchanged local Wetlands diffs. WoW runtime behavior still requires an in-game reload and playthrough.
