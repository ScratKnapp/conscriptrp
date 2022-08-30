ITEM.name = "Canned Mushrooms"
ITEM.model = "models/props/rucan6.mdl"
ITEM.hunger = 22
ITEM.description = "A can of preserved mushrooms soaked in a light sauce. Tasty to some, disgusting to others."
ITEM.quantity = 3
ITEM.price = 350
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