ITEM.name = "Evacuation Ration"
ITEM.model = "models/illusion/eftcontainers/isakalunchbox.mdl"
ITEM.hunger = 30
ITEM.description = "A green ration pack with Pre-War military insignias."
ITEM.longdesc = "This ration pack contains a couple of snack-styled meals contained within plastic packaging. Most of its food is partially dehydrated and thus has been preserved for quite a while. These packs were often distributed by Officials during the Xenian Crisis and 7 Hour War to evacuating families."
ITEM.quantity = 4
ITEM.price = 200
ITEM.width = 1
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