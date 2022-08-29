ITEM.name = "Warsaw Ammo Box"
ITEM.description= "An older looking but sturdy case for ammo used by Warsaw weaponry."
ITEM.longdesc = "An ammo box used by the Military, Duty, or other groups using the more common types of locally-sourced weaponry. You'll need to open it to see what's inside."
ITEM.model = "models/maver1k_xvii/stalker/props/box/expl_dinamit.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Kits"
ITEM.items[1] = {
	dropAmount = 4, --How many times it will roll for drop
	dropRareChance = 30, --chances for the rarer drops
	dropVeryRareChance = 10,
	itemsCommon = {
		{"9x18"}, 
		{"762x25"}, 
		{"12gauge"}, 
	},
	itemsRare = {
		{"545x39"}, 
		{"762x39"}, 
		{"9x21"}, 
		{"12gaugesg"}, 
		{"23"}, 
	},
	itemsVeryRare = {
		{"762x54"}, 
		{"23p"}, 
		{"9x39"}, 
	}
}







--[[ Example format
ITEM.items[1] = {
	dropAmount = 5, --How many times it will roll for drop
	dropRareChance = 40, --chances for the rarer drops
	dropVeryRareChance = 20,
	itemsCommon = {
		{"9x18"},
		{"9x19"},
		{"12gauge"},
	},
	itemsRare = {
		{"57x28"},
		{"380acp"},
		{"762x25"},
	},
	itemsVeryRare = {
		{"22lr"},
		{"mp5", {["durability"] = 30}}, --Data can also be passed
		{"45acp"},
	},
}
]]--

