RECIPE.name = "Gun Oil"
RECIPE.description = "Dilute oil with water and make an almost effective weapon-cleaning substance."
RECIPE.model = "models/warz/items/sandbag_unbuilt.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["waterclean"] = 2,
	["recycledoil"] = 1,
	["clothscrap"] = 1,
}

RECIPE.results = {
	["guncleaningkitbasic"] = 1,
}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)