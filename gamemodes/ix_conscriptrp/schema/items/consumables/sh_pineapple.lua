ITEM.name = "Universal Union Pineapple"
ITEM.model = "models/bioshockinfinite/hext_pineapple.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved pineapple."
ITEM.longdesc = "This UU-branded pineapple is a rare sight, but is appreciated for its sweetness when it's available. It's a Class 2 Civil Offense to put it on pizza."
ITEM.quantity = 1
ITEM.price = 30
ITEM.width = 1
ITEM.height = 2
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 2
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