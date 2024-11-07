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
		"PerSecondIncrease": 1,
		"PerSecondLoss": 0,
		"Storage" : 100,
		"Color" : Color("836a3e"),
	},
	"Apple" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Maple" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Birch" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Spruce" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Chestnut" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Cherry" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Ash" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Cedar" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Mahogany" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Ebony" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Dogwood" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Rosewood" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Ghost Gum" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Dragonwood" : {
		"PerClick" : 100,
		"PerSecondIncrease": 10,
		"PerSecondLoss": 0,
		"Storage" : 1000,
		"Color" : Color("836a3e"),
	},
	"Gold" : {
		"PerSecond": 10,	
	},
}

