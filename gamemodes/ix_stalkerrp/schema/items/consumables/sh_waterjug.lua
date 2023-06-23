ITEM.name = "Water Jug"
ITEM.model = "models/illusion/eftcontainers/purewater.mdl"
ITEM.thirst = 40
ITEM.description = "A large plastic jug containing water."
ITEM.longdesc = "A large jug containing water which has been cleansed inside the zone. The result is a radiation-free product, albeit it still has a sour taste. The container is much too large and impractical to keep on hand, and is generally used only for bulk trades."
ITEM.quantity = 26
ITEM.price = 1200
ITEM.width = 3
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "stalkersound/inv_drink_flask.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.8
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()