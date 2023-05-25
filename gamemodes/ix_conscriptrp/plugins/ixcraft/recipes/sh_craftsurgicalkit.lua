RECIPE.name = "Surgical Kit"
RECIPE.description = "Combine various medical equipments to create a kit fit for performing field-surgery."
RECIPE.model = "models/carlsmei/escapefromtarkov/medical/core_medical_surgical_kit.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Work Bench"
RECIPE.requirements = {
	["medicaltape"] = 1,
	["waterclean"] = 2,
	["vodka"] = 1,
	["traumagauze"] = 1,
	["pileofmedicine"] = 1,
	["groomingtool"] = 1,


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