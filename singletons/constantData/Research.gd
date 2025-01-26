extends Node

var Research = {
	"1" :  {
		"Name" : "65% more storage",
		"Description" : "All storage capacity increased by 65%",
		"Time" : 25, # Seconds
		"OakCost" : 500, "AppleCost" : 750, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"2" :  {
		"Name" : "1.5x Oak and Apple wpc",
		"Description" : "Multiplies Oak and Apple Wood Per Click gain by 1.5",
		"Time" : 35, # Seconds
		"OakCost" : 1500, "AppleCost" : 1500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"3" :  {
		"Name" : "Unlock Markets",
		"Description" : "Unlocks the Market Tab allows selling wood",
		"Time" : 55, # Seconds
		"OakCost" : 2000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"4" : {
		"Name" : "Unlock Woodcamps",
		"Description" : "Unlocks woodcamps, that are used for wood over time gain",
		"Time" : 85, # Seconds
		"OakCost" : 2450, "AppleCost" : 2450, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"5" :  {
		"Name" : "Oak and Apple upgrades -25%",
		"Description" : "Makes Apple and Oak upgrades 25% cheaper",
		"Time" : 110, # Seconds
		"OakCost" : 3000, "AppleCost" : 2500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"6" :  {
		"Name" : "1.2x Oak WPS, WPC and 2x Storage",
		"Description" : "Multiplies Oaks Wood per second and Wood per click by 1.2 and storage by 2",
		"Time" : 140, # Seconds
		"OakCost" : 5000, "AppleCost" : 5000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"7" :  {
		"Name" : "1.5x Apple WPS",
		"Description" : "Increases Apple Wood Per Second by 1.5",
		"Time" : 170, # Seconds
		"OakCost" : 12500, "AppleCost" : 7250, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Woodcamps"]["Unlocked"],
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
		"Name" : "25% more WPS",
		"Description" : "Increases per second gain for all wood types by 25%",
		"Time" : 230, # Seconds
		"OakCost" : 20000, "AppleCost" : 10750, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"10" :  {
		"Name" : "45% Storage",
		"Description" : "Multiplies all wood type storage by 1.45",
		"Time" : 270, # Seconds
		"OakCost" : 24000, "AppleCost" : 11500, "MapleCost" : 2500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"11" :  {
		"Name" : "woodcamps 30% cheaper",
		"Description" : "Lowers all wood type woodcamp cost by 30%",
		"Time" : 290, # Seconds
		"OakCost" : 40000, "AppleCost" : 23000, "MapleCost" : 5000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"12" :  {
		"Name" : "Maple WPS 1.75x",
		"Description" : "1.75x Maple wood gain per second",
		"Time" : 320, # Seconds
		"OakCost" : 37500, "AppleCost" : 25000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"13" :  {
		"Name" : "Woodcamps use 5% less wood",
		"Description" : "Woodcamps use 5% less lower tier wood to produce higher tier wood",
		"Time" : 340, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 6850, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Woodcamps"]["Unlocked"],
	},
	"14" :  {
		"Name" : "wood sells for 25% more gold",
		"Description" : "All wood types sell for 25% more gold in the Market",
		"Time" : 350, # Seconds
		"OakCost" : 43500, "AppleCost" : 33500, "MapleCost" : 7200, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return Unlocks && Unlocks.Unlocks["Market"]["Unlocked"],
	},
	"15" :  {
		"Name" : "Woodcamp base storage +150",
		"Description" : "Increases all woodcamp base storage by 150",
		"Time" : 370, # Seconds
		"OakCost" : 51000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"16" :  {
		"Name" : "+5 Oak Woodcamps",
		"Description" : "Adds 5 Extra Oak Woodcamps",
		"Time" : 380, # Seconds
		"OakCost" : 0, "AppleCost" : 46000, "MapleCost" : 7500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
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
	"20" :  {
		"Name" : "Classic wood types +2 beavers",
		"Description" : "Classic wood types +2 beavers",
		"Time" : 450, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 25500, "BirchCost" : 3500, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"21" :  {
		"Name" : "25% reaserch times",
		"Description" : "25% reaserch times",
		"Time" : 460, # Seconds
		"OakCost" : 335000, "AppleCost" : 185000, "MapleCost" : 0, "BirchCost" : 8000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"22" :  {
		"Name" : "Birch upgrades 35% cheaper",
		"Description" : "Birch upgrades 35% cheaper",
		"Time" : 480, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 15000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"23" :  {
		"Name" : "Oak, Maple wood price +25%",
		"Description" : "Oak, Maple wood price +25%",
		"Time" : 510, # Seconds
		"OakCost" : 0, "AppleCost" : 255000, "MapleCost" : 55000, "BirchCost" : 35500, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"24" :  {
		"Name" : "Oak Woodcamps 60% Cheaper",
		"Description" : "Oak Woodcamps 60% Cheaper",
		"Time" : 600, # Seconds
		"OakCost" : 0, "AppleCost" : 300000, "MapleCost" : 100000, "BirchCost" : 20000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"25" :  {
		"Name" : "20% WPS",
		"Description" : "20% WPS",
		"Time" : 660, # Seconds
		"OakCost" : 500000, "AppleCost" : 290000, "MapleCost" : 15000, "BirchCost" : 25000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"26" :  {
		"Name" : "1 WC per 7 Beavers",
		"Description" : "1 WC per 7 Beavers",
		"Time" : 720, # Seconds
		"OakCost" : 750000, "AppleCost" : 560000, "MapleCost" : 96000, "BirchCost" : 35000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"27" :  {
		"Name" : "Maple WC Storage 75%",
		"Description" : "Maple WC Storage 75%",
		"Time" : 800, # Seconds
		"OakCost" : 880000, "AppleCost" : 449000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"28" :  {
		"Name" : "12.5% WPC",
		"Description" : "12.5% WPC",
		"Time" : 1000, # Seconds
		"OakCost" : 1000000, "AppleCost" : 499000, "MapleCost" : 155000, "BirchCost" : 60000, "SpruceCost" : 0,
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
		"OakCost" : 0, "AppleCost" : 666666, "MapleCost" : 0, "BirchCost" : 175000, "SpruceCost" : 500,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"32" :  {
		"Name" : "Improve wood sell value 33%",
		"Description" : "Improve wood sell value 33%",
		"Time" : 1500, # Seconds
		"OakCost" : 1000000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 1550,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"33" :  {
		"Name" : "50% Maple Storage",
		"Description" : "50% Maple Storage",
		"Time" : 1660, # Seconds
		"OakCost" : 1110000, "AppleCost" : 777777, "MapleCost" : 0, "BirchCost" : 2220000, "SpruceCost" : 3333,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"34" :  {
		"Name" : "Each achievement gives 0.45% WPS",
		"Description" : "Each achievement gives 0.45% WPS",
		"Time" : 1750, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"35" :  {
		"Name" : "Gold upgrades 13% cheaper",
		"Description" : "Gold upgrades 13% cheaper",
		"Time" : 1900, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"36" :  {
		"Name" : "33% Cheaper Classic Woodcamps",
		"Description" : "33% Cheaper Classic Woodcamps",
		"Time" : 2000, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"37" :  {
		"Name" : "Half reaserch time",
		"Description" : "Half reaserch time",
		"Time" : 2100, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"38" :  {
		"Name" : "Beaver Storage 2x",
		"Description" : "Beaver Storage 2x",
		"Time" : 2150, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"39" :  {
		"Name" : "Unlock Chestnut",
		"Description" : "Unlock Chestnut",
		"Time" : 2180, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"40" :  {
		"Name" : "10% Magic WPS and Storage Boost",
		"Description" : "10% Magic WPS and Storage Boost",
		"Time" : 2260, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"41" :  {
		"Name" : "Oak and Apple WPS 10%",
		"Description" : "Oak and Apple WPS 10%",
		"Time" : 2400, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"42" :  {
		"Name" : "Classic Upgrades 33% Cheaper",
		"Description" : "Classic Upgrades 33% Cheaper",
		"Time" : 2440, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"43" :  {
		"Name" : "Woodcamps use 6% less wood",
		"Description" : "Woodcamps use 6% less wood",
		"Time" : 2500, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"44" :  {
		"Name" : "27.5% Cheaper Classic Beavers",
		"Description" : "27.5% Cheaper Classic Beavers",
		"Time" : 2550, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"45" :  {
		"Name" : "Improve Oak wood sell value 45%",
		"Description" : "Improve Oak wood sell value 45%",
		"Time" : 2610, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"46" :  {
		"Name" : "Make Bots 15% cheaper",
		"Description" : "Make Bots 15% cheaper",
		"Time" : 2620, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"47" :  {
		"Name" : "7.5% WPC To WPS",
		"Description" : "7.5% WPC To WPS",
		"Time" : 2640, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"48" :  {
		"Name" : "10% Magic Gain",
		"Description" : "10% Magic Gain",
		"Time" : 2670, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"49" :  {
		"Name" : "Unlock Cherry",
		"Description" : "Unlock Cherry",
		"Time" : 2710, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"50" :  {
		"Name" : "Wood per click +199",
		"Description" : "Wood per click +199",
		"Time" : 2740, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"51" :  {
		"Name" : "Maple and Spruce WPS 22%",
		"Description" : "Maple and Spruce WPS 22%",
		"Time" : 2750, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"52" :  {
		"Name" : "Classic Wood +10 Woodcamps",
		"Description" : "Classic Wood +10 Woodcamps",
		"Time" : 2800, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"53" :  {
		"Name" : "Each achievement gives +0.75% WPS",
		"Description" : "Each achievement gives +0.75% WPS",
		"Time" : 2830, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"54" :  {
		"Name" : "Chestnut Beavers 26% Cheaper",
		"Description" : "Chestnut Beavers 26% Cheaper",
		"Time" : 2850, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"55" :  {
		"Name" : "Woodcamps 35% cheaper",
		"Description" : "Woodcamps 35% cheaper",
		"Time" : 2880, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"56" :  {
		"Name" : "-15% reaserch time",
		"Description" : "-15% reaserch time",
		"Time" : 2920, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"57" :  {
		"Name" : "Bots sell 25% more",
		"Description" : "Bots sell 25% more",
		"Time" : 3000, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"58" :  {
		"Name" : "Chestnut Price 15%",
		"Description" : "Chestnut Price 15%",
		"Time" : 3100, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"59" :  {
		"Name" : "Unlock Ash",
		"Description" : "Unlock Ash",
		"Time" : 3200, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"60" :  {
		"Name" : "Magic power increased by 13.5%",
		"Description" : "Magic power increased by 13.5%",
		"Time" : 3400, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"61" :  {
		"Name" : "Spruce and Birch WPS and Storage +9.9%",
		"Description" : "Spruce and Birch WPS and Storage +9.9%",
		"Time" : 3500, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"62" :  {
		"Name" : "Chestnut WC -45% Price",
		"Description" : "Chestnut WC -45% Price",
		"Time" : 3550, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"63" :  {
		"Name" : "50% cheaper bots",
		"Description" : "50% cheaper bots",
		"Time" : 3700, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"64" :  {
		"Name" : "Beaver Base Storage +250",
		"Description" : "Beaver Base Storage +250",
		"Time" : 3760, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"65" :  {
		"Name" : "Cherry Price +45%",
		"Description" : "Cherry Price +45%",
		"Time" : 3840, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"66" :  {
		"Name" : "Woodcamps use 10% less wood",
		"Description" : "Woodcamps use 10% less wood",
		"Time" : 3870, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"67" :  {
		"Name" : "Cherry WPS 25%",
		"Description" : "Cherry WPS 25%",
		"Time" : 3910, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"68" :  {
		"Name" : "Storage 7.5%",
		"Description" : "Storage 7.5%",
		"Time" : 3960, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"69" :  {
		"Name" : "Unlock Cedar",
		"Description" : "Unlock Cedar",
		"Time" : 4000, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"70" :  {
		"Name" : "Ash Beavers 13%",
		"Description" : "Ash Beavers 13%",
		"Time" : 4200, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"71" :  {
		"Name" : "Magic improves magic gathering",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4500, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"72" :  {
		"Name" : "Unlock Dogwood",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4550, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"73" :  {
		"Name" : "Magic upgrades 10% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4590, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"74" :  {
		"Name" : "Generate Magic without ascending",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4660, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"75" :  {
		"Name" : "bait storage to 100k",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4720, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"76" :  {
		"Name" : "15% more fish",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4770, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"77" :  {
		"Name" : "10% better bots",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4820, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"78" :  {
		"Name" : "30% cheaper bait",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4840, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"79" :  {
		"Name" : "Dam effect 4x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 4860, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
	"80" :  {
		"Name" : "Magic upg 20% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 5000, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
		"Unlocked" : func(): return true,
	},
}
