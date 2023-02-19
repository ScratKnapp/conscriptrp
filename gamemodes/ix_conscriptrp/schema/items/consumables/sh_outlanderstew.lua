ITEM.name = "Outlander's Stew"
ITEM.model = "models/arskvshborsch/borsch.mdl"
ITEM.hunger = 55
ITEM.description = "A plastic container with a mishmash of ingredients made into a stew."
ITEM.longdesc = "A Tupperware of stew made from various wild-grown veggies, beer, Xenian meat chunks, and whatever spices are available. It's known to be an amenity to Refugees in their travels."
ITEM.quantity = 3
ITEM.price = 110
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
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