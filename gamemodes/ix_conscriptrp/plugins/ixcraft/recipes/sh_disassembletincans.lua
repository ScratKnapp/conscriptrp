RECIPE.name = "Cut up Cans"
RECIPE.description = "Utilize a pair of pliers and tear up some tin cans."
RECIPE.model = "models/props_junk/garbage_metalcan002a.mdl"
RECIPE.station = "Work Bench"
RECIPE.requirements = {
	["tincan"] = 3,
}

RECIPE.tools = {
"pliers",
}

RECIPE.results = {
	["scrapmetal"] = 1,

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_techbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Work Bench."
end)