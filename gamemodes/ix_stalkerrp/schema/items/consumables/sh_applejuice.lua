ITEM.name = "Apple Juice"
ITEM.model = "models/illusion/eftcontainers/juice.mdl"
ITEM.thirst = 32
ITEM.description = "A carton of juice."
ITEM.longdesc = "A carton of apple juice. It's briefly refreshing."
ITEM.quantity = 3
ITEM.price = 525
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "stalkersound/inv_drink_flask_2.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()