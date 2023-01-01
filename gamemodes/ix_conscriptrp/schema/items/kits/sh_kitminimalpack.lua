ITEM.name = "Minimal Grade Ration Pack"
ITEM.description= "A packaged Minimal Meal."
ITEM.longdesc = "The Minimal ration packs have less than other packs, have almost zero interesting variety, and are barely enough to live.. with the occassional treat to give you false hope. Has no Token allotment.  To be issued this is a punishment."
ITEM.model = "models/weapons/w_packati.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 40
ITEM.category = "Kits"
ITEM.itemsForcedDrop = {

	{"watercan"},
	{"minimalrationunit"},

}



ITEM.items[1] = {
	dropAmount = 2, --How many times it will roll for drop
	dropRareChance = 30, --chances for the rarer drops
	dropVeryRareChance = 10,
	itemsCommon = {
		{"minimalrationunit"},
	},
	itemsRare = {
		{"watercan"}, 
	},
	itemsVeryRare = {
		{"chocolate"}, 
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

