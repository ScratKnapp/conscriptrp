RECIPE.name = "Radio"
RECIPE.description = "Solder together a transmitter circuit following closely defined labels even a moron could follow. Build a simple, two way transmission device. A handheld radio."
RECIPE.model = "models/skilllem_radio.mdl"
RECIPE.station = "Tech Bench"
RECIPE.requirements = {
	["wirebundle"] = 2,
	["capacitors"] = 2,
	["consumerelectronics"] = 2,
	["aabattery"] = 2,
	["reclaimedmetal"] = 1,
	["transmittercircuit"] = 1,
}
RECIPE.results = {
	["radio"] = 1,

}

RECIPE.blueprint = "blueprintradio"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_techbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Tech Bench."
end)