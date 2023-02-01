RECIPE.name = "Bandage with Whiskey"
RECIPE.description = "Sterilize some cloth with high proof Whiskey for a basic bandage."
RECIPE.model = "models/illusion/eftcontainers/bandage.mdl"
RECIPE.requirements = {
	["whiskey"] = 1,
	["fabricpatch"] = 1,
}
RECIPE.results = {
	["bandage"] = 1

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