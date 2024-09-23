extends Node

#DONT CHANGE DEFAULT VALUES IN CODE (only here),  plz remember 
#use only for getting real/normal values, with upgrades in mind

# per click
var DefaultWoodPerChop = 0
var DefaultWaterPerClick = 1
var DefaultFoodPerClick = 1

# percentiges
var chanceOfWoodPerFoodClick = 45 #45%
var possibleWoodPerFoodClick = [1, 3]

# per bonus click
var DefaultWaterPerBonusClick = 5
var DefaultFoodPerBonusClick = 5
var DefaultWoodPerBonusClick = 5

# storage limit
var DefaultFoodLimit = 10
var DefaultWaterLimit = 10
var DefaultWoodLimit = 2500

# action length (in s)
var chopLength = 1.1
var waterLength = 2.1
var foodLength = 3.1
var swimLength = 2.1

var WoodPerChop = DefaultWoodPerChop

var WaterPerClick = DefaultWaterPerClick
var WaterPerBonusClick = DefaultWaterPerBonusClick

var FoodPerClick = DefaultFoodPerClick
var FoodPerBonusClick = DefaultFoodPerBonusClick
var WoodPerBonusClick = DefaultWoodPerBonusClick

var FoodLimit = DefaultFoodLimit
var WaterLimit = DefaultWaterLimit
var WoodLimit = DefaultWoodLimit

var WoodCount = 0;
var FoodCount = 20;
var WaterCount = 30;
var SwimCount = 0;

func setDefaultValues():
	WoodPerChop = DefaultWoodPerChop

	WaterPerClick = DefaultWaterPerClick
	WaterPerBonusClick = DefaultWaterPerBonusClick

	FoodPerClick = DefaultFoodPerClick
	FoodPerBonusClick = DefaultFoodPerBonusClick

	FoodLimit = DefaultFoodLimit
	WaterLimit = DefaultWaterLimit
	WoodLimit = DefaultWoodLimit

var UpgradeState = {
	"Wood1" : false,
	"Wood2" : false,
	"Wood3" : false,
	"Wood4" : false,
	"Wood5" : false,
	"Food1" : false,
	"Food2" : false,
	"Water1" : false,
}

enum upgradeTypes {
	WoodPerClick,
	FoodPerClick,
	WaterPerClick,
	WaterCombo,
	FoodCombo,
	ChopWhileWater,
	ChopWhileFood,
	WaterStorage,
	FoodStorage,
	WaterActionLength,
	FoodActionLength,
	WoodActionLength,}

enum PriceType {
	Water,
	Food,
	Wood,}

# Reaserch takes time and a bunch of resources
var Reaserch = {
	"Discover choping": true,
	"Wood jesus (make food in to wood)": true,
	"Discover that wood differs (unlock mapel)": true,
}

# upgrades to add, increase storage water and food to 100; 25 50 100
# reaserch upgrades
# unlock reaserch
var Upgrades = {
	"FoodPerClick1" : {
		"id" : 1,
		"name" : "The first chomp",
		"description" : "+3 food per chomp",
		"price" : 5,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WaterPerClick1" : {
		"id" : 1,
		"name" : "The first drink",
		"description" : "+3 water per drink",
		"price" : 6,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterPerClick
	},
	"FoodStorage1" : {
		"id" : 1,
		"name" : "The bigger the better",
		"description" : "+15 food storage",
		"price" : 15,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodStorage
	},
	"ExtendFood1" : {
		"id" : 1,
		"name" : "Food pathfinder",
		"description" : "+1s to food action",
		"price" : 20,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WaterStorage1" : {
		"id" : 1,
		"name" : "A big water hole",
		"description" : "+15 water storage",
		"price" : 20,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterStorage
	},
	"FoodStorage2" : {
		"id" : 1,
		"name" : "Store The FOOD!",
		"description" : "+15 food storage",
		"price" : 25,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodStorage
	},
	"UnlockChopping" : {
		"id" : 0,
		"name" : "The first chop",
		"description" : "learn how to chop",
		"price" : 30,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterStorage2" : {
		"id" : 1,
		"name" : "A bigger hole",
		"description" : "+15 water storage",
		"price" : 30,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterStorage
	},
	"FoodStorage3" : {
		"id" : 1,
		"name" : "Food facility",
		"description" : "+15 food storage",
		"price" : 40,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodStorage
	},
	"WoodPerClick2" : {
		"id" : 1,
		"name" : "The second chop",
		"description" : "+1 wood per chop",
		"price" : 50,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"ExtendChop1" : {
		"id" : 0,
		"name" : "The long chop",
		"description" : "+1s chop length",
		"price" : 100,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodActionLength
	},
	"FoodPerClick2" : {
		"id" : 1,
		"name" : "The second chomp",
		"description" : "+3 food per chomp",
		"price" : 200,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WoodPerClick3" : {
		"id" : 2,
		"name" : "The third chop",
		"description" : "+1 wood per chop",
		"price" : 300,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterStorage3" : {
		"id" : 1,
		"name" : "One needs wood to make a hole?",
		"description" : "+15 water storage",
		"price" : 450,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterStorage
	},
	"ExtendFood2" : {
		"id" : 1,
		"name" : "Food investigator",
		"description" : "+1s to food action",
		"price" : 550,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WoodPerClick4" : {
		"id" : 3,
		"name" : "Chopping becomes dangerous",
		"description" : "+1 wood per chop",
		"price" : 750,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick5" : {
		"id" : 4,
		"name" : "Chop the Chopper",
		"description" : "+1 wood per chop",
		"price" : 999,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterCombo1" : {
		"id" : 1,
		"name" : "Ultimate water drinker",
		"description" : "Unlock a water drop :)",
		"price" : 1000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterCombo
	},
	"WoodPerClick6" : {
		"id" : 4,
		"name" : "Chopping is made for choppers",
		"description" : "+1 wood per chop",
		"price" : 1250,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"ExtendChop2" : {
		"id" : 0,
		"name" : "The longer chop",
		"description" : "+1s chop length",
		"price" : 1750,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodActionLength
	},
	"FoodPerClick3" : {
		"id" : 1,
		"name" : "Food is food",
		"description" : "+3 food per chomp",
		"price" : 2000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"ExtendFood3" : {
		"id" : 1,
		"name" : "Food catcher",
		"description" : "+1s to food action",
		"price" : 2250,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"ChopWhileFood" : {
		"id" : 1,
		"name" : "Multitasker",
		"description" : "Chop while getting food",
		"price" : 3000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.ChopWhileFood
	},
	"WoodPerClick7" : {
		"id" : 4,
		"name" : "Chop Hard",
		"description" : "+1 wood per chop",
		"price" : 4000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick8" : {
		"id" : 4,
		"name" : "I'm in a chopper",
		"description" : "+1 wood per chop",
		"price" : 5000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterPerClick2" : {
		"id" : 1,
		"name" : "Water is good",
		"description" : "+3 water per drink",
		"price" : 6000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterPerClick
	},
	"WoodPerClick9" : {
		"id" : 4,
		"name" : "Chopping isn't the only thing I do",
		"description" : "+1 wood per chop",
		"price" : 7000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"ChopWhileWater" : {
		"id" : 1,
		"name" : "Multidrinker",
		"description" : "Chop while getting water",
		"price" : 8000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.ChopWhileWater
	},
	"ExtendChop3" : {
		"id" : 0,
		"name" : "The longest chop",
		"description" : "+1s chop length",
		"price" : 10000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodActionLength
	},
	"FoodPerClick4" : {
		"id" : 1,
		"name" : "You must be a foody?",
		"description" : "+3 food per chomp",
		"price" : 12000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"ExtendFood4" : {
		"id" : 1,
		"name" : "Food killer",
		"description" : "+1s to food action",
		"price" : 13000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WoodPerClick10" : {
		"id" : 4,
		"name" : "God help me chop",
		"description" : "+1 wood per chop",
		"price" : 15000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"ExtendChop4" : {
		"id" : 0,
		"name" : "Too long too chop",
		"description" : "+1s chop length",
		"price" : 20000,
		"priceType" : PriceType.Wood,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodActionLength
	},
}
