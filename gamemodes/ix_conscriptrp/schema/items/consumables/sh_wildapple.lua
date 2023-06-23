ITEM.name = "Wild Apple"
ITEM.model = "models/mosi/fnv/props/food/crops/apple02.mdl"
ITEM.hunger = 8
ITEM.description = "A red Apple, seeming to have grown somewhere out in the Outlands."
ITEM.longdesc = "It has a sweet yet partially tart taste, and smells rather pleasant."
ITEM.quantity = 1
ITEM.price = 35
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