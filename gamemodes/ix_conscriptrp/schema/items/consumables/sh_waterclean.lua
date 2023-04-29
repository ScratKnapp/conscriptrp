ITEM.name = "Clean Water"
ITEM.model = "models/mosi/fnv/props/drink/water_clean.mdl"
ITEM.thirst = 35
ITEM.description = "Good, clean H-2_O."
ITEM.longdesc = "A small, refilled bottle of boiled and filtered water. Preferred by most refugees when compared to Breen's water due to its lack of chemical treatment. Technically contraband."
ITEM.quantity = 1
ITEM.price = 5
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 2
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