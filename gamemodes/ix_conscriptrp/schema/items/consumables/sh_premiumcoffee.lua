ITEM.name = "Premium Blend Coffee"
ITEM.model = "models/illusion/eftcontainers/coffee.mdl"
ITEM.thirst = 30
ITEM.description = "A Civil-Worker produced can of delicious Coffee."
ITEM.longdesc = "This Civil Worker's Union produced Coffee blend features a mocha-like taste, produced straight from the commerce Districts of Cities 23, 76, and the luxurious City 45. Listed to contain real Coffee plants."
ITEM.price = 70
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