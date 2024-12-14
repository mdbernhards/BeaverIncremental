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
		"StartingPrice" : "effect",
		DamParts.First : {
			"Name" : "Gathering a team of Beavers",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Building Foundations",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Careful Wood Stacking",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Patching leaks",
			"Price" : 100,
			"Description" : "blabal",
		},
	},
	DamEnum.MediumDam : {
		"Name" : "Medium Dam",
		"Effect" : "effect",
		"StartingPrice" : "effect",
		DamParts.First : {
			"Name" : "Site Eppraisal",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Careful Planing",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "A Careful Excecution Of The Plan",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Finishing Touches",
			"Price" : 100,
			"Description" : "blabal",
		},
	},
	DamEnum.BigDam : {
		"Name" : "Big Dam",
		"Effect" : "effect",
		"StartingPrice" : "effect",
		DamParts.First : {
			"Name" : "Fund Raising",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Creating Logistics Lines",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Crazy Fast Construction",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Weight Testing",
			"Price" : 100,
			"Description" : "blabal",
		},
	},
	DamEnum.GiantDam : {
		"Name" : "Giant Dam",
		"Effect" : "effect",
		"StartingPrice" : "effect",
		DamParts.First : {
			"Name" : "Attracting Investors",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Environmental Impact Studies",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Architecture",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Prepairing The Grand Opening",
			"Price" : 100,
			"Description" : "blabal",
		},
	},
	DamEnum.MegaDam : {
		"Name" : "Mega Dam",
		"Effect" : "effect",
		"StartingPrice" : "effect",
		DamParts.First : {
			"Name" : "Buying Oligarchs",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Second : {
			"Name" : "Over Throwing The Government",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Third : {
			"Name" : "Mass Subjugation",
			"Price" : 100,
			"Description" : "blabal",
		},
		DamParts.Fourth : {
			"Name" : "Excecuting the master plan",
			"Price" : 100,
			"Description" : "blabal",
		},
	},
}
