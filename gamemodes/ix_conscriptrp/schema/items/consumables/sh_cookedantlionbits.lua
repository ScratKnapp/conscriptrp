ITEM.name = "Cooked Antlion Bits"
ITEM.model = "models/mosi/fnv/props/food/crops/pinyonnuts.mdl"
ITEM.hunger = 20
ITEM.description = "Assortment of small harvested antlion bits."
ITEM.longdesc = "Properly cooked, bits of antlion, usually harvested from the legs as one does with crabs, can be a tasty snack, especially if seasoned."
ITEM.quantity = 2
ITEM.price = 35
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.flag = "5"
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()