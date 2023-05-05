ITEM.name = "Bobby Pin"
ITEM.model = "models/mosi/fallout4/props/junk/bobbypinbox.mdl"
ITEM.description = "A bobby pin."
ITEM.longdesc = "A bent up bobbypin reused to pick low tier locks."
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = 10
ITEM.flag = "1"
ITEM.sound = "physics/metal/chain_impact_soft2.wav"
ITEM.weight = 0.05
ITEM.functions.use = {
	name = "Use",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		ix.chat.Send(item.player, "iteminternal", "uses a "..item.name..".", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}