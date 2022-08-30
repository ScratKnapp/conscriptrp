ITEM.name = "Cowboy Coffee"
ITEM.model = "models/illusion/eftcontainers/coffee.mdl"
ITEM.thirst = 60
ITEM.description = "Canned Coffee."
ITEM.longdesc = "Canned Coffee is extremely popular throughout the world, often times as an alternative to Energy Drinks and Soda. The Zone is no different, and this particular drink is especially popular among Duty soldiers, and technicians. This particular one is flavored with artificial sweeteners to resemble vanilla. This brand is made in the United States, but is mostly an exported item."
ITEM.quantity = 2
ITEM.price = 1200
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