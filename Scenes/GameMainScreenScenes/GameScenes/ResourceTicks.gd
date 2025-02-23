extends Node

# Nodes
var AutoClickerTickTimer

var WoodTypes
var ReversedWoodTypes

func _ready():
	AutoClickerTickTimer = $AutoClickerTick
	WoodTypes = Values.WoodTypes
	ReversedWoodTypes = WoodTypes.duplicate(true)
	ReversedWoodTypes.reverse()

func _process(_delta):
	pass

func _on_resource_gain_tick_timeout():
	tickCalculations()
	setTickChanges()

func _on_auto_clicker_tick_timeout() -> void:
	if AutoClickerTickTimer.wait_time != Values.ResourceValues["AutoClickers"]["AutoClickerTickLength"]:
		AutoClickerTickTimer.wait_time = Values.ResourceValues["AutoClickers"]["AutoClickerTickLength"]
	
	autoClick()

var WoodTiersLowerTier = {
	"Oak" : null,
	"Apple" : "Oak",
	"Maple" : "Apple",
	"Birch" : "Maple",
	"Spruce" : "Birch",
	"Chestnut" : "Spruce",
	"Cherry" : "Chestnut",
	"Ash" : "Cherry",
	"Cedar" : "Ash",
	"Mahogany" : "Cedar",
	"Ebony" : "Mahogany",
	"Dogwood" : "Ebony",
	"Rosewood" : "Dogwood",
	"Ghost Gum" : "Rosewood",
	"Dragonwood" : "Ghost Gum",
}

var WoodCalculations = {
	"Oak" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Apple" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Maple" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Birch" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Spruce" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Chestnut" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Cherry" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Ash" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Cedar" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Mahogany" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Ebony" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Dogwood" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Rosewood" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Ghost Gum" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
	"Dragonwood" : {
		"WoodProductionGain" : 0,
		"WoodProductionLoss" : 0,
		"WoodMarkedLoss": 0,
		"WoodDamLoss": 0,
		"GoldMarketGain" : 0,
		"RemainingCapacity": 0,
		"ResourceCount": 0,
	},
}

func autoClick():
	var barItem = get_tree().get_first_node_in_group("BarItem")
	
	for woodType in WoodTypes:
		if !SaveData.Resources[woodType].has("ActiveAutoClicker"):
			SaveData.Resources[woodType]["ActiveAutoClicker"] = false
		
		if SaveData.Resources[woodType]["ActiveAutoClicker"]:
			barItem.woodClick(woodType)

func tickCalculations():
	preCalculations()
	
	var adjustments = true
	var i = 0
	
	while adjustments and i < 1000:
		adjustments = postCalculations()
		i += 1
		
	calculateDragonwoodAvailability()

func setTickChanges():
	for woodType in WoodTypes:
		if !Unlocks.Unlocks[woodType]["Unlocked"]:
			continue
		
		if is_nan(SaveData.Resources[woodType]["Count"]):
			SaveData.Resources[woodType]["Count"] = 0
		
		var woodLoss = WoodCalculations[woodType]["WoodProductionLoss"] + WoodCalculations[woodType]["WoodMarkedLoss"] + WoodCalculations[woodType]["WoodDamLoss"]
		
		SaveData.Resources[woodType]["Count"] += WoodCalculations[woodType]["WoodProductionGain"] - woodLoss
		SaveData.Resources[woodType]["Count"] = max(SaveData.Resources[woodType]["Count"], 0)
		
		if SaveData.GeneralInfo.has("TotalWoodProduced"):
			SaveData.GeneralInfo["TotalWoodProduced"] += WoodCalculations[woodType]["WoodProductionGain"]
		else:
			SaveData.GeneralInfo["TotalWoodProduced"] = WoodCalculations[woodType]["WoodProductionGain"]
		
		# Wood Production
		Values.ResourceValues[woodType]["RealPerSecondLoss"] = woodLoss
		Values.ResourceValues[woodType]["RealPerSecondIncrease"] = WoodCalculations[woodType]["WoodProductionGain"]
		
		# Market
		var goldGain = WoodCalculations[woodType]["WoodMarkedLoss"] * Values.ResourceValues[woodType]["SoldFor"]
		SaveData.Gold["Count"] += goldGain
		
		if SaveData.GeneralInfo.has("TotalGoldGain"):
			SaveData.GeneralInfo["TotalGoldGain"] += goldGain
		else:
			SaveData.GeneralInfo["TotalGoldGain"] = goldGain
		
		if SaveData.GeneralInfo.has("TotalWoodSold"):
			SaveData.GeneralInfo["TotalWoodSold"] += WoodCalculations[woodType]["WoodMarkedLoss"]
		else:
			SaveData.GeneralInfo["TotalWoodSold"] = WoodCalculations[woodType]["WoodMarkedLoss"]
		
		Values.ResourceValues[woodType]["WoodSoldPerSecond"] = WoodCalculations[woodType]["WoodMarkedLoss"]
		Values.ResourceValues[woodType]["GoldGainPerSecond"] = goldGain
		
		# Dam
		SaveData.FinalDamData[woodType]["ResourceCountUsed"] += WoodCalculations[woodType]["WoodDamLoss"]
		Values.ResourceValues[woodType]["FinalDamPerSecond"] = WoodCalculations[woodType]["WoodDamLoss"]
		
		if SaveData.Resources[woodType]["Count"] > Values.ResourceValues[woodType]["Storage"]:
			SaveData.Resources[woodType]["Count"] = Values.ResourceValues[woodType]["Storage"]

func preCalculations():
	for woodType in ReversedWoodTypes:
		if !Unlocks.Unlocks[woodType]["Unlocked"]:
			continue
		
		WoodCalculations[woodType]["WoodProductionGain"] = Values.ResourceValues[woodType]["PerSecondIncrease"]
		WoodCalculations[woodType]["WoodProductionLoss"] = Values.ResourceValues[woodType]["PerSecondLoss"]
		WoodCalculations[woodType]["WoodMarkedLoss"] = SaveData.Resources[woodType]["Bots"] * Values.ResourceValues[woodType]["BotBaseSell"] * SaveData.Resources[woodType]["BotSellPercentage"] / 100.0
		WoodCalculations[woodType]["WoodDamLoss"] = getMaxDamResourceCost(woodType)
		WoodCalculations[woodType]["ResourceCount"] = SaveData.Resources[woodType]["Count"]
		WoodCalculations[woodType]["RemainingCapacity"] = max(Values.ResourceValues[woodType]["Storage"] - SaveData.Resources[woodType]["Count"], 0)

func postCalculations():
	var adjustments = false
	
	for woodType in ReversedWoodTypes:
		if !Unlocks.Unlocks[woodType]["Unlocked"]:
			continue
		
		adjustments = calculateResourceStorageLimits(woodType)
		
		if woodType != "Oak":
			adjustments = calculateLowerTierWoodAvailability(woodType)
	
	return adjustments

func calculateResourceStorageLimits(woodType):
	var adjustments = false
	
	var woodLoss = WoodCalculations[woodType]["WoodProductionLoss"] + WoodCalculations[woodType]["WoodMarkedLoss"] + WoodCalculations[woodType]["WoodDamLoss"]
	var possibleNetOutcome = WoodCalculations[woodType]["WoodProductionGain"] - woodLoss
	
	if roundf(possibleNetOutcome * 10000) > roundf(WoodCalculations[woodType]["RemainingCapacity"] * 10000):
		var originalWoodGain = WoodCalculations[woodType]["WoodProductionGain"]
		WoodCalculations[woodType]["WoodProductionGain"] -= possibleNetOutcome - WoodCalculations[woodType]["RemainingCapacity"]
		
		var adjustmentPercentage = WoodCalculations[woodType]["WoodProductionGain"] / originalWoodGain
		var lowerTierWoodType = WoodTiersLowerTier[woodType]
		
		if lowerTierWoodType:
			WoodCalculations[lowerTierWoodType]["WoodProductionLoss"] *= adjustmentPercentage
		
		adjustments = true
	
	return adjustments

func calculateLowerTierWoodAvailability(woodType):
	var adjustments = false
	
	var lowerTierWoodType = WoodTiersLowerTier[woodType]
	var lowerTierWoodLoss = + WoodCalculations[lowerTierWoodType]["WoodProductionLoss"] + WoodCalculations[lowerTierWoodType]["WoodMarkedLoss"] + WoodCalculations[lowerTierWoodType]["WoodDamLoss"]
	
	var possibleOutcome = WoodCalculations[lowerTierWoodType]["WoodProductionGain"] - lowerTierWoodLoss + WoodCalculations[lowerTierWoodType]["ResourceCount"]
	
	if possibleOutcome < 0:
		var originalWoodLoss = lowerTierWoodLoss
		lowerTierWoodLoss += possibleOutcome
		
		var adjustmentPercentage = lowerTierWoodLoss / originalWoodLoss
		
		WoodCalculations[lowerTierWoodType]["WoodProductionLoss"] *= adjustmentPercentage
		WoodCalculations[lowerTierWoodType]["WoodMarkedLoss"] *= adjustmentPercentage
		WoodCalculations[lowerTierWoodType]["WoodDamLoss"] *= adjustmentPercentage
		
		WoodCalculations[woodType]["WoodProductionGain"] *= adjustmentPercentage
		
		adjustments = true
	
	return adjustments

func calculateDragonwoodAvailability():
	var woodLoss = WoodCalculations["Dragonwood"]["WoodProductionLoss"] + WoodCalculations["Dragonwood"]["WoodMarkedLoss"] + WoodCalculations["Dragonwood"]["WoodDamLoss"]
	
	var possibleOutcome = WoodCalculations["Dragonwood"]["WoodProductionGain"] - woodLoss + WoodCalculations["Dragonwood"]["ResourceCount"]
	
	if possibleOutcome < 0:
		var originalWoodLoss = woodLoss
		woodLoss += possibleOutcome
		
		var adjustmentPercentage = woodLoss / originalWoodLoss
		
		WoodCalculations["Dragonwood"]["WoodProductionLoss"] *= adjustmentPercentage
		WoodCalculations["Dragonwood"]["WoodMarkedLoss"] *= adjustmentPercentage
		WoodCalculations["Dragonwood"]["WoodDamLoss"] *= adjustmentPercentage

func getMaxDamResourceCost(woodType):
	var damData = SaveData.FinalDamData[woodType]
	
	if !damData["Unlocked"] or damData["Completed"]:
		return 0
	
	var damItems = get_tree().get_nodes_in_group("FinalDamItem")
	
	for damItem in damItems:
		if damItem.WoodType == woodType:
			var woodPerSecond = damItem.BasePerSecondIncrease * (damData["ProductionSpeedSlider"] / 100) * Values.ResourceValues["Dam"]["ConstructionSpeedMultip"]
			var woodStillNeeded = damItem.TotalNeeded - damData["ResourceCountUsed"]
			
			if woodStillNeeded < woodPerSecond:
				if woodStillNeeded > 0:
					woodPerSecond = woodStillNeeded
				else:
					woodPerSecond = 0
			
			return woodPerSecond

func UpdateAllBarValues():
	var BarItems = get_tree().get_nodes_in_group("BarItem")
	
	for item in BarItems:
		item.updateBarValues()
