
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "Ecologist"
FACTION.description = "Scientists and Researchers sub-contracted by the Ukrainian Government to perform experiments on the Zone and it's entities."
FACTION.isDefault = false
FACTION.color = Color(57, 110, 102)
FACTION.models = {
	{"models/nasca/stalker/male_anorak.mdl", 1, "000002"},
	{"models/nasca/stalker/female_anorak.mdl", 2, "000002"},

}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_ECOLOGISTS = FACTION.index
