extends Node

# add a production
var StatusEffects = {
	"Hungry" : {
		"name" : "Hungry",
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"trigger" : "food under 50",
		"effect" : "20% less production",
		"endCondition" : "food above 50",
	},
	"Starving" : {
		"name" : "Starving",
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"trigger" : "food under 10",
		"effect" : "40% less production",
		"endCondition" : "food above 25",
	},
	"Thirsty" : {
		"name" : "Thirsty",
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"trigger" : "water under 50",
		"effect" : "20% less production",
		"endCondition" : "water above 50",
	},
	"Dehydrated" : {
		"name" : "Dehydrated",
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"trigger" : "water under 10",
		"effect" : "40% less production",
		"endCondition" : "water above 25",
	},
	"Tired" : {
		"name" : "Tired",
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"trigger" : "50s action uptime in last minute",
		"effect" : "-20% production",
		"endCondition" : "15s no actions done",
	},
	"Revved up" : {
		"name" : "Revved up",
		"icon" : "res://Art/UpgradeIcons/chickenIcon.png",
		"trigger" : "55s chopping action uptime in last minute",
		"effect" : "25% wood production",
		"endCondition" : "5s no chopping done",
	},
}
