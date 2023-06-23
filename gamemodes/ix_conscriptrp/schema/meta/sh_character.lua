
-- In some cases you'll want to extend the metatables of a few classes. The standard way of doing so is to place your
-- extensions/overrides in the meta/ folder where each file pertains to one class.

local CHAR = ix.meta.character

function CHAR:IsCombine()
	local faction = self:Team()
	return faction == FACTION_MPF or faction == FACTION_OTA
end


function CHAR:IsCWU()
	local faction = self:Team()
	return faction == FACTION_CWU
end