ITEM.name = "MPF Grade Ration Pack"
ITEM.description= "A packaged MPF Meal."
ITEM.longdesc = "MPF packs are given to all members of the Metropolitan Police Force. While quite filling, they do not have the luxury of much variety. Officers are issued their daily rations from the armory that they can pick up whenever they've got a minute. Contains a generous Token allotment."
ITEM.model = "models/weapons/w_packatm.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Kits"
ITEM.price = 300
ITEM.itemsForcedDrop = {

	{"watercan"},
	{"stacktokens", {["quantity"] = 60}}, 
	{"mpfationunit"},

}
ITEM.items[1] = {
	dropAmount = 3, --How many times it will roll for drop
	dropRareChance = 35, --chances for the rarer drops
	dropVeryRareChance = 15,
	itemsCommon = {
		{"mpfrationunit"},
	},
	itemsRare = {
		{"watercan"}, 
		{"cannedcoffee"}, 
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

