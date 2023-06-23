ITEM.name = "Standard Gas Mask Filter"
ITEM.description = "A standard quality gas mask filter."
ITEM.longdesc = "This gas mask filter is quite old, but has been properly stored in a clean environment. Though not as up to standard as when it was made, it will still do the job fine."
ITEM.model = "models/teebeutel/metro/objects/gasmask_filter.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = "200"
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