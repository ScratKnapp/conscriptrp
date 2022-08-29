ITEM.name = "Mercenary TB-3 Exosuit"
ITEM.model ="models/kek1ch/exolight_outfit.mdl"
ITEM.replacements ="models/nasca/stalker/male_exo_merc.mdl"
ITEM.description= "A set of TB-3 heavy armor."
ITEM.longdesc = "An experimental military suit that was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its excellent protective qualities, and therefore small batches are made in underground facilities outside Ukraine on commission of the Mercenaries. This armor is given primarily to Mercenary commandos and coordinators.\n\nBallistic Protection:\nSkull: III+\nNeck & Face: IIIA\nTorso: IV\nLimbs: III\nWeight: 4"
ITEM.width = 2
ITEM.height = 4
ITEM.price = 265000
ITEM.flag = "A"
ITEM.br = 0.6
ITEM.fbr = 11
ITEM.ar = 0.2
ITEM.far = 3
ITEM.isGasmask = true
ITEM.isHelmet = true
ITEM.isArmor = true
ITEM.overlayPath = "vgui/overlays/hud_merc"
ITEM.img = Material("vgui/hud/xm40.png")
ITEM.noBusiness = true
ITEM.artifactcontainers = {"2"}
ITEM.weight = 30
ITEM.maxArmor = 40
ITEM.res = {
	["Bullet"] = 0.4,
	["Blast"] = 0.4,
	["Fall"] = 0.4,
	["Burn"] = 0.2,
	["Radiation"] = 0.3,
	["Chemical"] = 0.2,
	["Shock"] = 0.2,
	["Psi"] = 0.2,
}

ITEM.newSkin = 0
ITEM.bodyGroups = {
	["Servomotors"] = 1,
}