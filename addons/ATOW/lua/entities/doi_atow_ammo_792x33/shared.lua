ENT.Type = "anim"
ENT.Base = "cw_ammo_ent_base"
ENT.PrintName = "7.92x33MM Ammo"
ENT.Author = "Khris"
if CustomizableWeaponry_doi_atow_hl2ammo == false then
ENT.Spawnable = true
ENT.AdminSpawnable = true 
if CustomizableWeaponry_doi_atow_hl2ammo == true then
ENT.Spawnable = false
ENT.AdminSpawnable = false
end
end
ENT.Category = "CW 2.0 ATOW Ammo"

ENT.CaliberSpecific = true
ENT.AmmoCapacity = 200
ENT.ResupplyAmount = 60
ENT.Caliber = "7.92x33MM"
ENT.Model = "models/Items/BoxMRounds.mdl"