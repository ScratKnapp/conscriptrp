ITEM.name = "R-3 SEVA Suit"
ITEM.model ="models/kek1ch/scientific_outfit.mdl"
ITEM.replacements ="models/nasca/stalker/male_seva_lone.mdl"
ITEM.description= "A closed cycle suit modified by Renegades for the unique needs of the Swamps."
ITEM.longdesc = "A SEVA suit modified by Renegades for managing the Chemical-heavy fields of the Swamps and combat simutaneously. It is merely acceptable for both, at best. Uses a haphazardly assembled closed cycle system. \n\nBallistic Protection:\nSkull: IIA\nNeck & Face: IIA\nTorso: III\nLimbs: IIIA\nWeight: 3"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 200000
ITEM.flag = "A"
ITEM.br = 0.2
ITEM.fbr = 10
ITEM.ar = 0.6
ITEM.far = 6
ITEM.isGasmask = true
ITEM.isHelmet = true
ITEM.isArmor = true
ITEM.radProt = 0.3
ITEM.overlayPath = "vgui/overlays/hud_sci"
ITEM.artifactcontainers = {"1"}
ITEM.img = Material("vgui/hud/seva.png")
ITEM.weight = 10
ITEM.maxArmor = 10
ITEM.res = {
	["Bullet"] = 0.3,
	["Blast"] = 0.3,
	["Fall"] = 0.3,
	["Burn"] = 0.2,
	["Radiation"] = 0.3,
	["Chemical"] = 0.4,
	["Shock"] = 0.3,
	["Psi"] = 0.1,
}

ITEM.newSkin = 0
ITEM.bodyGroups = {
	["Screen"] = 0,
}