ITEM.name = "CWU Soda"
ITEM.model = "models/kvas.mdl"
ITEM.thirst = 18
ITEM.description = "Civil Workers Union bottled cola."
ITEM.longdesc = "A bottle of carbonated Cola produced by the Civil Worker's Union, a refreshing beverage for the hardest workers. It seems to actually have a little bit of sugar in it."
ITEM.quantity = 3
ITEM.price = 20
ITEM.width = 1
ITEM.height = 2
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