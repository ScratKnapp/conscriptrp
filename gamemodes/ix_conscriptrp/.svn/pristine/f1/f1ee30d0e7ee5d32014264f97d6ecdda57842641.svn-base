ITEM.name = "Stukabat Bits"
ITEM.model = "models/mosi/fnv/props/food/antbits.mdl"
ITEM.hunger = 28
ITEM.description = "Roasted Stukabat."
ITEM.longdesc = "Refugees are known to eat essentially anything they can cook in a pan, and what's left of a blasted-apart Stuka bat is no exception. This little snack is composed of meat-chunks salvaged from the blasted-apart corpses of Xenian Stuka-Bats. Roasted over a campfire and prepared to eat."
ITEM.quantity = 1
ITEM.price = 40
ITEM.width = 1
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