ITEM.name = "Bobby Pin"
ITEM.model = "models/mosi/fallout4/props/junk/bobbypinbox.mdl"
ITEM.description = "A bobby pin."
ITEM.longdesc = "A bent up bobbypin reused to pick low tier locks."
ITEM.quantity = 1
ITEM.price = 10
ITEM.width = 1
ITEM.height = 1
ITEM.sound = "physics/metal/chain_impact_soft2.wav"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "uses their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM:DecideFunction()