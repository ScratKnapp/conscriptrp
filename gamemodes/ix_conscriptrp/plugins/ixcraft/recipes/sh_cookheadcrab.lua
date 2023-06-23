RECIPE.name = "Cook Headcrab"
RECIPE.description = "Debeak and debone a disgusting parasite and pan-fry it into somewhat of an edible meal."
RECIPE.model = "models/arachnit/steamvr/hla/headcrab_dinner/headcrab_dinner.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["rawheadcrab"] = 1,
}

RECIPE.tools = {
	"ironpan",
}

RECIPE.results = {
	["cookedheadcrab"] = 1

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