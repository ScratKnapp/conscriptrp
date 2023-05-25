ITEM.name = "Water Jug"
ITEM.model = "models/illusion/eftcontainers/purewater.mdl"
ITEM.thirst = 35
ITEM.description = "A large Jug of Water"
ITEM.longdesc = "A large, heavy Jug of clean drinking water. Very good for making long distance trips, or just staying hydrated in general."
ITEM.quantity = 12
ITEM.price = 75
ITEM.width = 3
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()