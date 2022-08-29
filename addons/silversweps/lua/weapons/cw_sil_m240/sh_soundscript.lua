
local function shell(wep)
	if SERVER then return end

	wep:shellEvent()
end

local function link(wep)
	if SERVER then return end

	wep:shellEvent2()
end

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
		{time = 68/30, sound = "CW_KK_INS2_M240_BOLTBACK"},
		{time = 80/30, sound = "CW_KK_INS2_M240_BOLTRELEASE"},
		{time = 90/30, sound = "CW_KK_INS2_M240_SHOULDER"},
	},

	base_draw = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 15/30, sound = "CW_KK_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 38/30, sound = "CW_KK_INS2_UNIVERSAL_LEFTCRAWL"},
	},

	base_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	base_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	base_fire_3 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	base_dryfire = {
		{time = 0, sound = "CW_KK_INS2_M240_EMPTY"},
	},

	base_reload = {
		{time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
		{time = 35/31.5, sound = "CW_KK_INS2_M240_COVEROPEN"},
		{time = 77/31.5, sound = "CW_KK_INS2_M240_MAGOUTFULL"},
		{time = 90/31.5, sound = "CW_KK_INS2_M240_FETCHMAG"},
		{time = 100/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 129/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT1"},
		{time = 144/31.5, sound = "CW_KK_INS2_M240_MAGIN"},
		{time = 163/31.5, sound = "CW_KK_INS2_M240_BULLETJINGLE"},
		{time = 182/31.5, sound = "CW_KK_INS2_M240_BELTALIGN"},
		{time = 208/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 224/31.5, sound = "CW_KK_INS2_M240_COVERCLOSE"},
		{time = 263/31.5, sound = "CW_KK_INS2_M240_SHOULDER"},
		// reload at 186/31.5
	},

	base_reload_empty = {
		{time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
		{time = 26/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 38/31.5, sound = "CW_KK_INS2_M240_COVEROPEN"},
		{time = 75/31.5, sound = "CW_KK_INS2_M240_MAGOUT"},
		{time = 125/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 126/31.5, sound = "CW_KK_INS2_M240_FETCHMAG"},
		{time = 131/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 148/31.5, sound = "CW_KK_INS2_M240_MAGIN"},
		{time = 168/31.5, sound = "CW_KK_INS2_M240_BULLETJINGLE"},
		{time = 174/31.5, sound = "CW_KK_INS2_M240_BELTALIGN"},
		{time = 178/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT1"},
		{time = 215/31.5, sound = "CW_KK_INS2_M240_COVERCLOSE"},
		{time = 285/31.5, sound = "CW_KK_INS2_M240_BOLTBACK"},
		{time = 290/31.5, sound = "CW_KK_INS2_M240_BOLTRELEASE"},
		{time = 324/31.5, sound = "CW_KK_INS2_M240_SHOULDER"},
		// reload at 150/31.5
	},

	base_reload_half = {
		{time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
		{time = 35/31.5, sound = "CW_KK_INS2_M240_COVEROPEN"},
		{time = 79/31.5, sound = "CW_KK_INS2_M240_MAGOUT"},
		{time = 90/31.5, sound = "CW_KK_INS2_M240_FETCHMAG"},
		{time = 100/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 131/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT1"},
		{time = 156/31.5, sound = "CW_KK_INS2_M240_MAGIN"},
		{time = 175/31.5, sound = "CW_KK_INS2_M240_BULLETJINGLE"},
		{time = 194/31.5, sound = "CW_KK_INS2_M240_BELTALIGN"},
		{time = 220/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 236/31.5, sound = "CW_KK_INS2_M240_COVERCLOSE"},
		{time = 263/31.5, sound = "CW_KK_INS2_M240_SHOULDER"},
		// reload at 186/31.5
	},

	iron_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_fire_3 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_fire_4 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	iron_dryfire = {
		{time = 0, sound = "CW_KK_INS2_M240_EMPTY"},
	},

	deployed_in = {
		{time = 17/38, sound = "CW_KK_INS2_M240_BIPODDEPLOY"},
	},

	deployed_out = {
		{time = 26/38, sound = "CW_KK_INS2_M240_BIPODRETRACT"},
	},

	deployed_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_dryfire = {
		{time = 0, sound = "CW_KK_INS2_M240_EMPTY"},
	},

	deployed_reload = {
		{time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
		{time = 35/31.5, sound = "CW_KK_INS2_M240_COVEROPEN"},
		{time = 75/31.5, sound = "CW_KK_INS2_M240_MAGOUTFULL"},
		{time = 90/31.5, sound = "CW_KK_INS2_M240_FETCHMAG"},
		{time = 100/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 129/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT1"},
		{time = 146/31.5, sound = "CW_KK_INS2_M240_MAGIN"},
		{time = 167/31.5, sound = "CW_KK_INS2_M240_BULLETJINGLE"},
		{time = 184/31.5, sound = "CW_KK_INS2_M240_BELTALIGN"},
		{time = 208/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 224/31.5, sound = "CW_KK_INS2_M240_COVERCLOSE"},
		{time = 263/31.5, sound = "CW_KK_INS2_M240_SHOULDER"},
		// reload at 186/31.5
	},

	deployed_reload_half = {
		{time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
		{time = 35/31.5, sound = "CW_KK_INS2_M240_COVEROPEN"},
		{time = 75/31.5, sound = "CW_KK_INS2_M240_MAGOUTFULL"},
		{time = 90/31.5, sound = "CW_KK_INS2_M240_FETCHMAG"},
		{time = 100/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 129/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT1"},
		{time = 146/31.5, sound = "CW_KK_INS2_M240_MAGIN"},
		{time = 167/31.5, sound = "CW_KK_INS2_M240_BULLETJINGLE"},
		{time = 184/31.5, sound = "CW_KK_INS2_M240_BELTALIGN"},
		{time = 208/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 224/31.5, sound = "CW_KK_INS2_M240_COVERCLOSE"},
		{time = 263/31.5, sound = "CW_KK_INS2_M240_SHOULDER"},
		// reload at 186/31.5
	},
	
	deployed_reload_empty = {
		{time = 0, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToClip},
		{time = 2/31.5, sound = "CW_KK_INS2_UNIVERSAL_LEANIN"},
		{time = 26/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 38/31.5, sound = "CW_KK_INS2_M240_COVEROPEN"},
		{time = 75/31.5, sound = "CW_KK_INS2_M240_MAGOUT"},
		{time = 125/31.5, sound = "", callback = CustomizableWeaponry_KK.ins2.bulletBgs.beltToReserve},
		{time = 126/31.5, sound = "CW_KK_INS2_M240_FETCHMAG"},
		{time = 131/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT2"},
		{time = 148/31.5, sound = "CW_KK_INS2_M240_MAGIN"},
		{time = 168/31.5, sound = "CW_KK_INS2_M240_BULLETJINGLE"},
		{time = 174/31.5, sound = "CW_KK_INS2_M240_BELTALIGN"},
		{time = 178/31.5, sound = "CW_KK_INS2_M240_ARMMOVEMENT1"},
		{time = 210/31.5, sound = "CW_KK_INS2_M240_COVERCLOSE"},
		{time = 275/31.5, sound = "CW_KK_INS2_M240_BOLTBACK"},
		{time = 280/31.5, sound = "CW_KK_INS2_M240_BOLTRELEASE"},
		// reload at 150/31.5
	},

	deployed_iron_idle = {
		{time = 0, sound = "Universal.IronIdle"},
	},

	deployed_iron_fire_1 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_iron_fire_2 = {
		{time = 0.02, sound = "", callback = link},
		{time = 0.05, sound = "", callback = shell},
	},

	deployed_iron_dryfire = {
		{time = 0, sound = "CW_KK_INS2_M240_EMPTY"},
	},
}
