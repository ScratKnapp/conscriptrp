ITEM.name = "CWU Flavored Water"
ITEM.model = "models/illusion/eftcontainers/aquamari.mdl"
ITEM.thirst = 65
ITEM.description = "A refreshing beverage full of vitamins and artificial sweetner."
ITEM.longdesc = "A metallic bottle of sweetened vitamin water aimed at keeping Civil Workers and Loyalists alike hydrated and healthy while working in often stressful, unheathly, and sometimes even dangerous environments. A delightful luxury to any legal dieting plan. Some describe it as 'tasting like sugar-free Gatorade'."
ITEM.quantity = 3
ITEM.price = 55
ITEM.width = 1
ITEM.height = 2
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