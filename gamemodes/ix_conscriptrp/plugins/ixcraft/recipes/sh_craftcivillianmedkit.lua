RECIPE.name = "Civillian Medkit"
RECIPE.description = "Assemble a civillian medkit from common first aid components."
RECIPE.model = "models/illusion/eftcontainers/carmedkit.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["syringe"] = 1,
	["bandage"] = 1,
	["painkillers"] = 1,
}
RECIPE.results = {
	["medkitcivillian"] = 1,

}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)