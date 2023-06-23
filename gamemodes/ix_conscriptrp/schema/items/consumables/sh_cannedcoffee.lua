ITEM.name = "Universal Union Canned Coffee"
ITEM.model = "models/bioshockinfinite/xoffee_mug_closed.mdl"
ITEM.thirst = 15
ITEM.description = "A Universal Union approved can of coffee, ready to drink."
ITEM.longdesc = "This UU-branded can of coffee is ready to drink, having a bitter but strong taste. Perfect for when you've been informed you'll be pulling a double shift at the factory for the third consecutive day."
ITEM.price = 15
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 2
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