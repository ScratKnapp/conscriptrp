ITEM.name = "Cooked Xenian Growth"
ITEM.model = "models/mosi/fnv/props/food/alienfood01.mdl"
ITEM.hunger = 16
ITEM.description = "A disgusting, greasy, worm-looking plant often found in Xenian-Infestation Zones."
ITEM.longdesc = "Despite its absolutely appetite-defeating look, Vortigaunts are found to often include these stocks in their recipes, or just outright cook them alone. Refugees are known to also cook them in times of dire need. It feels like eating an intestine."
ITEM.quantity = 3
ITEM.price = 30
ITEM.width = 3
ITEM.height = 1
ITEM.cookable = false
ITEM.flag = "5"
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()