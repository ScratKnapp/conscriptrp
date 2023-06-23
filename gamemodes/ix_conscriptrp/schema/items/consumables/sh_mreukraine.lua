ITEM.name = "MRE (Ukrainian)"
ITEM.model = "models/kek1ch/ration_ukr.mdl"
ITEM.hunger = 30
ITEM.description = "A Ukrainian pack of rations"
ITEM.longdesc = "This Ukrainian combat ration is based on a previous Russian version, and comprises commercially available cans and dried food items packed together in a sectioned box (resembling a takeout tray) made of very thin green plastic. Contains all that is necessary to provide a healthy adult with all calories and minerals needed during a single day."
ITEM.quantity = 6
ITEM.price = 700
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