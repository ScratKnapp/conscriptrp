ITEM.name = "Universal Union Bread"
ITEM.model = "models/bioshockinfinite/dread_loaf.mdl"
ITEM.hunger = 15
ITEM.description = "A Universal Union approved bread loaf."
ITEM.longdesc = "This UU-branded bread loaf is often stale when eaten, but serves its purpose as a staple food."
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