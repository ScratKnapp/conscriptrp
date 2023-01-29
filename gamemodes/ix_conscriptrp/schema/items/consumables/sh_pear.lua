ITEM.name = "Universal Union Pear"
ITEM.model = "models/bioshockinfinite/hext_pear.mdl"
ITEM.hunger = 10
ITEM.thirst = 5
ITEM.description = "A Universal Union approved allegedly fresh pear."
ITEM.longdesc = "Claiming to be a juicy pear, this piece of fruit has a faint moldy taste and never seems to brown if you let it sit, but it's not that bad."
ITEM.quantity = 3
ITEM.price = 20
ITEM.width = 1
ITEM.height = 1
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