ITEM.name = "Universal Union Canned Fish"
ITEM.model = "models/bioshockinfinite/cardine_can_open.mdl"
ITEM.hunger = 10
ITEM.description = "A Universal Union approved fish substitute."
ITEM.longdesc = "This UU-branded can of fish at first looks like ordinary canned sardines, but the 'Replacement' label makes one wonder exactly where they got it."
ITEM.quantity = 3
ITEM.price = 5
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