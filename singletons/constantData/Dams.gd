extends Node

enum DamEnum {
	SmallDam,
	MediumDam,
	BigDam,
	GiantDam,
	MegaDam,
}

enum DamParts {
	First,
	Second,
	Third,
	Fourth,
}

var Dams = {
	DamEnum.SmallDam : {
		"Name" : "Small Dam",
		"Effect" : "effect",
		"StartingPrice" : {
			"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
			"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
			"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		},
		DamParts.First : {
			"Name" : "Gathering a team of Beavers",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Building Foundations",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Careful Wood Stacking",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Patching leaks",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
	},
	DamEnum.MediumDam : {
		"Name" : "Medium Dam",
		"Effect" : "effect",
		"StartingPrice" : {
			"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
			"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
			"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		},
		DamParts.First : {
			"Name" : "Site Eppraisal",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Careful Planing",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "A Careful Excecution Of The Plan",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Finishing Touches",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
	},
	DamEnum.BigDam : {
		"Name" : "Big Dam",
		"Effect" : "effect",
		"StartingPrice" : {
			"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
			"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
			"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		},
		DamParts.First : {
			"Name" : "Fund Raising",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Creating Logistics Lines",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Crazy Fast Construction",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Weight Testing",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
	},
	DamEnum.GiantDam : {
		"Name" : "Giant Dam",
		"Effect" : "effect",
		"StartingPrice" : {
			"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
			"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
			"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		},
		DamParts.First : {
			"Name" : "Attracting Investors",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Environmental Impact Studies",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Architecture",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Prepairing The Grand Opening",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
	},
	DamEnum.MegaDam : {
		"Name" : "Mega Dam",
		"Effect" : "effect",
		"StartingPrice" : {
			"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
			"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
			"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		},
		DamParts.First : {
			"Name" : "Buying Oligarchs",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Over Throwing The Government",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Mass Subjugation",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Excecuting the master plan",
			"Price" : {
				"OakCost" : 1, "AppleCost" : 1, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
				"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
				"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
			},
			"Description" : "blabal",
		},
	},
}
