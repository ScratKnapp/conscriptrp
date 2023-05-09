ENT.Type = "anim"
ENT.Base = "cw_ammo_ent_base"
ENT.PrintName = ".30 Carbine Ammo"
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
ENT.ResupplyAmount = 50
ENT.Caliber = ".30 Carbine"
ENT.Model = "models/Items/BoxMRounds.mdl"