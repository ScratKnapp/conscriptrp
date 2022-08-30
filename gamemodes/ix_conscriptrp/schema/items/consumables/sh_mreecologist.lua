ITEM.name = "Ecologist Grade Ration"
ITEM.model = "models/kek1ch/ration_mre.mdl"
ITEM.hunger = 40
ITEM.description = "A blaze orange container with an Ecologist Logo on its packaging."
ITEM.longdesc = "A pack of higher grade rations made to make living in the harsh conditions of the zone much more bearable. Has an abundance of snacks and tasteful meals compared to standard military tier rations."
ITEM.quantity = 10
ITEM.price = 2500
ITEM.width = 2
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_eat_ration1.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 5
ITEM.healot = 3
ITEM:DecideFunction()