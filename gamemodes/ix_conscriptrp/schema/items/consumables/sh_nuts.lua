ITEM.name = "Assorted Nuts"
ITEM.model = "models/kek1ch/dev_nuts.mdl"
ITEM.hunger = 12
ITEM.description = "A small bag with nuts inside."
ITEM.longdesc = "This bag includes several different nutritious nuts, good for eating on the go in the zone. A favourite among stalkers on patrols, or if they just need a quick snack."
ITEM.quantity = 5
ITEM.price = 200
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_food.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 2
ITEM.healot = 1
ITEM:DecideFunction()