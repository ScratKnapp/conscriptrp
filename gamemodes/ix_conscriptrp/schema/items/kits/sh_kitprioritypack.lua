ITEM.name = "Priority Grade Ration Pack"
ITEM.description= "A packaged Priority Meal."
ITEM.longdesc = "Priority packs are given to only the superiors brownnosers, citizens who are of great value. The menu and options are quite broad and pleasing. Priority citizens don't need to deal with the common rabble to get their food - it's often hand-delivered to them each morning by a CWU member."
ITEM.model = "models/weapons/w_packatc.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Kits"
ITEM.items[1] = {
	dropAmount = 6, --How many times it will roll for drop
	dropRareChance = 35, --chances for the rarer drops
	dropVeryRareChance = 15,
	itemsCommon = {
		{"priorityrationunit"},
	},
	itemsRare = {
		{"watercan"}, 
		{"pear"}, 
		{"apple"}, 
		{"banana"}, 
		{"orange"}, 
		{"bread"}, 
		{"pineapple"}, 
		{"whiskey"}, 
		{"pickles"}, 
		
	},
	itemsVeryRare = {
		{"chocolate"}, 
		{"cannedcoffee"}, 
		{"chips"}, 
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

