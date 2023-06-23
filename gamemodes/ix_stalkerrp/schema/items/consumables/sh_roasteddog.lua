ITEM.name = "Roasted Dog Meat"
ITEM.model = "models/kek1ch/meat_dog.mdl"
ITEM.hunger = 25
ITEM.description = "Roasted mutant meat."
ITEM.longdesc = "Remains of a dog, cleaned and roasted on a campfire. It is cheap, nourishing, but not very healthy."
ITEM.quantity = 3
ITEM.price = 300
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_mutant_food.mp3"
ITEM:Hook("use", function(item)
	item.player:AddBuff("debuff_radiation", 10, { amount = 0.2 })
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()