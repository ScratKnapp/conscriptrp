
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "Xen Aliens"
FACTION.description = "Creatures from Xen."
FACTION.isDefault = false
FACTION.color = Color(153, 153, 0)
FACTION.models = {
	{"models/nasca/stalker/male_anorak.mdl", 2, "000002"},
	{"models/nasca/stalker/female_anorak.mdl", 2, "000002"},

}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_XEN = FACTION.index