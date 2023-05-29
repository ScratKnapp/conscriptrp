AddCSLuaFile()

CreateConVar("doi_atow_usehl2ammotypes", "0", FCVAR_ARCHIVE, "If enabled, custom ammotypes for ATOW sweps will be disabled for compatibility and will use generic ammotypes instead. RESTART REQUIRED!")

if GetConVarNumber("doi_atow_usehl2ammotypes") == 1 then
CustomizableWeaponry_doi_atow_hl2ammo = true
else
CustomizableWeaponry_doi_atow_hl2ammo = false
end

function loadFile(path)
	AddCSLuaFile(path)
	include(path)
end

include("cw/shared/doi_atow_ammotypes.lua")