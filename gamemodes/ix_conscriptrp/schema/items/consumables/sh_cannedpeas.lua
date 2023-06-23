ITEM.name = "Canned Peas"
ITEM.model = "models/illusion/eftcontainers/peas.mdl"
ITEM.hunger = 18
ITEM.description = "A can with something edible inside"
ITEM.longdesc = "Tins of fresh peas are a rare sight in the Zone. A popular and highly tradable item for stalkers, but also spoils quickly."
ITEM.quantity = 3
ITEM.price = 250
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_can_open.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()