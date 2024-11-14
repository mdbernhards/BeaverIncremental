extends Node

var WoodTypes

func _ready():
	WoodTypes = Values.WoodTypes

func _process(_delta):
	pass

func _on_resource_gain_tick_timeout():
	var lastWoodType
	
	var woodGain
	var woodLoss = 0
	var woodLossPrecentige = 1 #100%
	
	for woodType in WoodTypes:
		var woodCount = SaveData.Resources[woodType]["Count"]
		
		woodGain = Values.ResourceValues[woodType]["PerSecondIncrease"]
		
		if woodType != "Oak":
			woodLoss = Values.ResourceValues[lastWoodType]["PerSecondLoss"]
			
			if woodLoss > SaveData.Resources[lastWoodType]["Count"]:
				woodLossPrecentige = SaveData.Resources[lastWoodType]["Count"] / woodLoss
			else:
				woodLossPrecentige = 1
		
		woodGain *= (woodLossPrecentige)
		
		if Values.ResourceValues[woodType]["Storage"] > (woodCount + woodGain):
			Values.ResourceValues[woodType]["RealPerSecondIncrease"] = woodGain
			SaveData.Resources[woodType]["Count"] += woodGain
		else:
			Values.ResourceValues[woodType]["RealPerSecondIncrease"] = Values.ResourceValues[woodType]["Storage"] - woodCount
			woodLossPrecentige = (woodCount - Values.ResourceValues[woodType]["Storage"]) / (1 + woodGain)
			SaveData.Resources[woodType]["Count"] = Values.ResourceValues[woodType]["Storage"]
		
		if woodType != "Oak":
			Values.ResourceValues[lastWoodType]["RealPerSecondLoss"] = woodLoss * woodLossPrecentige
			SaveData.Resources[lastWoodType]["Count"] -= woodLoss * woodLossPrecentige
			
		lastWoodType = woodType
