ITEM.name = "Bootleg Beer"
ITEM.model = "models/hlvr/props/bottles/bear_bottle_1.mdl"
ITEM.thirst = 5
ITEM.description = "Homemade booze."
ITEM.longdesc = "A glass bottle of carbonated, fermented fruit or vegetables that is often produced all over the World by Citizens, Merchants, and Resistance Cells alike. It has a relatively high alcohol content, for beer."
ITEM.quantity = 2
ITEM.price = 35
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