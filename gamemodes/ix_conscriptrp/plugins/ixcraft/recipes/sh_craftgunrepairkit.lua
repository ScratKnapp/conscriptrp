RECIPE.name = "Weapon Repair Kit"
RECIPE.description = "Throw together some diluted oil and water with old weapon parts to make a Weapon Cleaning and Repair kit."
RECIPE.model = "models/illusion/eftcontainers/laptop.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["waterclean"] = 4,
	["recycledoil"] = 3,
	["clothscrap"] = 3,
["nutsbolts"] = 4,
["ducttape"] = 2,
["weaponartswarsaw"] = 2,
}

RECIPE.results = {
	["guncleaningkitadvanced"] = 1,
}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)