ITEM.name = "Packaged Cookies"
ITEM.model = "models/illusion/eftcontainers/galette.mdl"
ITEM.hunger = 20
ITEM.description = "A small plastic wrap of cookies."
ITEM.longdesc = "A small plastic wrap of about six cookies. Not really nutritious, but sweet and high in calories. Great morale booster."
ITEM.quantity = 2
ITEM.price = 400
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "5"
ITEM.sound = "stalkersound/inv_bread1.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)
ITEM:DecideFunction()
ITEM.heal = 3
ITEM.healot = 2