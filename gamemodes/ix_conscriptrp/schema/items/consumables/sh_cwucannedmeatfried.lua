ITEM.name = "Fried CWU Canned Meat"
ITEM.model = "models/banka.mdl"
ITEM.hunger = 28
ITEM.description = "A CWU-branded can of spam-like food that's been fried in a pan."
ITEM.longdesc = "A Union produced can of preservative-stuffed meat. It has the consistency of both Chicken and Beef. It is unknown what animal it is derived from. It has been fried up, making it more palatable and nutritious."
ITEM.price = 30
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