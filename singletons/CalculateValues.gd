extends Node

var WoodTypes
var ResourceValues
var TempValues

func _ready():
	calculateAllValues()

func _process(_delta):
	pass

func calculateAllValues():
	WoodTypes = Values.WoodTypes
	ResourceValues = Values.ResourceValues
	
	TempValues = OriginalTempValues.duplicate(true)
	
	ApplyUpgrades()
	ApplyResearch()
	ApplyMagicUpgrades()
	#ApplyDamUpgrades()
	#ApplyAchievementUpgrades()
	
	CalculateRealValues()
	CalculateRealAfterValues()

func CalculateRealValues():
	# Think about FishStorageMultip

	for woodType in WoodTypes:
		var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
		var level = SaveData.Resources[woodType]["Level"]
		
		var levelEffect =  maxf(pow(1.01, level - 1) * TempValues["Global"]["LevelEffectMultip"] * TempValues[woodType]["LevelEffectMultip"], 1)
		
		ResourceValues[woodType]["PerClick"] = (TempValues[woodType]["Beavers"] + (TempValues["Global"]["AddLevelToBaseWoodClick"] * level)) * TempValues[woodType]["BeaverUpgrades"] * TempValues[woodType]["BeaverMultip"] * TempValues["Global"]["BeaverMultip"] * levelEffect
		ResourceValues[woodType]["PerSecondIncrease"] = pow(woodCamps * TempValues[woodType]["WpsPerWc"] * TempValues[woodType]["WpsMultip"] * TempValues["Global"]["WpsMultip"] * TempValues[woodType]["WcEffectMultip"], TempValues["Global"]["WpsPow"]) * levelEffect * TempValues["Global"]["ProductionUpgradeMultip"]
		ResourceValues[woodType]["Storage"] = TempValues[woodType]["BaseStorage"] * TempValues[woodType]["StorageMultip"] * TempValues["Global"]["StorageMultip"] + woodCamps * TempValues[woodType]["WcBaseStorage"] * TempValues[woodType]["WcStorageMultip"] * TempValues["Global"]["WcStorageMultip"] * TempValues[woodType]["WcEffectMultip"] * levelEffect
		ResourceValues[woodType]["SoldFor"] = TempValues[woodType]["BaseWoodPrice"] * TempValues[woodType]["WoodPriceMultip"] * TempValues["Global"]["WoodPriceMultip"] * levelEffect
		ResourceValues[woodType]["UpgradePriceMultip"] = TempValues["Global"]["UpgradePriceMultip"] * TempValues[woodType]["UpgradePriceMultip"] / levelEffect
		ResourceValues[woodType]["WcPriceMultip"] = TempValues["Global"]["WcPriceMultip"] * TempValues[woodType]["WcPriceMultip"] / levelEffect
		ResourceValues[woodType]["LevelPriceMultip"] = TempValues["Global"]["LevelPriceMultip"] * TempValues[woodType]["LevelPriceMultip"] / levelEffect
		ResourceValues[woodType]["BotPriceMultip"] = TempValues["Global"]["BotPriceMultip"] * TempValues[woodType]["BotPriceMultip"] / levelEffect
		ResourceValues[woodType]["BotBaseSell"] = TempValues[woodType]["BotBaseSell"] * TempValues[woodType]["BotSellMultip"] * TempValues["Global"]["BotEffectMultip"] * levelEffect
	
	# Fishing
	ResourceValues["Fish"]["PriceMultip"] = TempValues["Fish"]["PriceMultip"]
	ResourceValues["Fish"]["FishingWoodMultip"] = TempValues["Fish"]["FishingWoodMultip"]
	ResourceValues["Fish"]["MoreFishMultip"] = TempValues["Fish"]["MoreFishMultip"]
	ResourceValues["Fish"]["BetterFishMultip"] = TempValues["Fish"]["BetterFishMultip"]
	ResourceValues["Fish"]["LongerFishMultip"] = TempValues["Fish"]["LongerFishMultip"]
	ResourceValues["Fish"]["FishEffectMultip"] = TempValues["Fish"]["FishEffectMultip"]
	ResourceValues["Fish"]["BaitMultip"] = TempValues["Fish"]["BaitMultip"]
	ResourceValues["Fish"]["BaitPriceMultip"] = TempValues["Fish"]["BaitPriceMultip"]
	
	# Research
	ResourceValues["Research"]["TimeMultip"] = TempValues["Research"]["Time"]
	ResourceValues["Research"]["CostMultip"] = TempValues["Research"]["Cost"]
	
	# Gold
	ResourceValues["Gold"]["GainMultip"] = TempValues["Gold"]["GainMultip"]
	ResourceValues["Gold"]["UpgradeEffectMultip"] = TempValues["Gold"]["UpgradeEffect"]
	ResourceValues["Gold"]["UpgradePriceMultip"] = TempValues["Gold"]["UpgradePrice"]
	
	# Magic
	ResourceValues["Magic"]["ProductionMultip"] = TempValues["Magic"]["Multip"]
	ResourceValues["Magic"]["EffectMultip"] = TempValues["Magic"]["EffectMultip"]
	ResourceValues["Magic"]["PriceMultip"] = TempValues["Magic"]["PriceMultip"] * TempValues["Magic"]["UpgradePriceMultip"]
	ResourceValues["Magic"]["AscendingMultip"] = TempValues["Magic"]["AscendingMultip"]
	
	# Dam
	ResourceValues["Dam"]["EffectMultip"] = TempValues["Dam"]["Multip"]
	ResourceValues["Dam"]["PriceMultip"] = TempValues["Dam"]["PriceMultip"]
	ResourceValues["Dam"]["GoldGainMultip"] = TempValues["Dam"]["GoldGainMultip"]
	ResourceValues["Dam"]["WoodGainMultip"] = TempValues["Dam"]["WoodGainMultip"]
	
func CalculateRealAfterValues():
	var lastWoodType
	
	for woodType in WoodTypes:
		ResourceValues[woodType]["PerSecondIncrease"] *= TempValues[woodType]["WpcToWpsMultip"]
		
		if woodType != "Oak":
			ResourceValues[woodType]["PerSecondIncrease"] += (1 - TempValues[woodType]["LowerWpsAddMultip"]) * ResourceValues[lastWoodType]["PerSecondIncrease"]
		
		lastWoodType = woodType
	
	for woodType in WoodTypes:
		var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
		var level = SaveData.Resources[woodType]["Level"]
		
		if woodType != "Dragonwood":
			var nextWoodType = WoodTypes[WoodTypes.find(woodType) + 1]
			var nextWoodProduction = Values.ResourceValues[nextWoodType]["PerSecondIncrease"]
			
			ResourceValues[woodType]["PerSecondLoss"] = nextWoodProduction * 2 * TempValues["Global"]["WcCostsMultip"] * TempValues[woodType]["WpsCostMultip"]

func ApplyUpgrades():
	for woodType in WoodTypes:
		var existingUpgrades = SaveData.Upgrades[woodType]
		for upgradeId in existingUpgrades:
			SetUpgradeValue(woodType, upgradeId)

func ApplyResearch():
	var unlockedResearch = SaveData.UnlockedResearch
	for researchNr in unlockedResearch:
		if unlockedResearch[researchNr]:
			SetResearchValue(researchNr)

func ApplyMagicUpgrades():
	var unlockedMagicUpgrades = SaveData.UnlockedMagicUpgrades
	for magicNr in unlockedMagicUpgrades:
		if unlockedMagicUpgrades[magicNr]:
			SetMagicValue(magicNr)

func SetMagicValue(magicNr):
	match magicNr:
		"1" :
			Unlocks.Unlocks["Gold"]["Unlocked"] = true
		"2" :
			TempValues["Global"]["WpsMultip"] *= 5
		"3" :
			TempValues["Global"]["WcStorageMultip"] *= 15
		"4" :
			TempValues["Research"]["Time"] *= 0.5
		"5" :
			TempValues["Global"]["BeaverMultip"] *= 7.5
		"6" :
			pass # idk
		"7" :
			TempValues["Magic"]["Multip"] *= 3
		"8" :
			TempValues["Global"]["WcCostsMultip"] *= 0.5
		"9" :
			Unlocks.Unlocks["Spruce"]["Unlocked"] = true
		"10" :
			TempValues["Global"]["StorageMultip"] *= 10
		"11" :
			pass # idk
		"12" :
			pass # idk
		"13" :
			pass # idk
		"14" :
			Unlocks.Unlocks["Fishing"]["Spot"]["1"] = true
		"15" :
			pass # idk
		"16" :
			Unlocks.Unlocks["Cedar"]["Unlocked"] = true
		"17" :
			pass # idk
		"18" :
			TempValues["Fish"]["PriceMultip"] *= 5
		"19" :
			TempValues["Global"]["WoodPriceMultip"] *= 2.5
		"20" :
			TempValues["Dam"]["PriceMultip"] *= 0.7
		"21" :
			pass # idk
		"22" :
			TempValues["Fish"]["BaitMultip"] *= 1.15
		"23" :
			TempValues["Oak"]["WpsMultip"] *= 100
		"24" :
			Unlocks.Unlocks["Fishing"]["Spot"]["3"] = true
		"25" :
			pass # idk
		"26" :
			Unlocks.Unlocks["Rosewood"]["Unlocked"] = true
		"27" :
			TempValues["Magic"]["EffectMultip"] *= 10
		"28" :
			TempValues["Oak"]["BotBaseSell"] += 1000
		"29" :
			TempValues["Fish"]["BetterFishMultip"] *= 2
		"30" :
			Unlocks.Unlocks["Dams"]["Giant Dam"] = true

func SetResearchValue(researchNr):
	match researchNr:
		"1" :
			Unlocks.Unlocks["Woodcamps"]["Unlocked"] = true
		"2" :
			TempValues["Oak"]["BeaverMultip"] *= 2
			TempValues["Oak"]["WpsMultip"] *= 2
			TempValues["Oak"]["StorageMultip"] *= 2
		"3" :
			TempValues["Global"]["StorageMultip"] *= 1.65
		"4" :
			Unlocks.Unlocks["Maple"]["Unlocked"] = true
		"5" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.85
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.85
		"6" :
			TempValues["Global"]["WpsMultip"] *= 2
		"7" :
			TempValues["Maple"]["WpsMultip"] *= 3
		"8" :
			TempValues["Global"]["WcCostsMultip"] *= 0.93
		"9" :
			Unlocks.Unlocks["Market"]["Unlocked"] = true
		"10" :
			TempValues["Global"]["WcPriceMultip"] *= 0.65
		"11" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.22
		"12" :
			Unlocks.Unlocks["Levels"]["Unlocked"] = true
		"13" :
			pass # idk
		"14" :
			Unlocks.Unlocks["Birch"]["Unlocked"] = true
		"15" :
			TempValues["Global"]["WcStorageMultip"] *= 3
		"16" :
			pass # idk
		"17" :
			Unlocks.Unlocks["Achievements"] = true
		"18" :
			TempValues["Global"]["WpsPow"] += 1
		"19" :
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.65
		"20" :
			pass # idk
		"21" :
			Unlocks.Unlocks["Magic"]["Ascention"] = true
		"22" :
			TempValues["Global"]["LevelEffectMultip"] *= 1.3
		"23" :
			Unlocks.Unlocks["Market"]["Bots"]["Unlocked"] = true
		"24" :
			TempValues["Global"]["WpsMultip"] *= 3
		"25" :
			TempValues["Global"]["BeaverMultip"] *= 5
		"26" :
			TempValues["Global"]["AddLevelToBaseWoodClick"] += 1
		"27" :
			Unlocks.Unlocks["Magic"]["Upgrades"] = true
		"28" :
			pass # idk
		"29" :
			TempValues["Gold"]["UpgradePrice"] *= 0.87
		"30" :
			Unlocks.Unlocks["Fishing"]["Unlocked"] = true
		"31" :
			TempValues["Research"]["Time"] *= 0.5
		"32" :
			TempValues["Magic"]["Multip"] *= 10
		"33" :
			Unlocks.Unlocks["Fishing"]["Cherry"] = true
		"34" :
			pass # idk
		"35" :
			pass # idk
		"36" :
			TempValues["Global"]["LevelPriceMultip"] *= 0.9
		"37" :
			Unlocks.Unlocks["Fishing"]["Bait"]["2"] = true
		"38" :
			TempValues["Magic"]["EffectMultip"] *= 1.25
		"39" :
			Unlocks.Unlocks["Dams"]["Unlocked"] = true
		"40" :
			pass # idk
		"41" :
			TempValues["Global"]["BeaverMultip"] *= 10
		"42" :
			TempValues["Magic"]["Multip"] *= 2
		"43" :
			pass # idk
		"44" :
			TempValues["Fish"]["BaitMultip"] *= 1.08
		"45" :
			pass # idk
		"46" :
			pass # idk
		"47" :
			TempValues["Global"]["WcPriceMultip"] *= 0.8
		"48" :
			pass # idk
		"49" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.25
		"50" :
			pass # idk
		"51" :
			pass # idk
		"52" :
			Unlocks.Unlocks["Fishing"]["Spot"]["2"] = true
		"53" :
			Unlocks.Unlocks["Mahogany"]["Unlocked"] = true
		"54" :
			pass # idk
		"55" :
			TempValues["Global"]["BotPriceMultip"] *= 0.85
		"56" :
			pass # idk
		"57" :
			pass # idk
		"58" :
			pass # idk
		"59" :
			pass # idk
		"60" :
			TempValues["Dam"]["Multip"] *= 5
		"61" :
			pass # idk
		"62" :
			TempValues["Magic"]["EffectMultip"] *= 10
		"63" :
			pass # idk change
		"64" :
			Unlocks.Unlocks["Dogwood"]["Unlocked"] = true
		"65" :
			TempValues["Magic"]["PriceMultip"] *= 1.1
		"65b" :
			pass # idk
		"66" :
			pass # idk
		"67" :
			TempValues["Fish"]["MoreFishMultip"] *= 1.15
		"68" :
			TempValues["Global"]["BotEffectMultip"] *= 1.1
		"69" :
			TempValues["Fish"]["BaitPriceMultip"] *= 0.7
		"70" :
			TempValues["Dam"]["Multip"] *= 4
		"71" :
			TempValues["Magic"]["UpgradePriceMultip"] *= 0.8

func SetUpgradeValue(woodType, upgradeId):
	var upgradeLevel = SaveData.Upgrades[woodType][upgradeId]["Level"]
	var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
	var level = SaveData.Resources[woodType]["Level"]
	var achievementCount = SaveData.GeneralInfo["AchievementCount"]
	
	if upgradeLevel == 0:
		return
	
	match woodType:
		"Oak":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 100
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel
				"4":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"5":
					Unlocks.Unlocks["Apple"]["Unlocked"] = true
				"6":
					TempValues[woodType]["Beavers"] += upgradeLevel * woodCamps
				"7":
					TempValues["Research"]["Time"] *= pow(1 - 0.02, upgradeLevel) # 99.6%
				"8":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.06, upgradeLevel)
				"9":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.003, upgradeLevel) # 99.7%
				"10":
					TempValues[woodType]["UpgradePriceMultip"] *= pow(1 - 0.015, upgradeLevel) # 98.5%
				"11":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.003, upgradeLevel) # 99.7%
				"12":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.0018, level), upgradeLevel)
				"13":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.01, upgradeLevel)
				"14":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 0.1
				"15":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.02, level), upgradeLevel)
				"16":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"17":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.022, upgradeLevel)
				"18":
					TempValues["Fish"]["PriceMultip"] *= pow(1.02, upgradeLevel)
		"Apple":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 2
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 110
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 2
				"4":
					TempValues[woodType]["StorageMultip"] *= pow(1.13, upgradeLevel)
				"5":
					TempValues["Oak"]["WpsMultip"] *= pow(1.175, upgradeLevel)
				"6":
					Unlocks.Unlocks["Research"]["Unlocked"] = true
				"7":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"8":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"9":
					TempValues[woodType]["WpsCostMultip"] *= pow(1 - 0.01, upgradeLevel)
				"10":
					TempValues["Research"]["Time"] *= pow(1 - 0.01, upgradeLevel)
				"11":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel
				"12":
					TempValues[woodType]["LowerWpsAddMultip"] *= pow(1.02, upgradeLevel)
				"13":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.006, upgradeLevel)
				"14":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 10
				"15":
					TempValues["Fish"]["FishingWoodMultip"] *= pow(1.01, upgradeLevel)
				"16":
					TempValues["Dam"]["Multip"] *= pow(1.0015, upgradeLevel)
				"17":
					TempValues["Fish"]["MoreFishMultip"] *= pow(1.009, upgradeLevel)
				"18":
					TempValues[woodType]["LevelEffectMultip"] *= pow(1.04, upgradeLevel)
		"Maple":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 3
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 120
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 3
				"4":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"5":
					TempValues[woodType]["WcPriceMultip"] *= pow(pow(1 - 0.002, upgradeLevel), achievementCount)
				"6":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.075, upgradeLevel)
				"7":
					TempValues["Research"]["Cost"] *= pow(1 - 0.007, upgradeLevel)
				"8":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.0015, level), upgradeLevel)
				"9":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.008, upgradeLevel)
				"10":
					TempValues["Global"]["WpsMultip"] *= pow(1.0005, upgradeLevel)
				"11":
					TempValues[woodType]["BotSellMultip"] *= pow(1.04, upgradeLevel)
				"12":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.011, upgradeLevel)
				"13":
					TempValues["Fish"]["BaitPriceMultip"] *= pow(1 - 0.04, upgradeLevel)
				"14":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.05, upgradeLevel)
				"15":
					pass # i don't think this makes sense / no fishes yet
				"16":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"17":
					TempValues[woodType]["FishStorageMultip"] *= pow(1.07, upgradeLevel)
				"18":
					TempValues["Magic"]["Multip"] *= pow(1.12, upgradeLevel)
		"Birch":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 4
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 130
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 4
				"4":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"5":
					pass # think about this more with more perspective / prob new upgrade :/
				"6":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.04, level), upgradeLevel)
				"7":
					TempValues[woodType]["BeaverMultip"] *= pow(1.07, upgradeLevel)
				"8":
					TempValues["Magic"]["Multip"] *= pow(1.03, upgradeLevel)
				"9":
					TempValues[woodType]["WpsMultip"] *= pow(1.013, upgradeLevel)
				"10":
					TempValues["Fish"]["BaitPriceMultip"] *= pow(1 - 0.025, upgradeLevel)
				"11":
					TempValues["Fish"]["FishEffectMultip"] *= pow(1.0011, upgradeLevel)
				"12":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.0017, level), upgradeLevel)
				"13":
					TempValues[woodType]["WpsCostMultip"] *= pow(1 - 0.035, upgradeLevel)
				"14":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 20
				"15":
					pass #i don't think this makes sense / prob new upgrade :/
				"16":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.04, upgradeLevel)
				"17":
					TempValues["Dam"]["PriceMultip"] *= pow(1 - 0.02, upgradeLevel)
				"18":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.005, upgradeLevel) # same as 16,need to change
		"Spruce":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 5
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 140
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 5
				"4":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.06, woodCamps), upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.025, upgradeLevel)
				"6":
					TempValues["Research"]["Cost"] *= pow(1 - 0.006, upgradeLevel)
				"7":
					TempValues["Global"]["UpgradePriceMultip"] *= pow(1 - 0.01, upgradeLevel)
				"8":
					TempValues["Gold"]["GainMultip"] *= pow(pow(1.03, level), upgradeLevel)
				"9":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 10
				"10":
					TempValues[woodType]["StorageMultip"] *= pow(1.02, upgradeLevel)
				"11":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.01, upgradeLevel)
				"12":
					pass #storage fish / prob new upgrade :/
				"13":
					TempValues[woodType]["LevelEffectMultip"] *= pow(1.03, upgradeLevel)
				"14":
					TempValues["Fish"]["BaitPriceMultip"] *= pow(1 - 0.02, upgradeLevel)
				"15":
					TempValues["Fish"]["LongerFishMultip"] *= pow(1.0015, upgradeLevel)
				"16":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 15
				"17":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"18":
					TempValues["Magic"]["PriceMultip"] *= pow(1 - 0.0033, upgradeLevel)
		"Chestnut":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 6
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 150
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 6
				"4":
					TempValues["Research"]["Cost"] *= pow(1 - 0.009, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.02, level), upgradeLevel)
				"6":
					pass #idk / prob new upgrade :/
				"7":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.02, upgradeLevel)
				"8":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.055, upgradeLevel)
				"9":
					TempValues["Fish"]["MoreFishMultip"] *= pow(1.0035, upgradeLevel)
				"10":
					TempValues[woodType]["LowerWpsAddMultip"] *= pow(1.01, upgradeLevel)
				"11":
					pass #idk / prob new upgrade :/
				"12":
					TempValues["Fish"]["LongerFishMultip"] *= pow(1.003, upgradeLevel)
				"13":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.02, upgradeLevel)
				"14":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.003, upgradeLevel) # same as 8,need to change
				"15":
					pass # idk yet / prob new upgrade :/
				"16":
					pass # idk yet / prob new upgrade :/
				"17":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.045, woodCamps), upgradeLevel)
				"18":
					TempValues[woodType]["WpsMultip"] *= pow(1.019, upgradeLevel)
		"Cherry":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 7
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 160
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 7
				"4":
					TempValues["Research"]["Time"] *= pow(1 - 0.002, upgradeLevel)
				"5":
					TempValues["Global"]["ProductionUpgradeMultip"] *= pow(1.003, upgradeLevel)
				"6":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.004, upgradeLevel)
				"7":
					TempValues[woodType]["LevelEffectMultip"] *= pow(1.015, upgradeLevel)
				"8":
					TempValues[woodType]["StorageMultip"] *= pow(1.12, upgradeLevel)
				"9":
					TempValues["Magic"]["AscendingMultip"] *= pow(1.04, upgradeLevel)
				"10":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.015, upgradeLevel)
				"11":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.002, level), upgradeLevel)
				"12":
					TempValues["Dam"]["GoldGainMultip"] *= pow(1.006, upgradeLevel)
				"13":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.0009, upgradeLevel), achievementCount)
				"14":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 50
				"15":
					TempValues["Fish"]["FishEffectMultip"] *= pow(1.0009, upgradeLevel)
				"16":
					TempValues["Global"]["BeaverMultip"] *= pow(1.0015, upgradeLevel)
				"17":
					pass # same as 13
				"18":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.002, woodCamps), upgradeLevel)
		"Ash":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 8
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 170
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 8
				"4":
					TempValues["Research"]["Time"] *= pow(1 - 0.006, upgradeLevel)
				"5":
					TempValues[woodType]["LevelEffectMultip"] *= pow(1.02, upgradeLevel)
				"6":
					TempValues["Magic"]["PriceMultip"] *= pow(1 - 0.0066, upgradeLevel)
				"7":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.021, upgradeLevel)
				"8":
					TempValues["Dam"]["Multip"] *= pow(1.001, upgradeLevel)
				"9":
					TempValues["Fish"]["PriceMultip"] *= pow(1.025, upgradeLevel)
				"10":
					TempValues[woodType]["BotSellMultip"] *= pow(1.08, upgradeLevel)
				"11":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.03, woodCamps), upgradeLevel)
				"12":
					pass # idk
				"13":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.01, level), upgradeLevel)
				"14":
					TempValues[woodType]["BotPriceMultip"] *= pow(pow(1 - 0.0006, upgradeLevel),achievementCount) #kinda the same same as 7
				"15":
					pass # idk
				"16":
					TempValues[woodType]["WpsCostMultip"] *= pow(1 - 0.03, upgradeLevel)
				"17":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.0005, upgradeLevel)
				"18":
					TempValues["Fish"]["BaitMultip"] *= pow(1.0075, upgradeLevel)
		"Cedar":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 9
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 180
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 9
				"4":
					pass # think about this more with more perspective
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.002, level), upgradeLevel)
				"6":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"7":
					TempValues[woodType]["WpsCostMultip"] *= pow(1 - 0.02, upgradeLevel)
				"8":
					pass # think / change
				"9":
					TempValues["Fish"]["BetterFishMultip"] *= pow(1.01, upgradeLevel)
				"10":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.0011, upgradeLevel), achievementCount)
				"11":
					pass # think / change
				"12":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.022, upgradeLevel)
				"13":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.007, level), upgradeLevel)
				"14":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.015, woodCamps), upgradeLevel)
				"15":
					TempValues[woodType]["StorageMultip"] *= pow(1.18, upgradeLevel)
				"16":
					TempValues["Magic"]["Multip"] *= pow(1.10, upgradeLevel)
				"17":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.015, upgradeLevel)
				"18":
					TempValues["Dam"]["Multip"] *= pow(1.002, upgradeLevel)
		"Mahogany":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 10
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 190
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 10
				"4":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.04, level), upgradeLevel)
				"5":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.025, upgradeLevel)
				"6":
					TempValues["Research"]["Cost"] *= pow(1 - 0.008, upgradeLevel)
				"7":
					pass # idk
				"8":
					TempValues["Fish"]["LongerFishMultip"] *= pow(1.002, upgradeLevel)
				"9":
					TempValues[woodType]["WcPriceMultip"] *= pow(1.025, upgradeLevel)
				"10":
					TempValues[woodType]["StorageMultip"] *= pow(1.06, upgradeLevel)
				"11":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.0018, upgradeLevel), achievementCount)
				"12":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.026, upgradeLevel)
				"13":
					Unlocks.Unlocks["Fishing"]["Bait"]["WoodBait"] = true
				"14":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.005, upgradeLevel)
				"15":
					pass # idk
				"16":
					TempValues[woodType]["BaitMultip"] *= pow(1.005, upgradeLevel)
				"17":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"18":
					TempValues["Dam"]["WoodGainMultip"] *= pow(1.01, upgradeLevel)
		"Ebony":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 11
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 200
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 11
				"4":
					TempValues["Global"]["BotPriceMultip"] *= pow(pow(1 - 0.0005, upgradeLevel), achievementCount)
				"5":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"6":
					pass # IDK change
				"7":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.03, level), upgradeLevel)
				"8":
					TempValues["Dam"]["WoodGainMultip"] *= pow(1.008, upgradeLevel)
				"9":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.005, upgradeLevel)
				"10":
					TempValues[woodType]["BeaverMultip"] *= pow(1.06, upgradeLevel)
				"11":
					pass # idk
				"12":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.03, upgradeLevel)
				"13":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"14":
					TempValues[woodType]["StorageMultip"] *= pow(1.24, upgradeLevel)
				"15":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.02, upgradeLevel)
				"16":
					TempValues["Fish"]["FishingWoodMultip"] *= pow(1.015, upgradeLevel)
				"17":
					TempValues[woodType]["BotSellMultip"] *= pow(1.06, upgradeLevel)
				"18":
					TempValues["Magic"]["EffectMultip"] *= pow(1.002, upgradeLevel)
		"Dogwood":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 12
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 210
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 12
				"4":
					TempValues["Research"]["Time"] *= pow(1 - 0.005, upgradeLevel)
				"5":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.006, upgradeLevel)
				"6":
					TempValues[woodType]["BeaverMultip"] *= pow(1.05, upgradeLevel)
				"7":
					pass # IDK change
				"8":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.033, upgradeLevel)
				"9":
					Unlocks.Unlocks["Fishing"]["Spot"]["WoodyLake"] = true
				"10":
					TempValues["Gold"]["UpgradeEffect"] *= pow(1.002, upgradeLevel)
				"11":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.002, upgradeLevel)
				"12":
					TempValues[woodType]["WcPriceMultip"] *= pow(pow(1 - 0.0007, upgradeLevel), achievementCount)
				"13":
					pass # IDK
				"14":
					TempValues["Fish"]["MoreFishMultip"] *= pow(1.005, upgradeLevel)
				"15":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"16":
					TempValues[woodType]["LowerWpsAddMultip"] *= pow(1.03, upgradeLevel)
				"17":
					TempValues[woodType]["BeaverMultip"] *= pow(pow(1.002, upgradeLevel), achievementCount)
				"18":
					pass # IDK change
		"Rosewood":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 13
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 220
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 13
				"4":
					TempValues["Research"]["Cost"] *= pow(1 - 0.01, upgradeLevel)
				"5":
					pass # IDK
				"6":
					TempValues[woodType]["LevelEffectMultip"] *= pow(1.08, upgradeLevel)
				"7":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"8":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.04, upgradeLevel)
				"9":
					pass # I think upgrades like 5 and 9 should be removed, myb only in research, to easier manage
					# like seperate global multiplyer 0.22 wpc to wps and 0.45 wps to wpc??????
				"10":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.024, upgradeLevel)
				"11":
					TempValues["Fish"]["FishEffectMultip"] *= pow(1.001, upgradeLevel)
				"12":
					pass # IDK
				"13":
					TempValues["Fish"]["BaitMultip"] *= pow(1.01, upgradeLevel)
				"14":
					TempValues["Magic"]["EffectMultip"] *= pow(1.012, upgradeLevel)
				"15":
					TempValues[woodType]["WpsMultip"] *= pow(1.001, upgradeLevel)
				"16":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 1000
				"17":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.0016, level), upgradeLevel)
				"18":
					pass # IDK
		"Ghost Gum":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 14
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 230
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 14
				"4":
					TempValues["Research"]["Cost"] *= pow(1 - 0.003, upgradeLevel)
				"5":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.08, upgradeLevel)
				"6":
					TempValues[woodType]["WpsMultip"] *= pow(1.007, upgradeLevel)
				"7":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.0019, level), upgradeLevel)
				"8":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.03, upgradeLevel)
				"9":
					TempValues[woodType]["BotPriceMultip"] *= pow(1 - 0.023, upgradeLevel)
				"10":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.007, upgradeLevel)
				"11":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"12":
					TempValues["Fish"]["BetterFishMultip"] *= pow(1.013, upgradeLevel)
				"13":
					pass # IDK change
				"14":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 5
				"15":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.03, upgradeLevel)
				"16":
					pass # IDK change
				"17":
					TempValues["Fish"]["PriceMultip"] *= pow(1.01, upgradeLevel)
				"18":
					TempValues["Dam"]["PriceMultip"] *= pow(1 - 0.01, upgradeLevel)
		"Dragonwood":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 15
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 240
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 15
				"4":
					pass # change
				"5":
					pass # change
				"6":
					TempValues["Dam"]["GoldGainMultip"] *= pow(1.004, upgradeLevel)
				"7":
					TempValues["Fish"]["MoreFishMultip"] *= pow(1.007, upgradeLevel)
				"8":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.015, upgradeLevel)
				"9":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.031, upgradeLevel)
				"10":
					TempValues["Magic"]["EffectMultip"] *= pow(1.007, upgradeLevel)
				"11":
					pass # change
				"12":
					pass # change
				"13":
					TempValues[woodType]["LevelEffectMultip"] *= pow(1.06, upgradeLevel)
				"14":
					pass # change
				"15":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"16":
					TempValues["Global"]["WpsMultip"] *= pow(1.006, upgradeLevel)
				"17":
					TempValues[woodType]["LevelPriceMultip"] *= pow(1 - 0.009, upgradeLevel)
				"18":
					TempValues["Magic"]["Multip"] *= pow(1.05, upgradeLevel)

var OriginalTempValues = {
	"Global" : {
		"BeaverMultip" : 1, # 100%
		"WpsMultip" : 1, # 100%
		"WpsPow" : 1, # 100%
		"UpgradePriceMultip" : 1, # 100%
		"StorageMultip" : 1, # 100%
		"WcStorageMultip" : 1, # 100%
		"WcCostsMultip" : 1, # 100%
		"WcPriceMultip" : 1, # 100%
		"WoodPriceMultip" : 1, # 100%
		"LevelEffectMultip" : 1, # 100%
		"LevelPriceMultip" : 1, # 100%
		"AddLevelToBaseWoodClick" : 0, # 100%
		"BotPriceMultip" : 1, # 100%
		"BotEffectMultip" : 1, # 100%
		"ProductionUpgradeMultip" : 1, # 100%
	},
	"Fish" : {
		"PriceMultip" : 1, # 100%
		"FishingWoodMultip" : 1,
		"MoreFishMultip" : 1,
		"BetterFishMultip" : 1,
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
		"UpgradeEffect" : 1,
		"UpgradePrice" : 1,
	},
	"Magic" : {
		"Multip" : 1, # More Magic Production multiplier!!!
		"EffectMultip" : 1,
		"PriceMultip" : 1,
		"AscendingMultip" : 1,
		"UpgradePriceMultip" : 1,
	},
	"Dam" : {
		"Multip" : 1,
		"PriceMultip" : 1,
		"GoldGainMultip": 1,
		"WoodGainMultip": 1,
	},
	"Oak" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 0.01,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Apple" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 0.05,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Maple" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 0.25,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Birch" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 0.70,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Spruce" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 2.55,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Chestnut" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 7,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Cherry" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 13,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Ash" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 33,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Cedar" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 80,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Mahogany" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 140,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Ebony" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 500,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Dogwood" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1400,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Rosewood" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 3600,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Ghost Gum" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 9999,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Dragonwood" : {
		"Beavers" : 1, # beavers
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 100, # 100%
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
		"BotBaseSell" : 1, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 22222,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
}
