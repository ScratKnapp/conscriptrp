ITEM.name = "CWU Whiskey"
ITEM.model = "models/bioshockinfinite/ebsinthebottle.mdl"
ITEM.thirst = 20
ITEM.description = "A CWU-produced Whiskey bottle."
ITEM.longdesc = "This CWU-provided Whiskey bottle is of a bit higher class than most boozes a Citizen can get, in that it actually tastes pretty good. Available mostly to proven Loyalists."
ITEM.price = 45
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 2
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()