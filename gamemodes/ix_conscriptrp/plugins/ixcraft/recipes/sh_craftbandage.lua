RECIPE.name = "Bandage with Vodka"
RECIPE.description = "Sterilize some cloth with high proof Vodka for a basic bandage."
RECIPE.model = "models/illusion/eftcontainers/bandage.mdl"
RECIPE.requirements = {
	["vodka"] = 1,
	["fabricpatch"] = 1,
}
RECIPE.results = {
	["bandage"] = 1

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