extends Node

# Production Value used to impact resource gains
@onready var ProductionValue

# Specific resource gained per click or per tick
@onready var FoodPerTick = DefaultValues.DefaultFoodPerTick
@onready var WaterPerTick = DefaultValues.DefaultWaterPerTick
@onready var WoodPerClick = DefaultValues.DefaultWoodPerClick

# Specific resource gained per bonus button click
@onready var WaterPerBonusClick = DefaultValues.DefaultWaterPerBonusClick
@onready var FoodPerBonusClick = DefaultValues.DefaultFoodPerBonusClick
@onready var WoodPerBonusClick = DefaultValues.DefaultWoodPerClick

# max storage values, apply default values to have no exceptions
@onready var FoodLimit = DefaultValues.DefaultFoodLimit
@onready var WaterLimit = DefaultValues.DefaultWaterLimit
@onready var WoodLimit = DefaultValues.DefaultWoodLimit

# action length
@onready var WaterLength = DefaultValues.DefaultWaterLength
@onready var FoodLength =  DefaultValues.DefaultFoodLength

# Resource start values
var WoodCount = 100
var FoodCount = 0
var WaterCount = 0

#introValues
var IntroClickCount = 0
var introEnabled = false

#introPhases
var PhaseOne = true
var PhaseTwo = false
var PhaseThree = false
var PhaseFour = false
var PhaseFive = false

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

# Reaserch takes time and a bunch of resources
var Reaserch = {
	"Discover choping": true,
	"Wood jesus (make food in to wood)": true,
	"Discover that wood differs (unlock mapel)": true,
	"unlock coper": true,
	"unlock tin": true,
	"unlock bronze": true,
	"unlock iron": true,
}

## Used to check and trigger status effects in StatusEffects
var StatusEffectState = {
	"Hungry" : false,
	"Starving" : false,
	"Thirsty" : false,
	"Dehydrated" : false,
	"Tired" : false,
	"Revved up" : false,
}
