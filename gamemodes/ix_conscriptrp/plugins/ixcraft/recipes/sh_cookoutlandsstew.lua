RECIPE.name = "Outlander's Stew"
RECIPE.description = "Cook, boil, and simmer a variety of Outland gathered ingredients into a delicious, warm, filling meal."
RECIPE.model = "models/arskvshborsch/borsch.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["cookedhoundeyehaunch"] = 1,
	["wildcarrot"] = 1,
	["wildcob"] = 1,
	["bootlegbeer"] = 1,
	["waterclean"] = 2,
}

RECIPE.tools = {
	"ironpot",
}

RECIPE.results = {
	["outlandersstew"] = 1

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