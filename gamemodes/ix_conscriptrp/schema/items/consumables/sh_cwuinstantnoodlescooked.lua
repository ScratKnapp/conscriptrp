ITEM.name = "Cooked CWU Instant Noodles"
ITEM.model = "models/doshirak_pure.mdl"
ITEM.hunger = 12
ITEM.description = "A CWU-branded cup noodles, cooked and ready to eat."
ITEM.longdesc = "A pack of instant-cup noodles produced by the CWU as a simple but tasty snack. High in sodium, and not really filling, but the taste is better than most City-Produced products. It has been cooked in hot water and is ready to be a delicious snack."
ITEM.price = 15
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
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