RECIPE.name = "Med-Gel Vial"
RECIPE.description = "Utilizing the written formula, carefully combine and extract elements from different chemicals to almost perfectly recreate the Union's regenerative biogel substance, and stick it in a Vial."
RECIPE.model = "models/healthvial.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Chemistry Bench"
RECIPE.requirements = {
	["grubnugget"] = 4,
	["waterclean"] = 4,
	["vodka"] = 2,
	["grubjarempty"] = 1,
	["laundrysauce"] = 2,

}
RECIPE.results = {
	["medgelvial"] = 1,

}

RECIPE.blueprint = "blueprintmedgelvial"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chembench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Chemistry Bench."
end)