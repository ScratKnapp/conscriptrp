RECIPE.name = "Metal Mask"
RECIPE.description = "Use some extra metal and basic tools to transform a welding mask into proper protective facewear."
RECIPE.model = "models/ez2models/humans/group03b/welding_mask.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["weldingmask"] = 1,
	["scrapmetal"] = 2,
	["reclaimedmetal"] = 1,
}

RECIPE.tools = {
	"screwdriver",
}

RECIPE.results = {
	["metalmask"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)