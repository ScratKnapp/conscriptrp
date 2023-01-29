ITEM.name = "Universal Union Minimal Ration Unit"
ITEM.model = "models/pg_plops/pg_food/pg_tortellinan.mdl"
ITEM.hunger = 5
ITEM.description = "A Universal Union issued Minimal Ration Unit."
ITEM.longdesc = "Minimal Ration Units are a punishment; when someone acts up, their food rations are reduced one tier. Most citizens would end up with these if they misbehave. Sporting only enough calories to stay alive and work, the food is miserably tasteless and unappetizing."
ITEM.price = 25
ITEM.width = 1
ITEM.height = 2
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