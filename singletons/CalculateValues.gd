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
		var woodcamps = SaveData.Resources[woodType]["Woodcamps"] + TempValues[woodType]["ExtraWoodcamps"] + TempValues["Global"]["ExtraWoodcamps"]
		var beavers = SaveData.Resources[woodType]["Beavers"] + TempValues[woodType]["ExtraBeavers"] + TempValues["Global"]["ExtraBeavers"]
		
		ResourceValues[woodType]["PerClick"] =((woodcamps * TempValues["Global"]["WcToBeaverMultip"]) + beavers) * TempValues[woodType]["BeaverUpgrades"] * TempValues[woodType]["BeaverMultip"] * TempValues["Global"]["BeaverMultip"]
		ResourceValues[woodType]["PerSecondIncrease"] = pow(woodcamps * TempValues[woodType]["WpsPerWc"] * TempValues[woodType]["WpsMultip"] * TempValues["Global"]["WpsMultip"] * TempValues[woodType]["WcEffectMultip"], TempValues["Global"]["WpsPow"]) * TempValues["Global"]["ProductionUpgradeMultip"] * SaveData.Resources[woodType]["Production"] / 100
		ResourceValues[woodType]["Storage"] = (TempValues[woodType]["BaseStorage"] + beavers * 15 + woodcamps * (TempValues[woodType]["WcBaseStorage"] + TempValues["Global"]["WcBaseStorage"]) * TempValues[woodType]["WcStorageMultip"] * TempValues["Global"]["WcStorageMultip"] * TempValues[woodType]["WcEffectMultip"]) * TempValues[woodType]["StorageMultip"] * TempValues["Global"]["StorageMultip"]
		ResourceValues[woodType]["SoldFor"] = TempValues[woodType]["BaseWoodPrice"] * TempValues[woodType]["WoodPriceMultip"] * TempValues["Global"]["WoodPriceMultip"]
		ResourceValues[woodType]["UpgradePriceMultip"] = TempValues["Global"]["UpgradePriceMultip"] * TempValues[woodType]["UpgradePriceMultip"]
		ResourceValues[woodType]["WcPriceMultip"] = TempValues["Global"]["WcPriceMultip"] * TempValues[woodType]["WcPriceMultip"]
		ResourceValues[woodType]["BeaverPriceMultip"] = TempValues["Global"]["BeaverPriceMultip"] * TempValues[woodType]["BeaverPriceMultip"]
		ResourceValues[woodType]["BotPriceMultip"] = TempValues["Global"]["BotPriceMultip"]
		ResourceValues[woodType]["BotBaseSell"] = TempValues["Global"]["BotBaseSell"] * TempValues["Global"]["BotEffectMultip"]
	
	# Fishing
	ResourceValues["Fish"]["PriceMultip"] = TempValues["Fish"]["PriceMultip"]
	ResourceValues["Fish"]["FishingWoodMultip"] = TempValues["Fish"]["FishingWoodMultip"]
	ResourceValues["Fish"]["MoreFishMultip"] = TempValues["Fish"]["MoreFishMultip"]
	ResourceValues["Fish"]["BetterFishMultip"] = TempValues["Fish"]["BetterFishMultip"]
	ResourceValues["Fish"]["LongerFishMultip"] = TempValues["Fish"]["LongerFishMultip"]
	ResourceValues["Fish"]["FishEffectMultip"] = TempValues["Fish"]["FishEffectMultip"]
	ResourceValues["Fish"]["BaitMultip"] = TempValues["Fish"]["BaitEffectMultip"]
	ResourceValues["Fish"]["BaitPriceMultip"] = TempValues["Fish"]["BaitPriceMultip"]
	
	# Research
	ResourceValues["Research"]["TimeMultip"] = TempValues["Research"]["Time"]
	ResourceValues["Research"]["CostMultip"] = TempValues["Research"]["Cost"]
	
	# Gold
	ResourceValues["Gold"]["GainMultip"] = TempValues["Gold"]["GainMultip"]
	ResourceValues["Gold"]["UpgradeEffectMultip"] = TempValues["Gold"]["UpgradeEffect"]
	ResourceValues["Gold"]["UpgradePriceMultip"] = TempValues["Gold"]["UpgradePrice"]
	
	# Magic
	ResourceValues["Magic"]["GainMultip"] = TempValues["Magic"]["GainMultip"]
	ResourceValues["Magic"]["EffectMultip"] = TempValues["Magic"]["EffectMultip"]
	ResourceValues["Magic"]["PriceMultip"] = TempValues["Magic"]["PriceMultip"]
	ResourceValues["Magic"]["PerSecondMultip"] = TempValues["Magic"]["PerSecondMultip"]
	ResourceValues["Magic"]["UpgradePriceMultip"] = TempValues["Magic"]["UpgradePriceMultip"]
	
	# Dam
	ResourceValues["Dam"]["EffectMultip"] = TempValues["Dam"]["EffectMultip"]
	ResourceValues["Dam"]["PriceMultip"] = TempValues["Dam"]["PriceMultip"]
	ResourceValues["Dam"]["MaterialsNeededMultip"] = TempValues["Dam"]["MaterialsNeededMultip"]
	ResourceValues["Dam"]["ConstructionSpeedMultip"] = TempValues["Dam"]["ConstructionSpeedMultip"]
	ResourceValues["Dam"]["GoldGainMultip"] = TempValues["Dam"]["GoldGainMultip"]
	ResourceValues["Dam"]["WoodGainMultip"] = TempValues["Dam"]["WoodGainMultip"]
	
func CalculateRealAfterValues():
	var lastWoodType
	
	for woodType in WoodTypes:
		var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
		
		if woodCamps > 0:
			ResourceValues[woodType]["PerSecondIncrease"] += (TempValues[woodType]["WpcToWpsMultip"] * ResourceValues[woodType]["PerClick"]) - ResourceValues[woodType]["PerClick"]
			
		if woodType != "Oak":
			ResourceValues[woodType]["PerSecondIncrease"] += (1 - TempValues[woodType]["LowerWpsAddMultip"]) * ResourceValues[lastWoodType]["PerSecondIncrease"]
		
		lastWoodType = woodType
	
	for woodType in WoodTypes:
		if woodType != "Dragonwood":
			var nextWoodType = WoodTypes[WoodTypes.find(woodType) + 1]
			var nextWoodProduction = Values.ResourceValues[nextWoodType]["PerSecondIncrease"]
			
			ResourceValues[woodType]["PerSecondLoss"] = nextWoodProduction * 2 * TempValues["Global"]["WcCostsMultip"] * TempValues[woodType]["WpsCostMultip"]
			
			lastWoodType = woodType

func ApplyUpgrades():
	for woodType in WoodTypes:
		var existingUpgrades = SaveData.Upgrades[woodType]
		for upgradeId in existingUpgrades:
			SetUpgradeValue(woodType, upgradeId)
	
	SetPreGoldUpgrades()
	
	var existingGoldUpgrades = SaveData.Upgrades["Gold"]
	for upgradeId in existingGoldUpgrades:
		SetGoldUpgradeValue(upgradeId)

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
		"6b" :
			TempValues["Oak"]["BeaverMultip"] *= 1.5
			TempValues["Apple"]["BeaverMultip"] *= 1.5
		"2" :
			TempValues["Oak"]["BeaverMultip"] *= 1.2
			TempValues["Oak"]["WpsMultip"] *= 1.2
			TempValues["Oak"]["StorageMultip"] *= 2
		"2b" :
			TempValues["Apple"]["WpsMultip"] *= 1.5
		"3" :
			TempValues["Global"]["StorageMultip"] *= 1.65
		"4" :
			Unlocks.Unlocks["Maple"]["Unlocked"] = true
		"5" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.75
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.75
		"6" :
			TempValues["Global"]["WpsMultip"] *= 1.25
		"6c" :
			TempValues["Global"]["StorageMultip"] *= 1.45
		"7" :
			TempValues["Maple"]["WpsMultip"] *= 1.75
		"8" :
			TempValues["Global"]["WcCostsMultip"] *= 0.7
		"9" :
			Unlocks.Unlocks["Market"]["Unlocked"] = true
		"10" :
			TempValues["Global"]["WcCostsMultip"] *= 0.95
		"11" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.25
		"12" :
			TempValues["Global"]["WcBaseStorage"] += 150
		"13" :
			pass # idk
		"14" :
			Unlocks.Unlocks["Birch"]["Unlocked"] = true
		"14b" :
			TempValues["Global"]["ExtraBeavers"] += 5
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
			TempValues["Global"]["BeaverEffectMultip"] *= 1.3 #change
		"23" :
			Unlocks.Unlocks["Market"]["Bots"]["Unlocked"] = true
		"23b" :
			TempValues["Global"]["WcToBeaverMultip"] += 1
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
			pass
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

func SetPreGoldUpgrades():
	var upgradeLevel = SaveData.Upgrades["Gold"]["6"]["Level"]
	
	if upgradeLevel == 0:
		return
		
	TempValues["Global"]["GoldUpgradeEffectMultip"] *= pow(1.003, upgradeLevel)

func SetGoldUpgradeValue(upgradeId):
	var upgradeLevel = SaveData.Upgrades["Gold"][upgradeId]["Level"]
	
	if upgradeLevel == 0:
		return
	
	match upgradeId:
		"1":
			TempValues["Global"]["BeaverMultip"] *= pow(1.05, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"2":
			TempValues["Global"]["WpsMultip"] *= pow(1.085, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"3":
			TempValues["Global"]["StorageMultip"] *= pow(1.075, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"4":
			TempValues["Research"]["Time"] *= pow(1 - 0.005, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"5":
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.03, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"6":
			TempValues["Global"]["BeaverPriceMultip"] *= pow(1 - 0.035, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"7":
			TempValues["Global"]["WcPriceMultip"] *= pow(1 - 0.015, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"8":
			TempValues["Magic"]["Multip"] *= pow(1.04, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"9":
			TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.025, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]
		"10":
			TempValues["Dam"]["PriceMultip"] *= pow(1 - 0.025, upgradeLevel) * TempValues["Global"]["GoldUpgradeEffectMultip"]

func SetUpgradeValue(woodType, upgradeId):
	var upgradeLevel = SaveData.Upgrades[woodType][upgradeId]["Level"]
	var woodcamps = SaveData.Resources[woodType]["Woodcamps"] + TempValues[woodType]["ExtraWoodcamps"] + TempValues["Global"]["ExtraWoodcamps"]
	var beavers = SaveData.Resources[woodType]["Beavers"] + TempValues[woodType]["ExtraBeavers"] + TempValues["Global"]["ExtraBeavers"]
	var achievementCount = SaveData.GeneralInfo["AchievementCount"]
	var dams = 1 # Implement Later
	
	if upgradeLevel == 0:
		return
	
	match woodType:
		"Oak":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.3 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 100
				"3":
					if upgradeLevel == 1:
						Unlocks.Unlocks["Apple"]["Unlocked"] = true
					elif upgradeLevel > 1:
						TempValues[woodType]["BeaverPriceMultip"] *= pow(1 - 0.1, upgradeLevel - 1)
				"4":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 0.5
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(1.065, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += upgradeLevel * woodcamps
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 0.005
				"8":
					TempValues["Dam"]["PriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"9":
					TempValues["Research"]["Time"] *= pow(1 - 0.01, upgradeLevel)
				"10":
					TempValues["Global"]["UpgradePriceMultip"] *= pow(1 - 0.005, upgradeLevel)
		"Apple":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.35 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 110
				"3":
					if upgradeLevel == 1:
						Unlocks.Unlocks["Research"]["Unlocked"] = true
					elif upgradeLevel > 1:
						TempValues[woodType]["StorageMultip"] *= pow(1.075, upgradeLevel - 1)
				"4":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 1
				"5":
					TempValues["Oak"]["WpsMultip"] *= pow(1.125, upgradeLevel)
				"6":
					TempValues[woodType]["WpsMultip"] *= pow(1.045, upgradeLevel)
				"7":
					TempValues["Oak"]["WpsCostMultip"] *= pow(1 - 0.025, upgradeLevel)
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.02, upgradeLevel)
				"9":
					TempValues["Dam"]["EffectMultip"] *= pow(1.015, upgradeLevel)
				"10":
					TempValues["Fish"]["PriceMultip"] *= pow(1.05, upgradeLevel)
		"Maple":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.4 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 120
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 1.5
				"4":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"5":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.095, upgradeLevel)
				"6":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.011, upgradeLevel)
				"7":
					TempValues["Global"]["BeaverPriceMultip"] *= pow(1 - 0.09, upgradeLevel)
				"8":
					TempValues["Global"]["BotSellMoreMultip"] *= pow(1.04, upgradeLevel)
				"9":
					TempValues["Global"]["WpsMultip"] *= pow(1.0005, upgradeLevel)
				"10":
					TempValues["Magic"]["Multip"] *= pow(1.12, upgradeLevel)
		"Birch":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.45 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 130
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 2
				"4":
					TempValues[woodType]["BaseStorage"] += beavers * 100 * upgradeLevel
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.013, upgradeLevel)
				"6":
					TempValues[woodType]["StorageMultip"] *= pow(1.03, upgradeLevel)
				"7":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.05, upgradeLevel)
				"8":
					TempValues["Fish"]["BaitPriceMultip"] *= pow(1.04, upgradeLevel)
				"9":
					TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.03, upgradeLevel)
				"10":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.02, upgradeLevel)
		"Spruce":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.5 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 140
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 2.5
				"4":
					TempValues[woodType]["StorageMultip"] *= pow(1.06, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.025, upgradeLevel)
				"6":
					TempValues[woodType]["WpcMultip"] *= pow(1.03, upgradeLevel) * woodcamps
				"7":
					TempValues[woodType]["WcCostMultip"] *= pow(1 - 0.005, upgradeLevel)
				"8":
					TempValues["Dam"]["PriceMultip"] *= pow(1 - 0.02, upgradeLevel)
				"9":
					TempValues["Global"]["BotBaseSell"] += upgradeLevel * 15
				"10":
					TempValues["Fish"]["LongerFishMultip"] *= pow(1.0015, upgradeLevel)
		"Chestnut":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.55 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 150
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 3
				"4":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.05, upgradeLevel)
				"5":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.02, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += upgradeLevel * woodcamps
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 100
				"8":
					TempValues[woodType]["WpcMultip"] *= pow(1.0075, upgradeLevel) * woodcamps
				"9":
					TempValues["Global"]["GoldUpgradePriceMultip"] *= pow(1 - 0.0045, upgradeLevel)
				"10":
					TempValues["Magic"]["GainMultip"] *= pow(1.05, upgradeLevel)
		"Cherry":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.6 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 160
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 3.5
				"4":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.075, upgradeLevel)
				"5":
					TempValues[woodType]["BeaverPriceMultip"] *= pow(1.03, upgradeLevel)
				"6":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.01, upgradeLevel)
				"7":
					TempValues[woodType]["StorageMultip"] *= pow(1.12, upgradeLevel)
				"8":
					TempValues["Research"]["Time"] *= pow(0.002, upgradeLevel)
				"9":
					TempValues["Fish"]["FishEffectMultip"] *= pow(1.0025, upgradeLevel)
				"10":
					TempValues["Dam"]["GoldGainMultip"] *= pow(1.0025, upgradeLevel)
		"Ash":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.65 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 170
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 4
				"4":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.175, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.019, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += roundi(beavers / 15 * upgradeLevel - 0.5)
				"7":
					TempValues[woodType]["UpgradePriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.006, upgradeLevel)
				"9":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.003, upgradeLevel)
				"10":
					TempValues["Fish"]["MoreFishMultip"] *= pow(1.0085, upgradeLevel)
		"Cedar":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.7 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 180
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 4.5
				"4":
					TempValues[woodType]["ExtraBeavers"] += roundi(woodcamps / 5 * upgradeLevel - 0.5)
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(1.03, upgradeLevel) * beavers
				"6":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.07, upgradeLevel)
				"7":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.003, upgradeLevel)
				"8":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.0045, upgradeLevel)
				"9":
					TempValues["Magic"]["GainMultip"] *= pow(1.035, upgradeLevel)
				"10":
					TempValues["Global"]["WcPriceMultip"] *= pow(1 - 0.01, upgradeLevel)
		"Mahogany":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.75 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 190
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 5
				"4":
					TempValues[woodType]["BeaverPriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"5":
					TempValues[woodType]["ExtraWoodcamps"] *= roundi(beavers / 20 * upgradeLevel - 0.5)
				"6":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.1, upgradeLevel)
				"7":
					TempValues["Global"]["WpsMultip"] *= pow(1.0009, upgradeLevel) * achievementCount
				"8":
					TempValues["Global"]["WpcMultip"] *= pow(1.005, upgradeLevel)
				"9":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.0009, upgradeLevel)
				"10":
					TempValues["Fish"]["BaitEffectMultip"] *= pow(1.0075, upgradeLevel)
		"Ebony":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.8 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 200
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 5.5
				"4":
					TempValues[woodType]["ExtraWoodcamps"] *= roundi(beavers / 10 * upgradeLevel - 0.5)
				"5":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.015, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += upgradeLevel * woodcamps
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 10000
				"8":
					TempValues["Fish"]["FishSpeedMultip"] *= pow(1 - 0.03, upgradeLevel)
				"9":
					TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"10":
					TempValues["Global"]["WpsMultip"] *= pow(1 - 0.0027, upgradeLevel)
		"Dogwood":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.85 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 210
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 6
				"4":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1 - 0.0075, upgradeLevel)
				"5":
					TempValues[woodType]["WcCostsMultip"] *= pow(1 - 0.03, upgradeLevel)
				"6":
					TempValues[woodType]["StorageMultip"] *= pow(1.02, upgradeLevel) * beavers
				"7":
					TempValues[woodType]["WpcMultip"] *= pow(1.06, upgradeLevel)
				"8":
					TempValues["Global"]["BotEffectMultip"] *= pow(1.05, upgradeLevel)
				"9":
					TempValues["Fish"]["FishPriceMultip"] *= pow(1.075, upgradeLevel)
				"10":
					TempValues["Global"]["WpsMultip"] *= pow(1.003, upgradeLevel) * dams
		"Rosewood":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.9 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 220
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 6.5
				"4":
					TempValues[woodType]["BeaverPriceMultip"] *= pow(1 - 0.2, upgradeLevel)
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(1.02, upgradeLevel)
				"6":
					TempValues[woodType]["WpsMultip"] *= pow(1.002, upgradeLevel) * beavers
				"7":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * beavers * 300
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.003, upgradeLevel)
				"9":
					TempValues["Global"]["WpsMultip"] *= pow(1.0007, upgradeLevel)
				"10":
					TempValues["Dam"]["EffectMultip"] *= pow(1.03, upgradeLevel)
		"Ghost Gum":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.95 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 230
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 7
				"4":
					TempValues[woodType]["BeaverUpgrades"] += 0.7 * upgradeLevel * woodcamps
				"5":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.07, upgradeLevel)
				"6":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.07, upgradeLevel)
				"7":
					TempValues[woodType]["ExtraWoodcamps"] *= roundi(beavers / 7 * upgradeLevel - 0.5)
				"8":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.04, upgradeLevel)
				"9":
					TempValues["Global"]["StorageMultip"] *= pow(1.055, upgradeLevel)
				"10":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.02, upgradeLevel)
		"Dragonwood":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 240
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 7.5
				"4":
					TempValues[woodType]["WcCostsMultip"] *= pow(1 - 0.08, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.11, upgradeLevel)
				"6":
					TempValues[woodType]["StorageMultip"] *= pow(1.065, upgradeLevel) * beavers
				"7":
					TempValues[woodType]["ExtraBeavers"] *= roundi(woodcamps / 10 * upgradeLevel - 0.5)
				"8":
					TempValues["Dam"]["MaterialsNeededMultip"] *= pow(1 - 0.05, upgradeLevel)
				"9":
					TempValues["Global"]["UpgradePriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"10":
					TempValues["Magic"]["GainMultip"] *= pow(1.06, upgradeLevel)

var OriginalTempValues = {
	"Global" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverMultip" : 1, # 100%
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"WpcMultip" : 1, # 100%
		"WpsMultip" : 1, # 100%
		"WpsPow" : 1, # 100%
		"UpgradePriceMultip" : 1, # 100%
		"StorageMultip" : 1, # 100%
		"WcStorageMultip" : 1, # 100%
		"WcToBeaverMultip" : 0, # 100%
		"WcCostsMultip" : 1, # 100%
		"WcPriceMultip" : 1, # 100%
		"WcBaseStorage" : 0,
		"WoodPriceMultip" : 1, # 100%
		"AddLevelToBaseWoodClick" : 0, # remove
		"BotPriceMultip" : 1, # 100%
		"BotEffectMultip" : 1, # 100%
		"BotSellMoreMultip" : 1,
		"BotBaseSell" : 10,
		"ProductionUpgradeMultip" : 1, # 100%
		"GoldUpgradePriceMultip" : 1, # 100%
		"GoldUpgradeEffectMultip" : 1, # 100%
	},
	"Fish" : {
		"PriceMultip" : 1, # 100%
		"FishingWoodMultip" : 1,
		"MoreFishMultip" : 1,
		"BetterFishMultip" : 1,
		"LongerFishMultip" : 1,
		"FishEffectMultip" : 1,
		"FishSpeedMultip" : 1,
		"FishPriceMultip" : 1,
		"BaitEffectMultip" : 1,
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
		"GainMultip" : 1,
		"EffectMultip" : 1,
		"PriceMultip" : 1,
		"PerSecondMultip" : 1,
		"UpgradePriceMultip" : 1,
	},
	"Dam" : {
		"EffectMultip" : 1,
		"PriceMultip" : 1,
		"MaterialsNeededMultip" : 1,
		"ConstructionSpeedMultip" : 1,
		"GoldGainMultip": 1,
		"WoodGainMultip": 1,
	},
	"Oak" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 0.01,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Apple" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 0.05,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Maple" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 0.25,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Birch" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 0.70,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Spruce" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 2.55,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Chestnut" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 7,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Cherry" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 13,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Ash" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 33,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Cedar" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 80,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Mahogany" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 140,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Ebony" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 500,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Dogwood" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 1400,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Rosewood" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 3600,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Ghost Gum" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 9999,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
	"Dragonwood" : {
		"ExtraBeavers" : 0, # Additional beavers
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25, # storage
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcPriceMultip" : 1, # wps
		"FishStorageMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"WpsCostMultip" : 1, # Not used for oak?
		"BeaverEffectMultip" : 1, # 100%
		"BeaverPriceMultip" : 1, # 100%
		"UpgradePriceMultip" : 1, # upgrades
		"BaseWoodPrice" : 22222,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1, # 100%
	},
}
