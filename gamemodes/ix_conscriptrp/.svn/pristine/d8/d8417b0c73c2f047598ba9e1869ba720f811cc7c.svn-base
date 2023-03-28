ITEM.name = "Universal Union Loyalist Ration Unit"
ITEM.model = "models/pg_plops/pg_food/pg_tortellinap.mdl"
ITEM.hunger = 20
ITEM.description = "A Universal Union issued Loyalist Ration Unit."
ITEM.longdesc = "Loyalist Issue Rations tend to be both more pleasing to the taste buds and better for the body, with varied menus that resemble pre-war food. Given to Combine ass-kissers, usually CWU or 'model citizens.'"
ITEM.quantity = 1
ITEM.price = 200
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