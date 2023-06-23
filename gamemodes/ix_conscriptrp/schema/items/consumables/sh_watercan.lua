ITEM.name = "Universal Union Water"
ITEM.model = "models/props_lunk/popcan01a.mdl"
ITEM.thirst = 15
ITEM.description = "Universal Union approved canned water."
ITEM.longdesc = "This UU-branded water can is exactly what it says on the label - plain, uncarbonated water in a can. Rumors are that they put 'something' in it to weaken your mind, but you don't remember ever experiencing anything like that."
ITEM.quantity = 1
ITEM.price = 5
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