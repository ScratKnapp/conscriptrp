ITEM.name = "Cooked Bullsquid Cutlet"
ITEM.model = "models/mosi/fnv/props/food/steak.mdl"
ITEM.hunger = 60
ITEM.description = "A juicy, pan-fried steak from that of a Bullsquid."
ITEM.longdesc = "It's rather tough meat, but makes for a very filling meal."
ITEM.quantity = 1
ITEM.price = 100
ITEM.width = 2
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