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
	
	CalculateRealValues()
	CalculateRealAfterValues()

func CalculateRealValues():
	# Think about FishStorageMultip

	for woodType in WoodTypes:
		var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
		var level = SaveData.Resources[woodType]["Level"]
		
		var levelEffect =  maxf(level * 1.01 * TempValues["Global"]["LevelEffectMultip"] * TempValues[woodType]["LevelEffectMultip"], 1)
		
		ResourceValues[woodType]["PerClick"] = (TempValues[woodType]["Beavers"] + (TempValues["Global"]["AddLevelToBaseWoodClick"] * level)) * TempValues[woodType]["BeaverUpgrades"] * TempValues[woodType]["BeaverMultip"] * TempValues["Global"]["BeaverMultip"] * levelEffect
		ResourceValues[woodType]["PerSecondIncrease"] = pow(woodCamps * TempValues[woodType]["WpsPerWc"] * TempValues[woodType]["WpsMultip"] * TempValues["Global"]["WpsMultip"] * TempValues[woodType]["WcEffectMultip"], TempValues["Global"]["WpsPow"]) * levelEffect
		ResourceValues[woodType]["Storage"] = TempValues[woodType]["BaseStorage"] * TempValues[woodType]["StorageMultip"] * TempValues["Global"]["StorageMultip"] + TempValues[woodType]["WcBaseStorage"] * TempValues[woodType]["WcStorageMultip"] * TempValues["Global"]["WcStorageMultip"] * TempValues[woodType]["WcEffectMultip"] * levelEffect
		ResourceValues[woodType]["SoldFor"] = (TempValues[woodType]["BaseWoodPrice"] + TempValues[woodType]["BotBaseSell"]) * TempValues[woodType]["BotSellMultip"] * TempValues[woodType]["WoodPriceMultip"] * TempValues["Global"]["WoodPriceMultip"] * levelEffect # Fix this
		ResourceValues[woodType]["UpgradePriceMultip"] = TempValues["Global"]["UpgradePriceMultip"] * TempValues[woodType]["UpgradePriceMultip"] / levelEffect
		ResourceValues[woodType]["WcPriceMultip"] = TempValues["Global"]["WcPriceMultip"] * TempValues[woodType]["WcPriceMultip"] / levelEffect
		ResourceValues[woodType]["LevelPriceMultip"] = TempValues["Global"]["LevelPriceMultip"] * TempValues[woodType]["LevelPriceMultip"] / levelEffect
		ResourceValues[woodType]["BotPriceMultip"] = TempValues["Global"]["BotPriceMultip"] * TempValues[woodType]["BotPriceMultip"] / levelEffect
		ResourceValues[woodType]["BotEffectMultip"] = TempValues["Global"]["BotEffectMultip"] * levelEffect

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
			pass # unlock
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
			pass # unlock
		"10" :
			TempValues["Global"]["StorageMultip"] *= 10
		"11" :
			pass # idk
		"12" :
			pass # idk
		"13" :
			pass # idk
		"14" :
			pass # unlock
		"15" :
			pass # idk
		"16" :
			pass # unlock
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
			pass # unlock
		"25" :
			pass # idk
		"26" :
			pass # unlock
		"27" :
			TempValues["Magic"]["EffectMultip"] *= 10
		"28" :
			TempValues["Oak"]["BotBaseSell"] += 1000
		"29" :
			TempValues["Fish"]["BetterFishMultip"] *= 2
		"30" :
			pass # unlock

func SetResearchValue(researchNr):
	match researchNr:
		"1" :
			pass # unlock
		"2" :
			TempValues["Oak"]["BeaverMultip"] *= 2
			TempValues["Oak"]["WpsMultip"] *= 2
		"3" :
			TempValues["Global"]["StorageMultip"] *= 1.3
		"4" :
			pass # unlock
		"5" :
			TempValues["Global"]["UpgradePriceMultip"] *= 0.95
		"6" :
			TempValues["Global"]["WpsMultip"] *= 2
		"7" :
			TempValues["Maple"]["WpsMultip"] *= 3
		"8" :
			TempValues["Global"]["WcCostsMultip"] *= 0.93
		"9" :
			pass # unlock
		"10" :
			TempValues["Global"]["WcPriceMultip"] *= 0.93
		"11" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.22
		"12" :
			pass # unlock
		"13" :
			pass # idk
		"14" :
			pass # unlock
		"15" :
			TempValues["Global"]["WcStorageMultip"] *= 3
		"16" :
			pass # idk
		"17" :
			pass # unlock
		"18" :
			TempValues["Global"]["WpsPow"] += 1
		"19" :
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.65
		"20" :
			pass # idk
		"21" :
			pass # unlock
		"22" :
			TempValues["Global"]["LevelEffectMultip"] *= 1.3
		"23" :
			pass # unlock
		"24" :
			TempValues["Global"]["WpsMultip"] *= 3
		"25" :
			TempValues["Global"]["BeaverMultip"] *= 5
		"26" :
			TempValues["Global"]["AddLevelToBaseWoodClick"] += 1
		"27" :
			pass # unlock
		"28" :
			pass # idk
		"29" :
			TempValues["Gold"]["UpgradePrice"] *= 0.87
		"30" :
			pass # unlock
		"31" :
			TempValues["Research"]["Time"] *= 0.5
		"32" :
			TempValues["Magic"]["Multip"] *= 10
		"33" :
			pass # unlock
		"34" :
			pass # idk
		"35" :
			pass # idk
		"36" :
			TempValues["Global"]["LevelPriceMultip"] *= 0.9
		"37" :
			pass # unlock
		"38" :
			TempValues["Magic"]["EffectMultip"] *= 1.25
		"39" :
			pass # unlock
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
			pass # unlock
		"53" :
			pass # unlock
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
			pass # unlock
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
	
	if upgradeLevel == 0:
		return
	
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
				"4":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.006) # 99.4%
				"5":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.02, 1)
				"6":
					for i in upgradeLevel:
						TempValues["Magic"]["PriceMultip"] *= (1 - 0.0066) # 99.34%
				"7":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.021) # 99.7%
				"8":
					TempValues["Dam"]["Multip"] *= maxf(upgradeLevel * 1.001, 1)
				"9":
					TempValues["Fish"]["PriceMultip"] *= maxf(upgradeLevel * 1.025, 1)
				"10":
					TempValues[woodType]["BotSellMultip"] *= maxf(upgradeLevel * 1.08, 1)
				"11":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.03 * woodCamps, 1)
				"12":
					pass # idk
				"13":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.01 * level, 1)
				"14":
					pass # idk
				"15":
					pass # idk
				"16":
					for i in upgradeLevel:
						TempValues[woodType]["WpsCostMultip"] *= (1 - 0.03) # 97%
				"17":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.0005) # 99.95%
				"18":
					TempValues["Fish"]["BaitMultip"] *= maxf(upgradeLevel * 1.0075, 1)
		"Cedar":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 9
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 90
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 9
				"4":
					pass # think about this more with more perspective
				"5":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.002 * level, 1)
				"6":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"7":
					for i in upgradeLevel:
						TempValues[woodType]["WpsCostMultip"] *= (1 - 0.02) # 98%
				"8":
					pass # think
				"9":
					pass # think for real
				"10":
					pass # idk
				"11":
					pass # idk
				"12":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.022) # 97.8%
				"13":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.007 * level, 1) # 99.3%
				"14":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.015 * woodCamps, 1)
				"15":
					pass # idk
				"16":
					TempValues["Magic"]["Multip"] *= maxf(upgradeLevel * 1.10, 1)
				"17":
					pass # idk
				"18":
					TempValues["Dam"]["Multip"] *= maxf(upgradeLevel * 1.002, 1)
		"Mahogany":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 10
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 100
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 10
				"4":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.04 * level, 1)
				"5":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.025) # 97.5%
				"6":
					for i in upgradeLevel:
						TempValues["Research"]["Cost"] *= (1 - 0.008) # 99.2%
				"7":
					pass # idk
				"8":
					TempValues["Fish"]["LongerFishMultip"] *= maxf(upgradeLevel * 1.002, 1)
				"9":
					TempValues[woodType]["WcPriceMultip"] *= maxf(upgradeLevel * 1.025, 1) # 97.5%
				"10":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.06, 1) # 94%
				"11":
					pass # idk
				"12":
					TempValues[woodType]["BotSellMultip"] *= maxf(upgradeLevel * 1.004, 1) # 94%
				"13":
					pass # Unlock wood bait ??
				"14":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.005) # 99.5%
				"15":
					pass # Same as Nr 18
				"16":
					TempValues[woodType]["BaitMultip"] *= maxf(upgradeLevel * 1.005, 1) # 94%
				"17":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"18":
					pass # IDK
		"Ebony":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 11
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 110
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 11
				"4":
					pass # IDK
				"5":
					TempValues[woodType]["StorageMultip"] *= upgradeLevel + 1
				"6":
					pass # IDK
				"7":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.03 * level, 1)
				"8":
					TempValues["Dam"]["WoodGainMultip"] *= maxf(upgradeLevel * 1.008, 1)
				"9":
					TempValues[woodType]["WcEffectMultip"] *= maxf(upgradeLevel * 1.005, 1) # 99.5%
				"10":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.06, 1)
				"11":
					pass # Same as 8?
				"12":
					TempValues[woodType]["WoodPriceMultip"] *= maxf(upgradeLevel * 1.03, 1)
				"13":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"14":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.24, 1)
				"15":
					for i in upgradeLevel:
						TempValues[woodType]["WcPriceMultip"] *= (1 - 0.02) # 98%
				"16":
					TempValues["Fish"]["FishingWoodMultip"] *= maxf(upgradeLevel * 1.015, 1) # 98.5%
				"17":
					TempValues[woodType]["BotSellMultip"] += maxf(upgradeLevel * 1.06, 1)
				"18":
					TempValues["Magic"]["EffectMultip"] += maxf(upgradeLevel * 1.002, 1)
		"Dogwood":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 12
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 120
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 12
				"4":
					for i in upgradeLevel:
						TempValues["Research"]["Time"] *= (1 - 0.005) # 99.5%
				"5":
					TempValues[woodType]["WoodPriceMultip"] *= maxf(upgradeLevel * 1.006, 1)
				"6":
					TempValues[woodType]["BeaverMultip"] *= maxf(upgradeLevel * 1.05, 1)
				"7":
					pass # IDK
				"8":
					pass # IDK
				"9":
					pass # unlocks
				"10":
					TempValues["Gold"]["UpgradeEffect"] *= maxf(upgradeLevel * 1.002, 1)
				"11":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.002) # 99.8%
				"12":
					pass # IDK
				"13":
					pass # IDK
				"14":
					TempValues["Fish"]["MoreFishMultip"] *= maxf(upgradeLevel * 1.005, 1)
				"15":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"16":
					pass # IDK
				"17":
					pass # Same as 5
				"18":
					pass # IDK
		"Rosewood":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 13
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 130
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 13
				"4":
					for i in upgradeLevel:
						TempValues["Research"]["Cost"] *= (1 - 0.01) # 99%
				"5":
					pass # IDK
				"6":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.08, 1)
				"7":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"8":
					TempValues[woodType]["WcStorageMultip"] *= maxf(upgradeLevel * 1.04, 1)
				"9":
					pass # I think upgrades like 5 and 9 should be removed, myb only in research, to easier manage
					# like seperate global multiplyer 0.22 wpc to wps and 0.45 wps to wpc??????
				"10":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.024) # 97.6%
				"11":
					TempValues["Fish"]["FishEffectMultip"] *= maxf(upgradeLevel * 1.001, 1)
				"12":
					pass # IDK
				"13":
					TempValues["Fish"]["BaitMultip"] *= maxf(upgradeLevel * 1.01, 1)
				"14":
					TempValues["Magic"]["EffectMultip"] *= maxf(upgradeLevel * 1.012, 1)
				"15":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.001, 1)
				"16":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 1000
				"17":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.0016 * level, 1)
				"18":
					pass # IDK
		"Ghost Gum":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 14
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 140
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 14
				"4":
					for i in upgradeLevel:
						TempValues["Research"]["Cost"] *= (1 - 0.003) # 99.7%
				"5":
					TempValues[woodType]["WcStorageMultip"] *= maxf(upgradeLevel * 1.08, 1)
				"6":
					TempValues[woodType]["WpsMultip"] *= maxf(upgradeLevel * 1.007, 1)
				"7":
					TempValues[woodType]["StorageMultip"] *= maxf(upgradeLevel * 1.0019 * level, 1)
				"8":
					pass # IDK
				"9":
					for i in upgradeLevel:
						TempValues[woodType]["BotPriceMultip"] *= (1 - 0.023) # 97.7%
				"10":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.007) # 99.3%
				"11":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"12":
					TempValues["Fish"]["BetterFishMultip"] *= maxf(upgradeLevel * 1.013, 1)
				"13":
					pass # IDK
				"14":
					TempValues[woodType]["BotBaseSell"] += upgradeLevel * 5
				"15":
					for i in upgradeLevel:
						TempValues[woodType]["WcPriceMultip"] *= (1 - 0.03) # 97%
				"16":
					pass # IDK
				"17":
					TempValues["Fish"]["PriceMultip"] *= maxf(upgradeLevel * 1.01, 1)
				"18":
					for i in upgradeLevel:
						TempValues["Dam"]["PriceMultip"] *= (1 - 0.01) # 99%
		"Dragonwood":
			match upgradeId:
				"1":
					TempValues[woodType]["Beavers"] += upgradeLevel * 15
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 150
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 15
				"4":
					pass # IDK
				"5":
					pass # IDK
				"6":
					TempValues["Dam"]["GoldGainMultip"] *= maxf(upgradeLevel * 1.004, 1)
				"7":
					TempValues["Fish"]["MoreFishMultip"] *= maxf(upgradeLevel * 1.007, 1)
				"8":
					for i in upgradeLevel:
						TempValues[woodType]["WcPriceMultip"] *= (1 - 0.015) # 98.5%
				"9":
					TempValues[woodType]["WoodPriceMultip"] *= maxf(upgradeLevel * 1.001, 1) #wrong
				"10":
					TempValues["Magic"]["EffectMultip"] *= maxf(upgradeLevel * 1.007, 1)
				"11":
					pass # IDK
				"12":
					pass # IDK
				"13":
					TempValues[woodType]["LevelEffectMultip"] *= maxf(upgradeLevel * 1.06, 1)
				"14":
					pass # IDK
				"15":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"16":
					TempValues["Global"]["WpsMultip"] *= maxf(upgradeLevel * 1.006, 1)
				"17":
					for i in upgradeLevel:
						TempValues[woodType]["LevelPriceMultip"] *= (1 - 0.009) # 99.1%
				"18":
					TempValues["Magic"]["Multip"] *= maxf(upgradeLevel * 1.05, 1)

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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
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
		"BotBaseSell" : 10, # base value of how mutch a bot sells
		"BotSellMultip" : 1,
		"BaseWoodPrice" : 1,
		"WoodPriceMultip" : 1,
	},
}
