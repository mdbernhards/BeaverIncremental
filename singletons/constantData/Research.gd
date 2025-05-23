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
	"14b" :  {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Time" : 360, # Seconds
		"OakCost" : 75000, "AppleCost" : 65000, "MapleCost" : 15000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return SaveData.GeneralInfo["AutoClickers"] > 0,
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
	"15b" :  {
		"Name" : "Fish Live 7.5% Longer",
		"Description" : "Fish Stay on Screen for a 7.5% Longer Time",
		"Time" : 380, # Seconds
		"OakCost" : 450000, "AppleCost" : 200000, "MapleCost" : 70000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"16" :  {
		"Name" : "+5 Oak Woodcamps",
		"Description" : "Adds 5 Extra Oak Woodcamps",
		"Time" : 390, # Seconds
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
	"27b" :  {
		"Name" : "10% Slower Fish",
		"Description" : "Fish Swim 10% Slower",
		"Time" : 920, # Seconds
		"OakCost" : 1450000, "AppleCost" : 800000, "MapleCost" : 360000, "BirchCost" : 150000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
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
		"Time" : 1350, # Seconds
		"OakCost" : 0, "AppleCost" : 999999, "MapleCost" : 0, "BirchCost" : 175000, "SpruceCost" : 3500,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"31b" :  {
		"Name" : "Magic Storage Multiplier 5%",
		"Description" : "Magic Storage Multiplier 5%",
		"Time" : 1380, # Seconds
		"OakCost" : 1222000, "AppleCost" : 1222000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"32" :  {
		"Name" : "Improve wood Sell Value 33%",
		"Description" : "Improve wood Sell Value 33%",
		"Time" : 1430, # Seconds
		"OakCost" : 1275000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 11550,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"33" :  {
		"Name" : "17.5% Maple Storage",
		"Description" : "17.5% Maple Storage",
		"Time" : 1510, # Seconds
		"OakCost" : 1533000, "AppleCost" : 1000000, "MapleCost" : 0, "BirchCost" : 205000, "SpruceCost" : 22222,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"34" :  {
		"Name" : "Each Achievement Gives 0.45% WPS",
		"Description" : "Each Achievement Gives 0.45% WPS",
		"Time" : 1620, # Seconds
		"OakCost" : 0, "AppleCost" : 1400000, "MapleCost" : 525000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"35" :  {
		"Name" : "Gold upgrades 13% Cheaper",
		"Description" : "Gold upgrades 13% Cheaper",
		"Time" : 1700, # Seconds
		"OakCost" : 1850000, "AppleCost" : 1199999, "MapleCost" : 759000, "BirchCost" : 0, "SpruceCost" : 35000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Gold"]["Unlocked"],
	},
	"35b" :  {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Time" : 1740, # Seconds
		"OakCost" : 3000000, "AppleCost" : 1500000, "MapleCost" : 1000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return SaveData.GeneralInfo["AutoClickers"] > 0,
	},
	"36" :  {
		"Name" : "33% Cheaper Classic Woodcamps",
		"Description" : "33% Cheaper Classic Woodcamps",
		"Time" : 1800, # Seconds
		"OakCost" : 2350000, "AppleCost" : 1260000, "MapleCost" : 886000, "BirchCost" : 240000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"37" :  {
		"Name" : "Half Reaserch Time",
		"Description" : "Half The Reaserch Time",
		"Time" : 1850, # Seconds
		"OakCost" : 3215000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 330000, "SpruceCost" : 75000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"38" :  {
		"Name" : "Beaver Storage 2x",
		"Description" : "Beaver Storage 2x",
		"Time" : 1900, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1500000, "BirchCost" : 433333, "SpruceCost" : 95000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"39" :  {
		"Name" : "Unlock Chestnut",
		"Description" : "Unlock Chestnut",
		"Time" : 1920, # Seconds
		"OakCost" : 4650000, "AppleCost" : 2250000, "MapleCost" : 1855555, "BirchCost" : 525000, "SpruceCost" : 125000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"40" :  {
		"Name" : "10% Magic WPS Multiplier",
		"Description" : "10% Magic WPS Multiplier",
		"Time" : 1950, # Seconds
		"OakCost" : 6000000, "AppleCost" : 0, "MapleCost" : 2350000, "BirchCost" : 0, "SpruceCost" : 120000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"41" :  {
		"Name" : "Oak And Apple WPS 12%",
		"Description" : "Oak And Apple WPS 12%",
		"Time" : 2000, # Seconds
		"OakCost" : 0, "AppleCost" : 2450000, "MapleCost" : 1880000, "BirchCost" : 475000, "SpruceCost" : 0,
		"ChestnutCost" : 16666, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"42" :  {
		"Name" : "Classic Upgrades 33% Cheaper",
		"Description" : "Classic Upgrades 33% Cheaper",
		"Time" : 2140, # Seconds
		"OakCost" : 5500000, "AppleCost" : 2900000, "MapleCost" : 0, "BirchCost" : 575000, "SpruceCost" : 135000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"43" :  {
		"Name" : "Woodcamps Use 6% Less Wood",
		"Description" : "Woodcamps Use 6% Less Wood",
		"Time" : 2200, # Seconds
		"OakCost" : 0, "AppleCost" : 4000000, "MapleCost" : 1459000, "BirchCost" : 600000, "SpruceCost" : 0,
		"ChestnutCost" : 32500, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"44" :  {
		"Name" : "27.5% Cheaper Classic Beavers",
		"Description" : "27.5% Cheaper Classic Beavers",
		"Time" : 2250, # Seconds
		"OakCost" : 9999999, "AppleCost" : 3750000, "MapleCost" : 0, "BirchCost" : 580000, "SpruceCost" : 170000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"44b" :  {
		"Name" : "-70% Maple Woodcamp Price",
		"Description" : "-70% Maple Woodcamp Price",
		"Time" : 2280, # Seconds
		"OakCost" : 8000000, "AppleCost" : 5000000, "MapleCost" : 0, "BirchCost" : 700000, "SpruceCost" : 250000,
		"ChestnutCost" : 10000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"45" :  {
		"Name" : "Improve Oak Wood Sell Value 45%",
		"Description" : "Oak Wood Sells For 45% More",
		"Time" : 2320, # Seconds
		"OakCost" : 13000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 570000, "SpruceCost" : 0,
		"ChestnutCost" : 65000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"46" :  {
		"Name" : "Make Merchants 15% Cheaper",
		"Description" : "Make Merchants 15% Cheaper",
		"Time" : 2400, # Seconds
		"OakCost" : 0, "AppleCost" : 5000000, "MapleCost" : 1500000, "BirchCost" : 0, "SpruceCost" : 210000,
		"ChestnutCost" : 108000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Market"]["Bots"]["Unlocked"],
	},
	"47" :  {
		"Name" : "7.5% WPC To WPS",
		"Description" : "7.5% WPC To WPS",
		"Time" : 2440, # Seconds
		"OakCost" : 0, "AppleCost" : 5250000, "MapleCost" : 1340000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"48" :  {
		"Name" : "10% Magic Gain",
		"Description" : "10% Magic Gain",
		"Time" : 2490, # Seconds
		"OakCost" : 20000000, "AppleCost" : 0, "MapleCost" : 1800000, "BirchCost" : 690000, "SpruceCost" : 0,
		"ChestnutCost" : 137500, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"49" :  {
		"Name" : "Unlock Cherry",
		"Description" : "Unlock Cherry",
		"Time" : 2550, # Seconds
		"OakCost" : 25000000, "AppleCost" : 8000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 300000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"50" :  {
		"Name" : "Classic And Chestnut WPC +199",
		"Description" : "Classic And Chestnut Wood Per click +199",
		"Time" : 2620, # Seconds
		"OakCost" : 33666000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1000000, "SpruceCost" : 375000,
		"ChestnutCost" : 150000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"51" :  {
		"Name" : "Maple And Spruce WPS 22%",
		"Description" : "Maple And Spruce WPS 22%",
		"Time" : 2670, # Seconds
		"OakCost" : 29000000, "AppleCost" : 15000000, "MapleCost" : 0, "BirchCost" : 1100000, "SpruceCost" : 0,
		"ChestnutCost" : 220000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"51b" :  {
		"Name" : "Fish Become 7.5% Bigger",
		"Description" : "Increases Fish Size By 7.5%",
		"Time" : 2700, # Seconds
		"OakCost" : 50000000, "AppleCost" : 29000000, "MapleCost" : 7500000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"52" :  {
		"Name" : "Classic Wood +10 Woodcamps",
		"Description" : "Classic Wood +10 Woodcamps",
		"Time" : 2740, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 500000,
		"ChestnutCost" : 444000, "CherryCost" : 77000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"53" :  {
		"Name" : "Each Achievement Gives +0.75% WPS",
		"Description" : "Each Achievement Gives +0.75% WPS",
		"Time" : 2770, # Seconds
		"OakCost" : 0, "AppleCost" : 17000000, "MapleCost" : 11000000, "BirchCost" : 0, "SpruceCost" : 600000,
		"ChestnutCost" : 0, "CherryCost" : 100000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"54" :  {
		"Name" : "Chestnut Beavers 55% Cheaper",
		"Description" : "Chestnut Beavers 55% Cheaper",
		"Time" : 2820, # Seconds
		"OakCost" : 35000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 2000000, "SpruceCost" : 0,
		"ChestnutCost" : 400000, "CherryCost" : 125000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"55" :  {
		"Name" : "Woodcamps 35% Cheaper",
		"Description" : "Woodcamps 35% Cheaper",
		"Time" : 2850, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 10000000, "BirchCost" : 0, "SpruceCost" : 800000,
		"ChestnutCost" : 500000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"56" :  {
		"Name" : "-15% Reaserch Time",
		"Description" : "-15% Reaserch Time",
		"Time" : 2900, # Seconds
		"OakCost" : 40000000, "AppleCost" : 21000000, "MapleCost" : 14950000, "BirchCost" : 2750000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"57" :  {
		"Name" : "Merchants Sell 25% More",
		"Description" : "Merchants Sell 25% More",
		"Time" : 3000, # Seconds
		"OakCost" : 0, "AppleCost" : 20000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1200000,
		"ChestnutCost" : 750000, "CherryCost" : 200000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Market"]["Bots"]["Unlocked"],
	},
	"57b" :  {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Time" : 3050, # Seconds
		"OakCost" : 66600000, "AppleCost" : 33300000, "MapleCost" : 20660000, "BirchCost" : 3330000, "SpruceCost" : 2220000,
		"ChestnutCost" : 999000, "CherryCost" : 333000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return SaveData.GeneralInfo["AutoClickers"] > 0,
	},
	"58" :  {
		"Name" : "Chestnut Price 15%",
		"Description" : "Chestnut Price 15%",
		"Time" : 3100, # Seconds
		"OakCost" : 44000000, "AppleCost" : 0, "MapleCost" : 28000000, "BirchCost" : 4000000, "SpruceCost" : 1350000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"58b" :  {
		"Name" : "Chestnut, Cherry Storage +33%",
		"Description" : "Increase Chestnut and Cherry Wood Type Storage By 33%",
		"Time" : 3150, # Seconds
		"OakCost" : 125000000, "AppleCost" : 69000000, "MapleCost" : 65000000, "BirchCost" : 8000000, "SpruceCost" : 6000000,
		"ChestnutCost" : 1333000, "CherryCost" : 600000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"59" :  {
		"Name" : "Unlock Ash",
		"Description" : "Unlock Ash",
		"Time" : 3200, # Seconds
		"OakCost" : 50000000, "AppleCost" : 36000000, "MapleCost" : 30000000, "BirchCost" : 5000000, "SpruceCost" : 2500000,
		"ChestnutCost" : 1000000, "CherryCost" : 500000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"60" :  {
		"Name" : "Magic Power Increased By 13.5%",
		"Description" : "Magic Power Increased By 13.5%",
		"Time" : 3400, # Seconds
		"OakCost" : 0, "AppleCost" : 37500000, "MapleCost" : 28600000, "BirchCost" : 6000000, "SpruceCost" : 2259000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"61" :  {
		"Name" : "Spruce And Birch WPS and Storage +9.9%",
		"Description" : "Spruce And Birch WPS + Storage +9.9%",
		"Time" : 3500, # Seconds
		"OakCost" : 55000000, "AppleCost" : 0, "MapleCost" : 29000000, "BirchCost" : 0, "SpruceCost" : 0,
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
		"Name" : "50% Cheaper Merchants",
		"Description" : "50% Cheaper Merchants",
		"Time" : 3700, # Seconds
		"OakCost" : 70000000, "AppleCost" : 33000000, "MapleCost" : 31000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 1600000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Market"]["Bots"]["Unlocked"],
	},
	"64" :  {
		"Name" : "Beaver Base Storage +250",
		"Description" : "Beaver Base Storage +250",
		"Time" : 3760, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 32500000, "BirchCost" : 7500000, "SpruceCost" : 3300000,
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
		"OakCost" : 80000000, "AppleCost" : 0, "MapleCost" : 35000000, "BirchCost" : 0, "SpruceCost" : 4404000,
		"ChestnutCost" : 0, "CherryCost" : 900000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"66b" :  {
		"Name" : "Catching Bar 10% Slower",
		"Description" : "The Bouncing Bar Becomes 10% Slower When Catching Fish",
		"Time" : 3900, # Seconds
		"OakCost" : 200000000, "AppleCost" : 85000000, "MapleCost" : 55000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"67" :  {
		"Name" : "Cherry WPS 25%",
		"Description" : "Cherry WPS 25%",
		"Time" : 3930, # Seconds
		"OakCost" : 0, "AppleCost" : 48000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 4000000,
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
	"68b" :  {
		"Name" : "10x Oak Storage",
		"Description" : "10x Oak Storage",
		"Time" : 4700, # Seconds
		"OakCost" : 650000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68c" :  {
		"Name" : "8x Apple Storage",
		"Description" : "8x Apple Storage",
		"Time" : 5200, # Seconds
		"OakCost" : 0, "AppleCost" : 333000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68d" :  {
		"Name" : "6x Maple Storage",
		"Description" : "6x Maple Storage",
		"Time" : 5500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 220000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68e" :  {
		"Name" : "25x Birch Storage",
		"Description" : "25x Birch Storage",
		"Time" : 5700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 25000000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68f" :  {
		"Name" : "15x Spruce Storage",
		"Description" : "15x Spruce Storage",
		"Time" : 5900, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 20000000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68g" :  {
		"Name" : "22x Chestnut Storage",
		"Description" : "22x Chestnut Storage",
		"Time" : 6100, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 6500000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68h" :  {
		"Name" : "28x Cherry Storage",
		"Description" : "28x Cherry Storage",
		"Time" : 6300, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 2000000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68i" :  {
		"Name" : "16x Ash Storage",
		"Description" : "16x Ash Storage",
		"Time" : 6500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 1700000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"69" :  {
		"Name" : "Unlock Cedar",
		"Description" : "Unlock Cedar",
		"Time" : 6600, # Seconds
		"OakCost" : 12000000000, "AppleCost" : 3300000000, "MapleCost" : 2000000000, "BirchCost" : 900000000, "SpruceCost" : 450000000,
		"ChestnutCost" : 200000000, "CherryCost" : 115000000, "AshCost" : 45000000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"70" :  {
		"Name" : "Ash Beavers 13% Better",
		"Description" : "Ash Beavers 13% Better",
		"Time" : 7800, # Seconds
		"OakCost" : 15000000000, "AppleCost" : 2500000000, "MapleCost" : 1000000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"71" :  {
		"Name" : "Woodcamps 20% More Storage",
		"Description" : "Woodcamps 20% More Storage",
		"Time" : 8000, # Seconds
		"OakCost" : 0, "AppleCost" : 4000000000, "MapleCost" : 1450000000, "BirchCost" : 500000000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"72" :  {
		"Name" : "15% More Magic",
		"Description" : "15% More Magic",
		"Time" : 8350, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 2550000000, "BirchCost" : 750000000, "SpruceCost" : 333000000,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"73" :  {
		"Name" : "Birch, Maple, Apple WPS 36%",
		"Description" : "Birch, Maple, Apple Wood Per Second Increased By 36%",
		"Time" : 9530, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 145000000, "SpruceCost" : 400000000,
		"ChestnutCost" : 125000000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"73b" :  {
		"Name" : "Fishing Chance Refresh -1 min",
		"Description" : "Lowers Fishing Chance Refresh Time By 1 minute",
		"Time" : 9780, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 850000000,
		"ChestnutCost" : 185000000, "CherryCost" : 55000000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 00,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"74" :  {
		"Name" : "Achievements give 20% More Storage",
		"Description" : "Achievements give 20% More Storage",
		"Time" : 9020, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 330000000, "CherryCost" : 95000000, "AshCost" : 25000000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"74b" :  {
		"Name" : "Birch and Maple Beaver Price -95%",
		"Description" : "Birch and Maple Beaver Price -95%",
		"Time" : 9700, # Seconds
		"OakCost" : 10000000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 440000000,
		"ChestnutCost" : 330000000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 500000, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"75" :  {
		"Name" : "Classic and Rare WPS 15%",
		"Description" : "Classic and Rare WPS 15%",
		"Time" : 10570, # Seconds
		"OakCost" : 18500000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 170000000, "AshCost" : 40000000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"76" :  {
		"Name" : "Storage from Beavers +27.5%",
		"Description" : "Storage from Beavers +27.5%",
		"Time" : 10850, # Seconds
		"OakCost" : 20000000000, "AppleCost" : 6000000000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 75000000, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"77" :  {
		"Name" : "Magic Bonuses +10%",
		"Description" : "Magic Bonuses +10%",
		"Time" : 11920, # Seconds
		"OakCost" : 0, "AppleCost" : 4500000000, "MapleCost" : 0, "BirchCost" : 155000000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 150000000, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"78" :  {
		"Name" : "Classic WPC 3x",
		"Description" : "Classic WPC 3x",
		"Time" : 12340, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 350000000, "CherryCost" : 200000000, "AshCost" : 100000000, "CedarCost" : 1250000, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"79" :  {
		"Name" : "Unlock Mahogany",
		"Description" : "Unlock Mahogany",
		"Time" : 12700, # Seconds
		"OakCost" : 50000000000, "AppleCost" : 20000000000, "MapleCost" : 10000000000, "BirchCost" : 5000000000, "SpruceCost" : 2500000000,
		"ChestnutCost" : 1200000000, "CherryCost" : 500000000, "AshCost" : 200000000, "CedarCost" : 1800000, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"79b" :  {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Time" : 13080, # Seconds
		"OakCost" : 40000000000, "AppleCost" : 10000000000, "MapleCost" : 5000000000, "BirchCost" : 2500000000, "SpruceCost" : 1250000000,
		"ChestnutCost" : 600000000, "CherryCost" : 250000000, "AshCost" : 100000000, "CedarCost" : 750000, "MahoganyCost" : 66666,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return SaveData.GeneralInfo["AutoClickers"] > 0,
	},
	"80" :  {
		"Name" : "Rare WPS +5% per Unlocked Wood Type",
		"Description" : "Rare WPS +5% per Unlocked Wood Type",
		"Time" : 13900, # Seconds
		"OakCost" : 65000000000, "AppleCost" : 0, "MapleCost" : 14500000000, "BirchCost" : 0, "SpruceCost" : 1600000000,
		"ChestnutCost" : 0, "CherryCost" : 666000000, "AshCost" : 0, "CedarCost" : 2000000, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"81" :  {
		"Name" : "Achievements Give +35% WPC",
		"Description" : "Achievements Give +35% WPC",
		"Time" : 14150, # Seconds
		"OakCost" : 0, "AppleCost" : 50000000000, "MapleCost" : 3000000000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 2000000000, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 500000000, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"81b" :  {
		"Name" : "Fishing Time 7.5% Longer",
		"Description" : "Fish Stay on Screen for a 7.5% Longer Time",
		"Time" : 14570, # Seconds
		"OakCost" : 1.4e11, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 2.5e9, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 2.4e7,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"82" :  {
		"Name" : "Woodcamp Base Storage +200",
		"Description" : "Woodcamp Base Storage +200",
		"Time" : 15900, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 3.75e10, "BirchCost" : 7.8e9, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"83" :  {
		"Name" : "Spruce WC Price -66%",
		"Description" : "Spruce WC Price -66%",
		"Time" : 16000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 7e9,
		"ChestnutCost" : 2.5e9, "CherryCost" : 1.8e9, "AshCost" : 1e9, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"83b" :  {
		"Name" : "Apple WPS 2x",
		"Description" : "Apple WPS 2x",
		"Time" : 17000, # Seconds
		"OakCost" : 2e11, "AppleCost" : 0, "MapleCost" : 4e10, "BirchCost" : 0, "SpruceCost" : 7e9,
		"ChestnutCost" : 0, "CherryCost" : 2e9, "AshCost" : 1e9, "CedarCost" : 0, "MahoganyCost" : 2.8e7,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"84" :  {
		"Name" : "33% Reaserch Time",
		"Description" : "33% Reaserch Time",
		"Time" : 17440, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 4.2e10, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 3e9, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 9e8, "MahoganyCost" : 3e7,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"85" :  {
		"Name" : "Cedar WPS 19.5%",
		"Description" : "Cedar WPS 19.5%",
		"Time" : 18200, # Seconds
		"OakCost" : 3e11, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 9e9, "SpruceCost" : 7e9,
		"ChestnutCost" : 3.4e9, "CherryCost" : 0, "AshCost" : 1.3e9, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"86" :  {
		"Name" : "Rare Upgrades 44% Cheaper",
		"Description" : "Rare Upgrades 44% Cheaper",
		"Time" : 19410, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 7.5e9,
		"ChestnutCost" : 0, "CherryCost" : 1.95e9, "AshCost" : 0, "CedarCost" : 1e9, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"87" :  {
		"Name" : "Cedar WC Production Cost -30%",
		"Description" : "Cedar WC Production Cost -30%",
		"Time" : 20730, # Seconds
		"OakCost" : 0, "AppleCost" : 8e10, "MapleCost" : 5e10, "BirchCost" : 1e10, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"88" :  {
		"Name" : "Classic and Rare +15 Beavers",
		"Description" : "Classic and Rare +15 Beavers",
		"Time" : 21970, # Seconds
		"OakCost" : 0, "AppleCost" : 1e11, "MapleCost" : 0, "BirchCost" : 1.2e10, "SpruceCost" : 0,
		"ChestnutCost" : 5e9, "CherryCost" : 0, "AshCost" : 1.6e9, "CedarCost" : 1.3e9, "MahoganyCost" : 4.5e7,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"89" :  {
		"Name" : "Unlock Ebony",
		"Description" : "Unlock Ebony",
		"Time" : 22100, # Seconds
		"OakCost" : 5e11, "AppleCost" : 2e11, "MapleCost" : 1e11, "BirchCost" : 2e10, "SpruceCost" : 1e10,
		"ChestnutCost" : 1e10, "CherryCost" : 5e9, "AshCost" : 3e9, "CedarCost" : 2e9, "MahoganyCost" : 1e8,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"90" :  {
		"Name" : "Rare Storage +23.5%",
		"Description" : "Rare Storage +23.5%",
		"Time" : 22450, # Seconds
		"OakCost" : 6.6e11, "AppleCost" : 2.3e11, "MapleCost" : 1.3e11, "BirchCost" : 5e10, "SpruceCost" : 2e10,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"91" :  {
		"Name" : "+33% WPC",
		"Description" : "+33% WPC",
		"Time" : 23200, # Seconds
		"OakCost" : 9e11, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 6.5e8,
		"EbonyCost" : 2.5e7, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"92" :  {
		"Name" : "Classic and Rare Upgrade price -20%",
		"Description" : "Classic and Rare Upgrade price -20%",
		"Time" : 23850, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 7e7, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"93" :  {
		"Name" : "WPC, Storage +3% Per Unlocked Wood",
		"Description" : "WPC, Storage +3% Per Unlocked Wood",
		"Time" : 24250, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 5.5e10, "SpruceCost" : 6.5e10,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 2.5e10, "CedarCost" : 1.65e10, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"93b" :  {
		"Name" : "+1 Chance To Fish",
		"Description" : "Adds +1 Chance For Fishing",
		"Time" : 24890, # Seconds
		"OakCost" : 0, "AppleCost" : 8.2e11, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 3e10, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1e9,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"94" :  {
		"Name" : "Mahogany Price 11%",
		"Description" : "Mahogany Price 11%",
		"Time" : 25660, # Seconds
		"OakCost" : 1.35e12, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 9e10,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.66e9,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"94b" :  {
		"Name" : "Apple, Maple, Birch, Spruce WPC 2x",
		"Description" : "Apple, Maple, Birch, Spruce WPC 2x",
		"Time" : 26980, # Seconds
		"OakCost" : 0, "AppleCost" : 9.5e11, "MapleCost" : 7.7e11, "BirchCost" : 1.1e11, "SpruceCost" : 1.1e11,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.66e9,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"95" :  {
		"Name" : "7.5% More Magic",
		"Description" : "7.5% More Magic",
		"Time" : 28450, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 6e11, "BirchCost" : 9e10, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 2.5e10, "MahoganyCost" : 0,
		"EbonyCost" : 1e8, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"95b" :  {
		"Name" : "2x Dam Construction Speed",
		"Description" : "2x Dam Construction Speed",
		"Time" : 29750, # Seconds
		"OakCost" : 1.75e12, "AppleCost" : 9.9e11, "MapleCost" : 8.8e11, "BirchCost" : 1.25e11, "SpruceCost" : 1.25e11,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 1.5e8, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"96" :  {
		"Name" : "1% WPS Per Achievement",
		"Description" : "1% WPS Per Achievement",
		"Time" : 34990, # Seconds
		"OakCost" : 2e12, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.35e11, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 4.5e10, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"97" :  {
		"Name" : "Ebony Storage 15%",
		"Description" : "Ebony Storage 15%",
		"Time" : 37780, # Seconds
		"OakCost" : 3e12, "AppleCost" : 1e12, "MapleCost" : 9e11, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"97b" :  {
		"Name" : "Cherry Beaver Price -65%",
		"Description" : "Cherry Beaver Price -65%",
		"Time" : 38930, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 5e10, "CherryCost" : 0, "AshCost" : 6e10, "CedarCost" : 0, "MahoganyCost" : 3e9,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"97c" :  {
		"Name" : "Birch Storage 3x",
		"Description" : "Birch Storage 3x",
		"Time" : 39200, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.8e11,
		"ChestnutCost" : 5.5e10, "CherryCost" : 4e10, "AshCost" : 3.75e10, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"97d" :  {
		"Name" : "Spruce Storage 2x",
		"Description" : "Spruce Storage 2x",
		"Time" : 40400, # Seconds
		"OakCost" : 3.5e12, "AppleCost" : 1.85e12, "MapleCost" : 9.9e11, "BirchCost" : 1.6e11, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"98" :  {
		"Name" : "Research Time -15%",
		"Description" : "Research Time -15%",
		"Time" : 41600, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.95e11, "SpruceCost" : 0,
		"ChestnutCost" : 6e10, "CherryCost" : 5e10, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 3.5e9,
		"EbonyCost" : 2e8, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"98b" :  {
		"Name" : "Apple, Maple, Birch WPC 3x",
		"Description" : "Apple, Maple, Birch WPC 3x",
		"Time" : 42750, # Seconds
		"OakCost" : 4e12, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.65e11, "SpruceCost" : 1.55e11,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 3.5e10, "MahoganyCost" : 0,
		"EbonyCost" : 3e8, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"99" :  {
		"Name" : "Unlock Dogwood",
		"Description" : "Unlock Dogwood",
		"Time" : 44250, # Seconds
		"OakCost" : 5e12, "AppleCost" : 2e12, "MapleCost" : 1e12, "BirchCost" : 4e11, "SpruceCost" : 3.5e11,
		"ChestnutCost" : 1e11, "CherryCost" : 7.5e10, "AshCost" : 7e10, "CedarCost" : 4e10, "MahoganyCost" : 4.5e9,
		"EbonyCost" : 2.5e8, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"99b" :  { #New
		"Name" : "Fishing Chance Refresh -1 min",
		"Description" : "Lowers Fishing Chance Refresh Time By 1 minute",
		"Time" : 45500, # Seconds
		"OakCost" : 6.5e12, "AppleCost" : 0, "MapleCost" : 1.5e12, "BirchCost" : 0, "SpruceCost" : 4.5e11,
		"ChestnutCost" : 0, "CherryCost" : 1e11, "AshCost" : 0, "CedarCost" : 9.5e10, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"100" :  {
		"Name" : "Gain +1 Beaver Per 20 Achievements",
		"Description" : "Gain +1 Beaver Per 20 Achievements",
		"Time" : 46120, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 2e12, "BirchCost" : 6.5e11, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 4e8, "DogwoodCost" : 1e8, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"101" :  {
		"Name" : "Mahogany WPS 22%",
		"Description" : "Mahogany WPS 22%",
		"Time" : 47240, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 1e11, "MahoganyCost" : 0,
		"EbonyCost" : 5e8, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"102" :  {
		"Name" : "Rare and Mythic WPC +25%",
		"Description" : "Rare and Mythic WPC +25%",
		"Time" : 47500, # Seconds
		"OakCost" : 9e12, "AppleCost" : 5e12, "MapleCost" : 2.5e12, "BirchCost" : 8e11, "SpruceCost" : 7.5e11,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"103" :  {
		"Name" : "Classic And Rare WPS 17.5%",
		"Description" : "Classic And Rare WPS 17.5%",
		"Time" : 48600, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 1e9, "DogwoodCost" : 3e8, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"103b" :  {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Time" : 48930, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 9.6e11, "SpruceCost" : 0,
		"ChestnutCost" : 3e11, "CherryCost" : 2e11, "AshCost" : 1.2e11, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return SaveData.GeneralInfo["AutoClickers"] > 0,
	},
	"104" :  {
		"Name" : "Magic Bonuses 20%",
		"Description" : "Magic Bonuses 20%",
		"Time" : 49660, # Seconds
		"OakCost" : 0, "AppleCost" : 7e12, "MapleCost" : 3.2e12, "BirchCost" : 1e12, "SpruceCost" : 9e11,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"105" :  {
		"Name" : "Storage 4.5%",
		"Description" : "Storage 4.5%",
		"Time" : 50940, # Seconds
		"OakCost" : 1.5e13, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.66e12, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 3e11, "AshCost" : 0, "CedarCost" : 2e11, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"105b" :  {
		"Name" : "Fish Effects 20% Stronger",
		"Description" : "All Fish effects become 20% better",
		"Time" : 51920, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1e12,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 2e11, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"106" :  {
		"Name" : "Ebony +15 Woodcamps",
		"Description" : "Ebony +15 Woodcamps",
		"Time" : 52000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 7.5e9,
		"EbonyCost" : 0, "DogwoodCost" : 7.5e8, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"106b" :  {
		"Name" : "20% Dam Construction Speed",
		"Description" : "20% Dam Construction Speed",
		"Time" : 53750, # Seconds
		"OakCost" : 2e13, "AppleCost" : 1e13, "MapleCost" : 0, "BirchCost" : 2e12, "SpruceCost" : 1.5e12,
		"ChestnutCost" : 0, "CherryCost" : 5e11, "AshCost" : 3.5e11, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"107" :  {
		"Name" : "Mythic WC Price -45%",
		"Description" : "Mythic WC Price -45%",
		"Time" : 54040, # Seconds
		"OakCost" : 2.5e13, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.75e12,
		"ChestnutCost" : 6.5e11, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1e10,
		"EbonyCost" : 1.5e9, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"108" :  {
		"Name" : "Research Time -20%",
		"Description" : "Research Time -20%",
		"Time" : 55070, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 5e12, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 3.5e11, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 1e9, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"109" :  {
		"Name" : "Unlock Rosewood",
		"Description" : "Unlock Rosewood",
		"Time" : 56610, # Seconds
		"OakCost" : 3e13, "AppleCost" : 1.5e13, "MapleCost" : 7.5e12, "BirchCost" : 2.5e12, "SpruceCost" : 1.75e12,
		"ChestnutCost" : 9e11, "CherryCost" : 6.5e11, "AshCost" : 4.5e11, "CedarCost" : 4e11, "MahoganyCost" : 2e10,
		"EbonyCost" : 3e9, "DogwoodCost" : 1.5e9, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"110" :  {
		"Name" : "WPS +27.5%",
		"Description" : "WPS +27.5%",
		"Time" : 57150, # Seconds
		"OakCost" : 0, "AppleCost" : 1.65e13, "MapleCost" : 0, "BirchCost" : 3e12, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 5e11, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 2e9, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"111" :  {
		"Name" : "Mythic Beaver price -25%",
		"Description" : "Mythic Beaver price -25%",
		"Time" : 68500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 1e12, "CherryCost" : 9e11, "AshCost" : 1.5e12, "CedarCost" : 1.55e12, "MahoganyCost" : 6e10,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"112" :  {
		"Name" : "Wood Price +33%",
		"Description" : "Wood Price +33%",
		"Time" : 81790, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1.3e13, "BirchCost" : 0, "SpruceCost" : 3e12,
		"ChestnutCost" : 0, "CherryCost" : 1.3e12, "AshCost" : 0, "CedarCost" : 1.65e12, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 2.1e9, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"113" :  {
		"Name" : "Ebony +25 Beavers",
		"Description" : "Ebony +25 Beavers",
		"Time" : 95370, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 6.3e9, "DogwoodCost" : 0, "RosewoodCost" : 7.5e8, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"114" :  {
		"Name" : "WC Effects 11.5%",
		"Description" : "WC Effects 11.5%",
		"Time" : 110640, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 4.3e12, "SpruceCost" : 4.2e12,
		"ChestnutCost" : 0, "CherryCost" : 1.5e12, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 8.5e10,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 1e9, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"114b" :  {
		"Name" : "25% Dam Construction Speed",
		"Description" : "25% Dam Construction Speed",
		"Time" : 137850, # Seconds
		"OakCost" : 7e13, "AppleCost" : 4.5e13, "MapleCost" : 2.5e13, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 8.5e9, "DogwoodCost" : 3e9, "RosewoodCost" : 1.25e9, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"115" :  {
		"Name" : "8% WPS",
		"Description" : "8% WPS",
		"Time" : 160500, # Seconds
		"OakCost" : 8.2e13, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 5.75e12, "SpruceCost" : 0,
		"ChestnutCost" : 1.6e12, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"116" :  {
		"Name" : "Rare Wood WPC To WPS 6%",
		"Description" : "Rare Wood WPC To WPS 6%",
		"Time" : 188600, # Seconds
		"OakCost" : 0, "AppleCost" : 6e13, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 5.5e12,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 1.3e9, "DogwoodCost" : 0, "RosewoodCost" : 2.3e9, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"116b" :  {
		"Name" : "Mahogany, Ebony, Dogwood, Rosewood Storage 3x",
		"Description" : "Mahogany, Ebony, Dogwood, Rosewood Storage 3x",
		"Time" : 206600, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.9e11,
		"EbonyCost" : 1.65e10, "DogwoodCost" : 7.5e9, "RosewoodCost" : 2.75e9, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"117" :  {
		"Name" : "25% Reaserch Time",
		"Description" : "25% Reaserch Time",
		"Time" : 246660, # Seconds
		"OakCost" : 1e14, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 2.2e12, "AshCost" : 3e12, "CedarCost" : 2.5e12, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 2e10, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"117b" :  {
		"Name" : "Fish Price +33%",
		"Description" : "Increases all fish price by 33%",
		"Time" : 288700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 4e13, "BirchCost" : 7.5e12, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 3e12, "MahoganyCost" : 5.35e11,
		"EbonyCost" : 4.65e10, "DogwoodCost" : 2.25e10, "RosewoodCost" : 7e9, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"118" :  {
		"Name" : "Dogwood +9 Woodcamps and Beavers",
		"Description" : "Dogwood +9 Woodcamps and Beavers",
		"Time" : 329740, # Seconds
		"OakCost" : 0, "AppleCost" : 6.5e13, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 6e10, "DogwoodCost" : 0, "RosewoodCost" : 8.5e9, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"119" :  {
		"Name" : "Unlock Ghost Gum",
		"Description" : "Unlock Ghost Gum",
		"Time" : 371790, # Seconds
		"OakCost" : 1.5e14, "AppleCost" : 9e13, "MapleCost" : 6e13, "BirchCost" : 1e13, "SpruceCost" : 8e12,
		"ChestnutCost" : 2.5e12, "CherryCost" : 3.3e12, "AshCost" : 4.5e12, "CedarCost" : 3.75e12, "MahoganyCost" : 7.5e11,
		"EbonyCost" : 7.5e10, "DogwoodCost" : 3e10, "RosewoodCost" : 1e10, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"120" :  {
		"Name" : "Gain +1 WC Per 25 Achievements",
		"Description" : "Gain +1 WC Per 25 Achievements",
		"Time" : 443950, # Seconds
		"OakCost" : 2.75e14, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.4e13,
		"ChestnutCost" : 0, "CherryCost" : 6.4e12, "AshCost" : 0, "CedarCost" : 7.4e12, "MahoganyCost" : 0,
		"EbonyCost" : 2.6e11, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 2e9, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"121" :  {
		"Name" : "Rosewood Storage 13.5%",
		"Description" : "Rosewood Storage 13.5%",
		"Time" : 555000, # Seconds
		"OakCost" : 0, "AppleCost" : 1.9e14, "MapleCost" : 0, "BirchCost" : 1.5e13, "SpruceCost" : 0,
		"ChestnutCost" : 7.65e12, "CherryCost" : 0, "AshCost" : 6e12, "CedarCost" : 0, "MahoganyCost" : 2.4e12,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"122" :  {
		"Name" : "Dogwood Production Cost -25%",
		"Description" : "Dogwood Production Cost -25%",
		"Time" : 660000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1.1e14, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 4e10, "RosewoodCost" : 2e10, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"123" :  {
		"Name" : "Classic Upgrades 39% Cheaper",
		"Description" : "Classic Upgrades 39% Cheaper",
		"Time" : 772320, # Seconds
		"OakCost" : 3.45e14, "AppleCost" : 2.2e14, "MapleCost" : 1.35e14, "BirchCost" : 2.2e13, "SpruceCost" : 2e13,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"124" :  {
		"Name" : "2.5% WPC To WPS",
		"Description" : "2.5% WPC To WPS",
		"Time" : 895550, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1.55e14, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 7.5e12, "AshCost" : 0, "CedarCost" : 9e12, "MahoganyCost" : 0,
		"EbonyCost" : 3.3e11, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 2.4e9, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"124b" :  {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Time" : 918700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1.85e14, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 9.7e12, "CherryCost" : 0, "AshCost" : 9e12, "CedarCost" : 1e13, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 2.6e10, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return SaveData.GeneralInfo["AutoClickers"] > 0,
	},
	"125" :  {
		"Name" : "Achievement Bonuses +15%",
		"Description" : "Achievement Bonuses +15%",
		"Time" : 999160, # Seconds
		"OakCost" : 3.75e14, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 2.5e13, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 4e12,
		"EbonyCost" : 0, "DogwoodCost" : 5e10, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"126" :  {
		"Name" : "17.5% More Magic",
		"Description" : "17.5% More Magic",
		"Time" : 1035490, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 9.5e12, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 3e10, "Ghost GumCost" : 3.3e9, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"126a" :  {
		"Name" : "2x Cherry, Cedar WPS",
		"Description" : "2x Cherry, Cedar WPS",
		"Time" : 1085490, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 3e13, "AshCost" : 0, "CedarCost" : 3e13, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127" :  {
		"Name" : "Rosewood WC Effect +8%",
		"Description" : "Rosewood WC Effect +8%",
		"Time" : 1141880, # Seconds
		"OakCost" : 0, "AppleCost" : 2.55e14, "MapleCost" : 1.95e14, "BirchCost" : 0, "SpruceCost" : 2.4e13,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 5e12,
		"EbonyCost" : 4e11, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127b" :  {
		"Name" : "2.2x Oak Storage",
		"Description" : "2.2x Oak Storage",
		"Time" : 1266700, # Seconds
		"OakCost" : 1e15+1000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127bb" :  {
		"Name" : "26x Maple WPS",
		"Description" : "26x Maple WPS",
		"Time" : 1316700, # Seconds
		"OakCost" : 0, "AppleCost" : 3.5e15, "MapleCost" : 0, "BirchCost" : 7.5e14, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127c" :  {
		"Name" : "75% Apple Storage",
		"Description" : "75% Apple Storage",
		"Time" : 1387200, # Seconds
		"OakCost" : 0, "AppleCost" : 9e14, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127cc" :  {
		"Name" : "1.85x Ash WPS",
		"Description" : "1.85x Ash WPS",
		"Time" : 1396700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 2e14, "AshCost" : 0, "CedarCost" : 1.5e14, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127d" :  {
		"Name" : "2x Maple Storage",
		"Description" : "2x Maple Storage",
		"Time" : 1400000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 4e14, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127dd" :  {
		"Name" : "3x Oak WPS",
		"Description" : "3x Oak WPS",
		"Time" : 1496700, # Seconds
		"OakCost" : 0, "AppleCost" : 4e15, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 6e13,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127e" :  {
		"Name" : "13x Birch Storage",
		"Description" : "13x Birch Storage",
		"Time" : 1513700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 8e13, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127ee" :  {
		"Name" : "3.6x Chestnut WPS",
		"Description" : "3.6x Chestnut WPS",
		"Time" : 1596700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 5e14,
		"ChestnutCost" : 0, "CherryCost" : 2.5e14, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127f" :  {
		"Name" : "5x Spruce Storage",
		"Description" : "5x Spruce Storage",
		"Time" : 1639000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 9e13,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127ff" :  {
		"Name" : "7.5x Apple WPS",
		"Description" : "7.5x Apple WPS",
		"Time" : 1696700, # Seconds
		"OakCost" : 6e15, "AppleCost" : 0, "MapleCost" : 1.5e15, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127g" :  {
		"Name" : "4.5x Chestnut Storage",
		"Description" : "4.5x Chestnut Storage",
		"Time" : 1746000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 6.9e13, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127gg" :  {
		"Name" : "4.7x Cedar WPS",
		"Description" : "4.7x Cedar WPS",
		"Time" : 1896700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 1.5e14, "CedarCost" : 0, "MahoganyCost" : 7.5e13,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127h" :  {
		"Name" : "75% Cherry Storage",
		"Description" : "75% Cherry Storage",
		"Time" : 1951000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 1e14, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127hh" :  {
		"Name" : "7.5x Birch WPS",
		"Description" : "7.5x Birch WPS",
		"Time" : 2196700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 2e15, "BirchCost" : 0, "SpruceCost" : 6e14,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127i" :  {
		"Name" : "30% Ash Storage",
		"Description" : "30% Ash Storage",
		"Time" : 2371500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 9.3e13, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127ii" :  {
		"Name" : "14x Cherry WPS",
		"Description" : "14x Cherry WPS",
		"Time" : 2496700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 3e14, "CherryCost" : 0, "AshCost" : 2e14, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127j" :  {
		"Name" : "5% Cedar Storage",
		"Description" : "5% Cedar Storage",
		"Time" : 2582000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 1e14, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127jj" :  {
		"Name" : "88x Spruce WPS",
		"Description" : "88x Spruce WPS",
		"Time" : 2696700, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1e15, "SpruceCost" : 0,
		"ChestnutCost" : 3.5e14, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127k" :  {
		"Name" : "40% Mahogany Storage",
		"Description" : "40% Mahogany Storage",
		"Time" : 2713000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 3.5e13,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127l" :  {
		"Name" : "10x Ebony Storage",
		"Description" : "10x Ebony Storage",
		"Time" : 2947500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 3.5e12, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127m" :  {
		"Name" : "8x Dogwood Storage",
		"Description" : "8x Dogwood Storage",
		"Time" : 3154500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 1.3e12, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127n" :  {
		"Name" : "8x Rosewood Storage",
		"Description" : "8x Rosewood Storage",
		"Time" : 3379750, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 4.8e11, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"127o" :  {
		"Name" : "8x Ghost Gum Storage",
		"Description" : "8x Ghost Gum Storage",
		"Time" : 3495250, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 1e11, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"128" :  {
		"Name" : "45% WPS",
		"Description" : "45% WPS",
		"Time" : 3567550, # Seconds
		"OakCost" : 7.5e15, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 7.5e14,
		"ChestnutCost" : 5e14, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 3.5e13, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"128b" :  {
		"Name" : "Dam Construction Speed x2.3",
		"Description" : "Dam Construction Speed x2.3",
		"Time" : 3717350, # Seconds
		"OakCost" : 0, "AppleCost" : 4e15, "MapleCost" : 2.25e15, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 1.1e13, "RosewoodCost" : 3.3e12, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"128c" :  {
		"Name" : "Storage 25%",
		"Description" : "Increase all Storage by 25%",
		"Time" : 3917350, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.25e15, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 2.9e14, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 7.5e13,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"128d" :  {
		"Name" : "Classic Wood Price x5",
		"Description" : "Classic Wood Price x5",
		"Time" : 4217350, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 2.35e14, "CedarCost" : 1.6e14, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 1e12, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"129" :  {
		"Name" : "Unlock Dragonwood",
		"Description" : "Unlock Dragonwood",
		"Time" : 4537800, # Seconds
		"OakCost" : 1e16, "AppleCost" : 6.5e15, "MapleCost" : 3.3e15, "BirchCost" : 1.75e15, "SpruceCost" : 1e15,
		"ChestnutCost" : 7e14, "CherryCost" : 4.5e14, "AshCost" : 3e14, "CedarCost" : 1.95e14, "MahoganyCost" : 1e14,
		"EbonyCost" : 4.8e13, "DogwoodCost" : 2e13, "RosewoodCost" : 5e12, "Ghost GumCost" : 1.7e12, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"129b" :  {
		"Name" : "+1 Click Chance When Fishing",
		"Description" : "Adds +1 Chance To Click On A Fish When Fishing",
		"Time" : 5068000, # Seconds
		"OakCost" : 0, "AppleCost" : 8e15, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.5e15,
		"ChestnutCost" : 9e14, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 5.5e13, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"130" :  {
		"Name" : "Ghost Gum WC and Beavers 30% Cheaper",
		"Description" : "Ghost Gum WC and Beavers 30% Cheaper",
		"Time" : 5299740, # Seconds
		"OakCost" : 1.45e16, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 2.5e15, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 4.5e14, "CedarCost" : 2.45e14, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"131" :  {
		"Name" : "Gold Upgrades 30% Cheaper",
		"Description" : "Gold Upgrades 30% Cheaper",
		"Time" : 5430000, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 4.5e15, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 5.25e14, "AshCost" : 0, "CedarCost" : 3.15e14, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 2e12, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"132" :  {
		"Name" : "Magic Gain 30%",
		"Description" : "Magic Gain 30%",
		"Time" : 5781900, # Seconds
		"OakCost" : 1.6e16, "AppleCost" : 1e16, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 6.5e14, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.6e14,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 2e11,
		"Unlocked" : func(): return true,
	},
	"133" :  {
		"Name" : "Mythic WPS 55%",
		"Description" : "Mythic WPS 55%",
		"Time" : 6252300, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 1.82e14, "DogwoodCost" : 2.04e14, "RosewoodCost" : 2.04e13, "Ghost GumCost" : 1.67e13, "DragonwoodCost" : 1.35e12,
		"Unlocked" : func(): return true,
	},
	"134" :  {
		"Name" : "Wood Price +50%",
		"Description" : "Wood Price +50%",
		"Time" : 6863060, # Seconds
		"OakCost" : 5.6e16, "AppleCost" : 0, "MapleCost" : 2.95e16, "BirchCost" : 0, "SpruceCost" : 5.5e15,
		"ChestnutCost" : 0, "CherryCost" : 2e15, "AshCost" : 0, "CedarCost" : 7.4e14, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"135" :  {
		"Name" : "Mythic Upgrades 44% Cheaper",
		"Description" : "Mythic Upgrades 44% Cheaper",
		"Time" : 7294130, # Seconds
		"OakCost" : 0, "AppleCost" : 4.55e16, "MapleCost" : 0, "BirchCost" : 7.9e15, "SpruceCost" : 0,
		"ChestnutCost" : 3.47e15, "CherryCost" : 0, "AshCost" : 2.5e15, "CedarCost" : 0, "MahoganyCost" : 6.8e14,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"135a" :  {
		"Name" : "Ebony, Rosewood and Cherry Storage 35%",
		"Description" : "Ebony, Rosewood and Cherry Storage 35%",
		"Time" : 7535200, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 3.58e15, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 3.07e14, "DogwoodCost" : 0, "RosewoodCost" : 3.87e13, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"135aa" :  {
		"Name" : "WPS x5",
		"Description" : "WPS x5",
		"Time" : 7635200, # Seconds
		"OakCost" : 1e17, "AppleCost" : 7.5e16, "MapleCost" : 7e16, "BirchCost" :1.25e16, "SpruceCost" : 9e15,
		"ChestnutCost" : 7.5e15, "CherryCost" : 2e16, "AshCost" : 3.15e16, "CedarCost" : 3.5e15, "MahoganyCost" : 1e15,
		"EbonyCost" : 6e15, "DogwoodCost" : 1e16, "RosewoodCost" : 1e16, "Ghost GumCost" : 1e15, "DragonwoodCost" : 4e12,
		"Unlocked" : func(): return true,
	},
	"135b" :  {
		"Name" : "Merchant Price -95%",
		"Description" : "Merchant Price -95%",
		"Time" : 7835200, # Seconds
		"OakCost" : 0, "AppleCost" : 8.28e16, "MapleCost" : 0, "BirchCost" : 1.36e16, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 4.44e15, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 4.42e14, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 3.8e12,
		"Unlocked" : func(): return true,
	},
	"136" :  {
		"Name" : "WPS +1% Per Achievement",
		"Description" : "WPS +1% Per Achievement",
		"Time" : 7935200, # Seconds
		"OakCost" : 8.97e16, "AppleCost" : 0, "MapleCost" : 5.62e16, "BirchCost" : 0, "SpruceCost" : 9.41e15,
		"ChestnutCost" : 5.85e15, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 1.48e15, "MahoganyCost" : 1.22e15,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"136b" :  {
		"Name" : "33% Dam Construction Speed",
		"Description" : "33% Dam Construction Speed",
		"Time" : 8056950, # Seconds
		"OakCost" : 1.05e17, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.1e16,
		"ChestnutCost" : 7e15, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.5e15,
		"EbonyCost" : 4.55e14, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 8.2e12,
		"Unlocked" : func(): return true,
	},
	"137" :  {
		"Name" : "Mythic Storage 28%",
		"Description" : "Mythic Storage 28%",
		"Time" : 8146330, # Seconds
		"OakCost" : 0, "AppleCost" : 4e17, "MapleCost" : 0, "BirchCost" : 5.5e16, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 2.15e16, "AshCost" : 0, "CedarCost" : 6e15, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 3.15e15, "RosewoodCost" : 0, "Ghost GumCost" : 6.1e14, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"137a" :  {
		"Name" : "Merchants Sell 10x More",
		"Description" : "Merchants Sell 10x More",
		"Time" : 8246330, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 9.55e16, "CherryCost" : 8.26e16, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 7.79e15, "DogwoodCost" : 0, "RosewoodCost" : 1.46e15, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"137c" :  {
		"Name" : "20% More Magic",
		"Description" : "20% More Magic",
		"Time" : 8746330, # Seconds
		"OakCost" : 2e18, "AppleCost" : 1.76e18, "MapleCost" : 1.25e18, "BirchCost" : 2.13e17, "SpruceCost" : 1.7e17,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"138" :  {
		"Name" : "Dragonwood WPS, WPC and Storage x1.5",
		"Description" : "Dragonwood WPS, WPC and Storage x1.5",
		"Time" : 8977370, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 1.02e17, "CedarCost" : 2.25e16, "MahoganyCost" : 2.08e16,
		"EbonyCost" : 0, "DogwoodCost" : 1.85e16, "RosewoodCost" : 0, "Ghost GumCost" : 4.55e15, "DragonwoodCost" : 4.25e14,
		"Unlocked" : func(): return true,
	},
	"139" :  {
		"Name" : "Mythic WPC x2",
		"Description" : "Mythic WPC x2",
		"Time" : 9388500, # Seconds
		"OakCost" : 1.65e20, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.5e19, "SpruceCost" : 0,
		"ChestnutCost" : 6.25e18, "CherryCost" : 0, "AshCost" : 8.15e18, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 3.75e17, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"139a" :  {
		"Name" : "+25 Woodcamps and Beavers",
		"Description" : "+25 Woodcamps and Beavers",
		"Time" : 9788500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 1.4e20, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 6.5e18, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.25e18,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 2e17, "Ghost GumCost" : 0, "DragonwoodCost" : 1.2e18,
		"Unlocked" : func(): return true,
	},
	"137b" :  {
		"Name" : "55% Dam Construction Speed",
		"Description" : "55% Dam Construction Speed",
		"Time" : 10256950, # Seconds
		"OakCost" : 0, "AppleCost" : 2e20, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.25e19,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 1.5e18, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 3.5e18, "RosewoodCost" : 0, "Ghost GumCost" : 1.5e18, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"139b" :  {
		"Name" : "Classic WPS 10%",
		"Description" : "Classic WPS 10%",
		"Time" : 10688500, # Seconds
		"OakCost" : 0, "AppleCost" : 4e21, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 1.4e20, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 1e20, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 6.25e19,
		"Unlocked" : func(): return true,
	},
	"139c" :  {
		"Name" : "Rare WPS 20%",
		"Description" : "Rare WPS 20%",
		"Time" : 10988500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 1.75e20, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 1.6e19, "MahoganyCost" : 0,
		"EbonyCost" : 4e18, "DogwoodCost" : 0, "RosewoodCost" : 4.45e18, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"139d" :  {
		"Name" : "Mythic WPS 30%",
		"Description" : "Mythic WPS 30%",
		"Time" : 11488500, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 2.5e21, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 7.5e19, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 2.1e19, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"139e" :  {
		"Name" : "Mythic Storage 15%",
		"Description" : "Mythic Storage 15%",
		"Time" : 12088500, # Seconds
		"OakCost" : 2.4e21, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1.4e20,
		"ChestnutCost" : 0, "CherryCost" : 8.5e19, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 1.55e19,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"140" :  {
		"Name" : "WPS x5",
		"Description" : "WPS x5",
		"Time" : 12500000, # Seconds
		"OakCost" : 1.55e22, "AppleCost" : 2.5e22, "MapleCost" : 1.4e22, "BirchCost" :1e21, "SpruceCost" : 8.5e20,
		"ChestnutCost" : 4.2e20, "CherryCost" : 4.35e20, "AshCost" : 7.85e20, "CedarCost" : 9.5e19, "MahoganyCost" : 1e20,
		"EbonyCost" : 2e19, "DogwoodCost" : 7.35e20, "RosewoodCost" : 3.4e19, "Ghost GumCost" : 1e20, "DragonwoodCost" : 4.3e20,
		"Unlocked" : func(): return true,
	},
}
