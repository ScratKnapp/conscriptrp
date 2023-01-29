ITEM.name = "Universal Union Potato"
ITEM.model = "models/bioshockinfinite/hext_potato.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved potato."
ITEM.longdesc = "This UU-branded tater has a slightly moldy taste, but creative citizens have made wonders with them. Hey, starving kids in Ireland would probably kill for it."
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