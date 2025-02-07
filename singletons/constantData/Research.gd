extends Node

var Research = {
	"1" :  {
		"Name" : "65% More Storage",
		"Description" : "All Storage Capacity Increased By 65%",
		"Time" : 25, # Seconds
		"OakCost" : 500, "AppleCost" : 750, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"2" :  {
		"Name" : "1.5x Oak And Apple WPC",
		"Description" : "Multiplies Oak And Apple Wood Per Click Gain By 1.5",
		"Time" : 35, # Seconds
		"OakCost" : 1500, "AppleCost" : 1500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"3" :  {
		"Name" : "Unlock Markets",
		"Description" : "Unlocks The Market Tab Allows Selling Wood",
		"Time" : 55, # Seconds
		"OakCost" : 2000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"4" : {
		"Name" : "Unlock Woodcamps",
		"Description" : "Unlocks Woodcamps, Used For Wood Iver Time Gain",
		"Time" : 85, # Seconds
		"OakCost" : 2450, "AppleCost" : 2450, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"5" :  {
		"Name" : "Oak And Apple Upgrades -25%",
		"Description" : "Makes Apple And Oak Upgrades 25% Cheaper",
		"Time" : 110, # Seconds
		"OakCost" : 3000, "AppleCost" : 2500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"6" :  {
		"Name" : "1.2x Oak WPS, WPC And 2x Storage",
		"Description" : "Multiplies Oaks Wood Per Second And Wood Per Click By 1.2 And Storage By 2",
		"Time" : 140, # Seconds
		"OakCost" : 5000, "AppleCost" : 5000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"7" :  {
		"Name" : "1.5x Apple WPS",
		"Description" : "Increases Apple Wood Per Second By 1.5",
		"Time" : 170, # Seconds
		"OakCost" : 12500, "AppleCost" : 7250, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"8" :  {
		"Name" : "Unlock Maple Wood",
		"Description" : "Unlock Maple Wood",
		"Time" : 200, # Seconds
		"OakCost" : 14500, "AppleCost" : 9250, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"9" :  {
		"Name" : "25% More WPS",
		"Description" : "Increases Per Second Gain For All Wood Types By 25%",
		"Time" : 230, # Seconds
		"OakCost" : 20000, "AppleCost" : 10750, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"10" :  {
		"Name" : "45% Storage",
		"Description" : "Multiplies All Wood Type Storage By 1.45",
		"Time" : 270, # Seconds
		"OakCost" : 24000, "AppleCost" : 11500, "MapleCost" : 2500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"11" :  {
		"Name" : "Woodcamps 30% Cheaper",
		"Description" : "Lowers All Wood Type Woodcamp Cost By 30%",
		"Time" : 290, # Seconds
		"OakCost" : 40000, "AppleCost" : 23000, "MapleCost" : 5000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"12" :  {
		"Name" : "Maple WPS 1.75x",
		"Description" : "1.75x Maple Wood Gain Per Second",
		"Time" : 320, # Seconds
		"OakCost" : 37500, "AppleCost" : 25000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"13" :  {
		"Name" : "Woodcamps Use 5% Less Wood",
		"Description" : "Woodcamps Use 5% Less Lower Tier Wood To Produce Higher Tier Wood",
		"Time" : 340, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 6850, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"14" :  {
		"Name" : "Wood Sells For 25% More Gold",
		"Description" : "All Wood Types Sell For 25% More Gold In The Market",
		"Time" : 350, # Seconds
		"OakCost" : 43500, "AppleCost" : 33500, "MapleCost" : 7200, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Market"]["Unlocked"],
	},
	"15" :  {
		"Name" : "Woodcamp Base Storage +150",
		"Description" : "Increases All Woodcamp Base Storage By 150",
		"Time" : 370, # Seconds
		"OakCost" : 51000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"16" :  {
		"Name" : "+5 Oak Woodcamps",
		"Description" : "Adds 5 Extra Oak Woodcamps",
		"Time" : 380, # Seconds
		"OakCost" : 0, "AppleCost" : 46000, "MapleCost" : 7500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"17" :  {
		"Name" : "Apple Storage 15%",
		"Description" : "Apple Storage 15%",
		"Time" : 400, # Seconds
		"OakCost" : 100000, "AppleCost" : 0, "MapleCost" : 12000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"18" :  {
		"Name" : "Beaver Base Storage +100",
		"Description" : "Beaver Base Storage +100",
		"Time" : 420, # Seconds
		"OakCost" : 125000, "AppleCost" : 75000, "MapleCost" : 7500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"19" :  {
		"Name" : "Unlock Birch Wood",
		"Description" : "Unlock Birch Wood",
		"Time" : 430, # Seconds
		"OakCost" : 200000, "AppleCost" : 125000, "MapleCost" : 15000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"19b" :  {
		"Name" : "+1 Beaver For 9 Woodcamps",
		"Description" : "+1 Beaver For Every 9 Woodcamps You Have",
		"Time" : 430, # Seconds
		"OakCost" : 280000, "AppleCost" : 160000, "MapleCost" : 25000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"20" :  {
		"Name" : "Classic Wood Types +2 Beavers",
		"Description" : "Classic Wood Types +2 Beavers",
		"Time" : 450, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 25500, "BirchCost" : 3500, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"21" :  {
		"Name" : "25% Reaserch Time",
		"Description" : "Lowers The Reaserch Time By 25%",
		"Time" : 460, # Seconds
		"OakCost" : 305000, "AppleCost" : 185000, "MapleCost" : 0, "BirchCost" : 8000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"22" :  {
		"Name" : "Birch Upgrades 35% Cheaper",
		"Description" : "Birch Upgrades 35% Cheaper",
		"Time" : 480, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 12500, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"23" :  {
		"Name" : "Oak, Maple Wood Price +25%",
		"Description" : "Oak, Maple Wood Price +25%",
		"Time" : 510, # Seconds
		"OakCost" : 0, "AppleCost" : 211000, "MapleCost" : 45000, "BirchCost" : 17500, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"24" :  {
		"Name" : "Oak Woodcamps 60% Cheaper",
		"Description" : "Oak Woodcamps 60% Cheaper",
		"Time" : 600, # Seconds
		"OakCost" : 0, "AppleCost" : 260000, "MapleCost" : 67000, "BirchCost" : 15000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"24b" :  {
		"Name" : "Maple Storage +13.5%",
		"Description" : "Maple Storage +13.5%",
		"Time" : 620, # Seconds
		"OakCost" : 375000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"25" :  {
		"Name" : "20% WPS",
		"Description" : "20% WPS",
		"Time" : 660, # Seconds
		"OakCost" : 345454, "AppleCost" : 290000, "MapleCost" : 15000, "BirchCost" : 25000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"26" :  {
		"Name" : "1 WC Per 7 Beavers",
		"Description" : "1 WC Per 7 Beavers",
		"Time" : 720, # Seconds
		"OakCost" : 444444, "AppleCost" : 360000, "MapleCost" : 96000, "BirchCost" : 35000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"27" :  {
		"Name" : "Maple WC Storage 75%",
		"Description" : "Maple WC Storage 75%",
		"Time" : 800, # Seconds
		"OakCost" : 500000, "AppleCost" : 449000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"28" :  {
		"Name" : "12.5% WPC",
		"Description" : "12.5% WPC",
		"Time" : 1000, # Seconds
		"OakCost" : 750000, "AppleCost" : 499000, "MapleCost" : 155000, "BirchCost" : 60000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"29" :  {
		"Name" : "Unlock Spruce Wood",
		"Description" : "Unlock Spruce Wood",
		"Time" : 1100, # Seconds
		"OakCost" : 1250000, "AppleCost" : 550000, "MapleCost" : 200000, "BirchCost" : 100000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"29b" :  {
		"Name" : "35% Cheaper Birch Beavers",
		"Description" : "35% Cheaper Birch Beavers",
		"Time" : 1180, # Seconds
		"OakCost" : 1150000, "AppleCost" : 750000, "MapleCost" : 245000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"30" :  {
		"Name" : "10% Cheaper Upgrades",
		"Description" : "10% Cheaper Upgrades",
		"Time" : 1250, # Seconds
		"OakCost" : 1000000, "AppleCost" : 600000, "MapleCost" : 175000, "BirchCost" : 115000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"31" :  {
		"Name" : "5% WPC To WPS",
		"Description" : "5% WPC To WPS",
		"Time" : 1400, # Seconds
		"OakCost" : 0, "AppleCost" : 999999, "MapleCost" : 0, "BirchCost" : 175000, "SpruceCost" : 3500,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"31b" :  {
		"Name" : "Magic Storage Multiplier 5%",
		"Description" : "Magic Storage Multiplier 5%",
		"Time" : 1440, # Seconds
		"OakCost" : 1222000, "AppleCost" : 1222000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"32" :  {
		"Name" : "Improve wood Sell Value 33%",
		"Description" : "Improve wood Sell Value 33%",
		"Time" : 1500, # Seconds
		"OakCost" : 1275000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 11550,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"33" :  {
		"Name" : "17.5% Maple Storage",
		"Description" : "17.5% Maple Storage",
		"Time" : 1660, # Seconds
		"OakCost" : 1533000, "AppleCost" : 1000000, "MapleCost" : 0, "BirchCost" : 205000, "SpruceCost" : 22222,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"34" :  {
		"Name" : "Each Achievement Gives 0.45% WPS",
		"Description" : "Each Achievement Gives 0.45% WPS",
		"Time" : 1750, # Seconds
		"OakCost" : 0, "AppleCost" : 1400000, "MapleCost" : 525000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"35" :  {
		"Name" : "Gold upgrades 13% Cheaper",
		"Description" : "Gold upgrades 13% Cheaper",
		"Time" : 1900, # Seconds
		"OakCost" : 1850000, "AppleCost" : 1199999, "MapleCost" : 759000, "BirchCost" : 0, "SpruceCost" : 35000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Gold"]["Unlocked"],
	},
	"36" :  {
		"Name" : "33% Cheaper Classic Woodcamps",
		"Description" : "33% Cheaper Classic Woodcamps",
		"Time" : 2000, # Seconds
		"OakCost" : 2350000, "AppleCost" : 1260000, "MapleCost" : 886000, "BirchCost" : 240000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"37" :  {
		"Name" : "Half Reaserch Time",
		"Description" : "Half The Reaserch Time",
		"Time" : 2100, # Seconds
		"OakCost" : 3215000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 330000, "SpruceCost" : 75000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"38" :  {
		"Name" : "Beaver Storage 2x",
		"Description" : "Beaver Storage 2x",
		"Time" : 2150, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1500000, "BirchCost" : 433333, "SpruceCost" : 95000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"39" :  {
		"Name" : "Unlock Chestnut",
		"Description" : "Unlock Chestnut",
		"Time" : 2180, # Seconds
		"OakCost" : 4650000, "AppleCost" : 2250000, "MapleCost" : 1855555, "BirchCost" : 525000, "SpruceCost" : 125000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"40" :  {
		"Name" : "10% Magic WPS Multiplier",
		"Description" : "10% Magic WPS Multiplier",
		"Time" : 2260, # Seconds
		"OakCost" : 6000000, "AppleCost" : 0, "MapleCost" : 2350000, "BirchCost" : 0, "SpruceCost" : 120000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"41" :  {
		"Name" : "Oak And Apple WPS 12%",
		"Description" : "Oak And Apple WPS 12%",
		"Time" : 2400, # Seconds
		"OakCost" : 0, "AppleCost" : 2450000, "MapleCost" : 1880000, "BirchCost" : 475000, "SpruceCost" : 0,
		"ChestnutCost" : 16666, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"42" :  {
		"Name" : "Classic Upgrades 33% Cheaper",
		"Description" : "Classic Upgrades 33% Cheaper",
		"Time" : 2440, # Seconds
		"OakCost" : 5500000, "AppleCost" : 2900000, "MapleCost" : 0, "BirchCost" : 575000, "SpruceCost" : 135000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"43" :  {
		"Name" : "Woodcamps Use 6% Less Wood",
		"Description" : "Woodcamps Use 6% Less Wood",
		"Time" : 2500, # Seconds
		"OakCost" : 0, "AppleCost" : 4000000, "MapleCost" : 1459000, "BirchCost" : 600000, "SpruceCost" : 0,
		"ChestnutCost" : 32500, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"44" :  {
		"Name" : "27.5% Cheaper Classic Beavers",
		"Description" : "27.5% Cheaper Classic Beavers",
		"Time" : 2550, # Seconds
		"OakCost" : 9999999, "AppleCost" : 3750000, "MapleCost" : 0, "BirchCost" : 580000, "SpruceCost" : 170000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"44b" :  {
		"Name" : "-70% Maple Woodcamp Price",
		"Description" : "-70% Maple Woodcamp Price",
		"Time" : 2570, # Seconds
		"OakCost" : 8000000, "AppleCost" : 5000000, "MapleCost" : 0, "BirchCost" : 700000, "SpruceCost" : 250000,
		"ChestnutCost" : 10000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"45" :  {
		"Name" : "Improve Oak Wood Sell Value 45%",
		"Description" : "Oak Wood Sells For 45% More",
		"Time" : 2610, # Seconds
		"OakCost" : 13000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 570000, "SpruceCost" : 0,
		"ChestnutCost" : 65000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"46" :  {
		"Name" : "Make Bots 15% Cheaper",
		"Description" : "Make Bots 15% Cheaper",
		"Time" : 2620, # Seconds
		"OakCost" : 0, "AppleCost" : 5000000, "MapleCost" : 1500000, "BirchCost" : 0, "SpruceCost" : 210000,
		"ChestnutCost" : 108000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Market"]["Bots"]["Unlocked"],
	},
	"47" :  {
		"Name" : "7.5% WPC To WPS",
		"Description" : "7.5% WPC To WPS",
		"Time" : 2640, # Seconds
		"OakCost" : 0, "AppleCost" : 5250000, "MapleCost" : 1340000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"48" :  {
		"Name" : "10% Magic Gain",
		"Description" : "10% Magic Gain",
		"Time" : 2670, # Seconds
		"OakCost" : 20000000, "AppleCost" : 0, "MapleCost" : 1800000, "BirchCost" : 690000, "SpruceCost" : 0,
		"ChestnutCost" : 137500, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"49" :  {
		"Name" : "Unlock Cherry",
		"Description" : "Unlock Cherry",
		"Time" : 2710, # Seconds
		"OakCost" : 25000000, "AppleCost" : 8000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 300000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"50" :  {
		"Name" : "Classic And Chestnut WPC +199",
		"Description" : "Classic And Chestnut Wood Per click +199",
		"Time" : 2740, # Seconds
		"OakCost" : 33666000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1000000, "SpruceCost" : 375000,
		"ChestnutCost" : 150000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"51" :  {
		"Name" : "Maple And Spruce WPS 22%",
		"Description" : "Maple And Spruce WPS 22%",
		"Time" : 2750, # Seconds
		"OakCost" : 29000000, "AppleCost" : 15000000, "MapleCost" : 0, "BirchCost" : 1100000, "SpruceCost" : 0,
		"ChestnutCost" : 220000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"52" :  {
		"Name" : "Classic Wood +10 Woodcamps",
		"Description" : "Classic Wood +10 Woodcamps",
		"Time" : 2800, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 500000,
		"ChestnutCost" : 444000, "CherryCost" : 77000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"53" :  {
		"Name" : "Each Achievement Gives +0.75% WPS",
		"Description" : "Each Achievement Gives +0.75% WPS",
		"Time" : 2830, # Seconds
		"OakCost" : 0, "AppleCost" : 17000000, "MapleCost" : 5000000, "BirchCost" : 0, "SpruceCost" : 600000,
		"ChestnutCost" : 0, "CherryCost" : 100000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"54" :  {
		"Name" : "Chestnut Beavers 55% Cheaper",
		"Description" : "Chestnut Beavers 55% Cheaper",
		"Time" : 2850, # Seconds
		"OakCost" : 35000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 2000000, "SpruceCost" : 0,
		"ChestnutCost" : 400000, "CherryCost" : 125000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"55" :  {
		"Name" : "Woodcamps 35% Cheaper",
		"Description" : "Woodcamps 35% Cheaper",
		"Time" : 2880, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 5500000, "BirchCost" : 0, "SpruceCost" : 800000,
		"ChestnutCost" : 500000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"56" :  {
		"Name" : "-15% Reaserch Time",
		"Description" : "-15% Reaserch Time",
		"Time" : 2920, # Seconds
		"OakCost" : 40000000, "AppleCost" : 21000000, "MapleCost" : 4950000, "BirchCost" : 2750000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"57" :  {
		"Name" : "Bots Sell 25% More",
		"Description" : "Bots Sell 25% More",
		"Time" : 3000, # Seconds
		"OakCost" : 0, "AppleCost" : 20000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1200000,
		"ChestnutCost" : 750000, "CherryCost" : 200000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"58" :  {
		"Name" : "Chestnut Price 15%",
		"Description" : "Chestnut Price 15%",
		"Time" : 3100, # Seconds
		"OakCost" : 44000000, "AppleCost" : 0, "MapleCost" : 8000000, "BirchCost" : 4000000, "SpruceCost" : 1350000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"59" :  {
		"Name" : "Unlock Ash",
		"Description" : "Unlock Ash",
		"Time" : 3200, # Seconds
		"OakCost" : 50000000, "AppleCost" : 25000000, "MapleCost" : 10000000, "BirchCost" : 5000000, "SpruceCost" : 2500000,
		"ChestnutCost" : 1000000, "CherryCost" : 500000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"60" :  {
		"Name" : "Magic Power Increased By 13.5%",
		"Description" : "Magic Power Increased By 13.5%",
		"Time" : 3400, # Seconds
		"OakCost" : 0, "AppleCost" : 27500000, "MapleCost" : 8600000, "BirchCost" : 6000000, "SpruceCost" : 2259000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"61" :  {
		"Name" : "Spruce And Birch WPS and Storage +9.9%",
		"Description" : "Spruce And Birch WPS + Storage +9.9%",
		"Time" : 3500, # Seconds
		"OakCost" : 55000000, "AppleCost" : 0, "MapleCost" : 9000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 1500000, "CherryCost" : 499880, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"62" :  {
		"Name" : "Chestnut WC -45% Price",
		"Description" : "Chestnut WC -45% Price",
		"Time" : 3550, # Seconds
		"OakCost" : 51000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 2000000,
		"ChestnutCost" : 0, "CherryCost" : 700000, "AshCost" : 50000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"63" :  {
		"Name" : "50% Cheaper Bots",
		"Description" : "50% Cheaper Bots",
		"Time" : 3700, # Seconds
		"OakCost" : 70000000, "AppleCost" : 33000000, "MapleCost" : 11000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 1600000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"64" :  {
		"Name" : "Beaver Base Storage +250",
		"Description" : "Beaver Base Storage +250",
		"Time" : 3760, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 12500000, "BirchCost" : 7500000, "SpruceCost" : 3300000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 85000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"65" :  {
		"Name" : "Cherry Price +45%",
		"Description" : "Cherry Wood Price +45%",
		"Time" : 3840, # Seconds
		"OakCost" : 69420000, "AppleCost" : 35000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 2000000, "CherryCost" : 0, "AshCost" : 125000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"66" :  {
		"Name" : "Woodcamps Use 10% Less Wood",
		"Description" : "Woodcamps Use 10% Less Wood",
		"Time" : 3870, # Seconds
		"OakCost" : 80000000, "AppleCost" : 0, "MapleCost" : 20000000, "BirchCost" : 0, "SpruceCost" : 4404000,
		"ChestnutCost" : 0, "CherryCost" : 900000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"67" :  {
		"Name" : "Cherry WPS 25%",
		"Description" : "Cherry WPS 25%",
		"Time" : 3910, # Seconds
		"OakCost" : 0, "AppleCost" : 28000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 4000000,
		"ChestnutCost" : 1800000, "CherryCost" : 0, "AshCost" : 250000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68" :  {
		"Name" : "Storage 7.5%",
		"Description" : "Storage 7.5%",
		"Time" : 3960, # Seconds
		"OakCost" : 88000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 300000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"69" :  {
		"Name" : "Unlock Cedar",
		"Description" : "Unlock Cedar",
		"Time" : 4000, # Seconds
		"OakCost" : 100000000, "AppleCost" : 50000000, "MapleCost" : 25000000, "BirchCost" : 10000000, "SpruceCost" : 5000000,
		"ChestnutCost" : 2500000, "CherryCost" : 1500000, "AshCost" : 500000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"70" :  {
		"Name" : "Ash Beavers 13% Better",
		"Description" : "Ash Beavers 13% Better",
		"Time" : 4200, # Seconds
		"OakCost" : 95000000, "AppleCost" : 0, "MapleCost" : 22500000, "BirchCost" : 0, "SpruceCost" : 7500000,
		"ChestnutCost" : 2750000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"71" :  {
		"Name" : "Woodcamps 20% More Storage",
		"Description" : "Woodcamps 20% More Storage",
		"Time" : 4500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"72" :  {
		"Name" : "15% More Magic",
		"Description" : "15% More Magic",
		"Time" : 4550, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"73" :  {
		"Name" : "Birch WPS 36%",
		"Description" : "Birch WPS 36%",
		"Time" : 4590, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"74" :  {
		"Name" : "Each Achievement Gives +0.55% Storage",
		"Description" : "Each Achievement Gives +0.55% Storage",
		"Time" : 4660, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"75" :  {
		"Name" : "6% WPS",
		"Description" : "6% WPS",
		"Time" : 4720, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"76" :  {
		"Name" : "storage From WC +27.5%",
		"Description" : "storage From WC +27.5%",
		"Time" : 4770, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"77" :  {
		"Name" : "Oak Gives 25% More Magic",
		"Description" : "Oak Gives 25% More Magic",
		"Time" : 4820, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"78" :  {
		"Name" : "Classic WPC +9%",
		"Description" : "Classic WPC +9%",
		"Time" : 4840, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"79" :  {
		"Name" : "Unlock Mahogany",
		"Description" : "Unlock Mahogany",
		"Time" : 4860, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"80" :  {
		"Name" : "WPS +5% Per Unlocked Wood Type",
		"Description" : "WPS +5% Per Unlocked Wood Type",
		"Time" : 5000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"81" :  {
		"Name" : "Each Achievement Gives +0.25% WPC",
		"Description" : "Each Achievement Gives +0.25% WPC",
		"Time" : 5100, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"82" :  {
		"Name" : "Woodcamp Base Storage +200",
		"Description" : "Woodcamp Base Storage +200",
		"Time" : 5200, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"83" :  {
		"Name" : "Spruce WC Price -66%",
		"Description" : "Spruce WC Price -66%",
		"Time" : 5230, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"84" :  {
		"Name" : "33% Reaserch Time",
		"Description" : "33% Reaserch Time",
		"Time" : 5400, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"85" :  {
		"Name" : "Cedar WPS 19.5%",
		"Description" : "Cedar WPS 19.5%",
		"Time" : 5500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"86" :  {
		"Name" : "Rare Upgrades 44% Cheaper",
		"Description" : "Rare Upgrades 44% Cheaper",
		"Time" : 5550, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"87" :  {
		"Name" : "Cedar WC Production Cost -30%",
		"Description" : "Cedar WC Production Cost -30%",
		"Time" : 5570, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"88" :  {
		"Name" : "1 Beaver Per 11 WC",
		"Description" : "1 Beaver Per 11 WC",
		"Time" : 5610, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"89" :  {
		"Name" : "Unlock Ebony",
		"Description" : "Unlock Ebony",
		"Time" : 5640, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"90" :  {
		"Name" : "Rare Storage +23.5%",
		"Description" : "Rare Storage +23.5%",
		"Time" : 5650, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"91" :  {
		"Name" : "3.5% WPC To WPS",
		"Description" : "3.5% WPC To WPS",
		"Time" : 5700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"92" :  {
		"Name" : "Upgrade Price -20%",
		"Description" : "Upgrade Price -20%",
		"Time" : 5750, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"93" :  {
		"Name" : "WPC, Storage +3% Per Unlocked Wood",
		"Description" : "WPC, Storage +3% Per Unlocked Wood",
		"Time" : 5780, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"94" :  {
		"Name" : "Mahogany Price 11%",
		"Description" : "Mahogany Price 11%",
		"Time" : 5860, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"95" :  {
		"Name" : "7.5% More Magic",
		"Description" : "7.5% More Magic",
		"Time" : 5890, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"96" :  {
		"Name" : "1% WPS Per Achievement",
		"Description" : "1% WPS Per Achievement",
		"Time" : 5940, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"97" :  {
		"Name" : "Ebony Storage 15%",
		"Description" : "Ebony Storage 15%",
		"Time" : 5980, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"98" :  {
		"Name" : "Research Time -55%",
		"Description" : "Research Time -55%",
		"Time" : 6000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"99" :  {
		"Name" : "Unlock Dogwood",
		"Description" : "Unlock Dogwood",
		"Time" : 6060, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"100" :  {
		"Name" : "Gain +1 Beaver Per 20 Achievements",
		"Description" : "Gain +1 Beaver Per 20 Achievements",
		"Time" : 6120, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"101" :  {
		"Name" : "Mahogany WPS 11%",
		"Description" : "Mahogany WPS 11%",
		"Time" : 6240, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"102" :  {
		"Name" : "Rare WPC +8%",
		"Description" : "Rare WPC +8%",
		"Time" : 6500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"103" :  {
		"Name" : "Classic And Rare WPS 15.5%",
		"Description" : "Classic And Rare WPS 15.5%",
		"Time" : 6600, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"104" :  {
		"Name" : "Magic Bonuses x1.2",
		"Description" : "Magic Bonuses x1.2",
		"Time" : 6660, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"105" :  {
		"Name" : "Storage 4.5%",
		"Description" : "Storage 4.5%",
		"Time" : 6840, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"106" :  {
		"Name" : "Ebony +7 Woodcamps",
		"Description" : "Ebony +7 Woodcamps",
		"Time" : 7000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"107" :  {
		"Name" : "WC +1 Per 22 Beavers",
		"Description" : "WC +1 Per 22 Beavers",
		"Time" : 7040, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"108" :  {
		"Name" : "Research Time -0.2% Per Achievement",
		"Description" : "Research Time -0.2% Per Achievement",
		"Time" : 7070, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"109" :  {
		"Name" : "Unlock Rosewood",
		"Description" : "Unlock Rosewood",
		"Time" : 7110, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"110" :  {
		"Name" : "Woodcamps 27.5% WPS",
		"Description" : "Woodcamps 27.5% WPS",
		"Time" : 7150, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"111" :  {
		"Name" : "Dogwood Beaver Price -11%",
		"Description" : "Dogwood Beaver Price -11%",
		"Time" : 7200, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"112" :  {
		"Name" : "Wood Price +33%",
		"Description" : "Wood Price +33%",
		"Time" : 7290, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"113" :  {
		"Name" : "Ebony +7 Beavers",
		"Description" : "Ebony +7 Beavers",
		"Time" : 7370, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"114" :  {
		"Name" : "WC Effects 11.5%",
		"Description" : "WC Effects 11.5%",
		"Time" : 7440, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"115" :  {
		"Name" : "8% WPS",
		"Description" : "8% WPS",
		"Time" : 7500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"116" :  {
		"Name" : "Rare Wood WPC To WPS 6%",
		"Description" : "Rare Wood WPC To WPS 6%",
		"Time" : 7600, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"117" :  {
		"Name" : "44% Reaserch Time",
		"Description" : "44% Reaserch Time",
		"Time" : 7700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"118" :  {
		"Name" : "Dogwood +1 WC Per 19 Beavers",
		"Description" : "Dogwood +1 WC Per 19 Beavers",
		"Time" : 7740, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"119" :  {
		"Name" : "Unlock Ghost Gum",
		"Description" : "Unlock Ghost Gum",
		"Time" : 7770, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"120" :  {
		"Name" : "Gain +1 WC Per 25 Achievements",
		"Description" : "Gain +1 WC Per 25 Achievements",
		"Time" : 7850, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"121" :  {
		"Name" : "Rosewood Storage 13.5%",
		"Description" : "Rosewood Storage 13.5%",
		"Time" : 8000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"122" :  {
		"Name" : "Dogwood Production Cost -25%",
		"Description" : "Dogwood Production Cost -25%",
		"Time" : 8080, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"123" :  {
		"Name" : "Classic Upgrades 39% Cheaper",
		"Description" : "Classic Upgrades 39% Cheaper",
		"Time" : 8120, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"124" :  {
		"Name" : "2.5% WPC To WPS",
		"Description" : "2.5% WPC To WPS",
		"Time" : 8250, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"125" :  {
		"Name" : "Achievement Bonuses +15%",
		"Description" : "Achievement Bonuses +15%",
		"Time" : 8330, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"126" :  {
		"Name" : "17.5% More Magic",
		"Description" : "17.5% More Magic",
		"Time" : 8490, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"127" :  {
		"Name" : "Rosewood WC Effect +8%",
		"Description" : "Rosewood WC Effect +8%",
		"Time" : 8520, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"128" :  {
		"Name" : "10% WPS",
		"Description" : "10% WPS",
		"Time" : 8550, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"129" :  {
		"Name" : "Unlock Dragonwood",
		"Description" : "Unlock Dragonwood",
		"Time" : 8600, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"130" :  {
		"Name" : "Ghost Gum WC and Beavers 30% Cheaper",
		"Description" : "Ghost Gum WC and Beavers 30% Cheaper",
		"Time" : 8740, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"131" :  {
		"Name" : "Gold Upgrades 30% Cheaper",
		"Description" : "Gold Upgrades 30% Cheaper",
		"Time" : 8800, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"132" :  {
		"Name" : "Magic Gain 30%",
		"Description" : "Magic Gain 30%",
		"Time" : 8900, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"133" :  {
		"Name" : "Ghost Gum WPS and Storage 25%",
		"Description" : "Ghost Gum WPS and Storage 25%",
		"Time" : 9000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"134" :  {
		"Name" : "Wood Price +50%",
		"Description" : "Wood Price +50%",
		"Time" : 9060, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"135" :  {
		"Name" : "Mythic Upgrades 44% Cheaper",
		"Description" : "Mythic Upgrades 44% Cheaper",
		"Time" : 9130, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"136" :  {
		"Name" : "WPS 1% Per Achievement",
		"Description" : "WPS 1% Per Achievement",
		"Time" : 9200, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"137" :  {
		"Name" : "Mythic Storage 28%",
		"Description" : "Mythic Storage 28%",
		"Time" : 9330, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"138" :  {
		"Name" : "Dragonwood WPS, WPC and Storage x1.5",
		"Description" : "Dragonwood WPS, WPC and Storage x1.5",
		"Time" : 9370, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"139" :  {
		"Name" : "Mythic WPC x2",
		"Description" : "Mythic WPC x2",
		"Time" : 9500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
	"140" :  {
		"Name" : "WPS x5",
		"Description" : "WPS x5",
		"Time" : 10000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 100,
		"Unlocked" : func(): return true,
	},
}
