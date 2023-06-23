ITEM.name = "Universal Union Chocolate Bar"
ITEM.model = "models/bioshockinfinite/hext_candy_chocolate.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved chocolate substitute."
ITEM.longdesc = "This UU-branded chocolate bar is powdery and bitter, but savvy citizens have melted them down to use in home cooking to make sweets, where its downsides are less apparent."
ITEM.quantity = 2
ITEM.price = 35
ITEM.width = 2
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