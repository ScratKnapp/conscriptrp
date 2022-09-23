RECIPE.name = "Field Medic Test"
RECIPE.description = "Field Medics Only"
RECIPE.model = "models/props_junk/PopCan01a.mdl"
RECIPE.requirements = {
	["conscriptuniform"] = 1,
}
RECIPE.results = {
	["conscriptuniformfemale"] = 1

}
RECIPE.flag = "7" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)