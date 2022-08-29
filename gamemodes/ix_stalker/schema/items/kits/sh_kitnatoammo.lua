ITEM.name = "NATO Ammo Box"
ITEM.description= "A modern plastic case for holding NATO ammunition."
ITEM.longdesc = "An ammo box used by Freedom, Mercenaries, or other groups with the resources to field and supply the more common types of Western weaponry. You'll need to open it to see what's inside."
ITEM.model = "models/illusion/eftcontainers/ammocase.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Kits"
ITEM.items[1] = {
	dropAmount = 4, --How many times it will roll for drop
	dropRareChance = 30, --chances for the rarer drops
	dropVeryRareChance = 10,
	itemsCommon = {
		{"9x19"}, 
		{"45acp"}, 
		{"12gauge"}, 
	},
	itemsRare = {
		{"556x45"}, 
		{"357"}, 
		{"57x28"}, 
		{"12gaugesg"}, 
		{"50ae"}, 
	},
	itemsVeryRare = {
		{"762x51"}, 
		{"68spc"}, 
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

