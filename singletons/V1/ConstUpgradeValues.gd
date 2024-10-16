extends Node

enum upgradeTypes {
	WoodPerClick,
	FoodPerTick,
	WaterPerTick,
	WaterCombo,
	FoodCombo,
	WoodWhileWater,
	WoodWhileFood,
	WaterStorage,
	FoodStorage,
	WaterActionLength,
	FoodActionLength,
	Other
}

# add new field: reaserch needed and some way that upgrades get added idk yet
var Upgrades = {
	"FoodPerClick1" : {
		"id" : 1,
		"name" : "The first chomp",
		"description" : "+1 food per tick",
		"price" : 5,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick,
		"Levels": 5,
	},
	"WaterPerClick1" : {
		"id" : 1,
		"name" : "The first drink",
		"description" : "+3 water per drink",
		"price" : 6,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterPerTick
	},
	"FoodStorage1" : {
		"id" : 1,
		"name" : "The bigger the better",
		"description" : "+15 food storage",
		"price" : 15,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodStorage
	},
	"ExtendFood1" : {
		"id" : 1,
		"name" : "Food pathfinder",
		"description" : "+1s to food action",
		"price" : 20,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"WaterStorage1" : {
		"id" : 1,
		"name" : "A big water hole",
		"description" : "+15 water storage",
		"price" : 20,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterStorage
	},
	"FoodStorage2" : {
		"id" : 1,
		"name" : "Store The FOOD!",
		"description" : "+15 food storage",
		"price" : 25,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodStorage
	},
	"UnlockResearch" : {
		"id" : 0,
		"name" : "is your name albert?",
		"description" : "Unlock Research and something mysterious",
		"price" : 30,
		"icon" : "res://Art/UpgradeIcons/tempIcon.svg",
		"type" : upgradeTypes.Other
	},
	"WaterStorage2" : {
		"id" : 1,
		"name" : "A bigger hole",
		"description" : "+15 water storage",
		"price" : 30,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterStorage
	},
	"FoodStorage3" : {
		"id" : 1,
		"name" : "Food facility",
		"description" : "+15 food storage",
		"price" : 40,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodStorage
	},
	"WoodPerClick2" : {
		"id" : 1,
		"name" : "The second chop",
		"description" : "+1 wood per chop",
		"price" : 50,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"FoodPerClick2" : {
		"id" : 1,
		"name" : "The second chomp",
		"description" : "+3 food per chomp",
		"price" : 200,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"WoodPerClick3" : {
		"id" : 2,
		"name" : "The third chop",
		"description" : "+1 wood per chop",
		"price" : 300,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterStorage3" : {
		"id" : 1,
		"name" : "One needs wood to make a hole?",
		"description" : "+15 water storage",
		"price" : 450,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterStorage
	},
	"ExtendFood2" : {
		"id" : 1,
		"name" : "Food investigator",
		"description" : "+1s to food action",
		"price" : 550,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"WoodPerClick4" : {
		"id" : 3,
		"name" : "Chopping becomes dangerous",
		"description" : "+1 wood per chop",
		"price" : 750,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick5" : {
		"id" : 4,
		"name" : "Chop the Chopper",
		"description" : "+1 wood per chop",
		"price" : 999,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterCombo1" : {
		"id" : 1,
		"name" : "Ultimate water drinker",
		"description" : "Unlock a water drop :)",
		"price" : 1000,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterCombo
	},
	"WoodPerClick6" : {
		"id" : 4,
		"name" : "Chopping is made for choppers",
		"description" : "+1 wood per chop",
		"price" : 1250,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"FoodPerClick3" : {
		"id" : 1,
		"name" : "Food is food",
		"description" : "+3 food per chomp",
		"price" : 2000,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"ExtendFood3" : {
		"id" : 1,
		"name" : "Food catcher",
		"description" : "+1s to food action",
		"price" : 2250,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"ChopWhileFood" : {
		"id" : 1,
		"name" : "Multitasker",
		"description" : "Chop while getting food",
		"price" : 3000,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.WoodWhileFood
	},
	"WoodPerClick7" : {
		"id" : 4,
		"name" : "Chop Hard",
		"description" : "+1 wood per chop",
		"price" : 4000,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick8" : {
		"id" : 4,
		"name" : "I'm in a chopper",
		"description" : "+1 wood per chop",
		"price" : 5000,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterPerClick2" : {
		"id" : 1,
		"name" : "Water is good",
		"description" : "+3 water per drink",
		"price" : 6000,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterPerTick
	},
	"WoodPerClick9" : {
		"id" : 4,
		"name" : "Chopping isn't the only thing I do",
		"description" : "+1 wood per chop",
		"price" : 7000,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"ChopWhileWater" : {
		"id" : 1,
		"name" : "Multidrinker",
		"description" : "Chop while getting water",
		"price" : 8000,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WoodWhileWater
	},
	"FoodPerClick4" : {
		"id" : 1,
		"name" : "You must be a foody?",
		"description" : "+3 food per chomp",
		"price" : 12000,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"ExtendFood4" : {
		"id" : 1,
		"name" : "Food killer",
		"description" : "+1s to food action",
		"price" : 13000,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerTick
	},
	"WoodPerClick10" : {
		"id" : 4,
		"name" : "God help me chop",
		"description" : "+1 wood per chop",
		"price" : 15000,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
}
