RECIPE.name = "Tech Nerd Test"
RECIPE.description = "Tech Nerds Only"
RECIPE.model = "models/props_junk/PopCan01a.mdl"
RECIPE.requirements = {
	["conscriptuniform"] = 1,
}
RECIPE.results = {
	["conscriptuniformfemale"] = 1

}
RECIPE.flag = "6" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end