RECIPE.name = "Flashlight"
RECIPE.description = "Hammer and bend a piece of metal into a casing for a basic switch circuit. Make a neat little torch!"
RECIPE.model = "models/raviool/flashlight.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["reclaimedmetal"] = 1,
	["aabattery"] = 1,
	["wirebundle"] = 1,
	["lightbulb"] = 1,
}

RECIPE.tools = {
	"hammer"
}
RECIPE.results = {
	["flashlight"] = 1,



}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)