ITEM.name = "Cup Of Tea"
ITEM.model = "models/kek1ch/drink_crow.mdl"
ITEM.thirst = 15
ITEM.description = "A steaming cup of tea."
ITEM.longdesc = "What kind of tea? Depends on the kind steeped in it. Taste it to find out."
ITEM.quantity = 2
ITEM.price = 250
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "stalkersound/inv_flask.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_radiationremoval", 10, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 2
ITEM.healot = 1
ITEM:DecideFunction()