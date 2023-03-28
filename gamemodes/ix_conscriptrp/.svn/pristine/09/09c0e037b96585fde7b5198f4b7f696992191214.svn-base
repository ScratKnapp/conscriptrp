ITEM.name = "CWU Vitamin Water"
ITEM.model = "models/mosi/fnv/props/drink/water_aquapura.mdl"
ITEM.thirst = 50
ITEM.description = "A refreshing beverage full of vitamins."
ITEM.longdesc = "A small bottle of vitamin water aimed at keeping Civil Workers and Loyalists alike hydrated and healthy while working in often stressful, unheathly, and sometimes even dangerous environments. An absolute necessity to any legal dieting plan."
ITEM.quantity = 1
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