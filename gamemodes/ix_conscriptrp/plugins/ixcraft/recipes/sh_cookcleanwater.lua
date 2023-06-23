RECIPE.name = "Purify Breen Water"
RECIPE.description = "Purify a can of Breen Water, removing its questionable chemical additives and making it suitable for cooking food or other uses."
RECIPE.model = "models/mosi/fnv/props/drink/water_clean.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["watercan"] = 2,
}

RECIPE.results = {
	["waterclean"] = 1

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