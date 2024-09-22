extends Node

#DONT CHANGE DEFAULT VALUES IN CODE (only here),  plz remember 
#use only for getting real/normal values, with upgrades in mind
var DefaultWoodPerChop = 0

var DefaultWaterPerClick = 20
var DefaultWaterPerBonusClick = 5

var DefaultFoodPerClick = 10
var DefaultFoodPerBonusClick = 5

var DefaultFoodLimit = 50
var DefaultWaterLimit = 50
var DefaultWoodLimit = 250

var WoodPerChop = DefaultWoodPerChop

var WaterPerClick = DefaultWaterPerClick
var WaterPerBonusClick = DefaultWaterPerBonusClick

var FoodPerClick = DefaultFoodPerClick
var FoodPerBonusClick = DefaultFoodPerBonusClick

var FoodLimit = DefaultFoodLimit
var WaterLimit = DefaultWaterLimit
var WoodLimit = DefaultWoodLimit

var WoodCount = 0;
var FoodCount = 0;
var WaterCount = 0;

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
	ChopWhileFood}

var Upgrades = {
	"WoodPerClick1" : {
		"id" : 0,
		"name" : "The first chop",
		"description" : "learn how to chop",
		"price" : 0,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"FoodPerClick1" : {
		"id" : 1,
		"name" : "The first chomp",
		"description" : "+3 food per chomp",
		"price" : 25,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WoodPerClick2" : {
		"id" : 1,
		"name" : "The second chop",
		"description" : "+1 wood per chop",
		"price" : 50,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick3" : {
		"id" : 2,
		"name" : "The third chop",
		"description" : "+1 wood per chop",
		"price" : 125,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterPerClick1" : {
		"id" : 1,
		"name" : "The first drink",
		"description" : "+3 water per drink",
		"price" : 200,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterPerClick
	},
	"FoodPerClick2" : {
		"id" : 1,
		"name" : "The second chomp",
		"description" : "+3 food per chomp",
		"price" : 300,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WoodPerClick4" : {
		"id" : 3,
		"name" : "Chopping becomes dangerous",
		"description" : "+1 wood per chop",
		"price" : 350,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick5" : {
		"id" : 4,
		"name" : "Chop the Chopper",
		"description" : "+1 wood per chop",
		"price" : 750,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterCombo1" : {
		"id" : 1,
		"name" : "Ultimate water drinker",
		"description" : "Unlock a water drop :)",
		"price" : 999,
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
		"price" : 1300,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"ChopWhileFood" : {
		"id" : 1,
		"name" : "Multitasker",
		"description" : "Chop while getting food",
		"price" : 1750,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.ChopWhileFood
	},
	"WoodPerClick7" : {
		"id" : 4,
		"name" : "Chop Hard",
		"description" : "+1 wood per chop",
		"price" : 2000,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WoodPerClick8" : {
		"id" : 4,
		"name" : "I'm in a chopper",
		"description" : "+1 wood per chop",
		"price" : 2500,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"WaterPerClick2" : {
		"id" : 1,
		"name" : "Water is good",
		"description" : "+3 water per drink",
		"price" : 3250,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.WaterPerClick
	},
	"WoodPerClick9" : {
		"id" : 4,
		"name" : "Chopping isn't the only thing I do",
		"description" : "+1 wood per chop",
		"price" : 3500,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
	"ChopWhileWater" : {
		"id" : 1,
		"name" : "Multidrinker",
		"description" : "Chop while getting water",
		"price" : 3750,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png",
		"type" : upgradeTypes.ChopWhileWater
	},
	"FoodPerClick4" : {
		"id" : 1,
		"name" : "You must be a foody?",
		"description" : "+3 food per chomp",
		"price" : 4000,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"type" : upgradeTypes.FoodPerClick
	},
	"WoodPerClick10" : {
		"id" : 4,
		"name" : "God help me chop",
		"description" : "+1 wood per chop",
		"price" : 5000,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png",
		"type" : upgradeTypes.WoodPerClick
	},
}
