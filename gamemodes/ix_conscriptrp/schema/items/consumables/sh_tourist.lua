ITEM.name = "Tourists' Delight"
ITEM.model = "models/hgn/srp/items/can-food.mdl"
ITEM.hunger = 20
ITEM.description = "A can with something edible inside."
ITEM.longdesc = "Canned meat with jello, seems to be up to standards. Eaten cold, hot, mixed with other food or on it's own, it's a great source of long-lasting meat.Make sure the seal isn't broken before opening."
ITEM.quantity = 2
ITEM.price = 300
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_can_open.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.2
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()