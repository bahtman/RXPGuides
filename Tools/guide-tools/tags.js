'use strict';

// Common authoring tags. The addon also permits arbitrary custom metadata.
const tags = {};
function add(scope, name, description, value = null) {
    tags[name] = { scope, description, value };
}
add('header', 'group', 'Guide menu group.', 'My Routes');
add('header', 'name', 'Required internal guide name.', 'Guide name');
add('header', 'version', 'Guide revision number.', '1');
add('header', 'subgroup', 'Submenu within the guide group.', 'Subgroup name');
add('header', 'displayname', 'Display name shown in the guide menu.', 'Display name');
add('header', 'next', 'Next guide name; separate alternatives with semicolons.', 'Next guide name');
add('header', 'defaultfor', 'Default character condition for this guide.', 'Human');
add('header', 'groupdisplayname', 'Display name for the guide menu group.', 'Group display name');
add('header', 'groupweight', 'Sort weight for the guide group.', '1');
add('header', 'subweight', 'Sort weight for the subgroup.', '1');
add('header', 'internal', 'Hide this guide from the normal guide list.');
for (const name of ['classic', 'tbc', 'wotlk', 'cata', 'mop', 'retail', 'df']) {
    add('header', name, `Mark the guide as compatible with ${name}.`);
}
add('step', 'label', 'Name this step so other steps can refer to it.', 'LabelName');
add('step', 'completewith', 'Keep this step active until the named step completes, or use next.');
add('step', 'requires', 'Show this step after the named step completes.');
add('step', 'sticky', 'Keep the step visible until it completes.');
add('step', 'optional', 'Allow the player to skip this step.');
add('step', 'loop', 'Mark a step as a loop.');
add('step', 'include', 'Include steps from another guide.', 'Guide name');
add('step', 'level', 'Minimum player level; normally used on sticky steps.', '10');
add('step', 'arrowtext', 'Override the navigation arrow text.', 'Arrow text');
add('step', 'hidetip', 'Hide the step tooltip.');
add('both', 'hidewindow', 'Hide the guide or step window.');
add('both', 'title', 'Override the guide or step title.', 'Title');
add('both', 'xprate', 'Filter by experience rate, for example <1.5 or >1.5.', '>1.5');
for (const name of ['hardcore', 'softcore', 'era', 'som', 'scryer', 'aldor', 'phase1-4', 'phase5']) {
    add('both', name, `Filter by the ${name} ruleset, server phase, or faction.`);
}

module.exports = tags;
