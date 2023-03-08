RECIPE.name = "Disassemble Camera"
RECIPE.description = "Take apart a DSLR Camera, because one must see no evil."
RECIPE.model = "models/mgs4/weapons/dslr.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["camera"] = 1,
}

RECIPE.tools = {
	"screwdriver"
}
RECIPE.results = {
	["wirebundle"] = 3,
	["aabattery"] = 2,
	["consumerelectronics"] = 1,
	["nutsbolts"] = 1,
	["capacitors"] = 1,


}
RECIPE.flag = "6" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)