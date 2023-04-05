ITEM.name = "Blowtorch Fuel"
ITEM.description = "A small tool utilized to input fuel-oil into an older-model Blowtorch."
ITEM.longdesc = "Luckily, this one has a fair bit left inside of it."
ITEM.model = "models/mosi/fallout4/props/junk/nitrogendispenser.mdl"
ITEM.width = 1
ITEM.height = 2
ITEM.category = "tools"
ITEM.price = 65
ITEM.flag = "1"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		ix.chat.Send(item.player, "iteminternal", "uses a canister of "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}