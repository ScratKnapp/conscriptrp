ITEM.name = "Universal Union Pickles"
ITEM.model = "models/bioshockinfinite/dickle_jar.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved jar of pickles."
ITEM.longdesc = "This UU-branded pickle jar contains stubby, acid-y pickles. Good for putting on sandwitches, or eating the entire jar over the course of a lonely night of self-loathing."
ITEM.quantity = 3
ITEM.price = 35
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 2
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