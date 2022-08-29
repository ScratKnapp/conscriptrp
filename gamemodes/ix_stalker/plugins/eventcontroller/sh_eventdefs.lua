/*
	PLUGIN.mutanteventdefs["Zombie1"] = {
		entities = {
			{"nb_zombie", 6}, -- {ent_name, amount}
			{"nb_dog", 2},
		},
		items = {
			{"mp5", {["durability"] = 15}}, -- {nut_item uniqueID, data}
			{"mp5", {["durability"] = 60}},
		},
		props = {
			{"models/props_c17/oildrum001.mdl", 5}, -- {propmodel, amount}
			{"models/props_c17/oildrum002.mdl", 5},
		},
		ragdolls = {
			{"models/kleiner.mdl", 2, 1, "000000000"}, -- {ragdollmodel, amount, skingroup, bodygroups}
			{"models/kleiner.mdl", 3, 2, "000000000"},
		},
		loot = {
			{"kit_event", 1}, 
		},
		pdabroadcast = "Zombies have been spotted at %s, proceed with caution.",
		difficulty = {1},
		lootChance = 10, --percentage
	}
*/
--entities: spawns <amount> entities of the type listed
--items: spawns the listed items with the given data
--props: spawns <amount> props with the model listed
--ragdolls: spawns <amount> ragdolls and sets skin and bodygroup
--loot: like items, except each item has a chance to spawn


--[[-------------------------------------------------------------------------
dogs
---------------------------------------------------------------------------]]
PLUGIN.mutanteventdefs["Dog1"] = {
	entities = {
		{"npc_mutant_dog", 3},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "A small pack of dogs have been spotted %s.",
	difficulty = {0},
	lootChance = 10,
}

PLUGIN.mutanteventdefs["Dog2"] = {
	entities = {
		{"nb_dog", 3},
		{"nb_pseudodog", 1},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "A small pack of dogs have been spotted %s.",
	difficulty = {0},
	lootChance = 15,
}

PLUGIN.mutanteventdefs["Dog3"] = {
	entities = {
		{"nb_dog", 4},
		{"nb_pseudodog", 1},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "A pack of dogs have been seen wandering %s aimlessly, be alert, stalker.",
	difficulty = {0,1},
	lootChance = 15,
}

PLUGIN.mutanteventdefs["Dog4"] = {
	entities = {
		{"nb_dog", 4},
		{"nb_pseudodog", 2},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "A pack of dogs have been seen wandering %s aimlessly, be alert, stalker.",
	difficulty = {0,1},
	lootChance = 20,
}

PLUGIN.mutanteventdefs["Dog5"] = {
	entities = {
		{"nb_dog", 5},
		{"nb_pseudodog", 2},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "There are reports of dogs attacking stalkers %s, be careful, stalker.",
	difficulty = {1},
	lootChance = 20,
}

PLUGIN.mutanteventdefs["Dog6"] = {
	entities = {
		{"nb_dog", 5},
		{"nb_pseudodog", 2},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "There are reports of dogs attacking stalkers %s, be careful, stalker.",
	difficulty = {1},
	lootChance = 25,
}

PLUGIN.mutanteventdefs["Dog6"] = {
	entities = {
		{"nb_dog", 6},
		{"nb_pseudodog", 2},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "A huge pack of dogs are occupying %s! Stay away from there, stalker.",
	difficulty = {1},
	lootChance = 25,
}

PLUGIN.mutanteventdefs["Dog7"] = {
	entities = {
		{"nb_dog", 6},
		{"nb_pseudodog", 2},
	},
	loot = {
		{"kitevent_dog", 1}, 
	},
	pdabroadcast = "A huge pack of dogs are occupying %s! Stay away from there, stalker.",
	difficulty = {1},
	lootChance = 30,
}

--[[-------------------------------------------------------------------------
rodents
---------------------------------------------------------------------------]]
PLUGIN.mutanteventdefs["rodent1"] = {
	entities = {
		{"nb_rat", 4},
	},
	loot = {
		{"kitevent_rodent", 1}, 
	},
	pdabroadcast = "There is a bit of a mice problem %s, exterminate them stalker.",
	difficulty = {0, 1, 10},
	lootChance = 10,
}

PLUGIN.mutanteventdefs["rodent2"] = {
	entities = {
		{"nb_rat", 5},
	},
	loot = {
		{"kitevent_rodent", 1}, 
	},
	pdabroadcast = "There is a bit of a mice problem %s, exterminate them stalker.",
	difficulty = {1, 10},
	lootChance = 10,
}

PLUGIN.mutanteventdefs["rodent3"] = {
	entities = {
		{"nb_rat", 6},
	},
	loot = {
		{"kitevent_rodent", 1}, 
	},
	pdabroadcast = "Rodents are being a menace %s, deal with them with caution, stalker.",
	difficulty = {1, 10},
	lootChance = 15,
}

PLUGIN.mutanteventdefs["rodent4"] = {
	entities = {
		{"nb_rat", 7},
	},
	loot = {
		{"kitevent_rodent", 1}, 
	},
	pdabroadcast = "Rodents are being a menace %s, deal with them with caution, stalker.",
	difficulty = {1, 10},
	lootChance = 15,
}

PLUGIN.mutanteventdefs["rodent5"] = {
	entities = {
		{"nb_rat", 8},
	},
	loot = {
		{"kitevent_rodent", 1}, 
	},
	pdabroadcast = "Rodents are overrunning %s, proceed with caution, stalker.",
	difficulty = {1, 10},
	lootChance = 20,
}

PLUGIN.mutanteventdefs["rodent6"] = {
	entities = {
		{"nb_rat", 9},
	},
	loot = {
		{"kitevent_rodent", 1}, 
	},
	pdabroadcast = "It seems %s is completely infested with swarms of rodents! Stay away, stalker!",
	difficulty = {1, 10},
	lootChance = 25,
}
--[[-------------------------------------------------------------------------
boars
---------------------------------------------------------------------------]]


PLUGIN.mutanteventdefs["boar1"] = {
	entities = {
		{"nb_boar", 3},
	},
	loot = {
		{"kitevent_boar", 1}, 
	},
	pdabroadcast = "A pair of boars are spotted %s, any stalkers up for boar stew should deal with them.",
	difficulty = {0,1,2},
	lootChance = 10,
}

PLUGIN.mutanteventdefs["boar2"] = {
	entities = {
		{"nb_boar", 4},
	},
	loot = {
		{"kitevent_boar", 1}, 
	},
	pdabroadcast = "Wild boars have been disrupting stalker activity %s, try to wipe them out, stalker.",
	difficulty = {1,2},
	lootChance = 15,
}

PLUGIN.mutanteventdefs["boar3"] = {
	entities = {
		{"nb_boar", 5},
	},
	loot = {
		{"kitevent_boar", 1}, 
	},
	pdabroadcast = "A pack of boars are running rampant %s, proceed with caution, stalker.",
	difficulty = {1,2},
	lootChance = 20,
}

PLUGIN.mutanteventdefs["boar4"] = {
	entities = {
		{"nb_boar", 6},
	},
	loot = {
		{"kitevent_boar", 1}, 
	},
	pdabroadcast = "A group of boars are frenzied and are killing everyone %s! Stay clear of the stampede, stalker.",
	difficulty = {1,2},
	lootChance = 25,
}

--[[-------------------------------------------------------------------------
cats
---------------------------------------------------------------------------]]

PLUGIN.mutanteventdefs["cat1"] = {
	entities = {
		{"nb_cat", 3} 
	},
	loot = {
		{"kitevent_cat", 1},
	},
	pdabroadcast = "A few cats have been spotted %s just now. Be careful, stalker.",
	difficulty = {1, 2},
	lootChance = 10, 
}

PLUGIN.mutanteventdefs["cat2"] = {
	entities = {
		{"nb_cat", 4} 
	},
	ragdolls = {
		{"models/crow.mdl", 2, 0, "000000000"},
	},
	loot = {
		{"kitevent_cat", 1},
	},
	pdabroadcast = "Some cats have been spotted %s just now, chasing some birds. Take care, stalker.",
	difficulty = {1, 2},
	lootChance = 10, 
}

PLUGIN.mutanteventdefs["cat3"] = {
	entities = {
		{"nb_cat", 5} 
	},
	ragdolls = {
		{"models/crow.mdl", 2, 0, "000000000"},
	},
	loot = {
		{"kitevent_cat", 1},
	},
	pdabroadcast = "A couple of cats have been spotted %s just now, playing around. Don't mistake them for pettable, stalker.",
	difficulty = {1, 2},
	lootChance = 15, 
}
PLUGIN.mutanteventdefs["cat4"] = {
	entities = {
		{"nb_cat", 5} 
	},
	ragdolls = {
		{"models/crow.mdl", 2, 0, "000000000"},
	},
	loot = {
		{"kitevent_cat", 1},
	},
	pdabroadcast = "A bunch of cats have been spotted %s just now, playing around. Don't mistake them for pettable, stalker.",
	difficulty = {1, 2},
	lootChance = 15, 
}
PLUGIN.mutanteventdefs["cat5"] = {
	entities = {
		{"nb_cat", 5} 
	},
	ragdolls = {
		{"models/crow.mdl", 2, 0, "000000000"},
	},
	loot = {
		{"kitevent_cat", 1},
	},
	pdabroadcast = "A bunch of cats have been spotted %s just now, playing around. Don't mistake them for pettable, stalker.",
	difficulty = {1, 2},
	lootChance = 15, 
}
PLUGIN.mutanteventdefs["cat6"] = {
	entities = {
		{"nb_cat", 5} 
	},
	ragdolls = {
		{"models/crow.mdl", 2, 0, "000000000"},
	},
	loot = {
		{"kitevent_cat", 1},
	},
	pdabroadcast = "A bunch of cats have been spotted %s just now, playing around. Don't mistake them for pettable, stalker.",
	difficulty = {1, 2},
	lootChance = 15, 
}

--[[-------------------------------------------------------------------------
Fleshes
---------------------------------------------------------------------------]]
PLUGIN.mutanteventdefs["flesh2"] = {
	entities = {
		{"nb_flesh", 3}, 
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "A few flesh were spotted %s, up for an easy hunt, stalker?.",
	difficulty = {0, 1},
	lootChance = 10, 
}

PLUGIN.mutanteventdefs["flesh2"] = {
	entities = {
		{"nb_flesh", 4}, 
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "A few flesh were spotted %s, up for an easy hunt, stalker?.",
	difficulty = {0, 1},
	lootChance = 10, 
}

PLUGIN.mutanteventdefs["flesh3"] = {
	entities = {
		{"nb_flesh", 5}, 
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "A small pack of flesh are wandering %s, we could always use more food, stalker.",
	difficulty = {0, 1, 2},
	lootChance = 15, 
}

PLUGIN.mutanteventdefs["flesh4"] = {
	entities = {
		{"nb_flesh", 6}, 
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "A small pack of flesh are wandering %s, we could always use more food, stalker.",
	difficulty = {0, 1, 2},
	lootChance = 15, 
}

PLUGIN.mutanteventdefs["flesh5"] = {
	entities = {
		{"nb_flesh", 7},
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "There has been sightings of aggressive fleshes %s, somebody put them down.",
	difficulty = {0, 1, 2},
	lootChance = 20, 
}

PLUGIN.mutanteventdefs["flesh6"] = {
	entities = {
		{"nb_flesh", 7}, 
		{"nb_boar", 1},
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "There has been sightings of aggressive fleshes %s, somebody put them down.",
	difficulty = {1,2},
	lootChance = 20, 
}

PLUGIN.mutanteventdefs["flesh7"] = {
	entities = {
		{"nb_flesh", 7}, 
		{"nb_boar", 1},
	},
	loot = {
		{"kitevent_flesh", 1},
	},
	pdabroadcast = "A big pack of fleshes are being quite violent %s, be on the lookout, stalker.",
	difficulty = {1,2},
	lootChance = 25, 
}

--[[-------------------------------------------------------------------------
Zombies
---------------------------------------------------------------------------]]
PLUGIN.mutanteventdefs["zombies1"] = {
	entities = {
		{"nb_zombie", 4}, 
	},
	loot = {
		{"kitevent_zombie", 1},
	},
	pdabroadcast = "There has been sightings of a few zombies %s, put them out of their misery, stalker.",
	difficulty = {10, 0, 1},
	lootChance = 10, 
}

PLUGIN.mutanteventdefs["zombies2"] = {
	entities = {
		{"nb_zombie", 5}, 
	},
	loot = {
		{"kitevent_zombie", 1},
	},
	pdabroadcast = "A small group of zombies have appeared %s, watch yourself, stalker.",
	difficulty = {10, 1},
	lootChance = 15, 
}

PLUGIN.mutanteventdefs["zombies3"] = {
	entities = {
		{"nb_zombie", 6}, 
	},
	loot = {
		{"kitevent_zombie", 1},
	},
	pdabroadcast = "A small group of zombies have appeared %s, watch yourself, stalker.",
	difficulty = {10, 1},
	lootChance = 15, 
}

PLUGIN.mutanteventdefs["zombies4"] = {
	entities = {
		{"nb_zombie", 7}, 
	},
	loot = {
		{"kitevent_zombie", 1},
	},
	pdabroadcast = "There is a group of zombies %s, and has occupied it. Tread with caution, stalker.",
	difficulty = {10, 1, 2},
	lootChance = 20, 
}

PLUGIN.mutanteventdefs["zombies5"] = {
	entities = {
		{"nb_zombie", 7}, 
	},
	loot = {
		{"kitevent_zombie", 1},
	},
	pdabroadcast = "There is a group of zombies %s, and has occupied it. Tread with caution, stalker.",
	difficulty = {10, 1, 2},
	lootChance = 20, 
}

PLUGIN.mutanteventdefs["zombies6"] = {
	entities = {
		{"nb_zombie", 8}, 
	},
	loot = {
		{"kitevent_zombie", 1},
	},
	pdabroadcast = "A horde of zombies are overrunning %s! Stay away, stalker.",
	difficulty = {10, 1, 2},
	lootChance = 25, 
}

/*

PLUGIN.chattereventdefs["chatter1"] = {
	pdachatter = {
		[1] = {name = "SW@_OFCR", text = "Misha, what the hell have you been smoking? There's no dogs over here. Not even corpses", image = "propic/unclaimed/stalker3"},
		[2] = {name = "MISHA", text = "You think MISHA would lie to you? It is what is reported to me!", image = "propic/zonelegends/supersus"},
		[3] = {name = "SW@_OFCR", text = "Sure buddy. Whatever you say.", image = "propic/unclaimed/stalker3"},
		[4] = {name = "MISHA", text = "Start finding shit yourself then, I don't know what else to tell you. I can't go verify every report.", image = "propic/zonelegends/supersus"},
	}
}

PLUGIN.chattereventdefs["chatter2"] = {
	pdachatter = {
		[1] = {name = "Oleg", text = "Was anyone on that job last week with the Pseudogiant?", image = "propic/unclaimed/stalker14"},
		[2] = {name = "Arty", text = "Yeah, what of it?", image = "propic/unclaimed/stalker5"},
		[3] = {name = "Johnny Aplseed", text = "Why, you looking to upgrade from your wife, Oleg?", image = "propic/unclaimed/stalker10"},
		[4] = {name = "Arty", text = "That was uncalled for.", image = "propic/unclaimed/stalker5"},
		[5] = {name = "Oleg", text = "Johnny. I hope you know that I can and will kill you one day.", image = "propic/unclaimed/stalker14"},
		[6] = {name = "Johnny Aplseed", text = "Good luck finding me, never could spot my bro hopping out your bedroom window after pleasing that manatee, let alone find me out here!", image = "propic/unclaimed/stalker10"},
		[7] = {name = "Oleg", text = "That's it. Anyone has information on Johnny, I'll pay you ten grand.", image = "propic/unclaimed/stalker14"},
		[8] = {name = "Johnny Aplseed", text = "And if you don't, I'll let you in on the train we'll run on her next week. Don't worry, she's all for it.", image = "propic/unclaimed/stalker10"},
		[9] = {name = "Arty", text = "... you mind messaging me, Johnny?", image = "propic/unclaimed/stalker5"},
	}
}

PLUGIN.chattereventdefs["chatter3"] = {
	pdachatter = {
		[1] = {name = "Arty", text = "Misha, are you sure it's the abandoned factory?", image = "propic/unclaimed/stalker5"},
		[2] = {name = "MISHA", text = "MISHA DRUNK. VEEEERY DRUNK. THIS IVAN. REPORT SAY BIG FACTORY MANY DOGS.", image = "propic/zonelegends/supersus"},
		[3] = {name = "Arty", text = "... the one in my region?", image = "propic/unclaimed/stalker5"},
		[4] = {name = "MISHA", text = "REPORT SAY BIG FACTORY MANY DOGS.", image = "propic/zonelegends/supersus"},
		[5] = {name = "Arty", text = "Right. Thanks, Ivan.", image = "propic/unclaimed/stalker5"},
		[6] = {name = "MISHA", text = "VERY WELCOME. IVAN OUT.", image = "propic/zonelegends/supersus"},
	}
}

PLUGIN.chattereventdefs["chatter4"] = {
	pdachatter = {
		[1] = {name = "Oleg", text = "There's been too many people disappearing lately, without leaving a single trace... The Zone's up to something.", image = "propic/unclaimed/stalker14"},
	}
}

PLUGIN.chattereventdefs["chatter5"] = {
	pdachatter = {
		[1] = {name = "CHAD", text = "Yo Arty, when you gonna start bulking up bro?", image = "propic/unclaimed/stalker6"},
		[2] = {name = "Arty", text = "I don't really feel a need to. I'm fast enough.", image = "propic/unclaimed/stalker5"},
		[3] = {name = "CHAD", text = "Speed is sweet man, but what are you gonna do if you get into a fist fight?", image = "propic/unclaimed/stalker6"},
		[4] = {name = "Arty", text = "I'll just run away and shoot them, obviously.", image = "propic/unclaimed/stalker5"},
		[5] = {name = "CHAD", text = "Bro, you can't always rely on that, trust me. Get to work man.", image = "propic/unclaimed/stalker6"},
		[6] = {name = "Arty", text = "I guess you're right. Message me how you keep your muscle up around here, I can't imagine how you manage it.", image = "propic/unclaimed/stalker5"},
		[7] = {name = "CHAD", text = "Sure bro. Give me a few minutes, gotta help clear out a mutant nest.", image = "propic/unclaimed/stalker6"},
	}
}

--[[PLUGIN.chattereventdefs["chatter6"] = {
	pdachatter = {
		[1] = {name = "MISHA", text = "Getting lots of reports about Dogs in Cordon, be safe out there.", image = "propic/zonelegends/supersus"},
		[2] = {name = "Vlad", text = "I'm seeing the messages. Are you sure they're true?", image = "propic/unclaimed/stalker2"},
		[3] = {name = "MISHA", text = "I mean, it's from a few different PDAs, but that doesn't mean anything for sure.", image = "propic/zonelegends/supersus"},
		[4] = {name = "Borim", text = "I'm in the area, I'll check it out.", image = "propic/unclaimed/stalker11"},
		[5] = {name = "CHAD", text = "Me too bro, I'll meet you at the town.", image = "propic/unclaimed/stalker6"},
		[6] = {name = "SW@_OFCR", text = "I'm coming in from the North, I'll meet you boys half-way and we can go from there.", image = "propic/unclaimed/stalker3"},
		[7] = {name = "MISHA", text = "Thanks boys, keep me updated.", image = "propic/zonelegends/supersus"},
	}
}]]

PLUGIN.chattereventdefs["chatter7"] = {
	pdachatter = {
		[1] = {name = "Lazer", text = "Can't take the heat right now, I'm cooking alive!", image = "propic/loner/loner5"},
		[2] = {name = "CHAD", text = "Sounds rough.", image = "propic/unclaimed/stalker6"},
		[3] = {name = "Lazer", text = "You're not the one hunting for artifacts near a fault...", image = "propic/loner/loner5"},
		[4] = {name = "CHAD", text = "Then don't go near them bro.", image = "propic/unclaimed/stalker6"},
		[5] = {name = "Lazer", text = "Got a better idea?", image = "propic/loner/loner5"},
		[6] = {name = "CHAD", text = "Yeah, Don't jump into hot anomalies.", image = "propic/unclaimed/stalker6"},
		[7] = {name = "Lazer", text = "Next time I see you, you're getting a bottle to the head.", image = "propic/loner/loner5"},
	}
}

PLUGIN.chattereventdefs["chatter8"] = {
	pdachatter = {
		[1] = {name = "CHAD", text = "Finished my 1000 pushups for the day, just thought you guys should know.", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.chattereventdefs["chatter9"] = {
	pdachatter = {
		[1] = {name = "CHAD", text = "I'm still a bit spooked by those guys I saw in the north the other day. Head's still spinning...", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.chattereventdefs["chatter10"] = {
	pdachatter = {
		[1] = {name = "Arty", text = "I don't always find artifacts, but when I do... It's cells.", image = "propic/unclaimed/stalker5"},
	}
}

PLUGIN.chattereventdefs["chatter11"] = {
	pdachatter = {
		[1] = {name = "SW@_OFCR", text = "Just found a bloodsucker tentacle... Maybe those eggheads will finall-", image = "propic/unclaimed/stalker3"},
	}
}

PLUGIN.chattereventdefs["chatter12"] = {
	pdachatter = {
		[1] = {name = "Lazer", text = "I think I've finally found love, who knew it'd be with you my lovely...", image = "propic/loner/loner5"},
		[2] = {name = "Lazer", text = "Wait a sec, you're not a w- OH SHIT!", image = "propic/loner/loner5"},
	}
}

PLUGIN.chattereventdefs["chatter13"] = {
	pdachatter = {
		[1] = {name = "Onion Deadbeat", text = "Wonder if I'll ever find a soul again...", image = "propic/loner/loner70"},
	}
}

PLUGIN.chattereventdefs["chatter14"] = {
	pdachatter = {
		[1] = {name = "Onion Deadbeat", text = "Damn military, keep shooting me cause I'm too close to their wall.", image = "propic/loner/loner70"},
	}
}

PLUGIN.chattereventdefs["chatter15"] = {
	pdachatter = {
		[1] = {name = "Onion Deadbeat", text = "Still on the hunt for some cats, need some pussy in my life.", image = "propic/loner/loner70"},
	}
}

PLUGIN.chattereventdefs["chatter16"] = {
	pdachatter = {
		[1] = {name = "CHAD", text = "97... 98... 99... 100! Ha, another successful workout.", image = "propic/unclaimed/stalker6"},
		[2] = {name = "Oleg", text = "Hey CHAD? Do us all a favor and shut the fuck up.", image = "propic/unclaimed/stalker14"},
	}
}

PLUGIN.chattereventdefs["chatter17"] = {
	pdachatter = {
		[1] = {name = "Onion Deadbeat", text = "Might tag along with some bandits. Shouldn't be too risky, right?", image = "propic/loner/loner70"},
	}
}

PLUGIN.chattereventdefs["chatter18"] = {
	pdachatter = {
		[1] = {name = "Johnny Aplseed", text = "I'm so damn tired of hunting dogs all day, let me at some chimeras or something.", image = "propic/unclaimed/stalker10"},
		[2] = {name = "Vlad", text = "Sounds like you got a death wish.", image = "propic/unclaimed/stalker2"},
		[3] = {name = "Borim", text = "I call dibs on his shooter!", image = "propic/unclaimed/stalker11"},
	}
}

PLUGIN.chattereventdefs["chatter19"] = {
	pdachatter = {
		[1] = {name = "Dead Duck", text = "Imagine if the Zone didn't exist, where would we all go? What would we do?", image = "propic/femstalkers/femstalker3"},
	}
}

PLUGIN.chattereventdefs["chatter20"] = {
	pdachatter = {
		[1] = {name = "Dead Duck", text = "Has CHAD died yet?", image = "propic/femstalkers/femstalker3"},
		[2] = {name = "CHAD", text = "Aww she cares, sick of the usual grind and need to shake things up?", image = "propic/unclaimed/stalker6"},
		[3] = {name = "Dead Duck", text = "Only thing I'm sick of is you thinking you have a chance. Fuck off.", image = "propic/femstalkers/femstalker3"},
	}
}

PLUGIN.chattereventdefs["chatter21"] = {
	pdachatter = {
		[1] = {name = "RDM", text = "Haha! It works! It finally works. I wonder if anyone is listening...", image = "propic/loner/loner35"},
		[2] = {name = "RDM", text = "Well if you are, allow me to introduce myself. I am the Russian Disco Man.", image = "propic/loner/loner35"},
		[3] = {name = "RDM", text = "Good news is, I'm looking into getting this radio antenna set up to listen to some tunes!", image = "propic/loner/loner35"},
		[4] = {name = "RDM", text = "Bad news is I'm trapped here in-... ***STALKERNET CONNECTION LOST***", image = "propic/loner/loner35"},
	}
}

PLUGIN.chattereventdefs["chatter22"] = {
	pdachatter = {
		[1] = {name = "RDM", text = "I've been hearing a peculiar sound coming through the speakers, on a frequency of 4625 KHz.", image = "propic/loner/loner35"},
		[2] = {name = "RDM", text = "Now you normally find weird shit in the zone, but I'm telling you, this is something different!", image = "propic/loner/loner35"},
		[3] = {name = "RDM", text = "I only have 1 antenna, and you need 2 or 3 to atleast isolate the signal location. All I can tell you is it's a loud and intermittent buzzing noise, almost like a code.", image = "propic/loner/loner35"},
		[4] = {name = "RDM", text = "I'm sure one of you nosy bastards will figure it out, keep me in the loop if you do.", image = "propic/loner/loner35"},
	}
}

PLUGIN.chattereventdefs["chatter23"] = {
	pdachatter = {
		[1] = {name = "MISHA", text = "Lots of dogs and rats today. Gonna go take a dip in a lake. Be back soon.", image = "propic/zonelegends/supersus"},
	}
}

PLUGIN.chattereventdefs["chatter24"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Stalker! Life has given you a wonderful opportunity to find your place in Freedom! Only in our ranks will you always find someone willing to cover your back and give you his last loaf of bread with you. Join Freedom!", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter25"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Deadly anomalies, dangerous mutants, anarchists and bandits... None of them will stop Duty on its triumphant march towards saving the planet!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter26"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Veterans and Rookies... If you value your freedom, and want to be among others like you, join us! Freedom welcomes everyone who has trodden the zones path to our doors...", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter27"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Stalker, Protect the world from the Zone... Join DUTY!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter28"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Free-Stalkers, Veterans, and Hunters... Join Duty! Protecting the world from the Zone's evil is our common goal!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter29"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Do you want to earn the respect of fellow stalkers? Do you want to build a team of loyal friends who will stick up for you in times of trouble? Do you dream of kicking some duty ass? All this and many other opportunities await you if you join Freedom!", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter30"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "The world fears the zone's expansion. Join duty, and save the innocent!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter31"] = {
	pdachatter = {
		[1] = {name = "Ace", text = "My friend came back from his trip yesterday. He told me about some creepy guy who preached his group about a new clan. Started with an M or something. Did someone contact him before?", image = "propic/loner/loner102"},
	}
}

PLUGIN.chattereventdefs["chatter32"] = {
	pdachatter = {
		[1] = {name = "Ace", text = "'We await the next deliverance'. These are the words of some sick fuck I met few hours ago. Who is this guy? What does this even mean?", image = "propic/loner/loner102"},
	}
}

PLUGIN.chattereventdefs["chatter33"] = {
	pdachatter = {
		[1] = {name = "Ace", text = "Now I've seen everything...", image = "propic/loner/loner102"},
	}
}

PLUGIN.chattereventdefs["chatter34"] = {
	pdachatter = {
		[1] = {name = "Ace", text = "Now I've seen everything...", image = "propic/loner/loner102"},
	}
}

PLUGIN.chattereventdefs["chatter35"] = {
	pdachatter = {
		[1] = {name = "Ace", text = "I've been told that an emission will be on its way some time in the next few days. My sources are reliable, so it's probably no joke. Be careful out there.", image = "propic/loner/loner102"},
	}
}

PLUGIN.chattereventdefs["chatter36"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Calling all free squads! Bandit activity has once again risen in the Garbage. Clean up the sector.", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter37"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Stalkers, remember: anarchy represents chaos, destruction, and death. Join Duty! Maintain order and purity in the Zone!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter38"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Stalkers, join us in our collective duty to protect and rid the world of the mutant invasion and anomalous infestation!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter39"] = {
	pdachatter = {
		[1] = {name = "Honor_Bound", text = "Stalkers, join Duty! We shall cure our Earth from the deadly disease called the Zone!", image = "propic/event/duty"},
	}
}

PLUGIN.chattereventdefs["chatter40"] = {
	pdachatter = {
		[1] = {name = "Ecolog-S", text = "If you feel your body grow heavy as the world begins to lose its colours and a jaundiced veil appears before your eyes, try to leave that area as soon as possible. You are most likely falling under the direct influence of the alternating field of psy-emissions!", image = "propic/event/ecos"},
	}
}

PLUGIN.chattereventdefs["chatter41"] = {
	pdachatter = {
		[1] = {name = "Ecolog-S", text = "Dear soldiers and undocumented individuals! Militarised research groups and the Scientific Research Institute of the Chernobyl Anomalous Zone would like to remind you that vodka does not contribute to the elimination of radionuclides. Use anti-radiation drugs instead.", image = "propic/event/ecos"},
	}
}

PLUGIN.chattereventdefs["chatter42"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Looking for friendly company, sincere conversations, and a helping hand in future campaigns? Join us and fight alongside free men of the Zone!", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter43"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Free stalkers, Freedom speaking! If you want to live under respectable conditions in the Zone without any obligations from the military, like Duty, then come to us! We're always happy to see new faces.", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter44"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Free stalkers, Freedom speaking here! What do you have to gain by consciously limiting yourself to a life under the command under a bunch of bureaucratic pigs, living in their barracks and blindly following their orders? Become a part of us and join our expeditions to the most treasured places in the Zone, tasting the life of a free man!", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter45"] = {
	pdachatter = {
		[1] = {name = "Hello-FREE", text = "Stalker, don't you love the Zone? Have you forgotten that it gave you money and a purpose in life? Do you really want to work as an office clerk for a penny after all this is over? Join Freedom! Don't let them take away the last thing you value from you, and don't let them take away your life.", image = "propic/event/free"},
	}
}

PLUGIN.chattereventdefs["chatter46"] = {
	pdachatter = {
		[1] = {name = "Dima Ignatenko", text = "Weird... the emergency signal I received was pointing to Zapolye. I have been searching for ten minutes at least, not a single trace of the missing squad was found...", image = "propic/loner/loner48"},
	}
}

PLUGIN.chattereventdefs["chatter47"] = {
	pdachatter = {
		[1] = {name = "Dima Ignatenko", text = "Deals on sausage and bread have been real shitty as of late.", image = "propic/loner/loner48"},
	}
}

PLUGIN.chattereventdefs["chatter48"] = {
	pdachatter = {
		[1] = {name = "Dima Ignatenko", text = "Ha-ha-ha, the military have got themselves a real shit show right now. They were on some kind of raid and their helicopter got shot at... got ordered to return to base immediately.", image = "propic/loner/loner48"},
	}
}

PLUGIN.chattereventdefs["chatter49"] = {
	pdachatter = {
		[1] = {name = "Vadim Hobo", text = "Bored... I feel like putting holes in somebody.", image = "propic/loner/loner92"},
	}
}

PLUGIN.chattereventdefs["chatter50"] = {
	pdachatter = {
		[1] = {name = "Vadim Hobo", text = "Haha, loser. Why'd you leave your farm? And we've already cashed in.", image = "propic/loner/loner92"},
	}
}

PLUGIN.chattereventdefs["chatter51"] = {
	pdachatter = {
		[1] = {name = "Kostya Khan", text = "What fucker snatched all the loot from my stash? The one in the Wild Territory. I know you're reading this... Prepare your sorry ass.", image = "propic/bandits/bandit27"},
	}
}

PLUGIN.chattereventdefs["chatter52"] = {
	pdachatter = {
		[1] = {name = "Kostya Khan", text = "Any smartass brave enough to enter our territory will be given hell.", image = "propic/bandits/bandit27"},
	}
}

PLUGIN.chattereventdefs["chatter53"] = {
	pdachatter = {
		[1] = {name = "Kostya Khan", text = "I feel like sleeping", image = "propic/bandits/bandit27"},
	}
}

PLUGIN.chattereventdefs["chatter54"] = {
	pdachatter = {
		[1] = {name = "Hotshot", text = "Damn, who emptied my stash?", image = "propic/bandits/bandit20"},
	}
}

PLUGIN.chattereventdefs["chatter55"] = {
	pdachatter = {
		[1] = {name = "Hotshot", text = "Time for a commercial! You wanna be a real lad in the Zone? Get some dirt on your boot, earning plenty of loot? Live on the cushion? Join the bandits! We've got the one right perspective on the Zone.", image = "propic/bandits/bandit20"},
	}
}

PLUGIN.chattereventdefs["chatter56"] = {
	pdachatter = {
		[1] = {name = "Hotshot", text = "Some dude in the Garbage got hold of a pretty rare gizmo.", image = "propic/bandits/bandit20"},
	}
}

PLUGIN.chattereventdefs["chatter57"] = {
	pdachatter = {
		[1] = {name = "Serega Ghoul", text = "I ain't feeling good... Had some canned food, apparently from a warehouse. I looked at the expiration date, and I've screwed up bad.", image = "propic/loner/loner56"},
	}
}

PLUGIN.chattereventdefs["chatter58"] = {
	pdachatter = {
		[1] = {name = "Serega Ghoul", text = "That's enough, quit the spamming.", image = "propic/loner/loner56"},
	}
}

PLUGIN.chattereventdefs["chatter59"] = {
	pdachatter = {
		[1] = {name = "Serega Ghoul", text = "I can't do this any more. Every day, the blood in my veins chills.", image = "propic/loner/loner56"},
	}
}

PLUGIN.chattereventdefs["chatter60"] = {
	pdachatter = {
		[1] = {name = "Lenya Aspic", text = "Oh, I'd love me a cold beer right now... Anyone knows where to get some?", image = "propic/loner/loner47"},
	}
}

PLUGIN.chattereventdefs["chatter61"] = {
	pdachatter = {
		[1] = {name = "Lenya Aspic", text = "Ehhhh... Hello everyone. Just woke up, I'm waiting for a drink.", image = "propic/loner/loner47"},
	}
}

PLUGIN.chattereventdefs["chatter62"] = {
	pdachatter = {
		[1] = {name = "Lenya Aspic", text = "I keep hearing sudden sloshing in the dark. It's better to wander somewhere else...", image = "propic/loner/loner47"},
	}
}

PLUGIN.chattereventdefs["chatter63"] = {
	pdachatter = {
		[1] = {name = "Lenya Aspic", text = "I hope the weather stays like this for a while.", image = "propic/loner/loner47"},
	}
}

PLUGIN.chattereventdefs["chatter64"] = {
	pdachatter = {
		[1] = {name = "Corpse", text = "My friend told me once that Pseudogiants are a result of failed experiments in one of those creepy underground labs, and that limbs of actual people got used in the process...", image = "propic/loner/loner53"},
	}
}

PLUGIN.chattereventdefs["chatter65"] = {
	pdachatter = {
		[1] = {name = "Corpse", text = "It's nice to find forgotten bolts in my pockets, you never know when you'll really need them.", image = "propic/loner/loner53"},
	}
}

PLUGIN.chattereventdefs["chatter66"] = {
	pdachatter = {
		[1] = {name = "Corpse", text = "You hear those growls in the distance? That's a bad sign, man.", image = "propic/loner/loner53"},
	}
}

PLUGIN.chattereventdefs["chatter67"] = {
	pdachatter = {
		[1] = {name = "Ecolog-S", text = "Dear stalkers! Our research requires a large number of new artefacts, as many as you can bring. More than a decent payment guaranteed.", image = "propic/event/ecos"},
	}
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PLUGIN.artifindchatdefs["artichat1"] = {
	artichatter = {
		[1] = {name = "Vlad", text = "Found an artifact I can't quite reach - looks like a %s", image = "propic/unclaimed/stalker2"},
	}
}

PLUGIN.artifindchatdefs["artichat2"] = {
	artichatter = {
		[1] = {name = "Borim", text = "Noticed an artifact earlier on my way somewhere, didn't have time to stop and grab it, think it was a %s", image = "propic/unclaimed/stalker11"},
	}
}

PLUGIN.artifindchatdefs["artichat3"] = {
	artichatter = {
		[1] = {name = "Vlad", text = "Saw a %s earlier, didn't think it was worth the risk though.", image = "propic/unclaimed/stalker2"},
	}
}

PLUGIN.artifindchatdefs["artichat4"] = {
	artichatter = {
		[1] = {name = "Borim", text = "Thought I saw a %s a few minutes ago, but when I went looking for it, I couldn't find it.", image = "propic/unclaimed/stalker11"},
	}
}

PLUGIN.artifindchatdefs["artichat5"] = {
	artichatter = {
		[1] = {name = "CHAD", text = "Saw a %s just a minute ago, but I'm too good for that garbage. Good luck finding it, boys.", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.artifindchatdefs["artichat6"] = {
	artichatter = {
		[1] = {name = "CHAD", text = "Some guy was trying to grab a %s like he was starving, slipped into a nearby anomaly instead. Rough stuff.", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.artifindchatdefs["artichat7"] = {
	artichatter = {
		[1] = {name = "Arty", text = "Spotted a %s while I was walking around the area. Didn't feel like bothering.", image = "propic/unclaimed/stalker5"},
	}
}

PLUGIN.artifindchatdefs["artichat8"] = {
	artichatter = {
		[1] = {name = "Arty", text = "Had my eyes on a %s but couldn't see a way to grab it. Best of luck with it.", image = "propic/unclaimed/stalker5"},
	}
}

PLUGIN.artifindchatdefs["artichat9"] = {
	artichatter = {
		[1] = {name = "SW@_OFCR", text = "I don't fuck with artifacts much, but I heard someone saying they saw a %s nearby, figured I'd share.", image = "propic/unclaimed/stalker3"},
	}
}

PLUGIN.artifindchatdefs["artichat10"] = {
	artichatter = {
		[1] = {name = "SW@_OFCR", text = "I was navigating some anomalies earlier and saw a %s out of reach.", image = "propic/unclaimed/stalker3"},
	}
}

PLUGIN.artifindchatdefs["artichat11"] = {
	artichatter = {
		[1] = {name = "Lazer", text = "Was dealing with a few dogs, but I heard a loud roar come from the marsh. Think I dropped my %s in my panic. Would be helpful to get that back.", image = "propic/loner/loner5"},
	}
}

PLUGIN.artifindchatdefs["artichat12"] = {
	artichatter = {
		[1] = {name = "Lazer", text = "Since you're all lazy bastards, thought I'd tell you have fun getting this %s I saw. Kicked it into an anomaly just for you.", image = "propic/loner/loner5"},
	}
}

PLUGIN.artifindchatdefs["artichat13"] = {
	artichatter = {
		[1] = {name = "CHAD", text = "Recently saw some poor fool get side-swiped by a floating rock. He dropped a %s, but I'm not interested in dying.", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.artifindchatdefs["artichat14"] = {
	artichatter = {
		[1] = {name = "CHAD", text = "Doing all this excersize is great, but I think I forgot my %s somewhere. Help me find it bros!", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.artifindchatdefs["artichat15"] = {
	artichatter = {
		[1] = {name = "MISHA", text = "Finally! A %s, maybe I can finally retire...", image = "propic/zonelegends/supersus"},
	}
}

PLUGIN.artifindchatdefs["artichat16"] = {
	artichatter = {
		[1] = {name = "Onion Deadbeat", text = "Saw a %s by a group of bandits, saw them also fleeing from some big mutant. Sounds rough.", image = "propic/loner/loner70"},
	}
}

PLUGIN.artifindchatdefs["artichat17"] = {
	artichatter = {
		[1] = {name = "Dead Duck", text = "Think I saw some dumbfuck cradling a %s right before stepping into an electro.", image = "propic/femstalkers/femstalker3"},
	}
}

PLUGIN.artifindchatdefs["artichat18"] = {
	artichatter = {
		[1] = {name = "Arty", text = "On the hunt for a %s. It's here, I can feel it.", image = "propic/unclaimed/stalker5"},
	}
}

PLUGIN.artifindchatdefs["artichat19"] = {
	artichatter = {
		[1] = {name = "Onion Deadbeat", text = "Just got a %s. Cool.", image = "propic/loner/loner70"},
		[2] = {name = "CHAD", text = "Nah bro, I had eyes on it first.", image = "propic/unclaimed/stalker6"},
		[3] = {name = "Onion Deadbeat", text = "Get lost, I already- SHIT!", image = "propic/loner/loner70"},
		[4] = {name = "CHAD", text = "FU-", image = "propic/unclaimed/stalker6"},
	}
}

PLUGIN.artifindchatdefs["artichat20"] = {
	artichatter = {
		[1] = {name = "Ruskie", text = "Anyone know the going rate for a %s?", image = "propic/loner/loner65"},
	}
}

PLUGIN.artifindchatdefs["artichat21"] = {
	artichatter = {
		[1] = {name = "Ruskie", text = "A %s! Maybe I can finally retire!", image = "propic/loner/loner65"},
	}
}

PLUGIN.artifindchatdefs["artichat22"] = {
	artichatter = {
		[1] = {name = "Ruskie", text = "Sakharov will want his hands on this %s!", image = "propic/loner/loner65"},
	}
}

PLUGIN.artifindchatdefs["artichat23"] = {
	artichatter = {
		[1] = {name = "Hacker", text = "Pretty nice %s, my bag is full though.", image = "propic/loner/loner82"},
	}
}

PLUGIN.artifindchatdefs["artichat24"] = {
	artichatter = {
		[1] = {name = "Hacker", text = "Just saw a %s appear down the road. But it's crawling with mutants, not my fight.", image = "propic/loner/loner82"},
	}
}

PLUGIN.artifindchatdefs["artichat25"] = {
	artichatter = {
		[1] = {name = "Hacker", text = "Who knows, maybe you'll find a %s someday...", image = "propic/loner/loner82"},
	}
}

PLUGIN.artifindchatdefs["artichat26"] = {
	artichatter = {
		[1] = {name = "Ace", text = "Today was shit, but I found this %s. Maybe it's not all bad.", image = "propic/loner/loner102"},
	}
}

PLUGIN.artifindchatdefs["artichat27"] = {
	artichatter = {
		[1] = {name = "Ace", text = "If only I could find a %s. The ecos would go nuts!", image = "propic/loner/loner102"},
	}
}

PLUGIN.artifindchatdefs["artichat28"] = {
	artichatter = {
		[1] = {name = "Ace", text = "God my bag is so heavy, just gonna drop this %s for some lucky guy.", image = "propic/loner/loner102"},
	}
}

PLUGIN.artifindchatdefs["artichat29"] = {
	artichatter = {
		[1] = {name = "Tolik", text = "A rise in %s today, be on the lookout stalker.", image = "propic/loner/loner55"},
	}
}

PLUGIN.artifindchatdefs["artichat30"] = {
	artichatter = {
		[1] = {name = "Tolik", text = "Sometimes you find mutants, and sometimes you find %s.", image = "propic/loner/loner55"},
	}
}

PLUGIN.artifindchatdefs["artichat31"] = {
	artichatter = {
		[1] = {name = "Tolik", text = "Stupid anomaly stopped me from getting that %s.", image = "propic/loner/loner55"},
	}
}

PLUGIN.artifindchatdefs["artichat32"] = {
	artichatter = {
		[1] = {name = "Jackstraw", text = "Arty said he found a %s, too bad he doesn't have it anymore.", image = "propic/loner/loner67"},
	}
}

PLUGIN.artifindchatdefs["artichat33"] = {
	artichatter = {
		[1] = {name = "Jackstraw", text = "Today's my lucky day. %s for me!", image = "propic/loner/loner67"},
	}
}

PLUGIN.artifindchatdefs["artichat34"] = {
	artichatter = {
		[1] = {name = "Jackstraw", text = "When life gives you a %s, you just gotta sell it to someone.", image = "propic/loner/loner67"},
	}
}
*/

-- Chatter presets, for ease of use
--{name = "MISHA", text = "", image = "propic/zonelegends/supersus"},
--{name = "SW@_OFCR", text = "", image = "propic/unclaimed/stalker3"},
--{name = "Arty", text = "", image = "propic/unclaimed/stalker5"},
--{name = "Johnny Aplseed", text = "", image = "propic/unclaimed/stalker10"},
--{name = "Oleg", text = "", image = "propic/unclaimed/stalker14"},
--{name = "Vlad", text = "", image = "propic/unclaimed/stalker2"},
--{name = "Borim", text = "", image = "propic/unclaimed/stalker11"},
--{name = "CHAD", text = "", image = "propic/unclaimed/stalker6"},
--{name = "Lazer", text = "", image = "propic/loner/loner5"},
--{name = "Onion Deadbeat", text = "", image = "propic/loner/loner70"},
--{name = "Dead Duck", text = "", image = "propic/femstalkers/femstalker3"},
--{name = "RDM", text = "", image = "propic/loner/loner35"},
--{name = "Hello-FREE", text = "", image = "propic/event/free"},
--{name = "Honor_Bound", text = "", image = "propic/event/duty"},
--{name = "Ruskie", text = "", image = "propic/loner/loner65"},
--{name = "Hacker", text = "", image = "propic/loner/loner82"},
--{name = "Ace", text = "", image = "propic/loner/loner102"},
--{name = "Tolik", text = "", image = "propic/loner/loner55"},
--{name = "Jackstraw", text = "", image = "propic/loner/loner67"},
--{name = "Dima Ignatenko", text = "", image = "propic/loner/loner48"},
--{name = "Vadim Hobo", text = "", image = "propic/loner/loner92"},
--{name = "Ecolog-S", text = "", image = "propic/event/ecos"},
--{name = "Kostya Khan", text = "", image = "propic/bandits/bandit27"},
--{name = "Hotshot", text = "", image = "propic/bandits/bandit20"},
--{name = "Serega Ghoul", text = "", image = "propic/loner/loner56"},
--{name = "Lenya Aspic", text = "", image = "propic/loner/loner47"},
--{name = "Corpse", text = "", image = "propic/loner/loner53"},