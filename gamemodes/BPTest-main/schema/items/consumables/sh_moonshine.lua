ITEM.name = "Moonshine"
ITEM.model = "models/kek1ch/drink_flask.mdl"
ITEM.thirst = 35
ITEM.description = "An old hip flask"
ITEM.longdesc = "Strong alcohol, made in the zone. It's contained within an old hip flask, which smells of old leather." 
ITEM.quantity = 3
ITEM.price = 600
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
ITEM.heal = 2
ITEM.healot = 1
ITEM:DecideFunction()