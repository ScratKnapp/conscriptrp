ITEM.name = "Canned Squash"
ITEM.model = "models/illusion/eftcontainers/squash.mdl"
ITEM.hunger = 21
ITEM.description = "A can with something edible inside"
ITEM.longdesc = "Canned squash imported from the outside. Can be eaten as it is, but there are some who use it as a soup ingredient."
ITEM.quantity = 3
ITEM.price = 375
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