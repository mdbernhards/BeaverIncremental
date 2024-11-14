extends Node

var WoodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce",
				 "Chestnut", "Cherry", "Ash", "Cedar", "Mahogany",
				 "Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood",]

var ResourceApplicableUpgrades = {
	"Oak" : {
		"PerClick" : {
			"Oak" : [1, 4],	
			"Apple" : [3],	
		},
		"PerSecondIncrease" : {
			"Oak" : [6, 7],
		},
		"PerSecondLoss" : {
			"Apple" : [9],
		},
		"Storage" : {
			"Oak" : [2, 3],
		},
	},
	"Apple" : {
		"PerClick" : {
			"Apple" : [1, 7],	
		},
		"PerSecondIncrease" : {
			"Apple" : [4, 8],
		},
		"PerSecondLoss" : {
			"Apple" : false,
		},
		"Storage" : {
			"Apple" : [2, 5],
		},
	},
	"Maple" : {
		"PerClick" : {
			"Maple" : false,	
		},
		"PerSecondIncrease" : {
			"Maple" : false,
		},
		"PerSecondLoss" : {
			"Maple" : false,
		},
		"Storage" : {
			"Maple" : false,
		},
	},
	"Birch" : {
		"PerClick" : {
			"Birch" : false,	
		},
		"PerSecondIncrease" : {
			"Birch" : false,
		},
		"PerSecondLoss" : {
			"Birch" : false,
		},
		"Storage" : {
			"Birch" : false,
		},
	},
	"Spruce" : {
		"PerClick" : {
			"Spruce" : false,	
		},
		"PerSecondIncrease" : {
			"Spruce" : false,
		},
		"PerSecondLoss" : {
			"Spruce" : false,
		},
		"Storage" : {
			"Spruce" : false,
		},
	},
	"Chestnut" : {
		"PerClick" : {
			"Chestnut" : false,	
		},
		"PerSecondIncrease" : {
			"Chestnut" : false,
		},
		"PerSecondLoss" : {
			"Chestnut" : false,
		},
		"Storage" : {
			"Chestnut" : false,
		},
	},
	"Cherry" : {
		"PerClick" : {
			"Cherry" : false,	
		},
		"PerSecondIncrease" : {
			"Cherry" : false,
		},
		"PerSecondLoss" : {
			"Cherry" : false,
		},
		"Storage" : {
			"Cherry" : false,
		},
	},
	"Ash" : {
		"PerClick" : {
			"Ash" : false,	
		},
		"PerSecondIncrease" : {
			"Ash" : false,
		},
		"PerSecondLoss" : {
			"Ash" : false,
		},
		"Storage" : {
			"Ash" : false,
		},	
	},
	"Cedar" : {
		"PerClick" : {
			"Cedar" : false,	
		},
		"PerSecondIncrease" : {
			"Cedar" : false,
		},
		"PerSecondLoss" : {
			"Cedar" : false,
		},
		"Storage" : {
			"Cedar" : false,
		},	
	},
	"Mahogany" : {
		"PerClick" : {
			"Mahogany" : false,	
		},
		"PerSecondIncrease" : {
			"Mahogany" : false,
		},
		"PerSecondLoss" : {
			"Mahogany" : false,
		},
		"Storage" : {
			"Mahogany" : false,
		},
	},
	"Ebony" : {
		"PerClick" : {
			"Ebony" : false,	
		},
		"PerSecondIncrease" : {
			"Ebony" : false,
		},
		"PerSecondLoss" : {
			"Ebony" : false,
		},
		"Storage" : {
			"Ebony" : false,
		},	
	},
	"Dogwood" : {
		"PerClick" : {
			"Dogwood" : false,	
		},
		"PerSecondIncrease" : {
			"Dogwood" : false,
		},
		"PerSecondLoss" : {
			"Dogwood" : false,
		},
		"Storage" : {
			"Dogwood" : false,
		},	
	},
	"Rosewood" : {
		"PerClick" : {
			"Rosewood" : false,	
		},
		"PerSecondIncrease" : {
			"Rosewood" : false,
		},
		"PerSecondLoss" : {
			"Rosewood" : false,
		},
		"Storage" : {
			"Rosewood" : false,
		},
	},
	"Ghost Gum" : {
		"PerClick" : {
			"Ghost Gum" : false,	
		},
		"PerSecondIncrease" : {
			"Ghost Gum" : false,
		},
		"PerSecondLoss" : {
			"Ghost Gum" : false,
		},
		"Storage" : {
			"Ghost Gum" : false,
		},
	},
	"Dragonwood" : {
		"PerClick" : {
			"Dragonwood" : false,	
		},
		"PerSecondIncrease" : {
			"Dragonwood" : false,
		},
		"PerSecondLoss" : {
			"Dragonwood" : false,
		},
		"Storage" : {
			"Dragonwood" : false,
		},
	},
	"Gold" : {
		"PerSecond": 10,	
	},
}

var ResourceValues = {
	"Oak" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 100,
		"Color" : Color("836a3e"),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Apple" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.79215687513351, 0.49411764740944, 0.32549020648003),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Maple" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.92941176891327, 0.81568628549576, 0.74509805440903),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Birch" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.85098040103912, 0.71372550725937, 0.60392159223557),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Spruce" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.2549019753933, 0.15686275064945, 0.08627451211214),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Chestnut" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.59215688705444, 0.35686275362968, 0.16078431904316),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Cherry" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.64705884456635, 0.34117648005486, 0.21568627655506),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Ash" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.92549020051956, 0.82352942228317, 0.69803923368454),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Cedar" : {
		"PerClick" : 100000000,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.60784316062927, 0.2352941185236, 0.2392156869173),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Mahogany" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.50980395078659, 0.19215686619282, 0.05098039284348),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Ebony" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.16862745583057, 0.15294118225574, 0.19215686619282),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Dogwood" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.71764707565308, 0.54509806632996, 0.419607847929),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Rosewood" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.4745098054409, 0.24705882370472, 0.2549019753933),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Ghost Gum" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.7843137383461, 0.70980393886566, 0.64705884456635),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Dragonwood" : {
		"PerClick" : 100,
		"PerSecondIncrease": 0,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color(0.55686277151108, 0.42352941632271, 0.26274511218071),
		"RealPerSecondIncrease": 0,
		"RealPerSecondLoss": 0,
	},
	"Gold" : {
		"PerSecond": 10,	
	},
}

