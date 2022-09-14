ITEM.name = "Gas Mask Filter"
ITEM.description = "A replacement filter for any gas mask."
ITEM.longdesc = "A standard gas mask filter, pop it in when your current wears out. This filter, like many kinds, cannot be cleaned and re-used and is to be discarded when replaced."
ITEM.model = "models/teebeutel/metro/objects/gasmask_filter.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "4000"
ITEM.flag = "1"
ITEM.sound = "avoxgaming/gas_mask/gas_mask_middle/gas_mask_middle_breath4.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		ix.chat.Send(item.player, "iteminternal", "replaces their "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}