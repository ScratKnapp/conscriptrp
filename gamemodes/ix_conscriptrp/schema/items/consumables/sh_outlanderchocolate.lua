ITEM.name = "Outlander Chocolate"
ITEM.model = "models/illusion/eftcontainers/alyonka.mdl"
ITEM.hunger = 35
ITEM.description = "A small, foil wrapped square of unbranded, dark colored chocolate."
ITEM.longdesc = "It is deliciously sweet, and absolutely adored by Outlanders as an overall morale booster. No one really knows where it comes from, but it is theorized it is somehow a more purified version of UU-Chocolate."
ITEM.price = 75
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