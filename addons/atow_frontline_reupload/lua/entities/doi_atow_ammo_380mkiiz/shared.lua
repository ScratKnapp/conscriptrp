ENT.Type = "anim"
ENT.Base = "cw_ammo_ent_base"
ENT.PrintName = ".380 Ammo"
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
ENT.AmmoCapacity = 150
ENT.ResupplyAmount = 40
ENT.Caliber = ".380"
ENT.Model = "models/Items/BoxSRounds.mdl"