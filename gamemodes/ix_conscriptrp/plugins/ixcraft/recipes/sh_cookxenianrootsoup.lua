RECIPE.name = "Cook Xenian Root Soup"
RECIPE.description = "Cook, boil, and simmer a variety of Outland gathered ingredients into a delicious, warm, filling meal."
RECIPE.model = "models/mosi/fnv/props/food/ratstew.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["xenianrootvegetable"] = 1,
	["wildmushroom"] = 1,
	["wildcob"] = 1,
	["waterclean"] = 2,
}

RECIPE.tools = {
	"ironpot",
}

RECIPE.results = {
	["xenianrootsoup"] = 1

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