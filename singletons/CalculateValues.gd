extends Node

var WoodTypes
var ResourceValues

func _ready():
	calculateAllValues()

func _process(_delta):
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
					if upgradeWoodType == "Oak":
						if id == "1":
							baseWoodClick += upgradeLevel
						if id == "4":
							woodClickMultiplier *= (upgradeLevel + 1)
					if upgradeWoodType == "Apple":
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
					if upgradeWoodType == "Oak":
						if id == "6":
							woodCampsPSIncrease += upgradeLevel
						if id == "7":
							woodCampsMultiplier *= (1 + log(Values.ResourceValues[woodType]["PerClick"]) * upgradeLevel)
					if upgradeWoodType == "Apple":
						if id == "4":
							woodCampsPSIncrease += (2 * upgradeLevel)
						if id == "8":
							woodCampsMultiplier = (1 + log(Values.ResourceValues[woodType]["PerClick"]) * 1.2 * upgradeLevel)
		
	Values.ResourceValues[woodType]["PerSecondIncrease"] = woodCamps * woodCampsPSIncrease * woodCampsMultiplier * SaveData.Resources[woodType]["Production"] / 100

func CalculateWoodPerSecondLoss(woodType, upgrades):
	if woodType == "Dragonwood":
		return
		
	var lossMultiplier = 1
	
	var nextWoodType = WoodTypes[WoodTypes.find(woodType) + 1]
	
	CalculateWoodPerSecondGain(nextWoodType, Values.ResourceApplicableUpgrades[nextWoodType]["PerSecondIncrease"])
	CalculateWoodPerSecondGain(woodType, Values.ResourceApplicableUpgrades[woodType]["PerSecondIncrease"])
	var nextWoodProduction = Values.ResourceValues[nextWoodType]["PerSecondIncrease"]
	
	for upgradeWoodType in upgrades:
		if upgrades.has(upgradeWoodType) and upgrades[upgradeWoodType]:
			for id in upgrades[upgradeWoodType]:
				id = str(id)
				var upgradeLevel = SaveData.Upgrades[upgradeWoodType][id]["Level"]
				
				if upgradeLevel != 0:
					if upgradeWoodType == "Apple":
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
					if upgradeWoodType == "Oak":
						if id == "2":
							storageIncrease += upgradeLevel * 10
						if id == "3":
							storageMultiplier *= upgradeLevel + 1
					if upgradeWoodType == "Apple":
						if id == "2":
							storageIncrease += upgradeLevel * 20
						if id == "5":
							storageIncreaseMultiplier *= maxi((upgradeLevel) * 2, 1)
	var storagePerWoodCamp = SaveData.Resources[woodType]["Woodcamps"] * 100
	
	Values.ResourceValues[woodType]["Storage"] = (baseStorage + (storageIncrease * storageIncreaseMultiplier)) * storageMultiplier + storagePerWoodCamp

func ApplyUpgrades():
	WoodTypes = Values.WoodTypes
	ResourceValues = Values.ResourceValues
	
	for woodType in WoodTypes:
		var existingUpgrades = SaveData.Upgrades[woodType]
		for upgradeId in existingUpgrades:
			SetUpgradeValue(woodType, upgradeId)

func SetUpgradeValue(woodType, upgradeId):
	var upgradeLevel = SaveData.Upgrades[woodType][upgradeId]["Level"]
	var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
	var level = SaveData.Resources[woodType]["Level"]
	
	match woodType:
		"Oak":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 10
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel
				"4":
					TempValues[woodType]["ClickBeaverUpgrades"] += upgradeLevel
				"5":
					print("param3 is 3!") #unlock apple wood
				"6":
					TempValues[woodType]["Beavers"] += upgradeLevel * woodCamps * 2
				"7":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.004) # 99.6%
				"8":
					TempValues[woodType]["storageMultip"] *= maxf(upgradeLevel * 1.06, 1)
				"9":
					for i in upgradeLevel:
						TempValues[woodType]["levelPriceMultip"] *= (1 - 0.003) # 99.7%
				"10":
					for i in upgradeLevel:
						TempValues[woodType]["upgradePriceMultip"] *= (1 - 0.015) # 98.5%
				"11":
					for i in upgradeLevel:
						TempValues[woodType]["botPriceMultip"] *= (1 - 0.003) # 99.7%
				"12":
					TempValues[woodType]["storageMultip"] *= maxf(upgradeLevel * 1.0018 * level, 1)
				"13":
					print("param3 is 3!") #fix: doesn't make sense for the first wood to lower production costs, right?
				"14":
					TempValues[woodType]["basePrice"] += upgradeLevel * 0.1
				"15":
					TempValues[woodType]["wpsMultip"] *= maxf(upgradeLevel * 1.02 * level, 1)
				"16":
					TempValues[woodType]["storageMultip"] *= upgradeLevel + 1
				"17":
					print("param3 is 3!") #replace this or 11
				"18":
					TempValues["Fish"]["PriceMultip"] *= maxf(upgradeLevel * 1.02, 1)
		"Apple":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 2
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 20
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 2
				"4":
					TempValues[woodType]["wcStorageMultip"] *= maxf(upgradeLevel * 1.07, 1) #stoped at this one
				"5":
					print("param3 is 3!") #unlock apple wood
				"6":
					TempValues[woodType]["Beavers"] += upgradeLevel * woodCamps
				"7":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.004) # 99.6%
				"8":
					TempValues[woodType]["storageMultip"] *= upgradeLevel * 1.06
				"9":
					for i in upgradeLevel:
						TempValues[woodType]["levelPriceMultip"] *= (1 - 0.003) # 99.7%
				"10":
					for i in upgradeLevel:
						TempValues[woodType]["upgradePriceMultip"] *= (1 - 0.015) # 98.5%
				"11":
					for i in upgradeLevel:
						TempValues[woodType]["botPriceMultip"] *= (1 - 0.003) # 99.7%
				"12":
					TempValues[woodType]["storageMultip"] *= upgradeLevel * 1.0018 * level
				"13":
					print("param3 is 3!") #fix: doesn't make sense for the first wood to lower production costs, right?
				"14":
					TempValues[woodType]["basePrice"] += upgradeLevel * 0.1
				"15":
					TempValues[woodType]["wpsMultip"] *= upgradeLevel * 1.02 * level
				"16":
					TempValues[woodType]["storageMultip"] *= upgradeLevel + 1
				"17":
					print("param3 is 3!") #replace this or 11
				"18":
					TempValues["Fish"]["PriceMultip"] *= upgradeLevel * 1.02
		"Maple":
			print("param3 is 3!")
		"Birch":
			print("param3 is not 3!")
		"Spruce":
			print("param3 is 3!")
		"Chestnut":
			print("param3 is not 3!")
		"Cherry":
			print("param3 is 3!")
		"Ash":
			print("param3 is not 3!")
		"Cedar":
			print("param3 is 3!")
		"Mahogany":
			print("param3 is not 3!")
		"Ebony":
			print("param3 is 3!")
		"Dogwood":
			print("param3 is not 3!")
		"Rosewood":
			print("param3 is 3!")
		"Ghost Gum":
			print("param3 is not 3!")
		"Dragonwood":
			print("param3 is not 3!")

var TempValues = {
	"Fish" : {
		"PriceMultip" : 1, # 100%
	},
	"Research" : {
		"Time" : 1, # 100%
		"Cost" : 1, # 100%
	},
	"Gold" : {
		"Beavers" : 1,
	},
	"Oak" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"wpsMultip" : 1,
		"basePrice" : 1,
		"wcStorageMultip" : 1,
	},
	"Apple" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"wpsMultip" : 1,
		"basePrice" : 1,
		"wcStorageMultip" : 1,
	},
	"Maple" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Birch" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Spruce" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Chestnut" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Cherry" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Ash" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Cedar" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Mahogany" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Ebony" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Dogwood" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Rosewood" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Ghost Gum" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
	"Dragonwood" : {
		"Beavers" : 1,
		"BaseStorage" : 25,
		"WpsPerWc": 1,
		"storageMultip" : 1,
		"levelPriceMultip" : 1,
		"upgradePriceMultip" : 1,
		"botPriceMultip" : 1,
		"basePrice" : 1,
	},
}
