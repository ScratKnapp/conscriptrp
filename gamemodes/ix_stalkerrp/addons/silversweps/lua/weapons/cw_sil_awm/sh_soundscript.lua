
local function shell(wep)
	if SERVER then return end

	wep:shellEvent()
end

SWEP.Sounds = {
	base_draw = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_HOLSTER"},
	},

	base_ready = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
		{time = 12/25, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 17/25, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 24/25, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 30/25, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
		{time = 56/25, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
	},

	base_crawl = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_LEFTCRAWL"},
		{time = 22/30, sound = "CW_KK_INS2_UNIVERSAL_RIGHTCRAWL"},
	},

	base_fire_end = {
		// shell @ 15 ""},
		{time = 8/30, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 14/30, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 15/30, sound = "", callback = shell},
		{time = 23/30, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 28/30, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
	},

	base_dryfire = {
		{time = 0, sound = "CW_KK_INS2_MOSIN_EMPTY"},
	},

	base_reload = {
		{time = 16/30, sound = "CW_KK_INS2_NEWSR_MAGRELEASE"},
		{time = 22/30, sound = "CW_KK_INS2_NEWSR_MAGOUT"},
		{time = 71/30, sound = "CW_KK_INS2_NEWSR_MAGIN"},
	},
	
	base_reloadempty = {
		{time = 14/25, sound = "CW_KK_INS2_NEWSR_MAGRELEASE"},
		{time = 24/25, sound = "CW_KK_INS2_NEWSR_MAGOUT"},
		{time = 60/25, sound = "CW_KK_INS2_NEWSR_MAGIN"},
		{time = 82/25, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 88/25, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 94/25, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 100/25, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
	},


	iron_fire_end = {
		// shell @ 17 ""},
		{time = 8/30, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 14/30, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 15/30, sound = "", callback = shell},
		{time = 23/30, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 28/30, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
	},

	iron_dryfire = {
		{time = 0, sound = "CW_KK_INS2_MOSIN_EMPTY"},
	},

	deployed_in = {
		{time = 12/20, sound = "CW_KK_INS2_UNIVERSAL_BIPOD_DEPLOYSTART"},
		{time = 16/20, sound = "CW_KK_INS2_UNIVERSAL_BIPOD_DEPLOYEND"},
	},

	deployed_out = {
		{time = 6/20, sound = "CW_KK_INS2_UNIVERSAL_BIPOD_RETRACT"},
	},

	deployed_fire_end = {
		// shell @ 15 ""},
		{time = 8/30, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 13/30, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 21/30, sound = "", callback = shell},
		{time = 24/30, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 28/30, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
	},

	deployed_dryfire = {
		{time = 0, sound = "CW_KK_INS2_MOSIN_EMPTY"},
	},

	deployed_reload = {
		{time = 16/30, sound = "CW_KK_INS2_NEWSR_MAGRELEASE"},
		{time = 22/30, sound = "CW_KK_INS2_NEWSR_MAGOUT"},
		{time = 71/30, sound = "CW_KK_INS2_NEWSR_MAGIN"},
	},

	deployed_reloadempty = {
		{time = 14/25, sound = "CW_KK_INS2_NEWSR_MAGRELEASE"},
		{time = 24/25, sound = "CW_KK_INS2_NEWSR_MAGOUT"},
		{time = 60/25, sound = "CW_KK_INS2_NEWSR_MAGIN"},
		{time = 82/25, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 88/25, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 94/25, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 100/25, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
	},

	iron_fire_deployed_end = {
		// shell @ 15 ""},
		{time = 8/34, sound = "CW_KK_INS2_NEWSR_BOLTRELEASE"},
		{time = 13/34, sound = "CW_KK_INS2_NEWSR_BOLTBACK"},
		{time = 19/34, sound = "", callback = shell},
		{time = 24/34, sound = "CW_KK_INS2_NEWSR_BOLTFORWARD"},
		{time = 28/34, sound = "CW_KK_INS2_NEWSR_BOLTLATCH"},
	},

	iron_dryfire_deployed = {
		{time = 0, sound = "CW_KK_INS2_MOSIN_EMPTY"},
	},
}
