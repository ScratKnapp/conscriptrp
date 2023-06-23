ITEM.name = "CWU Croutons"
ITEM.model = "models/kiriki.mdl"
ITEM.hunger = 5
ITEM.description = "A pack of croutons."
ITEM.longdesc = "A packet of seasoned croutons usually bought by Upper-Tier Loyalists for implementing into a salad or soup. However they're also known for just being bought as a high-carb snack. Crunchy."
ITEM.price = 15
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