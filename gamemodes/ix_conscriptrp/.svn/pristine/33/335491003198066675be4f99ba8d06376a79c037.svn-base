ITEM.name = "Universal Union Banana"
ITEM.model = "models/bioshockinfinite/hext_banana.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved banana."
ITEM.longdesc = "This UU-branded nanner has a slightly moldy taste and never seems to brown if left sit for long periods. It's also never been seen in a green unripe form."
ITEM.quantity = 1
ITEM.price = 20
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
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