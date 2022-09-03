
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "Conscripts"
FACTION.description = "Malcontents or those caught in the wrong place, wrong time conscripted by the Combine."
FACTION.isDefault = true
FACTION.color = Color(34, 115, 22)
FACTION.models = {

	-- Male 
	{"models/wichacks/artnovest.mdl", 0, "000002"},
	{"models/wichacks/erdimnovest.mdl", 0, "000002"},
	{"models/wichacks/ericnovest.mdl", 0, "000002"},
	{"models/wichacks/joenovest.mdl", 0, "000002"},
	{"models/wichacks/mikenovest.mdl", 0, "000002"},
	{"models/wichacks/sandronovest.mdl", 0, "000002"},
	{"models/wichacks/tednovest.mdl", 0, "000002"},
	{"models/wichacks/vannovest.mdl", 0, "000002"},
	{"models/wichacks/tednovest.mdl", 0, "000002"},
	{"models/wichacks/vancenovest.mdl", 0, "000002"},

	-- Female

	{"models/models/army/female_01.mdl", 0, "000002"},
	{"models/models/army/female_02.mdl", 0, "000002"},
	{"models/models/army/female_03.mdl", 0, "000002"},
	{"models/models/army/female_04.mdl", 0, "000002"},	
	{"models/models/army/female_06.mdl", 0, "000002"},
	{"models/models/army/female_07.mdl", 0, "000002"},


}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_CONSCRIPTS = FACTION.index
