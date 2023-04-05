RECIPE.name = "Gather Antlion Bits"
RECIPE.description = "Crack open and harvest what little meat a bundle of insect legs have to offer."
RECIPE.model = "models/mosi/fnv/props/food/crops/pinyonnuts.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["antlionleg"] = 5,
}


RECIPE.results = {
	["rawantlionbits"] = 1

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