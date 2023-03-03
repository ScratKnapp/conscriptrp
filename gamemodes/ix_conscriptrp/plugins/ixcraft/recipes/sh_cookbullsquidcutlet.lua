RECIPE.name = "Cook Bullsquid Cutlet"
RECIPE.description = "Pan-Fry a cutlet of Bullsquid meat."
RECIPE.model = "models/mosi/fnv/props/food/steak.mdl"
RECIPE.category = "Cooking"
RECIPE.requirements = {
	["rawbullsquidcutlet"] = 1,
}



RECIPE.tools = {
	"ironpan",
}

RECIPE.results = {
	["cookedbullsquidcutlet"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_stove")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end
	return false, "You need to be near a stove."
end)