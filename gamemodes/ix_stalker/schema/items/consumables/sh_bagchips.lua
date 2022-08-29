ITEM.name = "Bag Of Potato Chips"
ITEM.model = "models/kek1ch/chips1.mdl"
ITEM.hunger = 15
ITEM.description = "A bag of potato chips."
ITEM.longdesc = "A snack size bag of salt and vinegar chips, guaranteed fresh."
ITEM.quantity = 2
ITEM.price = 400
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_paperwrap.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()