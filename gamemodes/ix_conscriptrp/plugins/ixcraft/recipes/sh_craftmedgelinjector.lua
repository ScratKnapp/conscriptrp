RECIPE.name = "Med-Gel Injector Pen"
RECIPE.description = "Utilizing a written formula, carefully combine and extract elements from different chemicals to almost perfectly recreate the Union's regenerative biogel substance, and stick it in an auto-injector."
RECIPE.model = "models/ccr/props/syringe.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Chemistry Bench"
RECIPE.requirements = {
	["grubnugget"] = 2,
	["syringe"] = 1,
	["waterclean"] = 2,
	["laundrysauce"] = 1,
	["vodka"] = 1,
}
RECIPE.results = {
	["medgelautoinjector"] = 1,

}
RECIPE.flag = "7" 

RECIPE.blueprint = "blueprintmedgelinjector"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chembench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Chemistry Bench."
end)