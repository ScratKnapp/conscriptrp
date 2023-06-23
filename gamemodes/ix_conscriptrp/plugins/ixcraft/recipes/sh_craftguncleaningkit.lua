RECIPE.name = "Gun Cleaning Kit"
RECIPE.description = "Dilute oil with water, utilize some scrap nuts with cloth rags, and make an effective weapon-cleaning Kit."
RECIPE.model = "models/illusion/eftcontainers/weprepair.mdl"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["waterclean"] = 3,
	["recycledoil"] = 2,
	["clothscrap"] = 3,
["nutsbolts"] = 2,
["ducttape"] = 1,
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