RECIPE.name = "Cook Antlion Bits"
RECIPE.description = "Pan-fry some antlion bits for eating."
RECIPE.model = "models/mosi/fnv/props/food/crops/pinyonnuts.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["rawantlionbits"] = 1,
}

RECIPE.tools = {
	"ironpan",
}

RECIPE.results = {
	["cookedantlionbits"] = 1

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