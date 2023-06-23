RECIPE.name = "Blowtorch Fuel"
RECIPE.description = "Play with flammable substances until it creates an even more flammable substance."
RECIPE.model = "models/mosi/fallout4/props/junk/nitrogendispenser.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["propanetank"] = 1,
	["recycledoil"] = 2,
}
RECIPE.results = {
	["blowtorchfuel"] = 1,

}



RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)