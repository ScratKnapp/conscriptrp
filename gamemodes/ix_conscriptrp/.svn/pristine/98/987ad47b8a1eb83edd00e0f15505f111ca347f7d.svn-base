ITEM.name = "Houndeye Milk"
ITEM.model = "models/mosi/fnv/props/drink/milkbottle.mdl"
ITEM.thirst = 50
ITEM.description = "A small, glass bottle of what appears to be a greenish, milky liquid."
ITEM.longdesc = "It tastes partially of milk, and partially of some sort of unknown, citrus-like fruit. Some considered it delicious, others declaring it utterly disgusting. Try not to think about it too much."
ITEM.quantity = 2
ITEM.price = 50
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