ITEM.name = "Wild Cob"
ITEM.model = "models/mosi/fnv/props/food/crops/maize.mdl"
ITEM.hunger = 8
ITEM.description = "A cob of corn grown somewhere in the Outlands."
ITEM.longdesc = " Makes nice for some simple dinner, cooked in a variety of different ways. Some rumor it's harvested to brew high-proof Whiskey, and sold to Loyalists within Cities, despite it being Contraband."
ITEM.quantity = 2
ITEM.price = 35
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 1
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()