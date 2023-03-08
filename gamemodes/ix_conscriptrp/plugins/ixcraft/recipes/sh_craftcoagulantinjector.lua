RECIPE.name = "Coagulant Auto-Injector"
RECIPE.description = "Dilute Hemostatic Coagulant powder using a can of Breen's water. Bring to a boil and follow the formula closely to create a proper coagulative concoction."
RECIPE.model = "models/carlsmei/escapefromtarkov/medical/propital.mdl"
RECIPE.category = "Medical"
RECIPE.station = "Chemistry Bench"
RECIPE.requirements = {
	["hemostaticagent"] = 2,
	["syringe"] = 1,
	["waterclean"] = 1,
}
RECIPE.results = {
	["coagulant"] = 1,

}
RECIPE.flag = "7" 

RECIPE.blueprint = "blueprintcoagulant"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chembench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Chemistry Bench."
end)