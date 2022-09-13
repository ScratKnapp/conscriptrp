ITEM.name = "Med-gel Vial"
ITEM.description = "A medium size application of medical gel."
ITEM.longdesc = "A glass vial of med-gel. Twist off the top lid, then apply gel to any wound to provide immediate pain relief and aid in healing."
ITEM.model = "models/ez2models/items/arbeit/healthvial.mdl"
ITEM.width = 1
ITEM.height = 2
ITEM.category = "Medical"
ITEM.price = "4000"
ITEM.flag = "1"
ITEM.quantity = 2
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