RECIPE.name = "Large Surgical Kit"
RECIPE.description = "Upgrade a Surgical kit with various supplies to make it last longer."
RECIPE.model = "models/carlsmei/escapefromtarkov/medical/survival_first_aid_rollup_kit.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Work Bench"
RECIPE.requirements = {
	["medicaltape"] = 2,
	["waterclean"] = 1,
	["traumagauze"] = 1,
	["surgicalkit"] = 1,


}
RECIPE.results = {
	["surgicalkit"] = 1,

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Work Bench."
end)