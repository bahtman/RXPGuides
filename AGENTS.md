# RXPGuides Agent Instructions

These instructions apply throughout this repository. For RestedXP route research, creation, editing, and review, follow the workflow and rules below.

Use the installed addon as the source of truth because RestedXP syntax varies by client and addon revision.

## Workflow

1. Identify the target game version, faction, level range, zone, and desired route outcome from the request and nearby guide files. Make reasonable assumptions when these do not change the route materially.
2. Read [docs/route-authoring/quick-reference.md](docs/route-authoring/quick-reference.md) for supported public syntax. For non-trivial creation, debugging, or review, also read [docs/route-authoring/guide-research.md](docs/route-authoring/guide-research.md).
3. Inspect `GuideLoader.lua` and `functions.lua` when a command's behavior or arguments are uncertain. Inspect routes loaded by the applicable `Guides/GuideList-*.xml`; prefer examples for the same game version and faction.
4. Preserve the local route style. Use numeric quest, item, NPC, spell, map, and area IDs when behavior depends on them. Do not invent IDs; find them in existing routes or verify them from an authoritative source when web research is allowed or requested.
5. Make every normal step completable through an objective, proximity radius, state check, or intentional flow relationship. Ensure every sticky step has a reachable completion condition or valid `#completewith` endpoint.
6. Keep helpers adjacent to their objective. In particular, `.target`, `.mob`, `.unitscan`, and `.timer` can depend on the preceding objective; a leading `+` attaches a target helper to the previous objective.
7. Handle alternate player state: already accepted/completed/turned-in quests, optional prerequisites, level or XP differences, class/faction branches, and entering travel segments midway.
8. Validate syntax against the parser and compare the result with at least one shipped route. When possible, test in game with UI reload and both a fresh and partially progressed character state. State clearly when in-game validation was not available.

## Editing rules

- Preserve unrelated user changes and keep new routes separate from vendor-maintained files unless the user requests an edit in place.
- Use `#mop` for Mists routes; shared Cataclysm/Mists routes in this build commonly declare both `#cata` and `#mop`.
- Prefer simple `<<` conditions even though the parser supports compound expressions.
- Use positive quest IDs for required actions. Use negative `.turnin` IDs only when absence of the quest should safely skip the turn-in.
- Use `#label`, `#requires`, `#completewith`, and `#include` deliberately; label references are local and case-sensitive.
- Treat old Classic, Forever, or retail files as idea sources rather than proof that a command works in the target client.
- Do not copy apparent typos or unknown `#fields`: the step parser accepts arbitrary fields, but only fields consumed by installed logic have behavior.

## Deliverables

For research or review, report concrete findings with file references and separate confirmed parser behavior from inferred route conventions. For implementation, provide the edited route, summarize important branching or flow decisions, and note the validation performed.
