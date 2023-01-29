ITEM.name = "Universal Union MPF Ration Unit"
ITEM.model = "models/pg_plops/pg_food/pg_tortellinac.mdl"
ITEM.hunger = 20
ITEM.description = "A Universal Union issued MPF Ration Unit."
ITEM.longdesc = "All members of the Metropolitan Police Force recive these ration packs. Rich in proteins and iron, they're meant to keep officers well fed and strong so they can easily overpower the more frail citizens."
ITEM.quantity = 1
ITEM.price = 100
ITEM.width = 1
ITEM.height = 2
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