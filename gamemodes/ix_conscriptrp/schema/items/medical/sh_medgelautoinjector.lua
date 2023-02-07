ITEM.name = "Combine Med-gel Injector"
ITEM.description = "A one-use injector with a glowing green substance inside."
ITEM.longdesc = "A white and red injector with a small bit of biogel inside. Injected anywhere into the body, it provides immediate pain relief and aids in wound healing a little."
ITEM.model = "models/ccr/props/syringe.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "4000"
ITEM.flag = "1"
ITEM.sound = "ccr/syringe/health_pen.mp3"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		item.player:AddBuff("buff_staminarestore", 300, { amount = 10 })
		
		ix.chat.Send(item.player, "iteminternal", "injects their "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}