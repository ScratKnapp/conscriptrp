
local PLAYER = FindMetaTable("Player")

function PLAYER:IsCombine()
	local faction = self:Team()
	return faction == FACTION_MPF or faction == FACTION_OTA
end


function PLAYER:IsCWU()
	local faction = self:Team()
	return faction == FACTION_CWU
end