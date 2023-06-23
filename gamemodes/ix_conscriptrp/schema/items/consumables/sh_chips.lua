ITEM.name = "Universal Union Potato Chips"
ITEM.model = "models/bioshockinfinite/bag_of_hhips.mdl"
ITEM.hunger = 5
ITEM.thirst = -5
ITEM.description = "A Universal Union approved bag of stale chips."
ITEM.longdesc = "This UU-branded bag of chips (or crisps if you prefer) provides a satisfying enough crunch, but is ultimately a luxury food - it's empty calories and you definitely believe all the salt will dehydrate you."
ITEM.quantity = 3
ITEM.price = 20
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