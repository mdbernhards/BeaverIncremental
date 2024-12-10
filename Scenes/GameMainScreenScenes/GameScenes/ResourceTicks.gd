extends Node

var WoodTypes

func _ready():
	WoodTypes = Values.WoodTypes

func _process(_delta):
	pass

func _on_resource_gain_tick_timeout():
	ApplyBotsSellingWood()
	ApplyWoodGainAndLoss()

func ApplyBotsSellingWood():
	for woodType in WoodTypes:
		Values.ResourceValues[woodType]["RealPerSecondLoss"] = 0
		
		if SaveData.Resources[woodType]["Bots"] > 0:
			var woodSold = SaveData.Resources[woodType]["Bots"] * Values.ResourceValues[woodType]["BotBaseSell"] * SaveData.Resources[woodType]["BotSellPercentage"] / 100.0
			
			if woodSold > SaveData.Resources[woodType]["Count"]:
				woodSold = SaveData.Resources[woodType]["Count"]
				
			var goldGain = woodSold * Values.ResourceValues[woodType]["SoldFor"]
			
			SaveData.Gold["Count"] += goldGain
			
			Values.ResourceValues[woodType]["RealPerSecondLoss"] = woodSold
			SaveData.Resources[woodType]["Count"] -= woodSold
			
			Values.ResourceValues[woodType]["WoodSoldPerSecond"] = woodSold
			Values.ResourceValues[woodType]["GoldGainPerSecond"] = goldGain
		else:
			Values.ResourceValues[woodType]["WoodSoldPerSecond"] = 0
			Values.ResourceValues[woodType]["GoldGainPerSecond"] = 0

func ApplyWoodGainAndLoss():
	var lastWoodType

	for woodType in WoodTypes:
		var woodCount = SaveData.Resources[woodType]["Count"]
		var storage = Values.ResourceValues[woodType]["Storage"]
		
		var woodGain = Values.ResourceValues[woodType]["PerSecondIncrease"]
		var woodLoss = 0
		
		var woodLossPercentage = 1.0

		if lastWoodType != null:
			woodLoss = Values.ResourceValues[lastWoodType]["PerSecondLoss"]

			if woodLoss > SaveData.Resources[lastWoodType]["Count"]:
				woodLossPercentage = SaveData.Resources[lastWoodType]["Count"] / woodLoss
			else:
				woodLossPercentage = 1.0

		Values.ResourceValues[woodType]["RealPerSecondIncrease"] = woodGain * woodLossPercentage
		SaveData.Resources[woodType]["Count"] += woodGain * woodLossPercentage

		if lastWoodType != null and woodLoss > 0:
			var actualLoss = woodLoss * woodLossPercentage

			if woodCount < storage:
				SaveData.Resources[lastWoodType]["Count"] -= actualLoss
				Values.ResourceValues[lastWoodType]["RealPerSecondLoss"] = actualLoss
			else:
				Values.ResourceValues[lastWoodType]["RealPerSecondLoss"] = 0
				
		lastWoodType = woodType

	for woodType in WoodTypes:
		if SaveData.Resources[woodType]["Count"] >= Values.ResourceValues[woodType]["Storage"]:
			Values.ResourceValues[woodType]["RealPerSecondLoss"] = 0
			Values.ResourceValues[woodType]["RealPerSecondIncrease"] = 0
		
		SaveData.Resources[woodType]["Count"] = clampi(SaveData.Resources[woodType]["Count"], 0, Values.ResourceValues[woodType]["Storage"])

func UpdateAllBarValues():
	var BarItems = get_tree().get_nodes_in_group("BarItem")
	
	for item in BarItems:
		item.updateBarValues()
