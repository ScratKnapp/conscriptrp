ITEM.name = "Cooked Canned Herring"
ITEM.model = "models/illusion/eftcontainers/herring.mdl"
ITEM.hunger = 40
ITEM.description = "A can with something edible inside"
ITEM.longdesc = "A can of herring, a relatively unfilling meal of fish, but still relatively fresh. It makes a small and compact item to carry in most Stalker's packs, making it good for trips throughout the Zone."
ITEM.quantity = 3
ITEM.price = 300
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