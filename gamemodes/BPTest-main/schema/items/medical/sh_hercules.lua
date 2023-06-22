ITEM.name = "Hercules"
ITEM.description = "A bottle of liquid steroids."
ITEM.longdesc = "Fast-acting anabolic steroids, relieve the user of the weight of his equipment for 5 minutes. Abuse leads to sterility."
ITEM.model = "models/ethprops/medical/booster.mdl"
ITEM.width = 1
ITEM.height = 2
ITEM.category = "Medical"
ITEM.price = "10000"
ITEM.flag = "1"
ITEM.sound = "stalkersound/inv_drink_flask.mp3"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		item.player:AddBuff("buff_staminarestore", 300, { amount = 10 })
		
		ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}