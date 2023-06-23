RECIPE.name = "Cook Antlion Chunks"
RECIPE.description = "Prepare a bunch of Antlion meat into a decent meal with some cooking materials and clean water."
RECIPE.model = "models/shampur.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["antlionhead"] = 1,
	["waterclean"] = 1,
}



RECIPE.tools = {
	"ironpot",
}

RECIPE.results = {
	["roastedantlion"] = 1

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