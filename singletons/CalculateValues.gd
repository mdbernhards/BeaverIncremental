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
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"5":
					print("param3 is 3!") #unlock apple wood
				"6":
					TempValues[woodType]["Beavers"] += upgradeLevel * woodCamps * 2
				"7":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.004) # 99.6%
				"8":
					TempValues[woodType]["WcStorageMultip"] *= maxf(upgradeLevel * 1.06, 1)
				"9":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.003) # 99.7%
				"10":
					for i in upgradeLevel:
						TempValues[woodType]["UpgradePriceMultip"] *= (1 - 0.015) # 98.5%
				"11":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.003) # 99.7%
				"12":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.0018 * level, 1)
				"13":
					print("param3 is 3!") #fix: doesn't make sense for the first wood to lower production costs, right?
				"14":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 0.1
				"15":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.02 * level, 1)
				"16":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
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
					TempValues[woodType]["WcStorageMultip"] *= maxf(upgradeLevel * 1.07, 1)
				"5":
					TempValues["Oak"]["BeaverMultip"] *= maxf(upgradeLevel * 1.03, 1)
				"6":
					print("param3 is 3!") #unlock Research
				"7":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"8":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"9":
					for i in upgradeLevel:
						TempValues[woodType]["WpsCostMultip"] *= (1 - 0.01) # 99%
				"10":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.001) # 99.9%
				"11":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel
				"12":
					pass
					# TempValues[woodType]["wpsMultip"] *= maxf(upgradeLevel * 1.02 * level, 1) idk about this one need to calculate after? myb after signal after last calc
				"13":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.006) # 99.4%
				"14":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 10
				"15":
					TempValues["Fish"]["FishingWoodMultip"] *= maxf(upgradeLevel * 1.01, 1)
				"16":
					TempValues["Dam"]["Multip"] *= maxf(upgradeLevel * 1.0015, 1)
				"17":
					TempValues["Fish"]["MoreFishMultip"] *= maxf(upgradeLevel * 1.009, 1)
				"18":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.04, 1)
		"Maple":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 3
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 30
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 3
				"4":
					for i in upgradeLevel:
						TempValues[woodType]["WcPriceMultip"] *= (1 - 0.01) # 99%
				"5":
					pass # prob change
				"6":
					TempValues[woodType]["WcStorageMultip"] *= maxf(upgradeLevel * 1.075, 1)
				"7":
					for i in upgradeLevel:
						TempValues["Research"]["Cost"] *= (1 - 0.007) # 99.3%
				"8":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.0015 * level, 1)
				"9":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.008) # 99.2%
				"10":
					TempValues["Global"]["WpsMultip"] *= maxf(upgradeLevel * 1.0005, 1) # 99.3%
				"11":
					TempValues[woodType]["BotSellMultip"] *= maxf(upgradeLevel * 1.04, 1)
				"12":
					pass # idk about this one cheff
				"13":
					for i in upgradeLevel:
						TempValues["Fish"]["BaitPriceMultip"] *= (1 - 0.04) # 99.4%
				"14":
					TempValues[woodType]["WoodPriceMultip"] *= maxf(upgradeLevel * 1.05, 1)
				"15":
					pass #i don't think this makes sense
				"16":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"17":
					TempValues[woodType]["FishStorageMultip"] *= maxf(upgradeLevel * 1.07, 1)
				"18":
					TempValues["Magic"]["Multip"] *= maxf(upgradeLevel * 1.12, 1)
		"Birch":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 4
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 40
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 4
				"4":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"5":
					pass # think about this more with more perspective
				"6":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.04 * level, 1)
				"7":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.07, 1)
				"8":
					TempValues["Magic"]["Multip"] *= maxf(upgradeLevel * 1.03, 1)
				"9":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.013, 1)
				"10":
					for i in upgradeLevel:
						TempValues["Fish"]["BaitPriceMultip"] *= (1 - 0.025) # 97.5%
				"11":
					TempValues["Fish"]["FishEffectMultip"] *= maxf(upgradeLevel * 1.0011, 1)
				"12":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.0017 * level, 1)
				"13":
					for i in upgradeLevel:
						TempValues[woodType]["WpsCostMultip"] *= (1 - 0.035) # 99%
				"14":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 20
				"15":
					pass #i don't think this makes sense
				"16":
					TempValues[woodType]["WoodPriceMultip"] *= maxf(upgradeLevel * 1.04, 1)
				"17":
					for i in upgradeLevel:
						TempValues["Dam"]["PriceMultip"] *= (1 - 0.02) # 98%
				"18":
					TempValues[woodType]["BotSellMultip"] *= maxf(upgradeLevel * 1.005, 1)
		"Spruce":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 5
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 50
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 5
				"4":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.06 * woodCamps, 1)
				"5":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.025, 1)
				"6":
					for i in upgradeLevel:
						TempValues["Research"]["Cost"] *= (1 - 0.006) # 99.4%
				"7":
					for i in upgradeLevel:
						TempValues["Global"]["UpgradePriceMultip"] *= (1 - 0.01) # 99%
				"8":
					TempValues["Gold"]["GainMultip"] *= maxf(upgradeLevel * 1.03 * level, 1)
				"9":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 10
				"10":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.02, 1)
				"11":
					TempValues[woodType]["WcEffectMultip"] *= maxf(upgradeLevel * 1.01, 1)
				"12":
					pass #storage fish
				"13":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.03, 1)
				"14":
					for i in upgradeLevel:
						TempValues["Fish"]["BaitPriceMultip"] *= (1 - 0.02) # 98%
				"15":
					TempValues["Fish"]["LongerFishMultip"] *= maxf(upgradeLevel * 1.0015, 1)
				"16":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 15
				"17":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"18":
					for i in upgradeLevel:
						TempValues["Magic"]["PriceMultip"] *= (1 - 0.0033) # 99.67%
		"Chestnut":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 6
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 60
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 6
				"4":
					for i in upgradeLevel:
						TempValues["Research"]["Cost"] *= (1 - 0.009) # 99.1%
				"5":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.02 * level, 1)
				"6":
					pass #idk
				"7":
					TempValues[woodType]["WcEffectMultip"] *= maxf(upgradeLevel * 1.02, 1)
				"8":
					TempValues[woodType]["WoodPriceMultip"] *= maxf(upgradeLevel * 1.055, 1)
				"9":
					TempValues["Fish"]["MoreFishMultip"] *= maxf(upgradeLevel * 1.0035, 1)
				"10":
					pass #idk
				"11":
					pass #idk
				"12":
					TempValues["Fish"]["LongerFishMultip"] *= maxf(upgradeLevel * 1.003, 1)
				"13":
					pass # same as 7 change
				"14":
					TempValues[woodType]["BotSellMultip"] *= maxf(upgradeLevel * 1.003, 1)
				"15":
					pass # idk yet
				"16":
					pass # idk yet
				"17":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.045 * woodCamps, 1)
				"18":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.019, 1)
		"Cherry":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 7
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 70
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 7
				"4":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.002) # 99.9%
				"5":
					pass #idk
				"6":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.004) # 99.6%
				"7":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.015, 1)
				"8":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.12, 1)
				"9":
					TempValues["Magic"]["AscendingMultip"] *= maxf(upgradeLevel * 1.04, 1)
				"10":
					pass #idk
				"11":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.002 * level, 1)
				"12":
					TempValues["Dam"]["GoldGainMultip"] *= maxf(upgradeLevel * 1.006, 1)
				"13":
					pass # idk
				"14":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 50
				"15":
					TempValues["Fish"]["FishEffectMultip"] *= maxf(upgradeLevel * 1.0009, 1)
				"16":
					pass # idk global?
				"17":
					pass # idk
				"18":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.02 * woodCamps, 1)
		"Ash":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 8
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 80
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 8
				"4": # Stopped here
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.002) # 99.9%
				"5":
					pass #idk
				"6":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.004) # 99.6%
				"7":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.015, 1)
				"8":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.12, 1)
				"9":
					TempValues["Magic"]["AscendingMultip"] *= maxf(upgradeLevel * 1.04, 1)
				"10":
					pass #idk
				"11":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.002 * level, 1)
				"12":
					TempValues["Dam"]["GoldGainMultip"] *= maxf(upgradeLevel * 1.006, 1)
				"13":
					pass # idk
				"14":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 50
				"15":
					TempValues["Fish"]["FishEffectMultip"] *= maxf(upgradeLevel * 1.0009, 1)
				"16":
					pass # idk global?
				"17":
					pass # idk
				"18":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.02 * woodCamps, 1)
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
	"Global" : {
		"WpsMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # 100%
	},
	"Fish" : {
		"PriceMultip" : 1, # 100%
		"FishingWoodMultip" : 1,
		"MoreFishMultip" : 1,
		"LongerFishMultip" : 1,
		"FishEffectMultip" : 1,
		"BaitMultip" : 1,
		"BaitPriceMultip" : 1,
	},
	"Research" : {
		"Time" : 1, # 100%
		"Cost" : 1, # 100%
	},
	"Gold" : {
		"GainMultip" : 1,
	},
	"Magic" : {
		"Multip" : 1,
		"PriceMultip" : 1,
		"AscendingMultip" : 1,
	},
	"Dam" : {
		"Multip" : 1,
		"PriceMultip" : 1,
		"GoldGainMultip": 1,
	},
	"Oak" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"LevelPriceMultip" : 1, # levels
		"LevelEffectMultip" : 1,
		"UpgradePriceMultip" : 1, # upgrades
		"BotPriceMultip" : 1, # markets
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
