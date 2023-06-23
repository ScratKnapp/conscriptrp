ITEM.name = "Antlion Grub Nugget"
ITEM.description = "A fleshy nugget extracted from an Antlion Grub."
ITEM.longdesc = "A raw nugget fresh from an Antlion Grub. In this unrefined state, its potency is weak; and the only way to apply it is to eat it. Down the hatch!"
ITEM.model = "models/grub_nugget_small.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "4000"
ITEM.flag = "1"
ITEM.sound = "items/smallmedkit1.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		item.player:AddBuff("buff_staminarestore", 300, { amount = 10 })
		
		ix.chat.Send(item.player, "iteminternal", "consumes their "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}