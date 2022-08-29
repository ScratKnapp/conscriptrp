ITEM.name = "Bottle of Hot Sauce"
ITEM.model = "models/props/cs_militia/bottle02.mdl"
ITEM.hunger = 10
ITEM.description = "A large bottle of a strong, spicy liquid."
ITEM.longdesc = "A large bottle of Hot Sauce, typically kept for long journeys in places where the food is so bland for taste that even just dipping it in hot sauce will make it taste better. Really fucking spicy!"
ITEM.quantity = 3
ITEM.price = 400
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_bread1.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM:DecideFunction()
ITEM.heal = 3
ITEM.healot = 2