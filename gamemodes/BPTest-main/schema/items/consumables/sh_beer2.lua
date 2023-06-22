ITEM.name = "Ukrainian Beer, 1.5l"
ITEM.model = "models/props_junk/garbage_glassbottle001a.mdl"
ITEM.thirst = 25
ITEM.description = "A bottle of beer"
ITEM.longdesc = "The original smoked beer and Kiev's specialty for centuries. \nA dark bottom fermented lager beer, brewed with 100 percent smoked malt."
ITEM.quantity = 3
ITEM.price = 325
ITEM.width = 1
ITEM.height = 2
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