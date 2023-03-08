RECIPE.name = "Fry CWU Canned Meat"
RECIPE.description = "Fry some canned meat in a pan to make a better meal."
RECIPE.model = "models/banka.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["cwucannedmeat"] = 1,
}


RECIPE.tools = {
	"ironpan",
}

RECIPE.results = {
	["cwucannedmeatfried"] = 1
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