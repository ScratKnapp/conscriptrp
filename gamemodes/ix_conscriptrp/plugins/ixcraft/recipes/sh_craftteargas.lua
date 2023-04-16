RECIPE.name = "Tear Gas Canister"
RECIPE.description = "Using powdered Bleach, Industrial Grade Ammonia, and plain old soap as a binding agent, create and dilute a flammable substance capable of creating toxic gas when ignited."
RECIPE.model = "models/props_junk/garbage_metalcan001a.mdl"
RECIPE.category = "Explosives"
RECIPE.station = "Chemistry Bench"
RECIPE.requirements = {
	["matchbook"] = 1,
	["watercan"] = 2,
	["bleachingpowder"] = 1,
	["industrialchemicals"] = 1,
}
RECIPE.results = {
	["teargas"] = 1

}
RECIPE.flag = "8" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chembench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Chemistry Bench."
end)