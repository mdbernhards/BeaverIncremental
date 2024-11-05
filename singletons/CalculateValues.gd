extends Node

var WoodTypes
var ResourceValues

func _ready():
	calculateAllValues()

func _process(delta):
	pass

func calculateAllValues():
	WoodTypes = Values.WoodTypes
	ResourceValues = Values.ResourceValues
	
	for woodType in WoodTypes:
		var applicableUpgrades = Values.ResourceApplicableUpgrades[woodType]
		
		for upgradeType in applicableUpgrades:
			var upgradeIds = applicableUpgrades[upgradeType]
			
			if upgradeType == "PerClick":
				CalculateWoodPerClick(woodType, upgradeIds)
			if upgradeType == "PerSecondIncrease":
				CalculateWoodPerSecondGain(woodType, upgradeIds)
			if upgradeType == "PerSecondLoss":
				CalculateWoodPerSecondLoss(woodType, upgradeIds)
			if upgradeType == "Storage":
				CalculateWoodStorage(woodType, upgradeIds)
				
func CalculateWoodPerClick(woodType, upgradeIds):
	for id in upgradeIds:
		var perClickValue = 1
		var baseWoodClick = 1
		var woodClickMultiplier = 1
		
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if woodType == "Oak":
			if id == "1":
				baseWoodClick = upgradeLevel
			if id == "4":
				woodClickMultiplier = upgradeLevel
		
		Values.ResourceValues[woodType]["PerClick"] = perClickValue + (baseWoodClick * woodClickMultiplier)

func CalculateWoodPerSecondGain(woodType, upgradeIds):
	for id in upgradeIds:
		var woodCamps = 1
		var woodCampsPSIncrease = 1
		var woodCampsMultiplier = 1
		
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if woodType == "Oak":
			if id == "6":
				woodCampsPSIncrease = upgradeLevel
			if id == "7":
				woodCampsMultiplier = 1 + log(Values.ResourceValues[woodType]["PerClick"])
		
		Values.ResourceValues[woodType]["PerSecondIncrease"] = woodCamps * woodCampsPSIncrease * woodCampsMultiplier

func CalculateWoodPerSecondLoss(woodType, upgradeIds):
	if woodType == "Dragonwood":
		return
		
	for id in upgradeIds:
		var lossMultiplier = 1
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		var nextWoodProduction = Values.ResourceValues[WoodTypes[WoodTypes.find(woodType) + 1]]["PerSecondIncrease"]
			
		if woodType == "Apple":
			if id == "9":
				lossMultiplier *= pow(0.99, upgradeLevel)
		
		Values.ResourceValues[woodType]["PerSecondLoss"] = nextWoodProduction * lossMultiplier * 2

func CalculateWoodStorage(woodType, upgradeIds):
	for id in upgradeIds:
		var baseStorage = 50
		var StorageIncrease = 1
		var StorageMultiplier = 1
		
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if woodType == "Oak":
			if id == "2":
				StorageIncrease = upgradeLevel * 10
			if id == "3":
				StorageMultiplier = upgradeLevel
		
		Values.ResourceValues[woodType]["Storage"] = (baseStorage + StorageIncrease) * StorageMultiplier
