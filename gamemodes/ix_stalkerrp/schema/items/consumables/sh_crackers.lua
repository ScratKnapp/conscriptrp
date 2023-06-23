ITEM.name = "Crackers"
ITEM.model = "models/illusion/eftcontainers/galette.mdl"
ITEM.hunger = 12
ITEM.description = "A pack of crackers."
ITEM.longdesc = "A fairly cheap and unfullfilling pack of crackers that can be seen fairly commonly in the Zone, it doesn't make for much of a meal."
ITEM.quantity = 2
ITEM.price = 50
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_bread1.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM:DecideFunction()
ITEM.heal = 3
ITEM.healot = 2