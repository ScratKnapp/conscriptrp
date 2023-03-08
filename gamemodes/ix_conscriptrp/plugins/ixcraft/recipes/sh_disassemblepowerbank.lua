RECIPE.name = "Disassemble Powerbank"
RECIPE.description = "Take apart a charging bank, because only you deserve power."
RECIPE.model = "models/illusion/eftcontainers/powerbank.mdl"
RECIPE.category = "Disassembly"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["powerbank"] = 1,
}

RECIPE.tools = {
	"screwdriver"
}
RECIPE.results = {
	["wirebundle"] = 1,
	["aabattery"] = 3,
	["consumerelectronics"] = 1,
	["nutsbolts"] = 1,
	["capacitors"] = 2,


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