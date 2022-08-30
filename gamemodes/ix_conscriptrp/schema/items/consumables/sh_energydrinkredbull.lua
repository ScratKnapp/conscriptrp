ITEM.name = "Redbull Energy Drink"
ITEM.model = "models/illusion/eftcontainers/hotrod.mdl"
ITEM.thirst = 40
ITEM.description = "An aluminium can with energy drink inside."
ITEM.longdesc = "A skinny, metallic can of one of the World's most popular energy drinks, Red Bull."
ITEM.quantity = 1
ITEM.price = 600
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Consumables"
ITEM.flag = "5"
ITEM.cookable = false
ITEM.sound = "stalkersound/inv_drink_can.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 150, { amount = 1 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()