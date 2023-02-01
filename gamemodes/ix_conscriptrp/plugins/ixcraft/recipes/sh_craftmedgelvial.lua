RECIPE.name = "Med-Gel Vial"
RECIPE.description = "Blend together some grub nuggets, medication, and clean water for a rough approximation of the refining process for a vial of med-gel."
RECIPE.model = "models/ez2models/items/arbeit/healthvial.mdl"
RECIPE.requirements = {
	["grubnugget"] = 4,
	["watercan"] = 2,
	["pileofmedicine"] = 1,
}
RECIPE.results = {
	["medkitsmall"] = 1,

}
RECIPE.flag = "7" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)