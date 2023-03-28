ITEM.name = "Standard Grade Ration Pack"
ITEM.description= "A packaged Standard Meal."
ITEM.longdesc = "Standard packs are what the vast majority of Citizens are given as food, required to stand in long lines to scan their ID and get their food that's serviceable, but plain and leaves a lot to be desired. Contains a small Token allotment."
ITEM.model = "models/weapons/w_packatc.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 120
ITEM.category = "Kits"
ITEM.itemsForcedDrop = {

	{"watercan"},
	{"stacktokens", {["quantity"] = 25}}, 
	{"standardationunit"},

}
ITEM.items[1] = {
	dropAmount = 3, --How many times it will roll for drop
	dropRareChance = 35, --chances for the rarer drops
	dropVeryRareChance = 15,
	itemsCommon = {
		{"standardrationunit"},
	},
	itemsRare = {
		{"watercan"}, 
		{"cheese"},
		{"bread"}, 
		{"potato"}, 
		{"cereal"}, 
		{"sardines"}, 
	},
	itemsVeryRare = {
		{"chocolate"}, 
		{"cannedcoffee"}, 
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

