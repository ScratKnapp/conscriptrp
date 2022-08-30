ITEM.name = "Jewlery Box"
ITEM.description= "A scuffed but intact metal box used for storing valuables."
ITEM.longdesc = "A solid jewelry box is popular among many Stalkers for storing shiny items to keep them safe from damage when things get rough. You'll need to open it to see what's inside."
ITEM.model = "models/kek1ch/tobacco.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Kits"
ITEM.items[1] = {
	dropAmount = 2, --How many times it will roll for drop
	dropRareChance = 40, --chances for the rarer drops
	dropVeryRareChance = 10,
	itemsCommon = {
		{"noveltycoin"}, 
		{"noveltyring"}, 
	},
	itemsRare = {
		{"chainsilver"}, 
		{"chaingold"}, 
	},
	itemsVeryRare = {
		{"watchgold"}, 
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

