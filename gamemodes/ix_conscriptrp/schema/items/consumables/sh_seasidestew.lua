ITEM.name = "Seaside Stew"
ITEM.model = "models/mosi/fnv/props/food/alienfood.mdl"
ITEM.hunger = 45
ITEM.description = "A stew popular along the coast."
ITEM.longdesc = "A tupperware of stew made up of boiled sacktick meat, fish-bits, various veggies, and partially purified sea-water. It is rather salty, but as a meal it satisifies most."
ITEM.quantity = 3
ITEM.price = 65
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