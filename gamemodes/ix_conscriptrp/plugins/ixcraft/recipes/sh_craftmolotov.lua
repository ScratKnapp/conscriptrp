RECIPE.name = "Molotov"
RECIPE.description = "Assemble a proper Molotov using some scavenged ingredients."
RECIPE.model = "models/weapons/ethereal/w_molotov.mdl"
RECIPE.category = "Explosives"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["vodka"] = 1,
	["clothscrap"] = 2,
	["matchbook"] = 1,
	["soap"] = 1,
}
RECIPE.results = {
	["molotov"] = 1

}
RECIPE.flag = "8" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)