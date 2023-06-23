ENT.Type = "anim"
ENT.Base = "cw_ammo_ent_base"
ENT.PrintName = "12 Gauge Ammo"
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
ENT.AmmoCapacity = 100
ENT.ResupplyAmount = 10
ENT.Caliber = "12 Gauge"
ENT.Model = "models/Items/BoxMRounds.mdl"