RECIPE.name = "IFAK"
RECIPE.description = "Assemble an Individual First Aid Kit from some higher grade first aid items."
RECIPE.model = "models/illusion/eftcontainers/ifak.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["pileofmedicine"] = 1,
	["armybandage"] = 1,
	["syringe"] = 1,
}
RECIPE.results = {
	["medkitarmy"] = 1

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