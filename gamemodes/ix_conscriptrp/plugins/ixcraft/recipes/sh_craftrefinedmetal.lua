RECIPE.name = "Refined Metal"
RECIPE.description = "Crudely melt away slag and form together reclaimed scrap into somewhat of a refined Ingot."
RECIPE.model = "models/mechanics/solid_steel/plank_4.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["blowtorchfuel"] = 1,
	["reclaimedmetal"] = 3,
}

RECIPE.tools = {
	"blowtorch",
	"weldingmask",
}

RECIPE.results = {
	["refinedmetal"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)