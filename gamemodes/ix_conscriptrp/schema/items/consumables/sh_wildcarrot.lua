ITEM.name = "Wild Carrot"
ITEM.model = "models/mosi/fnv/props/food/crops/carrot.mdl"
ITEM.hunger = 6
ITEM.description = "A root-vegetable that seems to have grown wildly in the Outlands."
ITEM.longdesc = "Free of harmful chemicals, drugs, and other substances the Union regularly pumps into its foods. Rumored to help increase your vision."
ITEM.quantity = 1
ITEM.price = 10
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