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
	var baseWoodClick = 0
	var woodClickMultiplier = 1
	
	if !upgradeIds.has(woodType) or !upgradeIds[woodType]:
		return
		
	for id in upgradeIds[woodType]:
		id = str(id)
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if upgradeLevel != 0:
			if woodType == "Oak":
				if id == "1":
					baseWoodClick = upgradeLevel
				if id == "4":
					woodClickMultiplier *= upgradeLevel + 1
			elif woodType == "Apple":
				if id == "1":
					baseWoodClick = 2 * upgradeLevel
				if id == "3":
					woodClickMultiplier *= pow(1.03, upgradeLevel)
				if id == "7":
					woodClickMultiplier *= 2 * upgradeLevel
		
	Values.ResourceValues[woodType]["PerClick"] = 1 + (baseWoodClick * woodClickMultiplier)

func CalculateWoodPerSecondGain(woodType, upgradeIds):
	var woodCamps = 0
	var woodCampsPSIncrease = 1
	var woodCampsMultiplier = 1
	
	if !upgradeIds.has(woodType) or !upgradeIds[woodType]:
		return
		
	for id in upgradeIds[woodType]:
		id = str(id)
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if upgradeLevel != 0:
			if woodType == "Oak":
				if id == "6":
					woodCampsPSIncrease = upgradeLevel
				if id == "7":
					woodCampsMultiplier = 1 + log(Values.ResourceValues[woodType]["PerClick"])
			elif woodType == "Apple":
				if id == "4":
					woodCampsPSIncrease = 2 * upgradeLevel
				if id == "8":
					woodCampsMultiplier = 1 + log(Values.ResourceValues[woodType]["PerClick"]) * 1.2
		
	Values.ResourceValues[woodType]["PerSecondIncrease"] = woodCamps * woodCampsPSIncrease * woodCampsMultiplier

func CalculateWoodPerSecondLoss(woodType, upgradeIds):
	if woodType == "Dragonwood":
		return
		
	var lossMultiplier = 1
	var nextWoodProduction = Values.ResourceValues[WoodTypes[WoodTypes.find(woodType) + 1]]["PerSecondIncrease"]
	
	if !upgradeIds.has(woodType) or !upgradeIds[woodType]:
		return
		
	for id in upgradeIds[woodType]:
		id = str(id)
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if upgradeLevel != 0:
			if woodType == "Apple":
				if id == "9":
					lossMultiplier *= pow(0.99, upgradeLevel)
		
	Values.ResourceValues[woodType]["PerSecondLoss"] = nextWoodProduction * lossMultiplier * 2

func CalculateWoodStorage(woodType, upgradeIds):
	var baseStorage = 25
	var StorageIncrease = 0
	var StorageMultiplier = 1
	
	if !upgradeIds.has(woodType) or !upgradeIds[woodType]:
		return
		
	for id in upgradeIds[woodType]:
		id = str(id)
		var upgradeLevel = SaveData.Upgrades[woodType][id]["Level"]
		
		if upgradeLevel != 0:
			if woodType == "Oak":
				if id == "2":
					StorageIncrease = upgradeLevel * 10
				if id == "3":
					StorageMultiplier *= upgradeLevel + 1
			if woodType == "Apple":
				if id == "2":
					StorageIncrease = upgradeLevel * 20
				if id == "5":
					StorageMultiplier *= maxi((upgradeLevel + 1) / 2, 1)
		
	Values.ResourceValues[woodType]["Storage"] = (baseStorage + StorageIncrease) * StorageMultiplier
