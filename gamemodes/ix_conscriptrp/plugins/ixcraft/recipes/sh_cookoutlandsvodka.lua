RECIPE.name = "Brew Outlands Vodka"
RECIPE.description = "Follow specific instructions to ferment and extract an alcoholic substance from a bunch of potatoes."
RECIPE.model = "models/mosi/fnv/props/food/steak.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Chemistry Bench"
ITEM.blueprint = "blueprintvodka"
RECIPE.requirements = {
	["yeast"] = 1,
	["waterclean"] = 1,
	["potato"] = 4,
}



RECIPE.results = {
	["outlandsvodka"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chemistrybench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end


	return false, "You need to be near a Chemistry Bench."
end)