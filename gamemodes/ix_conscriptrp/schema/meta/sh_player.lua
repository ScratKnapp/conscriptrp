
local PLAYER = FindMetaTable("Player")

function PLAYER:IsCombine()
	local faction = self:Team()
	return faction == FACTION_MPF or faction == FACTION_OTA
end