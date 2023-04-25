ITEM.name = "Outlands Vodka"
ITEM.model = "models/teebeutel/metro/objects/bottle03.mdl"
ITEM.thirst = 15
ITEM.description = "A bottle of home-brewed Vodka."
ITEM.longdesc = "In a plainly labelled bottle sits some strong shit - high proof potato Vodka brewed in the Outlands, outside of Combine control, and thus considered contraband. It's potent and can get you wasted with ease."
ITEM.price = 70
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