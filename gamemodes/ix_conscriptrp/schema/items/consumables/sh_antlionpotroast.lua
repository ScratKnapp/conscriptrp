ITEM.name = "Antlion Pot Roast"
ITEM.model = "models/mosi/fnv/props/food/mirelurkspecial.mdl"
ITEM.hunger = 40
ITEM.description = "A large bowl of cooked vegetables and tender Antlion meat."
ITEM.longdesc = "A slowly cooked Pot Roast made of Antlion meat, carrots, and potatoes. Absolutely delicious."
ITEM.quantity = 5
ITEM.price = 45
ITEM.width = 2
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 1
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