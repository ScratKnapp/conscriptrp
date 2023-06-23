ITEM.name = "Xenian Root Soup"
ITEM.model = "models/mosi/fnv/props/food/ratstew.mdl"
ITEM.hunger = 45
ITEM.description = "A particularly opaque soup made of Xenian Roots."
ITEM.longdesc = "Made from Xenian Root, Corn, and Mushrooms. It's very filling, and some claim to have vivid premonitions of the future when ingesting such a filling meal. May cause minor hallucinations."
ITEM.quantity = 4
ITEM.price = 150
ITEM.width = 1
ITEM.height = 1
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