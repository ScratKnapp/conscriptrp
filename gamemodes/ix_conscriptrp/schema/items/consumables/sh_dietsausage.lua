ITEM.name = "Diet Sausage"
ITEM.model = "models/kek1ch/dev_sausage.mdl"
ITEM.hunger = 24
ITEM.description = "A small lump of sausage"
ITEM.longdesc = "For better or worse, this sausage - a mix of chicken and a soy substitute - is often a stalker's breakfast, lunch and dinner in one. \nCan be stored for a long time due to high preservative content."
ITEM.quantity = 3
ITEM.price = 200
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_mutant_food.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()