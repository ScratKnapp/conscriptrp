ITEM.name = "Wild Tobacco Leaves"
ITEM.model = "models/mosi/fnv/props/food/crops/coyotetobacco.mdl"
ITEM.hunger = 3
ITEM.description = "A wild bundle of dried leaves."
ITEM.longdesc = "A bundle of dried tobacco leaves. As the Xenian crisis occurred and farms began to fail worldwide, many survivors began planting Tobacco in mass as it was one of the highest demands. As a result it can be found virtually anywhere in the Outlands today, and at a cheap price. Feels nice to chew on."
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
	ix.chat.Send(item.player, "iteminternal", "munches on some "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()