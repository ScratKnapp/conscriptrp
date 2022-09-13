ITEM.name = "Medkit"
ITEM.description = "A medical aid kit for all matter of injury."
ITEM.longdesc = "A kit full of med gel and other tools for serious injury and improved long-term care."
ITEM.model = "models/ez2models/items/arbeit/healthkit.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.category = "Medical"
ITEM.quantity = 3
ITEM.price = "4000"
ITEM.flag = "1"
ITEM.sound = "items/smallmedkit1.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		item.player:AddBuff("buff_staminarestore", 300, { amount = 10 })
		
		ix.chat.Send(item.player, "iteminternal", "applies their "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}