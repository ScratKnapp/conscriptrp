ITEM.name = "Universal Union Orange"
ITEM.model = "models/bioshockinfinite/hext_orange.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved orange."
ITEM.longdesc = "This UU-branded orange has a slightly moldy taste, but it's still got some satisfying sweetness."
ITEM.quantity = 1
ITEM.price = 30
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.quantity = 1
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()