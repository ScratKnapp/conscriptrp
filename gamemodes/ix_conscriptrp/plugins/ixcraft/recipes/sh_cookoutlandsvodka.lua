RECIPE.name = "Brew Outlands Vodka"
RECIPE.description = "Follow specific instructions to ferment and extract an alcoholic substance from a bunch of potatoes."
RECIPE.model = "models/teebeutel/metro/objects/bottle03.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Chemistry Bench"
RECIPE.blueprint = "blueprintvodka"
RECIPE.requirements = {
	["yeast"] = 1,
	["waterclean"] = 1,
	["potato"] = 4,
}



RECIPE.results = {
	["vodka"] = 3

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chembench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end


	return false, "You need to be near a Chemistry Bench."
end)