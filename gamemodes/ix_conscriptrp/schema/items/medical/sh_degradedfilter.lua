ITEM.name = "Degraded Gas Mask Filter"
ITEM.description = "A poor quality but functional gas mask filter."
ITEM.longdesc = "This gas mask filter has been sitting in an unclean environment for quite some time, and its performance has irreparably been hampered a fair bit. It's better than nothing though."
ITEM.model = "models/teebeutel/metro/objects/gasmask_filter.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "75"
ITEM.flag = "1"
ITEM.sound = "avoxgaming/gas_mask/gas_mask_middle/gas_mask_middle_breath4.wav"
ITEM.weight = 0.05

ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		ix.chat.Send(item.player, "iteminternal", "replaces the used filter of their mask with a "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}