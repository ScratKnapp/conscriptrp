ITEM.name = "Wine"
ITEM.model = "models/props_junk/garbage_glassbottle003a.mdl"
ITEM.thirst = 35
ITEM.description = "A bottle with liquid inside."
ITEM.longdesc = "A bottle of wine. Strong alcohol, imported."
ITEM.quantity = 3
ITEM.price = 700
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_flask.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_radiationremoval", 10, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 5
ITEM.healot = 3
ITEM:DecideFunction()