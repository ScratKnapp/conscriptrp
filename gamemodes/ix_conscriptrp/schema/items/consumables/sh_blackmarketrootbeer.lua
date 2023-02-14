ITEM.name = "Black Market Root Beer"
ITEM.model = "models/mosi/fnv/props/drink/nukacola.mdl"
ITEM.thirst = 30
ITEM.description = "A bottle of quality root beer."
ITEM.longdesc = "A glass bottle of cola manufactured with actual assembly-line equipment in one of the many Cities under UU rule. Civil Workers are known to occasionally alter the recipe of standard approved sodas and produce a much more sweet, refreshing product that mirrors the sugary standard of old-world beverages."
ITEM.quantity = 3
ITEM.price = 65
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