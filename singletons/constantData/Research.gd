extends Node

var Research = {
	"3" :  {
		"Name" : "65% more storage",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 25, # Seconds
		"OakCost" : 500, "AppleCost" : 750, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"6b" :  {
		"Name" : "1.5x Oak and Apple wpc",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 35, # Seconds
		"OakCost" : 1500, "AppleCost" : 1500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"9" :  {
		"Name" : "Unlock Markets",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 110, # Seconds
		"OakCost" : 2350, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"1" : {
		"Name" : "Unlock Woodcamps",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Time" : 120, # Seconds
		"OakCost" : 2500, "AppleCost" : 2500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"5" :  {
		"Name" : "Oak and Apple upgrades -15%",
		"Description" : "Make Apple and Oak upgrades -15% cheaper",
		"Time" : 140, # Seconds
		"OakCost" : 3000, "AppleCost" : 2500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"2" :  {
		"Name" : "Double Oak WPS and WPC and Storage",
		"Description" : "Maple Yum!",
		"Time" : 210, # Seconds
		"OakCost" : 4400, "AppleCost" : 5400, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"2b" :  {
		"Name" : "1.5x Apple WPS",
		"Description" : "Maple Yum!",
		"Time" : 220, # Seconds
		"OakCost" : 12000, "AppleCost" : 7500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"4" :  {
		"Name" : "Unlock Maple Wood",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 260, # Seconds
		"OakCost" : 15000, "AppleCost" : 13500, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"6" :  {
		"Name" : "25% more WPS",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 310, # Seconds
		"OakCost" : 20000, "AppleCost" : 15000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"8" :  {
		"Name" : "woodcamps 30% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 350, # Seconds
		"OakCost" : 38000, "AppleCost" : 22500, "MapleCost" : 1500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"7" :  {
		"Name" : "Maple WPS 3x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 450, # Seconds
		"OakCost" : 50000, "AppleCost" : 30000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"10" :  {
		"Name" : "WoodCamps use 10% less wood",
		"Description" : "WoodCamps use 10% less wood",
		"Time" : 580, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 10000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"11" :  {
		"Name" : "wood sells for 22% more gold",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 640, # Seconds
		"OakCost" : 175000, "AppleCost" : 45000, "MapleCost" : 12500, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"12" :  {
		"Name" : "Woodcamp base storage +200",
		"Description" : "Maple Yum!",
		"Time" : 1180, # Seconds
		"OakCost" : 250000, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"13" :  {
		"Name" : "wpc per wc +10",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 0, "AppleCost" : 100000, "MapleCost" : 15000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"14" :  {
		"Name" : "Unlock Birch Wood",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 275000, "AppleCost" : 150000, "MapleCost" : 25000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"14b" :  {
		"Name" : "All wood types start with 5 beavers",
		"Description" : "Maple Yum!",
		"Time" : 1180, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 50000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"15" :  {
		"Name" : "woodcamps give storage 3x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 0, "AppleCost" : 0, "MapleCost" : 0, "BirchCost" : 3000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"16" :  {
		"Name" : "levels give a little storage",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 400000, "AppleCost" : 250000, "MapleCost" : 80000, "BirchCost" : 10000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"21" :  {
		"Name" : "Unlock Ascention",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 500000, "AppleCost" : 300000, "MapleCost" : 100000, "BirchCost" : 20000, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"17" :  { # might want to move to magic upgrades
		"Name" : "Unlock Achievements",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"18" :  {
		"Name" : "wps ^2",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"19" :  {
		"Name" : "birch upgrades 35% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"22" :  {
		"Name" : "level effects 30%",
		"Description" : "Maple Yum!",
		"Time" : 180, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"20" :  {
		"Name" : "Each achievement gives 0.25% wps and wpc",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"23" :  {
		"Name" : "Unlock Bots",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"24" :  {
		"Name" : "3x wps",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"25" :  {
		"Name" : "5x wpc",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"26" :  {
		"Name" : "Wood Levels become base click",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"27" :  {
		"Name" : "Unlock Magic Upgrades",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"28" :  {
		"Name" : "Achievments improve gold production",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"29" :  {
		"Name" : "gold upgrades 13% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"30" :  {
		"Name" : "Unlock Fishing",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"31" :  {
		"Name" : "Half reaserch times",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"32" :  {
		"Name" : "Gain 10x magic",
		"Description" : "Maple Yum!",
		"Time" : 180, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"33" :  {
		"Name" : "Unlock Cherry",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"34" :  {
		"Name" : "get more fish",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"35" :  {
		"Name" : "Fiets of strength improve wood production",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"36" :  {
		"Name" : "Levels 10% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"37" :  {
		"Name" : "Unlock better bait",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"38" :  {
		"Name" : "25% magic boost",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"39" :  {
		"Name" : "Unlock Dams",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"40" :  {
		"Name" : "Wood production increases magic production",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"41" :  {
		"Name" : "Wood per click 10x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"42" :  {
		"Name" : "Gain 2x more magic",
		"Description" : "Maple Yum!",
		"Time" : 180, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"43" :  {
		"Name" : "Improve bot gps",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"44" :  {
		"Name" : "Bait works 8% better",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"45" :  {
		"Name" : "Make small dam produce more",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"46" :  {
		"Name" : "First 10 fish of a type give effect not only 1",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"47" :  {
		"Name" : "all woodcamps 20% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"48" :  {
		"Name" : "Gain 10% magic every 10 seconds",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"49" :  {
		"Name" : "Improve wood sell value 25%",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"50" :  {
		"Name" : "bait storage to 100",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"51" :  {
		"Name" : "Each dam increases wood capacity 20x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"52" :  {
		"Name" : "Unlock more destinations",
		"Description" : "Maple Yum!",
		"Time" : 180, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"53" :  {
		"Name" : "Unlock Mahogany",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"54" :  {
		"Name" : "Use 10 bait at a time",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"55" :  {
		"Name" : "Make bots 15% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"56" :  {
		"Name" : "Make medium dam produce more",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"57" :  {
		"Name" : "bait storage to 1000",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"58" :  {
		"Name" : "Increase Bot capacity",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"59" :  {
		"Name" : "Magic ^2 gold production",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"60" :  {
		"Name" : "Increase dam power 5x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"61" :  {
		"Name" : "Fishing is 20% easier",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"62" :  {
		"Name" : "Magic power increased by 1000%",
		"Description" : "Maple Yum!",
		"Time" : 180, # Seconds
		"OakCost" : 7000, "AppleCost" : 3000, "MapleCost" : 0, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"63" :  {
		"Name" : "Magic improves magic gathering",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"64" :  {
		"Name" : "Unlock Dogwood",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"65" :  {
		"Name" : "Magic upgrades 10% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"65b" :  {
		"Name" : "Generate Magic without ascending",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"66" :  {
		"Name" : "bait storage to 100k",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"67" :  {
		"Name" : "15% more fish",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"68" :  {
		"Name" : "10% better bots",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"69" :  {
		"Name" : "30% cheaper bait",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"70" :  {
		"Name" : "Dam effect 4x",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
	"71" :  {
		"Name" : "Magic upg 20% cheaper",
		"Description" : "Doubles Storage for all Classic Wood",
		"Time" : 360, # Seconds
		"OakCost" : 11000, "AppleCost" : 6000, "MapleCost" : 1000, "BirchCost" : 0, "SpruceCost" : 0,
		"ChestnutCost" : 0, "CherryCost" : 0, "AshCost" : 0, "CedarCost" : 0, "MahoganyCost" : 0,
		"EbonyCost" : 0, "DogwoodCost" : 0, "RosewoodCost" : 0, "Ghost GumCost" : 0, "DragonwoodCost" : 0,
	},
}
