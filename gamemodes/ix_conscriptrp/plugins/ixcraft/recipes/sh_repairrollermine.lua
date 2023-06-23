RECIPE.name = "Repair Rollermine"
RECIPE.description = "Restore a broken Rollermine to working order with spare parts."
RECIPE.model = "models/roller.mdl"
RECIPE.category = "Repair"
RECIPE.station = "Technology Bench"
RECIPE.requirements = {
	["rollerminebroken"] = 1,
	["combinebattery"] = 1,
	["wirebundle"] = 2,
	["psu"] = 1,
	["nutsbolts"] = 2,
	["consumerelectronics"] = 2,
}

RECIPE.tools = {
	"screwdriver",
	"pliers",
	"hammer",
	"wrench",
}
RECIPE.results = {
	["rollermine"] = 1,



}
RECIPE.flag = "6" 

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_techbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a Tech Bench."
end)