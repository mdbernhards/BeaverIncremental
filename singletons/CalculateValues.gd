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
	
	CalculateRealValues()
	CalculateRealAfterValues()

func CalculateRealValues():
	var magicMultip = log(SaveData.Magic["Count"] + 1) / log(35) * TempValues["Magic"]["EffectMultip"]
	
	var magicWpcMultip = magicMultip * 0.3 + 1
	var magicWpsMultip = magicMultip + 1
	var magicStorageMultip = magicMultip + 1
	
	var achievementMultip = SaveData.countAchievements() / 100.0
	
	var achievementWpcMultip = achievementMultip * 0.5 + 1
	var achievementWpsMultip = achievementMultip + 1
	var achievementStorageMultip = achievementMultip + 1
	
	var lastWoodType
	
	for woodType in WoodTypes:
		var extraWoodcamps = TempValues[woodType]["ExtraWoodcamps"] + TempValues["Global"]["ExtraWoodcamps"]
		var woodcamps = SaveData.Resources[woodType]["Woodcamps"] + extraWoodcamps
		
		var extraBeavers = TempValues[woodType]["ExtraBeavers"] + TempValues["Global"]["ExtraBeavers"] + (woodcamps * TempValues["Global"]["WcToBeaverMultip"]) 
		var beavers = SaveData.Resources[woodType]["Beavers"] + extraBeavers
		
		var storageFromLowerTier = 0
		if lastWoodType and TempValues["Global"]["LowerStorageMultip"] > 1:
			storageFromLowerTier = (ResourceValues["Global"]["LowerStorageMultip"] - 1) * ResourceValues[lastWoodType]["Storage"]
		
		ResourceValues[woodType]["PerClick"] = beavers * TempValues[woodType]["BeaverUpgrades"] * TempValues[woodType]["BeaverMultip"] * TempValues["Global"]["BeaverMultip"] * magicWpcMultip * achievementWpcMultip
		ResourceValues[woodType]["PerSecondIncrease"] = woodcamps * TempValues[woodType]["WpsPerWc"] * TempValues[woodType]["WpsMultip"] * TempValues["Global"]["WpsMultip"] * TempValues[woodType]["WcEffectMultip"] * SaveData.Resources[woodType]["Production"] * magicWpsMultip * achievementWpsMultip / 100
		ResourceValues[woodType]["Storage"] = (TempValues[woodType]["BaseStorage"] + beavers * (TempValues["Global"]["BeaverBaseStorage"] + TempValues[woodType]["BeaverBaseStorage"]) + woodcamps * (TempValues[woodType]["WcBaseStorage"] + TempValues["Global"]["WcBaseStorage"]) * TempValues[woodType]["WcStorageMultip"] * TempValues["Global"]["WcStorageMultip"] * TempValues[woodType]["WcEffectMultip"]) * TempValues[woodType]["StorageMultip"] * TempValues["Global"]["StorageMultip"] * magicStorageMultip * achievementStorageMultip + storageFromLowerTier
		ResourceValues[woodType]["SoldFor"] = TempValues[woodType]["BaseWoodPrice"] * TempValues[woodType]["WoodPriceMultip"] * TempValues["Global"]["WoodPriceMultip"] * TempValues["Gold"]["GainMultip"]
		ResourceValues[woodType]["UpgradePriceMultip"] = TempValues["Global"]["UpgradePriceMultip"] * TempValues[woodType]["UpgradePriceMultip"]
		ResourceValues[woodType]["WcPriceMultip"] = TempValues["Global"]["WcPriceMultip"] * TempValues[woodType]["WcPriceMultip"]
		ResourceValues[woodType]["BeaverPriceMultip"] = TempValues["Global"]["BeaverPriceMultip"] * TempValues[woodType]["BeaverPriceMultip"]
		ResourceValues[woodType]["BotPriceMultip"] = TempValues["Global"]["BotPriceMultip"]
		ResourceValues[woodType]["BotBaseSell"] = TempValues["Global"]["BotBaseSell"] * TempValues["Global"]["BotSellMoreMultip"]
		ResourceValues[woodType]["ExtraWoodcamps"] = extraWoodcamps
		ResourceValues[woodType]["ExtraBeavers"] = extraBeavers
		lastWoodType = woodType
	
	# Fishing
	ResourceValues["Fish"]["FishingWoodMultip"] = TempValues["Fish"]["FishingWoodMultip"]
	ResourceValues["Fish"]["MoreFishMultip"] = TempValues["Fish"]["MoreFishMultip"]
	ResourceValues["Fish"]["BetterFishMultip"] = TempValues["Fish"]["BetterFishMultip"]
	ResourceValues["Fish"]["LongerFishMultip"] = TempValues["Fish"]["LongerFishMultip"]
	ResourceValues["Fish"]["FishEffectMultip"] = TempValues["Fish"]["FishEffectMultip"]
	ResourceValues["Fish"]["FishSpeedMultip"] = TempValues["Fish"]["FishSpeedMultip"]
	ResourceValues["Fish"]["FishPriceMultip"] = TempValues["Fish"]["FishPriceMultip"]
	ResourceValues["Fish"]["BaitEffectMultip"] = TempValues["Fish"]["BaitEffectMultip"]
	ResourceValues["Fish"]["BaitPriceMultip"] = TempValues["Fish"]["BaitPriceMultip"]
	
	# Research
	ResourceValues["Research"]["TimeMultip"] = TempValues["Research"]["Time"]
	ResourceValues["Research"]["ResearchAtATime"] = TempValues["Research"]["ResearchAtATime"]
	
	# Gold
	ResourceValues["Gold"]["UpgradePriceMultip"] = TempValues["Gold"]["UpgradePriceMultip"]
	
	# Magic
	ResourceValues["Magic"]["GainMultip"] = TempValues["Magic"]["GainMultip"]
	ResourceValues["Magic"]["PerSecondMultip"] = TempValues["Magic"]["PerSecondMultip"]
	ResourceValues["Magic"]["WpcMultip"] = magicWpcMultip
	ResourceValues["Magic"]["WpsMultip"] = magicWpsMultip
	ResourceValues["Magic"]["StorageMultip"] = magicStorageMultip
	
	# Achievement
	ResourceValues["Achievements"]["WpcMultip"] = achievementWpcMultip
	ResourceValues["Achievements"]["WpsMultip"] = achievementWpsMultip
	ResourceValues["Achievements"]["StorageMultip"] = achievementStorageMultip
	
	# Dam
	ResourceValues["Dam"]["EffectMultip"] = TempValues["Dam"]["EffectMultip"]
	ResourceValues["Dam"]["PriceMultip"] = TempValues["Dam"]["PriceMultip"]
	ResourceValues["Dam"]["MaterialsNeededMultip"] = TempValues["Dam"]["MaterialsNeededMultip"]
	ResourceValues["Dam"]["GoldGainMultip"] = TempValues["Dam"]["GoldGainMultip"]
	ResourceValues["Dam"]["WoodGainMultip"] = TempValues["Dam"]["WoodGainMultip"]
	ResourceValues["Dam"]["ResourcesPerSecond"] = TempValues["Dam"]["ConstructionSpeedMultip"] * TempValues["Dam"]["BaseResourcesPerSecond"]

func CalculateRealAfterValues():
	var lastWoodType
	
	for woodType in WoodTypes:
		var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
		
		if woodCamps > 0:
			ResourceValues[woodType]["PerSecondIncrease"] += (TempValues["Global"]["WpcToWpsMultip"] * TempValues[woodType]["WpcToWpsMultip"] * ResourceValues[woodType]["PerClick"]) - ResourceValues[woodType]["PerClick"]
			
		if woodType != "Oak":
			ResourceValues[woodType]["PerSecondIncrease"] += (TempValues[woodType]["LowerWpsAddMultip"] * TempValues["Global"]["LowerWpsAddMultip"] - 1) * ResourceValues[lastWoodType]["PerSecondIncrease"]
		
		lastWoodType = woodType
	
	for woodType in WoodTypes:
		if woodType != "Dragonwood":
			var nextWoodType = WoodTypes[WoodTypes.find(woodType) + 1]
			var nextWoodProduction = Values.ResourceValues[nextWoodType]["PerSecondIncrease"]
			
			ResourceValues[woodType]["PerSecondLoss"] = nextWoodProduction * 2 * TempValues["Global"]["WcCostsMultip"] * TempValues[woodType]["WcCostsMultip"]
			
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
	var achievementCount = SaveData.countAchievements()
	var dams = SaveData.DamData[Dams.DamEnum.SmallDam]["Count"] + SaveData.DamData[Dams.DamEnum.MediumDam]["Count"] + SaveData.DamData[Dams.DamEnum.BigDam]["Count"] + SaveData.DamData[Dams.DamEnum.GiantDam]["Count"] + SaveData.DamData[Dams.DamEnum.MegaDam]["Count"]
	
	match magicNr:
		"1" :
			Unlocks.Unlocks["Achievements"]["Unlocked"] = true
		"1b" :
			TempValues["Global"]["WcPriceMultip"] *= 0.75
		"1bb" :
			TempValues["Global"]["StorageMultip"] *= 1.3
		"1c" :
			TempValues["Global"]["WcCostsMultip"] *= 0.9
		"2" :
			TempValues["Global"]["WpsMultip"] *= 1.2
		"3" :
			TempValues["Global"]["WcStorageMultip"] *= 2
		"4" :
			TempValues["Global"]["ExtraBeavers"] += 2
		"5" :
			TempValues["Global"]["WpsMultip"] *= 0.001 * achievementCount + 1
		"5b" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.9
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.9
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.9
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.9
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.9
		"6" :
			Unlocks.Unlocks["Storage"]["Overloading"] = true
		"6b" :
			TempValues["Global"]["ExtraWoodcamps"] += 2
		"7" :
			TempValues["Research"]["Time"] *= 0.5
		"8" :
			TempValues["Global"]["BeaverMultip"] *= 0.0005 * achievementCount + 1
		"9" :
			TempValues["Global"]["WpcToWpsMultip"] *= 1.05
		"10" :
			Unlocks.Unlocks["Fishing"]["Unlocked"] = true
			Unlocks.Unlocks["Fishing"]["Spot"]["1"] = true
		"11" :
			TempValues["Magic"]["GainMultip"] *= 1.3
		"12" :
			TempValues["Global"]["WcCostsMultip"] *= 0.5
		"13" :
			TempValues["Research"]["ResearchAtATime"] += 1
		"14" :
			TempValues["Global"]["StorageMultip"] *= 2
		"15" :
			TempValues["Fish"]["FishPriceMultip"] *= 1.225
		"16" :
			Unlocks.Unlocks["Market"]["Bots"]["Unlocked"] = true
		"17" :
			TempValues["Global"]["BeaverMultip"] *= 1.15
		"18" :
			Unlocks.Unlocks["Fishing"]["Spot"]["2"] = true
		"19" :
			SaveData.ResearchInfo["PreUnlockedResearch"] += 10
		"20" :
			TempValues["Global"]["WcStorageMultip"] *= 1.15
			TempValues["Global"]["WcPriceMultip"] *= 1.15
			TempValues["Global"]["WpsMultip"] *= 1.15
			TempValues["Global"]["WcCostsMultip"] *= 0.85
		"21" :
			TempValues["Research"]["Time"] *= 0.825
		"22" :
			TempValues["Global"]["LowerStorageMultip"] *= 1.035
		"23" :
			Unlocks.Unlocks["Gold"]["Unlocked"] = true
		"24" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.5
		"25" :
			Unlocks.Unlocks["Fishing"]["Bait"]["Unlocked"] = true
			Unlocks.Unlocks["Fishing"]["Bait"]["1"] = true
		"26" :
			TempValues["Global"]["WcCostsMultip"] *= 0.85
		"27" :
			TempValues["Global"]["WcStorageMultip"] *= 1.35
		"28" :
			Unlocks.Unlocks["Fishing"]["Spot"]["3"] = true
		"29" :
			TempValues["Fish"]["BaitEffectMultip"] *= 1.15
		"30" :
			Unlocks.Unlocks["Oak"]["WpsMultip"] *= 2
		"31" :
			TempValues["Fish"]["MoreFishMultip"] *= 1.25
		"32" :
			TempValues["Global"]["WcCostsMultip"] *= pow(1 - 0.001, achievementCount)
		"33" :
			TempValues["Research"]["ResearchAtATime"] += 1
		"34" :
			TempValues["Magic"]["EffectMultip"] *= 2
		"35" :
			TempValues["Global"]["LowerWpsAddMultip"] *= 1.05
		"36" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.5
		"37" :
			Unlocks.Unlocks["Fishing"]["Spot"]["4"] = true
		"38" :
			TempValues["Global"]["StorageMultip"] *= 0.002 * achievementCount + 1
		"39" :
			TempValues["Fish"]["BetterFishMultip"] *= 1.275
		"40" :
			Unlocks.Unlocks["Dams"]["Unlocked"] = true
			Unlocks.Unlocks["Dams"]["Small Dam"]["Unlocked"] = true
			Unlocks.Unlocks["Dams"]["Small Dam"]["Slot1"] = true
		"41" :
			TempValues["Global"]["BotPriceMultip"] *= 0.6
		"42" :
			TempValues["Global"]["ExtraWoodcamps"] += 10
		"43" :
			TempValues["Research"]["AutoResearch"] = true
		"44" :
			TempValues["Global"]["WpsMultip"] *= dams * 0.01 + 1
		"45" :
			TempValues["Global"]["ExtraBeavers"] += 10
		"46" :
			TempValues["Fish"]["LongerFishMultip"] *= 1.25
		"47" :
			SaveData.ResearchInfo["PreUnlockedResearch"] += 20
		"48" :
			TempValues["Gold"]["UpgradePriceMultip"] *= 0.65
		"49" :
			Unlocks.Unlocks["Upgrades"]["KeepClassicUpgrades"] = true
		"50" :
			TempValues["Dam"]["EffectMultip"] *= 1.15
		"51" :
			Unlocks.Unlocks["Fishing"]["Spot"]["5"] = true
		"52" :
			TempValues["Gold"]["GainMultip"] *= 0.01 * dams + 1
		"53" :
			TempValues["Global"]["BotSellMoreMultip"] *= 1.2
		"54" :
			TempValues["Fish"]["FishPriceMultip"] *= 2
		"55" :
			Unlocks.Unlocks["Upgrades"]["KeepRareUpgrades"] = true
		"56" :
			TempValues["Dam"]["PriceMultip"] *= 0.7
		"57" :
			Unlocks.Unlocks["Upgrades"]["KeepGoldUpgrades"] = true
		"58" :
			TempValues["Magic"]["EffectMultip"] *= 2
		"59" :
			TempValues["Global"]["UpgradePriceMultip"] *= 0.5
		"60" :
			Unlocks.Unlocks["Magic"]["PasiveGain"] = true
		"61" :
			Unlocks.Unlocks["Dams"]["Mega Dam"]["Unlocked"] = true

func SetResearchValue(researchNr):
	var achievementCount = SaveData.countAchievements()
	
	match researchNr:
		"1" :
			TempValues["Global"]["StorageMultip"] *= 1.65
		"2" :
			TempValues["Oak"]["BeaverMultip"] *= 1.5
			TempValues["Apple"]["BeaverMultip"] *= 1.5
		"3" :
			Unlocks.Unlocks["Market"]["Unlocked"] = true
		"4" :
			Unlocks.Unlocks["Woodcamps"]["Unlocked"] = true
		"5" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.75
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.75
		"6" :
			TempValues["Oak"]["BeaverMultip"] *= 1.2
			TempValues["Oak"]["WpsMultip"] *= 1.2
			TempValues["Oak"]["StorageMultip"] *= 2
		"7" :
			TempValues["Apple"]["WpsMultip"] *= 1.5
		"8" :
			Unlocks.Unlocks["Maple"]["Unlocked"] = true
		"9" :
			TempValues["Global"]["WpsMultip"] *= 1.25
		"10" :
			TempValues["Global"]["StorageMultip"] *= 1.45
		"11" :
			TempValues["Global"]["WcPriceMultip"] *= 0.7
		"12" :
			TempValues["Maple"]["WpsMultip"] *= 1.75
		"13" :
			TempValues["Global"]["WcCostsMultip"] *= 0.95
		"14" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.25
		"15" :
			TempValues["Global"]["WcBaseStorage"] += 150
		"16" :
			TempValues["Oak"]["ExtraWoodcamps"] += 5
		"17" :
			TempValues["Apple"]["StorageMultip"] *= 1.15
		"18" :
			TempValues["Global"]["BeaverBaseStorage"] += 100
		"19" :
			Unlocks.Unlocks["Birch"]["Unlocked"] = true
		"20" :
			TempValues["Oak"]["ExtraBeavers"] += 2
			TempValues["Apple"]["ExtraBeavers"] += 2
			TempValues["Maple"]["ExtraBeavers"] += 2
			TempValues["Birch"]["ExtraBeavers"] += 2
			TempValues["Spruce"]["ExtraBeavers"] += 2
		"21" :
			TempValues["Research"]["Time"] *= 0.75
		"22" :
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.65
		"23" :
			TempValues["Oak"]["WoodPriceMultip"] *= 1.25
			TempValues["Maple"]["WoodPriceMultip"] *= 1.25
		"24" :
			TempValues["Oak"]["WcPriceMultip"] *= 0.4
		"25" :
			TempValues["Global"]["WpsMultip"] *= 1.2
		"26" :
			for woodType in WoodTypes:
				TempValues[woodType]["ExtraWoodcamps"] += max(0, roundi(SaveData.Resources[woodType]["Beavers"] / 7 - 0.5))
		"27" :
			TempValues["Maple"]["WcStorageMultip"] *= 1.75
		"28" :
			TempValues["Global"]["WpcMultip"] *= 1.125
		"29" :
			Unlocks.Unlocks["Spruce"]["Unlocked"] = true
		"30" :
			TempValues["Global"]["UpgradePriceMultip"] *= 0.9
		"31" :
			TempValues["Global"]["WpcToWpsMultip"] *= 1.05
		"32" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.33
		"33" :
			TempValues["Maple"]["StorageMultip"] *= 1.5
		"34" : # Stopped here
			pass
		"35" :
			Unlocks.Unlocks["Magic"]["Upgrades"] = true
		"36" :
			pass # idk
		"37" :
			TempValues["Gold"]["UpgradePriceMultip"] *= 0.87
		"38" :
			Unlocks.Unlocks["Fishing"]["Unlocked"] = true
		"39" :
			TempValues["Research"]["Time"] *= 0.5
		"40" :
			TempValues["Magic"]["Multip"] *= 10
		"41" :
			Unlocks.Unlocks["Fishing"]["Cherry"] = true
		"42" :
			pass # idk
		"43" :
			pass # idk
		"44" :
			pass
		"45" :
			Unlocks.Unlocks["Fishing"]["Bait"]["2"] = true
		"46" :
			TempValues["Magic"]["EffectMultip"] *= 1.25
		"47" :
			Unlocks.Unlocks["Dams"]["Unlocked"] = true
		"48" :
			pass # idk
		"49" :
			TempValues["Global"]["BeaverMultip"] *= 10
		"50" :
			TempValues["Magic"]["Multip"] *= 2
		"51" :
			pass # idk
		"52" :
			TempValues["Fish"]["BaitEffectMultip"] *= 1.08
		"53" :
			pass # idk
		"54" :
			pass # idk
		"55" :
			TempValues["Global"]["WcPriceMultip"] *= 0.8
		"56" :
			pass # idk
		"57" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.25
		"58" :
			pass # idk
		"59" :
			pass # idk
		"60" :
			Unlocks.Unlocks["Fishing"]["Spot"]["2"] = true
		"61" :
			Unlocks.Unlocks["Mahogany"]["Unlocked"] = true
		"62" :
			pass # idk
		"63" :
			TempValues["Global"]["BotPriceMultip"] *= 0.85
		"64" :
			pass # idk
		"65" :
			pass # idk
		"66" :
			pass # idk
		"67" :
			pass # idk
		"68" :
			TempValues["Dam"]["Multip"] *= 5
		"69" :
			pass # idk
		"70" :
			TempValues["Magic"]["EffectMultip"] *= 10
		"71" :
			pass # idk change
		"72" :
			Unlocks.Unlocks["Dogwood"]["Unlocked"] = true
		"73" :
			pass
		"74" :
			pass # idk
		"75" :
			pass # idk
		"76" :
			TempValues["Fish"]["MoreFishMultip"] *= 1.15
		"77" :
			TempValues["Global"]["BotSellMoreMultip"] *= 1.1
		"78" :
			TempValues["Fish"]["BaitPriceMultip"] *= 0.7
		"79" :
			TempValues["Dam"]["Multip"] *= 4
		"80" :
			pass

func SetPreGoldUpgrades():
	var upgradeLevel = SaveData.Upgrades["Gold"]["6"]["Level"]
	
	if upgradeLevel == 0:
		return
		
	TempValues["Gold"]["UpgradeEffect"] *= pow(1.003, upgradeLevel)

func SetGoldUpgradeValue(upgradeId):
	var upgradeLevel = SaveData.Upgrades["Gold"][upgradeId]["Level"]
	var goldEffectMultip = TempValues["Gold"]["UpgradeEffect"]
	
	if upgradeLevel == 0:
		return
	
	match upgradeId:
		"1":
			TempValues["Global"]["BeaverMultip"] *= pow(1.05, upgradeLevel) * goldEffectMultip
		"2":
			TempValues["Global"]["WpsMultip"] *= pow(1.085, upgradeLevel) * goldEffectMultip
		"3":
			TempValues["Global"]["StorageMultip"] *= pow(1.075, upgradeLevel) * goldEffectMultip
		"4":
			TempValues["Research"]["Time"] *= pow(1 - 0.005, upgradeLevel) * goldEffectMultip
		"5":
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.03, upgradeLevel) * goldEffectMultip
		"6":
			TempValues["Global"]["BeaverPriceMultip"] *= pow(1 - 0.035, upgradeLevel) * goldEffectMultip
		"7":
			TempValues["Global"]["WcPriceMultip"] *= pow(1 - 0.015, upgradeLevel) * goldEffectMultip
		"8":
			TempValues["Magic"]["Multip"] *= pow(1.04, upgradeLevel) * goldEffectMultip
		"9":
			TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.025, upgradeLevel) * goldEffectMultip
		"10":
			TempValues["Dam"]["PriceMultip"] *= pow(1 - 0.025, upgradeLevel) * goldEffectMultip

func SetUpgradeValue(woodType, upgradeId):
	var upgradeLevel = SaveData.Upgrades[woodType][upgradeId]["Level"]
	var woodcamps = SaveData.Resources[woodType]["Woodcamps"] + TempValues[woodType]["ExtraWoodcamps"] + TempValues["Global"]["ExtraWoodcamps"]
	var beavers = SaveData.Resources[woodType]["Beavers"] + TempValues[woodType]["ExtraBeavers"] + TempValues["Global"]["ExtraBeavers"]
	var achievementCount = SaveData.countAchievements()
	var dams = SaveData.DamData[Dams.DamEnum.SmallDam]["Count"] + SaveData.DamData[Dams.DamEnum.MediumDam]["Count"] + SaveData.DamData[Dams.DamEnum.BigDam]["Count"] + SaveData.DamData[Dams.DamEnum.GiantDam]["Count"] + SaveData.DamData[Dams.DamEnum.MegaDam]["Count"]
	
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
					TempValues[woodType]["ExtraBeavers"] += roundi(SaveData.Resources[woodType]["Woodcamps"] / 5 * upgradeLevel - 0.5)
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
					TempValues["Oak"]["WcCostsMultip"] *= pow(1 - 0.025, upgradeLevel)
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.02, upgradeLevel)
				"9":
					TempValues["Dam"]["EffectMultip"] *= pow(1.015, upgradeLevel)
				"10":
					TempValues["Fish"]["FishPriceMultip"] *= pow(1.05, upgradeLevel)
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
					TempValues[woodType]["BeaverMultip"] *= pow(1.03, upgradeLevel) * woodcamps
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
					TempValues[woodType]["ExtraBeavers"] += upgradeLevel * SaveData.Resources[woodType]["Woodcamps"]
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 100
				"8":
					TempValues[woodType]["BeaverMultip"] *= pow(1.0075, upgradeLevel) * woodcamps
				"9":
					TempValues["Gold"]["UpgradePriceMultip"] *= pow(1 - 0.0045, upgradeLevel)
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
					TempValues[woodType]["ExtraBeavers"] += roundi(SaveData.Resources["Cherry"]["Beavers"] / 15 * upgradeLevel - 0.5) 
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
					TempValues[woodType]["ExtraBeavers"] += roundi(SaveData.Resources[woodType]["Woodcamps"] / 5 * upgradeLevel - 0.5)
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
					TempValues[woodType]["ExtraWoodcamps"] += roundi(SaveData.Resources[woodType]["Beavers"] / 20 * upgradeLevel - 0.5)
				"6":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.1, upgradeLevel)
				"7":
					TempValues["Global"]["WpsMultip"] *= pow(1.0009, upgradeLevel) * achievementCount
				"8":
					TempValues["Global"]["BeaverMultip"] *= pow(1.005, upgradeLevel)
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
					TempValues[woodType]["ExtraWoodcamps"] *= roundi(SaveData.Resources[woodType]["Beavers"] / 10 * upgradeLevel - 0.5)
				"5":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.015, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += upgradeLevel * SaveData.Resources[woodType]["Woodcamps"]
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
					TempValues[woodType]["BeaverMultip"] *= pow(1.06, upgradeLevel)
				"8":
					TempValues["Global"]["BotSellMoreMultip"] *= pow(1.05, upgradeLevel)
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
					TempValues[woodType]["ExtraWoodcamps"] *= roundi(SaveData.Resources[woodType]["Beavers"] / 7 * upgradeLevel - 0.5)
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
					TempValues[woodType]["ExtraBeavers"] *= roundi(SaveData.Resources[woodType]["Woodcamps"] / 10 * upgradeLevel - 0.5)
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
		"BeaverMultip" : 1,
		"BeaverPriceMultip" : 1,
		"WpsMultip" : 1,
		"UpgradePriceMultip" : 1,
		"StorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcToBeaverMultip" : 0,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WcBaseStorage" : 0,
		"BeaverBaseStorage" : 0,
		"WoodPriceMultip" : 1,
		"BotPriceMultip" : 1,
		"BotSellMoreMultip" : 1,
		"BotBaseSell" : 10,
		"WpcToWpsMultip" : 1,
		"LowerStorageMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Fish" : {
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
		"Time" : 1,
		"ResearchAtATime" : 1,
	},
	"Gold" : {
		"GainMultip" : 1,
		"UpgradeEffect" : 1,
		"UpgradePriceMultip" : 1,
	},
	"Magic" : {
		"GainMultip" : 1,
		"EffectMultip" : 1,
		"PerSecondMultip" : 1,
	},
	"Dam" : {
		"EffectMultip" : 1,
		"PriceMultip" : 1,
		"MaterialsNeededMultip" : 1,
		"ConstructionSpeedMultip" : 1,
		"BaseResourcesPerSecond" : 100,
		"GoldGainMultip": 1,
		"WoodGainMultip": 1,
	},
	"Oak" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 0.01,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Apple" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 0.05,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Maple" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 0.25,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Birch" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 0.70,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Spruce" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 2.55,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Chestnut" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 7,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Cherry" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 13,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Ash" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 33,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Cedar" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 80,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Mahogany" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 140,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Ebony" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 500,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Dogwood" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 1400,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Rosewood" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 3600,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Ghost Gum" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 9999,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
	"Dragonwood" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverUpgrades" : 1,
		"BeaverMultip" : 1,
		"BaseStorage" : 25,
		"StorageMultip" : 1,
		"WcBaseStorage" : 99,
		"BeaverBaseStorage" : 15,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 22222,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
}
