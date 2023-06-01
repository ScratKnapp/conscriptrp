ITEM.name = "Coagulative Paste"
ITEM.model = "models/jq/hlvr/props/xen/xen_foam_blobs001_mid.mdl"
ITEM.description = "A glob of sticky paste."
ITEM.longdesc = "A waxy, foam-similar glob of sticky paste. When applied to a wound, it seems to immediately begin coagulating the blood coming from it."
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
		ix.chat.Send(item.player, "iteminternal", "applies "..item.name.." to the target's wound.", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}