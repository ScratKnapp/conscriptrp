ITEM.name = "Expungement Dart Burst"
ITEM.model = "models/ez2models/items/arbeit/combine_rifle_ammo01.mdl"
ITEM.description = "A canister of compressed air and sharp darts."
ITEM.longdesc = "A canister able to be loaded by Pearl's internal 'weapon', it is unknown what exactly the substance is or how it functions, but it only seems effective against Xenian Creatures. Fires four darts per shot."
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
		ix.chat.Send(item.player, "iteminternal", "fires an "..item.name.." at a target.", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}