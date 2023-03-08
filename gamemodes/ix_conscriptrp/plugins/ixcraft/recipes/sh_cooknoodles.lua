RECIPE.name = "Cook Instant Noodles"
RECIPE.description = "Boil up some clean water to cook a cup of instant noodles with."
RECIPE.model = "models/doshirak_pure.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["cwuinstantnoodles"] = 1,
	["waterclean"] = 1,
}

RECIPE.results = {
	["cwuinstantnoodles"] = 1

}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_campfire")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	for _, v in pairs(ents.FindByClass("ix_station_stove")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a campfire or stove."
end)