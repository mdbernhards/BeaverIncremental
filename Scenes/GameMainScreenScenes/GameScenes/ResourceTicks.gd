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
		
		if woodType != "Oak":
			Values.ResourceValues[lastWoodType]["RealPerSecondLoss"] += woodLoss * woodLossPrecentige
			SaveData.Resources[lastWoodType]["Count"] -= woodLoss * woodLossPrecentige
		
		if Values.ResourceValues[woodType]["Storage"] > (woodCount + woodGain):
			Values.ResourceValues[woodType]["RealPerSecondIncrease"] = woodGain
			SaveData.Resources[woodType]["Count"] += woodGain
		else:
			Values.ResourceValues[woodType]["RealPerSecondIncrease"] = Values.ResourceValues[woodType]["Storage"] - woodCount
			woodLossPrecentige = (woodCount - Values.ResourceValues[woodType]["Storage"]) / (1 + woodGain)
			SaveData.Resources[woodType]["Count"] = Values.ResourceValues[woodType]["Storage"]
			
		lastWoodType = woodType

func UpdateAllBarValues():
	var BarItems = get_tree().get_nodes_in_group("BarItem")
	
	for item in BarItems:
		item.updateBarValues()
