ITEM.name = "Moskovskaya"
ITEM.model = "models/kek1ch/dev_kolbasa.mdl"
ITEM.hunger = 23
ITEM.description = "A lump of sausage"
ITEM.longdesc = "Boiled and smoked. The popular Moskovskaya contains pieces of dark meat and fat, milk, cream, flour and starch. \nDelicious when served cold. It can be preserved for 10 to 15 days."
ITEM.quantity = 3
ITEM.price = 250
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