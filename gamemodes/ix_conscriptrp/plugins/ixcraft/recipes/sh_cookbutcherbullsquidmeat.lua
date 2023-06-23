RECIPE.name = "Butcher Bullsquid Meat"
RECIPE.description = "Butcher and quarter a large chunk of harvested Bullsquid Meat into a cut fit for cooking."
RECIPE.model = "models/mosi/fnv/props/food/dogmeat.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Stove"
RECIPE.requirements = {
	["rawbullsquidmeat"] = 1,
}



RECIPE.tools = {
	"cleaver",
}

RECIPE.results = {
	["rawbullsquidcutlet"] = 4

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_stove")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end
	return false, "You need to be near a stove."
end)