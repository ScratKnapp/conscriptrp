RECIPE.name = "Reclaimed Metal"
RECIPE.description = "Crudely melt away slag and form together scrap metal into somewhat of a reclaimed bit of metal."
RECIPE.model = "models/gibs/metal_gib2.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["blowtorchfuel"] = 1,
	["scrapmetal"] = 3,
}

RECIPE.tools = {
	"blowtorch",
	"weldingmask",
}

RECIPE.results = {
	["reclaimedmetal"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)