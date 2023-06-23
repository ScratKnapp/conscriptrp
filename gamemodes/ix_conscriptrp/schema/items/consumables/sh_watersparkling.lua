ITEM.name = "Sparkling drinking water"
ITEM.model = "models/illusion/eftcontainers/waterbottle.mdl"
ITEM.thirst = 55
ITEM.description = "A small unopened bottle."
ITEM.longdesc = "Sparkling water for thirsty stalkers. It has some exhilarating effect when you're tired."
ITEM.quantity = 3
ITEM.price = 500
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "stalkersound/inv_drink_can.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 1 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()