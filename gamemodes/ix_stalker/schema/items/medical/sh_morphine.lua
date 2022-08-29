ITEM.name = "Morphine Auto-Injector"
ITEM.description = "A blue auto-injector with a capped needle."
ITEM.longdesc = "A blue, pen-like object with a 10mg dose of Morphine-Sulfate. Used on the battle-field or in emergency situations for near instant pain-relief. Causes the blood to thin.\n\n-2 Stagger Tiers\n+1 Bleeding for already existing bleeds"
ITEM.model = "models/illusion/eftcontainers/morphine.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "4000"
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