extends Node

var woodPerChop = 1

var waterPerClick = 20
var waterPerBonusClick = 5

var foodPerClick = 25
var foodPerBonusClick = 5

var foodLimit = 100
var waterLimit = 25
var woodLimit = 250

var Upgrades = {
	"WoodUpgrades" : {
		"Wood1" : {
			"id" : 1,
			"name" : "The first chop",
			"description" : "learn how to chop",
			"price" : 0,
			"icon" : "axe.png"
		},
		"Wood2" : {
			"id" : 2,
			"name" : "The second chop",
			"description" : "+1 wood per chop",
			"price" : 0,
			"icon" : "axe.png"
		},
		"Wood3" : {
			"id" : 3,
			"name" : "The third chop",
			"description" : "+1 wood per chop",
			"price" : 0,
			"icon" : "axe.png"
		}
	}
}
