ITEM.name = "Preserved Tuna Meat"
ITEM.model = "models/illusion/eftcontainers/herring.mdl"
ITEM.hunger = 30
ITEM.description = "A can of watery meat."
ITEM.longdesc = "A can of tuna meat from the Pre-Occupation World. It's watery and salty, but has a fair bit of protein."
ITEM.price = 65
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