ITEM.name = "Roasted Antlion Chunks"
ITEM.model = "models/shampur.mdl"
ITEM.hunger = 30
ITEM.description = "A xeno-kebab."
ITEM.longdesc = "A few pieces of Antlion meat that's been salvaged from what little can be harvested from the bugs. They've been skewered and roasted over a flame it looks, ready to eat."
ITEM.quantity = 2
ITEM.price = 15
ITEM.width = 2
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