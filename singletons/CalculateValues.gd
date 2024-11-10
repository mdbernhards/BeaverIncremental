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
			var upgrades = applicableUpgrades[upgradeType]
			
			if upgradeType == "PerClick":
				CalculateWoodPerClick(woodType, upgrades)
			if upgradeType == "PerSecondIncrease":
				CalculateWoodPerSecondGain(woodType, upgrades)
			if upgradeType == "PerSecondLoss":
				CalculateWoodPerSecondLoss(woodType, upgrades)
			if upgradeType == "Storage":
				CalculateWoodStorage(woodType, upgrades)
				
func CalculateWoodPerClick(woodType, upgrades):
	var baseWoodClick = 0
	var woodClickMultiplier = 1
	
	for upgradeWoodType in upgrades:
		if upgrades.has(upgradeWoodType) and upgrades[upgradeWoodType]:
			for id in upgrades[upgradeWoodType]:
				id = str(id)
				var upgradeLevel = SaveData.Upgrades[upgradeWoodType][id]["Level"]
				
				if upgradeLevel != 0:
					if woodType == "Oak":
						if id == "1":
							baseWoodClick += upgradeLevel
						if id == "4":
							woodClickMultiplier *= (upgradeLevel + 1)
					if woodType == "Apple":
						if id == "1":
							baseWoodClick += (2 * upgradeLevel)
						if id == "3":
							woodClickMultiplier *= pow(1.03, upgradeLevel)
						if id == "7":
							woodClickMultiplier *= (3 * upgradeLevel)
		
	Values.ResourceValues[woodType]["PerClick"] = 1 + (baseWoodClick * woodClickMultiplier)

func CalculateWoodPerSecondGain(woodType, upgrades):
	var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
	var woodCampsPSIncrease = 1
	var woodCampsMultiplier = 1
	
	for upgradeWoodType in upgrades:
		if upgrades.has(upgradeWoodType) and upgrades[upgradeWoodType]:
			for id in upgrades[upgradeWoodType]:
				id = str(id)
				var upgradeLevel = SaveData.Upgrades[upgradeWoodType][id]["Level"]
				
				if upgradeLevel != 0:
					if woodType == "Oak":
						if id == "6":
							woodCampsPSIncrease += upgradeLevel
						if id == "7":
							woodCampsMultiplier *= (1 + log(Values.ResourceValues[woodType]["PerClick"]) * upgradeLevel)
					if woodType == "Apple":
						if id == "4":
							woodCampsPSIncrease += (2 * upgradeLevel)
						if id == "8":
							woodCampsMultiplier = (1 + log(Values.ResourceValues[woodType]["PerClick"]) * 1.2 * upgradeLevel)
		
	Values.ResourceValues[woodType]["PerSecondIncrease"] = woodCamps * woodCampsPSIncrease * woodCampsMultiplier * SaveData.Resources[woodType]["Production"] / 100

func CalculateWoodPerSecondLoss(woodType, upgrades):
	if woodType == "Dragonwood":
		return
		
	var lossMultiplier = 1
	
	CalculateWoodPerSecondGain(WoodTypes[WoodTypes.find(woodType) + 1], Values.ResourceApplicableUpgrades[woodType]["PerSecondIncrease"])
	var nextWoodProduction = Values.ResourceValues[WoodTypes[WoodTypes.find(woodType) + 1]]["PerSecondIncrease"]
	
	for upgradeWoodType in upgrades:
		if upgrades.has(upgradeWoodType) and upgrades[upgradeWoodType]:
			for id in upgrades[upgradeWoodType]:
				id = str(id)
				var upgradeLevel = SaveData.Upgrades[upgradeWoodType][id]["Level"]
				
				if upgradeLevel != 0:
					if woodType == "Apple":
						if id == "9":
							lossMultiplier *= pow(0.99, upgradeLevel)
		
	Values.ResourceValues[woodType]["PerSecondLoss"] = nextWoodProduction * lossMultiplier * 2

func CalculateWoodStorage(woodType, upgrades):
	var baseStorage = 25
	var storageIncreaseMultiplier = 1
	var storageIncrease = 0
	var storageMultiplier = 1
	
	for upgradeWoodType in upgrades:
		if upgrades.has(upgradeWoodType) and upgrades[upgradeWoodType]:
			for id in upgrades[upgradeWoodType]:
				id = str(id)
				var upgradeLevel = SaveData.Upgrades[upgradeWoodType][id]["Level"]
				
				if upgradeLevel != 0:
					if woodType == "Oak":
						if id == "2":
							storageIncrease += upgradeLevel * 10
						if id == "3":
							storageMultiplier *= upgradeLevel + 1
					if woodType == "Apple":
						if id == "2":
							storageIncrease += upgradeLevel * 20
						if id == "5":
							storageIncreaseMultiplier *= maxi((upgradeLevel) * 2, 1)
		
	Values.ResourceValues[woodType]["Storage"] = (baseStorage + (storageIncrease * storageIncreaseMultiplier)) * storageMultiplier
