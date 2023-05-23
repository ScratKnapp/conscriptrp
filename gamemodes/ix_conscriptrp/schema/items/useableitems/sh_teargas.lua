ITEM.name = "Makeshift Chlorine Gas Cannister"
ITEM.model = "models/weapons/w_grenade.mdl"
ITEM.description = "Homemade chemical warfare."
ITEM.longdesc = "A rusted can filled with a toxic composition. Inside is a binded mixture of Ammonia and Bleach attached to a wax-covered fuse. Ignite and throw, and keep your distance!"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Medical"
ITEM.price = 210
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