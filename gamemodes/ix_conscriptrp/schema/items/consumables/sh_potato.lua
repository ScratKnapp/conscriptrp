ITEM.name = "Potato"
ITEM.model = "models/kek1ch/dev_bred.mdl"
ITEM.hunger = 20
ITEM.description = "A potato."
ITEM.longdesc = "A potato. You're not sure if this was imported or grown here, but either way it's decently fresh. Probably good with other things, though."
ITEM.quantity = 1
ITEM.price = 350
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