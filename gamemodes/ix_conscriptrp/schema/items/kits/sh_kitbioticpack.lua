ITEM.name = "Biotic Grade Ration Pack"
ITEM.description= "A packed Biotic Meal."
ITEM.longdesc = "Biotic packs are specifically meant to meet the dietary needs of Vortigaunts. Though the rotten flesh smell that invades the nostrils the moment its unsealed is a turn-off for humans, Vorts generally tend to be content with them. Contains no Token allotments, since Vorts are not permitted to participate in CWU trade."
ITEM.model = "models/weapons/w_packatb.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 50
ITEM.category = "Kits"
ITEM.itemsForcedDrop = {

	{"watercan"},
	{"bioticrationunit"},

}
ITEM.items[1] = {
	dropAmount = 3, --How many times it will roll for drop
	dropRareChance = 35, --chances for the rarer drops
	dropVeryRareChance = 15,
	itemsCommon = {
		{"bioticrationunit"},
	},
	itemsRare = {
		{"watercan"}, 
	},
	itemsVeryRare = {
		{"watercan"}, 
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

