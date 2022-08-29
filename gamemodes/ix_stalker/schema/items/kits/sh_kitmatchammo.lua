ITEM.name = "Match Case Box"
ITEM.description= "A case holding ammunition for only the best."
ITEM.longdesc = "These containers are often times imported from highly exclusive sellers, and are purchased frequently by the Zone's very best. It is said that to even be able to purchase these containers from said individuals, you have to be of extreme repute. You'll need to open it to see what's inside."
ITEM.model = "models/illusion/eftcontainers/magbox.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Kits"
ITEM.items[1] = {
	dropAmount = 3, --How many times it will roll for drop
	dropRareChance = 40, --chances for the rarer drops
	dropVeryRareChance = 10,
	itemsCommon = {
		{"9x19mg"}, 
		{"45acpmg"}, 
		{"57x28mg"}, 
		{"9x21mg"}, 
		{"46x30mg"}, 
	},
	itemsRare = {
		{"556x45mg"}, 
		{"545x39mg"},
		{"357mg"},
		{"762x39mg"},
		{"9x39mg"},
		{"762x51mg"}, 
		{"762x54mg"}, 
	},
	itemsVeryRare = {
		{"338lapmg"}, 
		{"68spcmg"}, 
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

