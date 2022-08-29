ITEM.name = "Water (dirty)"
ITEM.model = "models/kek1ch/dev_drink_water.mdl"
ITEM.thirst = 35
ITEM.description = "A dirty water bottle."
ITEM.longdesc = "Rainwater in a reused plastic bottle."
ITEM.quantity = 3
ITEM.price = 50
ITEM.width = 1
ITEM.height = 1
ITEM.sound = "stalkersound/inv_drink_beak.ogg"
ITEM.cookable = false
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:AddBuff("debuff_radiation", 10, { amount = 0.5 })
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 1
ITEM.healot = 1
ITEM:DecideFunction()