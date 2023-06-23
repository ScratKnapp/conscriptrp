RECIPE.name = "Cook Antlion Potroast"
RECIPE.description = "Slow cook some Antlion meat with other tasy ingredients into a much more pleasing meal."
RECIPE.model = "models/mosi/fnv/props/food/mirelurkspecial.mdl"
RECIPE.category = "Cooking"
RECIPE.station = "Campfire or Stove"
RECIPE.requirements = {
	["rawantlionbits"] = 3,
	["waterclean"] = 1,
	["bootlegbeer"] = 1,
["potato"] = 2,
["wildcarrot"] = 2,
}

RECIPE.tools = {
	"ironpot",
}

RECIPE.results = {
	["antlionroast"] = 1

}


RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_campfire")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	for _, v in pairs(ents.FindByClass("ix_station_stove")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a campfire or stove."
end)