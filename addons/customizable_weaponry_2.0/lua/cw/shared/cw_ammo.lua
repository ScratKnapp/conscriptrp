AddCSLuaFile()

CustomizableWeaponry.ammoTypes = CustomizableWeaponry.ammoTypes or {}

-- base ammo registration function
function CustomizableWeaponry:registerAmmo(name, text, bulletDiameter, caseLength)
	CustomizableWeaponry.ammoTypes[name] = {bulletDiameter = bulletDiameter, caseLength = caseLength}
	
	game.AddAmmoType({name = name,
	dmgtype = DMG_BULLET})
	
	if CLIENT then
		language.Add(name .. "_ammo", text)
	end
end

-- aliases
CustomizableWeaponry.registerAmmoType = CustomizableWeaponry.registerAmmo
CustomizableWeaponry.registerNewAmmo = CustomizableWeaponry.registerAmmo


--Regular Ammo
CustomizableWeaponry:registerAmmo("7.62x25MM", "7.62x25MM Rounds", 7.62, 25)
CustomizableWeaponry:registerAmmo("7.62x39MM", "7.62x39MM Rounds", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x51MM", "7.62x51MM Rounds", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x51MMB", "7.62x51MMB", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x54MMR", "7.62x54MMR Rounds", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x54MM", "7.62x54MM Rounds", 7.62, 54)
CustomizableWeaponry:registerAmmo("7.62x54MMB", "7.62x54MMB", 7.62, 54)
CustomizableWeaponry:registerAmmo("4.6x30MM", "4.6x30MM", 4.6, 30)
CustomizableWeaponry:registerAmmo("5.45x39MM", "5.45x39MM Rounds", 5.45, 39)
CustomizableWeaponry:registerAmmo("5.56x45MM", "5.56x45MM Rounds", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.56x45MMB", "5.56x45MMB", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.7x28MM", "5.7x28MM Rounds", 5.7, 28)
CustomizableWeaponry:registerAmmo("6.8SPC", "6.8SPC", 5.7, 28)
CustomizableWeaponry:registerAmmo("14.5x114MM", "14.5x114MM Rounds", 14.5, 114)
CustomizableWeaponry:registerAmmo(".22LR", ".22LR Rounds", 5.7, 15.6)
CustomizableWeaponry:registerAmmo(".338 Lapua", ".338 Lapua", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".30 Carbine", ".30 Carbine", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".357", ".357", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".38 Special", ".38 Special", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".44 Magnum", ".44 Magnum Rounds", 10.9, 32.6)
CustomizableWeaponry:registerAmmo(".45 ACP", ".45 ACP Rounds", 11.5, 22.8)
CustomizableWeaponry:registerAmmo(".50 AE", ".50 AE Rounds", 12.7, 32.6)
CustomizableWeaponry:registerAmmo("9x18MM", "9x18MM Rounds", 9, 18)
CustomizableWeaponry:registerAmmo("9x19MM", "9x19MM Rounds", 9, 19)
CustomizableWeaponry:registerAmmo("9x21MM", "9x21MM Rounds", 9, 21)
CustomizableWeaponry:registerAmmo("9x39MM", "9x39MM Rounds", 9, 39)
CustomizableWeaponry:registerAmmo("12.7x55mm", "12.7x55mm", 12.7, 55)
CustomizableWeaponry:registerAmmo("12 Gauge", "12 Gauge Shells", 5, 10)
CustomizableWeaponry:registerAmmo("40MM", "40MM Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Frag Grenades", "Frag Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Smoke Grenades", "Smoke Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Flash Grenades", "Flash Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Batteries", "Gauss Rounds", 0, 0)


--ZONELOADED AMMO
CustomizableWeaponry:registerAmmo("7.62x25MM -ZL-", "7.62x25MM Rounds -ZL-", 7.62, 25)
CustomizableWeaponry:registerAmmo("7.62x39MM -ZL-", "7.62x39MM Rounds -ZL-", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x51MM -ZL-", "7.62x51MM Rounds -ZL-", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x54MMR -ZL-", "7.62x54MMR Rounds -ZL-", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x54MM -ZL-", "7.62x54MM Rounds -ZL-", 7.62, 54)
CustomizableWeaponry:registerAmmo("5.45x39MM -ZL-", "5.45x39MM Rounds -ZL-", 5.45, 39)
CustomizableWeaponry:registerAmmo("5.56x45MM -ZL-", "5.56x45MM Rounds -ZL-", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.7x28MM -ZL-", "5.7x28MM Rounds -ZL-", 5.7, 28)
CustomizableWeaponry:registerAmmo("14.5x114MM -ZL-", "14.5x114MM Rounds -ZL-", 14.5, 114)
CustomizableWeaponry:registerAmmo(".22LR -ZL-", ".22LR Rounds -ZL-", 5.7, 15.6)
CustomizableWeaponry:registerAmmo(".338 Lapua -ZL-", ".338 Lapua Rounds -ZL-", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".44 Magnum -ZL-", ".44 Magnum Rounds -ZL-", 10.9, 32.6)
CustomizableWeaponry:registerAmmo(".45 ACP -ZL-", ".45 ACP Rounds -ZL-", 11.5, 22.8)
CustomizableWeaponry:registerAmmo(".50 AE -ZL-", ".50 AE Rounds -ZL-", 12.7, 32.6)
CustomizableWeaponry:registerAmmo("9x18MM -ZL-", "9x18MM Rounds -ZL-", 9, 18)
CustomizableWeaponry:registerAmmo("9x19MM -ZL-", "9x19MM Rounds -ZL-", 9, 19)
CustomizableWeaponry:registerAmmo("9x39MM -ZL-", "9x39MM Rounds -ZL-", 9, 39)

--MATCHGRADE AMMO
CustomizableWeaponry:registerAmmo("7.62x25MM -MG-", "7.62x25MM Rounds -MG-", 7.62, 25)
CustomizableWeaponry:registerAmmo("7.62x39MM -MG-", "7.62x39MM Rounds -MG-", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x39MMB -MG-", "7.62x39MM Rounds -MG-", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x51MM -MG-", "7.62x51MM Rounds -MG-", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x51MMB -MG-", "7.62x51MMB -MG-", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x54MMR -MG-", "7.62x54MMR Rounds -MG-", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x54MM -MG-", "7.62x54MM Rounds -MG-", 7.62, 54)
CustomizableWeaponry:registerAmmo("7.62x54MMB -MG-", "7.62x54MMB -MG-", 7.62, 54)
CustomizableWeaponry:registerAmmo("4.6x30MM -MG-", "4.6x30MM -MG-", 4.6, 30)
CustomizableWeaponry:registerAmmo("5.45x39MM -MG-", "5.45x39MM Rounds -MG-", 5.45, 39)
CustomizableWeaponry:registerAmmo("5.56x45MM -MG-", "5.56x45MM Rounds -MG-", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.56x45MMB -MG-", "5.56x45MMB -MG-", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.7x28MM -MG-", "5.7x28MM Rounds -MG-", 5.7, 28)
CustomizableWeaponry:registerAmmo("6.8SPC -MG-", "6.8SPC -MG-", 5.7, 28)
CustomizableWeaponry:registerAmmo("12.7x55mm -MG-", "12.7x55mm -MG-", 12.7, 55)
CustomizableWeaponry:registerAmmo("14.5x114MM -MG-", "14.5x114MM Rounds -MG-", 14.5, 114)
CustomizableWeaponry:registerAmmo(".22LR -MG-", ".22LR Rounds -MG-", 5.7, 15.6)
CustomizableWeaponry:registerAmmo(".338 Lapua -MG-", ".338 Lapua Rounds -MG-", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".30 Carbine -MG-", ".30 Carbine -MG-", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".38 Special -MG-", ".38 Special -MG-", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".357 -MG-", ".357 -MG-", 8.58, 69.20)
CustomizableWeaponry:registerAmmo(".44 Magnum -MG-", ".44 Magnum Rounds -MG-", 10.9, 32.6)
CustomizableWeaponry:registerAmmo(".45 ACP -MG-", ".45 ACP Rounds -MG-", 11.5, 22.8)
CustomizableWeaponry:registerAmmo(".50 AE -MG-", ".50 AE Rounds -MG-", 12.7, 32.6)
CustomizableWeaponry:registerAmmo("9x18MM -MG-", "9x18MM Rounds -MG-", 9, 18)
CustomizableWeaponry:registerAmmo("9x19MM -MG-", "9x19MM Rounds -MG-", 9, 19)
CustomizableWeaponry:registerAmmo("9x21MM -MG-", "9x21MM Rounds -MG-", 9, 21)
CustomizableWeaponry:registerAmmo("9x39MM -MG-", "9x39MM Rounds -MG-", 9, 39)



--Shotgun Ammo Variants
CustomizableWeaponry:registerAmmo("12 Gauge -SG-", "12 Gauge Slug Shells", 5, 10)
CustomizableWeaponry:registerAmmo("12 Gauge -BD-", "12 Gauge Bird Shells", 5, 10)
CustomizableWeaponry:registerAmmo("12 Gauge -TR-", "12 Gauge Tri Rounds", 5, 10)
CustomizableWeaponry:registerAmmo("12 Gauge -ZL-", "12 Gauge Zone Loaded", 5, 10)
CustomizableWeaponry:registerAmmo("23mm Shell", "23mm Shell", 23, 75)
CustomizableWeaponry:registerAmmo("23mm Shell -P-", "23mm Shell Penetrator", 23, 75)