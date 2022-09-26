RECIPE.name = "Painkillers"
RECIPE.description = "Pick out some painkillers from a few piles of medication that your knowledge tells you won't kill you."
RECIPE.model = "models/illusion/eftcontainers/ibuprofen.mdl"
RECIPE.requirements = {
	["pileofmedicine"] = 3,
}
RECIPE.results = {
	["painkillers"] = 1

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