RECIPE.name = "Cook Houndeye Haunch"
RECIPE.description = "Pan-fry some antlion bits for eating."
RECIPE.model = "models/gibs/houndeye/left_leg.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Stove"
RECIPE.requirements = {
	["rawhoundeyehaunch"] = 1,
	["waterclean"] = 1,
}

RECIPE.tools = {
	"ironpot",
}

RECIPE.results = {
	["cookedhoundeyehaunch"] = 1

}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_stove")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end
	return false, "You need to be near a stove."
end)