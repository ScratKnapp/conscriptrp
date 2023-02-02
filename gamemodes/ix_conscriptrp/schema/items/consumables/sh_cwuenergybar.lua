ITEM.name = "CWU Energy Bar"
ITEM.model = "models/banka3.mdl"
ITEM.hunger = 20
ITEM.description = "A CWU-branded energy bar."
ITEM.longdesc = "A protein bar made of nuts and granola, even has a little bit of dark chocolate in it as a treat. These candy bars are notable for their ability to make someone feel partially full, despite their cheap price and small nature."
ITEM.price = 45
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