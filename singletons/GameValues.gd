extends Node

#DONT CHANGE DEFAULT VALUES IN CODE, plz remember 
#use only for getting real/normal values, with upgrades in mind
var DefaultWoodPerChop = 1

var DefaultWaterPerClick = 5
var DefaultWaterPerBonusClick = 5

var DefaultFoodPerClick = 5
var DefaultFoodPerBonusClick = 5

var DefaultFoodLimit = 100
var DefaultWaterLimit = 25
var DefaultWoodLimit = 250

var WoodPerChop = DefaultWoodPerChop

var WaterPerClick = DefaultWaterPerClick
var WaterPerBonusClick = DefaultWaterPerBonusClick

var FoodPerClick = DefaultFoodPerClick
var FoodPerBonusClick = DefaultFoodPerBonusClick

var FoodLimit = DefaultFoodLimit
var WaterLimit = DefaultWaterLimit
var WoodLimit = DefaultWoodLimit

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

var Upgrades = {
	"Wood1" : {
		"id" : 0,
		"name" : "The first chop",
		"description" : "learn how to chop",
		"price" : 0,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png"
	},
	"Food1" : {
		"id" : 1,
		"name" : "The first chomp",
		"description" : "+3 food per chomp",
		"price" : 25,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png"
	},
	"Wood2" : {
		"id" : 1,
		"name" : "The second chop",
		"description" : "+1 wood per chop",
		"price" : 50,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png"
	},
	"Wood3" : {
		"id" : 2,
		"name" : "The third chop",
		"description" : "+1 wood per chop",
		"price" : 125,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png"
	},
	"Water1" : {
		"id" : 1,
		"name" : "The first drink",
		"description" : "+3 water per drink",
		"price" : 25,
		"icon" : "res://Art/UpgradeIcons/waterIcon.png"
	},
	"Food2" : {
		"id" : 1,
		"name" : "The second chomp",
		"description" : "+3 food per chomp",
		"price" : 75,
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png"
	},
	"Wood4" : {
		"id" : 3,
		"name" : "The third chop",
		"description" : "+1 wood per chop",
		"price" : 125,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png"
	},
	"Wood5" : {
		"id" : 4,
		"name" : "The third chop",
		"description" : "+1 wood per chop",
		"price" : 125,
		"icon" : "res://Art/UpgradeIcons/axeIcon.png"
	},
}
