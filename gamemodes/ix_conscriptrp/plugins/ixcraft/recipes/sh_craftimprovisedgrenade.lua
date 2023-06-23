RECIPE.name = "Improvised Grenade"
RECIPE.description = "Fill a metal shell with gunpowder and shrapnel, as well as match heads, to create a self-igniting weak but useful explosion."
RECIPE.model = "models/silver/outbreak/weapons/w_vog25.mdl"
RECIPE.category = "Explosives"
RECIPE.station = "Workbench"
RECIPE.requirements = {
	["scrapmetal"] = 2,
	["reclaimedmetal"] = 1,
	["matchbook"] = 1,
	["reloadingpowder"] = 1,
}
RECIPE.results = {
	["improvisedgrenade"] = 1

}
RECIPE.flag = "8" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chembench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Workbench."
end)