ITEM.name = "Stingray-9M Armored Suit"
ITEM.model = "models/kek1ch/military_outfit.mdl"
ITEM.replacements = "models/nasca/stalker/male_stingray9m.mdl"
ITEM.description= "SKAT-9M suit." 
ITEM.longdesc = "This bulletproof military suit innovates on the previous Stingray-9 design tooled for operations near the center of the Zone. It includes a heavy military bulletproof suit, an integrated compensation suit and a Sphere-12M helmet. It provides excellent protection from bullets and splinters and it doesn't decrease the soldier's mobility, while retaining a balanced system of anomaly protection. It is rarely seen out of highly specialized Spetsnaz operatives and military stalkers.\n\nBallistic Protection:\nSkull: III+\nNeck & Face: IIIA\nTorso: IV\nLimbs: III\nWeight: 3"
ITEM.width = 2
ITEM.height = 3
ITEM.price = 300000
ITEM.flag = "A"
ITEM.br = 0.35
ITEM.fbr = 10
ITEM.ar = 0.28
ITEM.far = 3
ITEM.isGasmask = true
ITEM.isHelmet = true
ITEM.isArmor = true
ITEM.repairCost = ITEM.price/100*1
ITEM.overlayPath = "vgui/overlays/hud_merc"
ITEM.img = Material("vgui/hud/xm40.png")
ITEM.noBusiness = true
ITEM.artifactcontainers = {"3"}
ITEM.weight = 15
ITEM.maxArmor = 30
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
	["helmet"] = 1,
}