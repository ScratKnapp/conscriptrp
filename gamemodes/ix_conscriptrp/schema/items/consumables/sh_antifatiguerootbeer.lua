ITEM.name = "Anti Fatigue Root Beer"
ITEM.model = "models/mosi/fnv/props/drink/sunsetsasparilla.mdl"
ITEM.thirst = 40
ITEM.description = "A bottle of quality root beer."
ITEM.longdesc = "A bottle of fizzy soda produced by the Civil Worker's Union for distribution among Civil-Authority members and Conscripts alike. High in calories and seems to be highly caffeinated, helps stave off exhaustion. "
ITEM.quantity = 3
ITEM.price = 70
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