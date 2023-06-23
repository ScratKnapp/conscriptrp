ITEM.name = "Snickers"
ITEM.model = "models/illusion/eftcontainers/slickers.mdl"
ITEM.hunger = 11
ITEM.description = "A snickers bar."
ITEM.longdesc = "The favorite treat of many in the West. An excellent remedy for a bad mood, but relatively rare."
ITEM.quantity = 2
ITEM.price = 625
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