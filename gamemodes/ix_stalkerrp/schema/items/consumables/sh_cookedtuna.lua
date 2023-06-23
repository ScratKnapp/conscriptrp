ITEM.name = "Cooked Canned Tuna"
ITEM.model =  "models/kek1ch/dev_conserv.mdl"
ITEM.hunger = 43
ITEM.description = "A can with something edible inside"
ITEM.longdesc = "An old tin can containing tuna."
ITEM.quantity = 3
ITEM.price = 425
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