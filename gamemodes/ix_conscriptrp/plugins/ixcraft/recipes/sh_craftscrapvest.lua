RECIPE.name = "Scrap Armor Vest"
RECIPE.description = "Combine some scrap metal with basic metalworking to create a heavy vest capable of stopping pistol rounds."
RECIPE.model = "models/combine_helicopter/bomb_debris_2.mdl"
RECIPE.requirements = {
	["scrapmetal"] = 4,
	["gascan"] = 1,
	["reclaimedmetal"] = 2,
}

RECIPE.tools = {
	"weldingmask",
}

RECIPE.results = {
	["threeascrapvest"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)