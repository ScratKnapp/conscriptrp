ITEM.name = "CWU Pineapple Juice"
ITEM.model = "models/illusion/eftcontainers/carton.mdl"
ITEM.thirst = 18
ITEM.description = "A carboard carton of processed fruit juice."
ITEM.longdesc = "A cardboard carton of processed Pineapple Juice. Made from real Pineapples produced in the synthetic-cropping districts of City 64, 82, and 104! Brought to you by the Civil Worker's Union. Such a drink can be rather pricy, but is adored by a majority of both Loyalists and Outlanders as its naturally sugary tastes keeps moods and energy high."
ITEM.price = 65
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_gulp2.wav"
ITEM.quantity = 3
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