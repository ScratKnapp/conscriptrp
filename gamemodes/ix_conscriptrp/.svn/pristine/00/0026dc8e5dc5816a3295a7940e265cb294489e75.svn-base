ITEM.name = "Absinthe"
ITEM.model = "models/mosi/fnv/props/drink/alcohol/absinthe.mdl"
ITEM.thirst = 10
ITEM.description = "A bottle of what might as well be battery acid."
ITEM.longdesc = "A shoddy-looking glass bottle with a marker label. It smells terrible, though its clearish-green tint is intriguing enough for most. Preferred by many for how little is required to get drunk, hated by many as it tastes horrible. Drinking too much can kill you relatively easily."
ITEM.price = 145
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