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
	ApplyMagicUpgrades()
	setUnlockedResearch()
	ApplyResearch()
	ApplyFishingUpgradesAndBonuses()
	
	CalculateRealValues()
	CalculateRealAfterValues()

func setUnlockedResearch():
	var preUnlockedCount = TempValues["Research"]["PreUnlockedResearch"]
	var currentlyUnlocked = 0
	
	if preUnlockedCount <= 0:
		return
	else:
		SaveData.Upgrades["Oak"]["3"]["Level"] = max(SaveData.Upgrades["Oak"]["3"]["Level"], 1)
		SaveData.Upgrades["Apple"]["3"]["Level"] = max(SaveData.Upgrades["Apple"]["3"]["Level"], 1)
	
	for researchId in Research.Research:
		SaveData.UnlockedResearch[researchId] = true
		currentlyUnlocked += 1
		
		if currentlyUnlocked >= preUnlockedCount:
			return

func CalculateRealValues():
	var magicMultip = log(SaveData.Magic["Count"] + 1) / log(25) * TempValues["Magic"]["EffectMultip"]
	
	var magicWpcMultip = magicMultip * 0.3 * TempValues["Magic"]["MagicWpcMultip"] + 1
	var magicWpsMultip = magicMultip * TempValues["Magic"]["MagicWpsMultip"] + 1
	var magicStorageMultip = magicMultip * TempValues["Magic"]["MagicStorageMultip"] + 1
	
	var achievementMultip = SaveData.countAchievements() / 100.0
	
	var achievementWpcMultip = achievementMultip * 0.5 * TempValues["Global"]["AchievementWpcMultip"] + 1 
	var achievementWpsMultip = achievementMultip * TempValues["Global"]["AchievementWpsMultip"] + 1
	var achievementStorageMultip = achievementMultip * TempValues["Global"]["AchievementStorageMultip"] + 1
	
	var damMultip = pow(1.15, SaveData.countCompletedDamSections())
	
	var damWpcMultip = damMultip * TempValues["Dam"]["SectionWpcMultip"]
	var damWpsMultip = damMultip * TempValues["Dam"]["SectionWpsMultip"]
	var damStorageMultip = damMultip * TempValues["Dam"]["SectionStorageMultip"]
	
	var lastWoodType
	
	for woodType in WoodTypes:
		var extraWoodcamps = 0
		var woodcamps = 0
		
		if Unlocks.Unlocks["Woodcamps"]["Unlocked"] and Unlocks.Unlocks[woodType]["Unlocked"]:
			extraWoodcamps = TempValues[woodType]["ExtraWoodcamps"] + TempValues["Global"]["ExtraWoodcamps"]
			woodcamps = SaveData.Resources[woodType]["Woodcamps"] + extraWoodcamps
		
		var extraBeavers = TempValues[woodType]["ExtraBeavers"] + TempValues["Global"]["ExtraBeavers"] + (woodcamps * TempValues["Global"]["WcToBeaverMultip"]) 
		var beavers = SaveData.Resources[woodType]["Beavers"] + extraBeavers
		
		var storageFromLowerTier = 0
		if lastWoodType and TempValues["Global"]["LowerStorageMultip"] > 1:
			storageFromLowerTier = (TempValues["Global"]["LowerStorageMultip"] - 1) * ResourceValues[lastWoodType]["Storage"]
		
		ResourceValues[woodType]["PerClick"] = beavers * TempValues[woodType]["BeaverUpgrades"] * TempValues[woodType]["BeaverMultip"] * TempValues["Global"]["BeaverMultip"] * magicWpcMultip * achievementWpcMultip * damWpcMultip + TempValues[woodType]["FlatWpc"] + TempValues["Global"]["FlatWpc"]
		ResourceValues[woodType]["PerSecondIncrease"] = woodcamps * TempValues[woodType]["WpsPerWc"] * TempValues[woodType]["WpsMultip"] * TempValues["Global"]["WpsMultip"] * TempValues[woodType]["WcEffectMultip"] * SaveData.Resources[woodType]["Production"] * magicWpsMultip * achievementWpsMultip * damWpsMultip / 100
		ResourceValues[woodType]["Storage"] = (TempValues[woodType]["BaseStorage"] + beavers * (TempValues[woodType]["BeaverStorageMultip"] + TempValues["Global"]["BeaverStorageMultip"]) * (TempValues["Global"]["BeaverBaseStorage"] + TempValues[woodType]["BeaverBaseStorage"]) + woodcamps * (TempValues[woodType]["WcBaseStorage"] + TempValues["Global"]["WcBaseStorage"]) * TempValues[woodType]["WcStorageMultip"] * TempValues["Global"]["WcStorageMultip"] * TempValues[woodType]["WcEffectMultip"]) * TempValues[woodType]["StorageMultip"] * TempValues["Global"]["StorageMultip"] * magicStorageMultip * achievementStorageMultip * damStorageMultip + storageFromLowerTier
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
	ResourceValues["Fish"]["MoreFishMultip"] = TempValues["Fish"]["MoreFishMultip"]
	ResourceValues["Fish"]["LongerFishLifetimeMultip"] = TempValues["Fish"]["LongerFishLifetimeMultip"]
	ResourceValues["Fish"]["LongerFishingTimeMultip"] = TempValues["Fish"]["LongerFishingTimeMultip"]
	ResourceValues["Fish"]["FishEffectMultip"] = TempValues["Fish"]["FishEffectMultip"]
	ResourceValues["Fish"]["FishSpeedMultip"] = TempValues["Fish"]["FishSpeedMultip"]
	ResourceValues["Fish"]["FishPriceMultip"] = TempValues["Fish"]["FishPriceMultip"]
	ResourceValues["Fish"]["FishBounceMultip"] = TempValues["Fish"]["FishBounceMultip"]
	ResourceValues["Fish"]["FishSizeMultip"] = TempValues["Fish"]["FishSizeMultip"]
	ResourceValues["Fish"]["FishingChances"] = TempValues["Fish"]["FishingChances"]
	ResourceValues["Fish"]["FishingClicks"] = TempValues["Fish"]["FishingClicks"]
	ResourceValues["Fish"]["BonusCapacity"] = TempValues["Fish"]["BonusCapacity"]
	ResourceValues["Fish"]["ChanceToUseBait"] = TempValues["Fish"]["ChanceToUseBait"]
	ResourceValues["Fish"]["BaitBuyCount"] = TempValues["Fish"]["BaitBuyCount"]
	ResourceValues["Fish"]["FishingChanceRefreshTime"] = TempValues["Fish"]["FishingChanceRefreshTime"]
	ResourceValues["Fish"]["FishingTimeout"] = TempValues["Fish"]["FishingTimeout"]
	ResourceValues["Fish"]["ChanceToRefundChance"] = TempValues["Fish"]["ChanceToRefundChance"]
	
	# Research
	ResourceValues["Research"]["TimeMultip"] = TempValues["Research"]["Time"]
	ResourceValues["Research"]["ResearchAtATime"] = TempValues["Research"]["ResearchAtATime"]
	Unlocks.Unlocks["Research"]["AutoResearch"] = TempValues["Research"]["AutoResearch"]
	
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
	ResourceValues["Dam"]["ConstructionSpeedMultip"] = TempValues["Dam"]["ConstructionSpeedMultip"]
	
	# AutoClickers
	SaveData.GeneralInfo["AutoClickers"] = TempValues["Global"]["AutoClickers"]
	Values.ResourceValues["AutoClickers"]["AutoClickerTickLength"] = TempValues["Global"]["AutoClickerTickLength"]

func CalculateRealAfterValues():
	var lastWoodType
	
	for woodType in WoodTypes:
		var woodCamps = SaveData.Resources[woodType]["Woodcamps"]
		
		if woodCamps > 0:
			ResourceValues[woodType]["PerSecondIncrease"] += ((TempValues["Global"]["WpcToWpsMultip"] * TempValues[woodType]["WpcToWpsMultip"] * ResourceValues[woodType]["PerClick"]) - ResourceValues[woodType]["PerClick"]) * SaveData.Resources[woodType]["Production"] / 100
			
		if woodType != "Oak":
			ResourceValues[woodType]["PerSecondIncrease"] += ((TempValues[woodType]["LowerWpsAddMultip"] * TempValues["Global"]["LowerWpsAddMultip"] - 1) * ResourceValues[lastWoodType]["PerSecondIncrease"]) * SaveData.Resources[woodType]["Production"] / 100
		
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
			if !SaveData.Upgrades[woodType][upgradeId].has("MagicLocked") or SaveData.Upgrades[woodType][upgradeId].has("MagicLocked") and !SaveData.Upgrades[woodType][upgradeId]["MagicLocked"]:
				SetUpgradeValue(woodType, upgradeId)
	
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

func ApplyFishingUpgradesAndBonuses():
	var shopItems = SaveData.ShopItems
	for shopItemId in shopItems:
		SetFishingShopUpgrades(shopItemId)
	
	var caughtFish = SaveData.CaughtFish
	for fishId in caughtFish:
		if SaveData.CaughtFish[fishId]["Count"] > 0:
			SetFishingBonuses(fishId)

func SetFishingShopUpgrades(shopItemId):
	if !SaveData.ShopItems[Fishing.ShopItemEnum.Autoclicker1].has("Bought"):
		SaveData.ShopItems = SaveData.OriginalShopItems.duplicate(true)
	
	if shopItemId == Fishing.ShopItemEnum.FishingChance3 or shopItemId == Fishing.ShopItemEnum.FishingClick1 or shopItemId == Fishing.ShopItemEnum.FishingClick2 or shopItemId == Fishing.ShopItemEnum.FishingTime2 or shopItemId == Fishing.ShopItemEnum.RefundChance1 or shopItemId == Fishing.ShopItemEnum.RefundChance2 or shopItemId == Fishing.ShopItemEnum.ChanceToRefundChance1 or shopItemId == Fishing.ShopItemEnum.ChanceToRefundChance2:
		if !SaveData.ShopItems[shopItemId].has("Bought"):
			SaveData.ShopItems[shopItemId]["Bought"] = false
	
	match shopItemId:
		Fishing.ShopItemEnum.Autoclicker1, Fishing.ShopItemEnum.Autoclicker2, Fishing.ShopItemEnum.Autoclicker3:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["AutoClickers"] += 1
		Fishing.ShopItemEnum.WpsBonus1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["WpsMultip"] *= 1.1
		Fishing.ShopItemEnum.WpsBonus2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["WpsMultip"] *= 1.2
		Fishing.ShopItemEnum.WpsBonus3:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["WpsMultip"] *= 1.3
		Fishing.ShopItemEnum.WpcBonus1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["BeaverMultip"] *= 1.3
		Fishing.ShopItemEnum.WpcBonus2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["BeaverMultip"] *= 1.6
		Fishing.ShopItemEnum.WpcBonus3:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Global"]["BeaverMultip"] *= 1.9
		Fishing.ShopItemEnum.WpsIncrease:
			if SaveData.ShopItems[shopItemId]["Count"] > 0:
				TempValues["Global"]["WpsMultip"] *= pow(1.01, SaveData.ShopItems[shopItemId]["Count"])
		Fishing.ShopItemEnum.WpcIncrease:
			if SaveData.ShopItems[shopItemId]["Count"] > 0:
				TempValues["Global"]["BeaverMultip"] *= pow(1.01, SaveData.ShopItems[shopItemId]["Count"])
		Fishing.ShopItemEnum.StorageIncrease:
			if SaveData.ShopItems[shopItemId]["Count"] > 0:
				TempValues["Global"]["StorageMultip"] *= pow(1.01, SaveData.ShopItems[shopItemId]["Count"])
		Fishing.ShopItemEnum.ResearchSlot:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Research"]["ResearchAtATime"] += 1
		Fishing.ShopItemEnum.FishingChance1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingChances"] += 1
		Fishing.ShopItemEnum.FishingChance2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingChances"] += 1
		Fishing.ShopItemEnum.FishingChance3:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingChances"] += 1
		Fishing.ShopItemEnum.ChanceToUseBait:
			if SaveData.ShopItems[shopItemId]["Count"] > 0:
				TempValues["Fish"]["ChanceToUseBait"] -= 0.005 * SaveData.ShopItems[shopItemId]["Count"]
		Fishing.ShopItemEnum.FishingClick1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingClicks"] += 1
		Fishing.ShopItemEnum.FishingClick2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingClicks"] += 1
		Fishing.ShopItemEnum.ChanceRefresh1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingChanceRefreshTime"] -= 30
		Fishing.ShopItemEnum.ChanceRefresh2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingChanceRefreshTime"] -= 30
		Fishing.ShopItemEnum.FishingTime1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingTimeout"] += 2.5
		Fishing.ShopItemEnum.FishingTime2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishingTimeout"] += 2.5
		Fishing.ShopItemEnum.ChanceToRefundChance1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["ChanceToRefundChance"] += 0.05
		Fishing.ShopItemEnum.ChanceToRefundChance2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["ChanceToRefundChance"] += 0.10
		Fishing.ShopItemEnum.RefundChance1:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishBounceMultip"] *= 0.9
		Fishing.ShopItemEnum.RefundChance2:
			if SaveData.ShopItems[shopItemId]["Bought"]:
				TempValues["Fish"]["FishBounceMultip"] *= 0.85
	
func SetFishingBonuses(fishId):
	var upgradeMultiplier = min(SaveData.CaughtFish[fishId]["Count"], Values.ResourceValues["Fish"]["BonusCapacity"])
	var EffectMultip = TempValues["Fish"]["FishEffectMultip"]
	var reverseEffectMultip = 1.0 / EffectMultip
	
	match fishId:
		Fishing.FishEnum.Boot:
			TempValues["Global"]["WpsMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.Seaweed:
			TempValues["Global"]["BeaverMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.ColaBottle:
			TempValues["Global"]["StorageMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.Catfish:
			TempValues["Global"]["ExtraBeavers"] += round(upgradeMultiplier * EffectMultip)
		Fishing.FishEnum.GoldPotI:
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.GoldPotII:
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.GoldPotIII:
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.05, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.GoldFish:
			TempValues["Gold"]["UpgradePriceMultip"] *= pow(1 - 0.03, upgradeMultiplier) * reverseEffectMultip
		Fishing.FishEnum.MagicPotI:
			TempValues["Magic"]["GainMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.MagicPotII:
			TempValues["Magic"]["GainMultip"] *= pow(1.02, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.MagicPotIII:
			TempValues["Magic"]["GainMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.MagicFish:
			TempValues["Magic"]["GainMultip"] *= pow(1.05, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.SpeedFish:
			TempValues["Fish"]["FishSpeedMultip"] *= pow(1 - 0.02, upgradeMultiplier) * reverseEffectMultip
		Fishing.FishEnum.StorageBox:
			TempValues["Global"]["WcBaseStorage"] += round(upgradeMultiplier * 25 * EffectMultip)
		Fishing.FishEnum.ResearchFish:
			TempValues["Research"]["Time"] *= pow(1 - 0.01, upgradeMultiplier) * reverseEffectMultip
		Fishing.FishEnum.WoodFish:
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.02, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.DamFish:
			TempValues["Dam"]["SectionWpsMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
			TempValues["Dam"]["SectionWpcMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
			TempValues["Dam"]["SectionStorageMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.LuckyFish:
			TempValues["Fish"]["FishEffectMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
			TempValues["Fish"]["FishPriceMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.CrateFish:
			TempValues["Global"]["BeaverBaseStorage"] += round(upgradeMultiplier * 30 * EffectMultip)
		Fishing.FishEnum.BotFish:
			TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.01, upgradeMultiplier) * reverseEffectMultip
		Fishing.FishEnum.IceFish:
			TempValues["Fish"]["FishBounceMultip"] *= pow(1 - 0.01, upgradeMultiplier) * reverseEffectMultip
		Fishing.FishEnum.BaitFish:
			TempValues["Fish"]["BaitBuyCount"] += round(upgradeMultiplier * EffectMultip)
		Fishing.FishEnum.ElectricEal:
			TempValues["Fish"]["LongerFishingTimeMultip"] *= pow(1.015, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.ElectricJellyfish:
			TempValues["Fish"]["LongerFishLifetimeMultip"] *= pow(1.02, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.ElectricSponge:
			TempValues["Fish"]["ChanceToUseBait"] -= 0.005 * upgradeMultiplier * EffectMultip
		Fishing.FishEnum.ConstructionShark:
			TempValues["Global"]["WcCostsMultip"] *= pow(1 - 0.01, upgradeMultiplier) * reverseEffectMultip
		Fishing.FishEnum.SalmonLumberJack:
			TempValues["Global"]["WcStorageMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
			TempValues["Global"]["WpsMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.AscentionFish:
			TempValues["Magic"]["GainMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.DescentionFish:
			TempValues["Magic"]["PerSecondMultip"] *= pow(1.00001, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.BigFish:
			TempValues["Fish"]["FishSizeMultip"] *= pow(1.01, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.Clownfish:
			TempValues["Global"]["ExtraWoodcamps"] += round(upgradeMultiplier * EffectMultip)
		Fishing.FishEnum.Stick:
			TempValues["Global"]["WpsMultip"] *= pow(1.02, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.OakCrate:
			TempValues["Oak"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Oak"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Oak"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.AppleCrate:
			TempValues["Apple"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Apple"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Apple"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.MapleCrate:
			TempValues["Maple"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Maple"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Maple"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.BirchCrate:
			TempValues["Birch"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Birch"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Birch"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.SpruceCrate:
			TempValues["Spruce"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Spruce"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Spruce"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.ChestnutCrate:
			TempValues["Chestnut"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Chestnut"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Chestnut"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.CherryCrate:
			TempValues["Cherry"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Cherry"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Cherry"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.AshCrate:
			TempValues["Ash"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Ash"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Ash"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.CedarCrate:
			TempValues["Cedar"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Cedar"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Cedar"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.MahoganyCrate:
			TempValues["Mahogany"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Mahogany"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Mahogany"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.EbonyCrate:
			TempValues["Ebony"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Ebony"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Ebony"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.DogwoodCrate:
			TempValues["Dogwood"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Dogwood"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Dogwood"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.RosewoodCrate:
			TempValues["Rosewood"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Rosewood"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Rosewood"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.GhostGumCrate:
			TempValues["Ghost Gum"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Ghost Gum"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Ghost Gum"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.DragonwoodCrate:
			TempValues["Dragonwood"]["WpsMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Dragonwood"]["BeaverMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
			TempValues["Dragonwood"]["StorageMultip"] *= pow(1.025, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.BlueWhale:
			TempValues["Global"]["WpsMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
			TempValues["Global"]["BeaverMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
			TempValues["Global"]["StorageMultip"] *= pow(1.03, upgradeMultiplier) * EffectMultip
		Fishing.FishEnum.MultiplyingFish:
			TempValues["Fish"]["MoreFishMultip"] *= pow(1.015, upgradeMultiplier) * EffectMultip

func SetMagicValue(magicNr):
	var achievementCount = SaveData.countAchievements()
	
	match magicNr:
		"1" :
			Unlocks.Unlocks["Achievements"]["Unlocked"] = true
		"1b" :
			TempValues["Global"]["WcPriceMultip"] *= 0.67
		"1bb" :
			TempValues["Global"]["StorageMultip"] *= 1.3
		"1c" :
			TempValues["Global"]["WcCostsMultip"] *= 0.85
		"2" :
			TempValues["Global"]["WpsMultip"] *= 1.375
		"2b" :
			TempValues["Oak"]["FlatWpc"] += 25
			TempValues["Apple"]["FlatWpc"] += 25
			TempValues["Maple"]["FlatWpc"] += 25
			TempValues["Birch"]["FlatWpc"] += 25
			TempValues["Spruce"]["FlatWpc"] += 25
		"3" :
			TempValues["Global"]["WcStorageMultip"] *= 2
		"4" :
			TempValues["Global"]["ExtraBeavers"] += 3
		"4b" :
			TempValues["Research"]["Time"] *= 0.575
		"5" :
			TempValues["Global"]["AchievementWpsMultip"] *= 1.475
		"5b" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.7
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.7
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.7
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.7
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.7
		"6" :
			TempValues["Global"]["AutoClickers"] += 1
		"6b" :
			TempValues["Global"]["ExtraWoodcamps"] += 2
		"7" :
			TempValues["Research"]["Time"] *= 0.5
		"8" :
			TempValues["Global"]["AchievementWpcMultip"] *= 1.6
		"8a" :
			TempValues["Global"]["StorageMultip"] *= 1.35
		"8b" :
			TempValues["Global"]["AutoClickers"] += 1
		"9" :
			TempValues["Global"]["WpcToWpsMultip"] *= 1.15
		"9b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"10" :
			Unlocks.Unlocks["Fishing"]["Unlocked"] = true
		"10a" :
			TempValues["Research"]["PreUnlockedResearch"] += 10
		"10b" :
			TempValues["Chestnut"]["UpgradePriceMultip"] *= 0.15
			TempValues["Cherry"]["UpgradePriceMultip"] *= 0.15
			TempValues["Ash"]["UpgradePriceMultip"] *= 0.15
			TempValues["Cedar"]["UpgradePriceMultip"] *= 0.15
			TempValues["Mahogany"]["UpgradePriceMultip"] *= 0.15
		"11" :
			TempValues["Magic"]["GainMultip"] *= 1.3
		"11b" :
			TempValues["Fish"]["ChanceToRefundChance"] += 0.05
		"12" :
			TempValues["Global"]["WcPriceMultip"] *= 0.5
		"12b" :
			TempValues["Oak"]["WpsMultip"] *= 3.5
			TempValues["Apple"]["WpsMultip"] *= 3.5
			TempValues["Maple"]["WpsMultip"] *= 3.5
			TempValues["Birch"]["WpsMultip"] *= 3.5
			TempValues["Spruce"]["WpsMultip"] *= 3.5
		"13" :
			TempValues["Research"]["ResearchAtATime"] += 1
		"14" :
			TempValues["Global"]["StorageMultip"] *= 1.5
		"15" :
			TempValues["Fish"]["FishPriceMultip"] *= 1.225
		"16" :
			Unlocks.Unlocks["Market"]["Bots"]["Unlocked"] = true
		"16b" :
			TempValues["Global"]["AutoClickers"] += 1
		"17" :
			TempValues["Global"]["BeaverMultip"] *= 1.15
		"18" :
			TempValues["Fish"]["FishSpeedMultip"] *= 0.8
		"19" :
			TempValues["Research"]["PreUnlockedResearch"] += 10
		"20" :
			TempValues["Global"]["WcStorageMultip"] *= 1.15
			TempValues["Global"]["WcPriceMultip"] *= 1.15
			TempValues["Global"]["WpsMultip"] *= 1.15
			TempValues["Global"]["WcCostsMultip"] *= 0.85
		"21" :
			TempValues["Research"]["Time"] *= 0.825
		"21b" :
			TempValues["Oak"]["BeaverMultip"] *= 2.5
			TempValues["Apple"]["BeaverMultip"] *= 2.5
			TempValues["Maple"]["BeaverMultip"] *= 2.5
			TempValues["Birch"]["BeaverMultip"] *= 2.5
			TempValues["Spruce"]["BeaverMultip"] *= 2.5
		"22" :
			TempValues["Global"]["LowerStorageMultip"] *= 1.035
		"23" :
			Unlocks.Unlocks["Gold"]["Unlocked"] = true
		"24" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.5
		"24b" :
			TempValues["Global"]["AutoClickers"] += 1
		"25" :
			TempValues["Fish"]["BaitBuyCount"] += 2
		"26" :
			TempValues["Global"]["WcCostsMultip"] *= 0.85
		"26b" :
			TempValues["Oak"]["BeaverMultip"] *= 2
			TempValues["Apple"]["BeaverMultip"] *= 2
			TempValues["Maple"]["BeaverMultip"] *= 2
			TempValues["Birch"]["BeaverMultip"] *= 2
			TempValues["Spruce"]["BeaverMultip"] *= 2
			TempValues["Chestnut"]["BeaverMultip"] *= 2
			TempValues["Cherry"]["BeaverMultip"] *= 2
			TempValues["Ash"]["BeaverMultip"] *= 2
			TempValues["Cedar"]["BeaverMultip"] *= 2
			TempValues["Mahogany"]["BeaverMultip"] *= 2
		"27" :
			TempValues["Global"]["WcStorageMultip"] *= 1.35
		"27b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"27c" :
			TempValues["Chestnut"]["WpsMultip"] *= 1.375
			TempValues["Cherry"]["WpsMultip"] *= 1.375
			TempValues["Ash"]["WpsMultip"] *= 1.375
			TempValues["Cedar"]["WpsMultip"] *= 1.375
			TempValues["Mahogany"]["WpsMultip"] *= 1.375
		"28" :
			TempValues["Fish"]["BonusCapacity"] += 4
		"29" :
			TempValues["Fish"]["LongerFishingTimeMultip"] *= 1.05
		"29b" :
			TempValues["Birch"]["BeaverPriceMultip"] *= 0.65
		"30" :
			TempValues["Oak"]["WpsMultip"] *= 2
		"31" :
			TempValues["Fish"]["MoreFishMultip"] *= 1.10
		"32" :
			TempValues["Global"]["WcPriceMultip"] *= pow(1 - 0.001, achievementCount)
		"33" :
			TempValues["Research"]["ResearchAtATime"] += 1
		"34" :
			TempValues["Magic"]["EffectMultip"] *= 2
		"35" :
			TempValues["Global"]["LowerWpsAddMultip"] *= 1.05
		"36" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.5
		"37" :
			TempValues["Fish"]["BaitBuyCount"] += 2
		"38" :
			TempValues["Global"]["StorageMultip"] *= 0.002 * achievementCount + 1
		"38a" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.5
		"38b" :
			TempValues["Global"]["AutoClickers"] += 1
		"39" :
			TempValues["Fish"]["FishEffectMultip"] *= 1.1
		"40" :
			Unlocks.Unlocks["Dams"]["Unlocked"] = true
		"41" :
			TempValues["Global"]["BotPriceMultip"] *= 0.6
		"42" :
			TempValues["Global"]["ExtraWoodcamps"] += 10
		"43" :
			TempValues["Research"]["AutoResearch"] = true
		"44" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 2
		"45" :
			TempValues["Global"]["ExtraBeavers"] += 15
		"45b" :
			TempValues["Global"]["AutoClickers"] += 1
		"46" :
			TempValues["Fish"]["LongerFishLifetimeMultip"] *= 1.15
		"46b" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.8
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.8
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.8
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.8
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.8
			TempValues["Chestnut"]["UpgradePriceMultip"] *= 0.8
			TempValues["Cherry"]["UpgradePriceMultip"] *= 0.8
			TempValues["Ash"]["UpgradePriceMultip"] *= 0.8
			TempValues["Cedar"]["UpgradePriceMultip"] *= 0.8
			TempValues["Mahogany"]["UpgradePriceMultip"] *= 0.8
		"46c" :
			TempValues["Oak"]["StorageMultip"] *= 1.25
			TempValues["Apple"]["StorageMultip"] *= 1.25
			TempValues["Maple"]["StorageMultip"] *= 1.25
			TempValues["Birch"]["StorageMultip"] *= 1.25
			TempValues["Spruce"]["StorageMultip"] *= 1.25
			TempValues["Chestnut"]["StorageMultip"] *= 1.25
			TempValues["Cherry"]["StorageMultip"] *= 1.25
			TempValues["Ash"]["StorageMultip"] *= 1.25
			TempValues["Cedar"]["StorageMultip"] *= 1.25
			TempValues["Mahogany"]["StorageMultip"] *= 1.25
		"47" :
			TempValues["Research"]["PreUnlockedResearch"] += 10
		"47b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 2.25
		"48" :
			TempValues["Gold"]["UpgradePriceMultip"] *= 0.45
		"48b" :
			TempValues["Ebony"]["StorageMultip"] *= 3
			TempValues["Mahogany"]["StorageMultip"] *= 3
		"48c" :
			TempValues["Global"]["BotPriceMultip"] *= 0.8
		"48d" :
			TempValues["Global"]["AchievementWpcMultip"] *= 1.25
			TempValues["Global"]["AchievementWpsMultip"] *= 1.25
			TempValues["Global"]["AchievementStorageMultip"] *= 1.25
		"48e" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.5
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.5
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.5
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.5
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.5
		"48f" :
			TempValues["Global"]["AutoClickers"] += 1
		"48g" :
			TempValues["Research"]["Time"] *= 0.5
		"49" :
			Unlocks.Unlocks["Upgrades"]["KeepClassicUpgrades"] = true
		"49b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"49c" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.55
		"49d" : 
			TempValues["Spruce"]["WpsMultip"] *= 1.275
			TempValues["Ash"]["WpsMultip"] *= 1.275
		"50" :
			TempValues["Dam"]["SectionWpsMultip"] *= 1.25
			TempValues["Dam"]["SectionWpcMultip"] *= 1.25
			TempValues["Dam"]["SectionStorageMultip"] *= 1.25
		"50a" :
			TempValues["Global"]["AchievementWpcMultip"] *= 1.225
			TempValues["Global"]["AchievementWpsMultip"] *= 1.225
			TempValues["Global"]["AchievementStorageMultip"] *= 1.225
		"51" :
			TempValues["Fish"]["BonusCapacity"] += 5
		"51a" :
			TempValues["Mahogany"]["StorageMultip"] *= 2
			TempValues["Chestnut"]["StorageMultip"] *= 2
		"51b" :
			TempValues["Global"]["AutoClickers"] += 1
		"51c" :
			TempValues["Birch"]["StorageMultip"] *= 1.3
		"51d" :
			TempValues["Global"]["WcPriceMultip"] *= 0.85
		"52" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 2.5
		"52a" :
			TempValues["Research"]["PreUnlockedResearch"] += 10
		"52b" :
			TempValues["Fish"]["FishPriceMultip"] *= 2
		"52c" :
			TempValues["Chestnut"]["StorageMultip"] *= 1.35
			TempValues["Cherry"]["StorageMultip"] *= 1.35
			TempValues["Ash"]["StorageMultip"] *= 1.35
			TempValues["Cedar"]["StorageMultip"] *= 1.35
			TempValues["Mahogany"]["StorageMultip"] *= 1.35
			TempValues["Ebony"]["StorageMultip"] *= 1.35
			TempValues["Dogwood"]["StorageMultip"] *= 1.35
			TempValues["Rosewood"]["StorageMultip"] *= 1.35
			TempValues["Ghost Gum"]["StorageMultip"] *= 1.35
			TempValues["Dragonwood"]["StorageMultip"] *= 1.35
		"53" :
			TempValues["Global"]["BotSellMoreMultip"] *= 1.2
		"53b" :
			TempValues["Global"]["AchievementStorageMultip"] *= 1.25
		"54" :
			TempValues["Fish"]["FishingChances"] += 1
		"54a" :
			TempValues["Global"]["AutoClickers"] += 1
		"54b" :
			TempValues["Chestnut"]["UpgradePriceMultip"] *= 0.34
			TempValues["Cherry"]["UpgradePriceMultip"] *= 0.34
			TempValues["Ash"]["UpgradePriceMultip"] *= 0.34
			TempValues["Cedar"]["UpgradePriceMultip"] *= 0.34
			TempValues["Mahogany"]["UpgradePriceMultip"] *= 0.34
		"54c" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 2
		"55" :
			Unlocks.Unlocks["Upgrades"]["KeepRareUpgrades"] = true
		"55b" :
			TempValues["Research"]["PreUnlockedResearch"] += 10
		"55c" :
			TempValues["Oak"]["WoodPriceMultip"] *= 2
			TempValues["Apple"]["WoodPriceMultip"] *= 2
			TempValues["Maple"]["WoodPriceMultip"] *= 2
			TempValues["Birch"]["WoodPriceMultip"] *= 2
			TempValues["Spruce"]["WoodPriceMultip"] *= 2
			TempValues["Chestnut"]["WoodPriceMultip"] *= 2
			TempValues["Cherry"]["WoodPriceMultip"] *= 2
			TempValues["Ash"]["WoodPriceMultip"] *= 2
			TempValues["Cedar"]["WoodPriceMultip"] *= 2
			TempValues["Mahogany"]["WoodPriceMultip"] *= 2
		"55d" :
			TempValues["Magic"]["EffectMultip"] *= 1.15
		"56" :
			TempValues["Dam"]["SectionWpsMultip"] *= 1.40
			TempValues["Dam"]["SectionWpcMultip"] *= 1.40
			TempValues["Dam"]["SectionStorageMultip"] *= 1.40
		"56a" :
			TempValues["Global"]["AutoClickers"] += 1
		"56b" :
			TempValues["Global"]["BotSellMoreMultip"] *= 2.5
		"56c" :
			TempValues["Ebony"]["UpgradePriceMultip"] *= 0.25
			TempValues["Dogwood"]["UpgradePriceMultip"] *= 0.25
			TempValues["Rosewood"]["UpgradePriceMultip"] *= 0.25
			TempValues["Ghost Gum"]["UpgradePriceMultip"] *= 0.25
			TempValues["Dragonwood"]["UpgradePriceMultip"] *= 0.25
		"56d" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.4
		"56e" :
			TempValues["Research"]["Time"] *= 0.5
		"57" :
			Unlocks.Unlocks["Upgrades"]["KeepGoldUpgrades"] = true
		"57a" :
			TempValues["Oak"]["WpsMultip"] *= 2
			TempValues["Apple"]["WpsMultip"] *= 2
			TempValues["Maple"]["WpsMultip"] *= 2
			TempValues["Birch"]["WpsMultip"] *= 2
			TempValues["Spruce"]["WpsMultip"] *= 2
			TempValues["Chestnut"]["WpsMultip"] *= 2
			TempValues["Cherry"]["WpsMultip"] *= 2
			TempValues["Ash"]["WpsMultip"] *= 2
			TempValues["Cedar"]["WpsMultip"] *= 2
			TempValues["Mahogany"]["WpsMultip"] *= 2
		"57b" :
			TempValues["Global"]["BotPriceMultip"] *= 0.25
		"58" :
			TempValues["Magic"]["EffectMultip"] *= 2
		"59" :
			TempValues["Global"]["UpgradePriceMultip"] *= 0.5
		"59a" :
			TempValues["Magic"]["MagicStorageMultip"] *= 1.175
		"59b" :
			TempValues["Global"]["AutoClickers"] += 1
		"59bb" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.35
		"59c" :
			TempValues["Global"]["BeaverMultip"] *= 10
		"59d" :
			TempValues["Global"]["WpsMultip"] *= 5
		"60" :
			TempValues["Global"]["BeaverPriceMultip"] *= 0.3
		"60a" :
			TempValues["Global"]["WcPriceMultip"] *= 0.45
		"60b" :
			TempValues["Global"]["AutoClickers"] += 1
		"60bb" :
			TempValues["Research"]["Time"] *= 0.5
		"60c" :
			TempValues["Global"]["StorageMultip"] *= 2
		"61" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 3
		"61b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 5

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
		"14b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"15" :
			TempValues["Global"]["WcBaseStorage"] += 150
		"15b" :
			TempValues["Fish"]["LongerFishLifetimeMultip"] *= 1.075
		"16" :
			TempValues["Oak"]["ExtraWoodcamps"] += 5
		"17" :
			TempValues["Apple"]["StorageMultip"] *= 1.15
		"18" :
			TempValues["Global"]["BeaverBaseStorage"] += 100
		"19" :
			Unlocks.Unlocks["Birch"]["Unlocked"] = true
		"19b" :
			for woodType in WoodTypes:
				TempValues[woodType]["ExtraBeavers"] += max(0, roundi(SaveData.Resources[woodType]["Woodcamps"] / 9 - 0.5))
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
		"24b" :
			TempValues["Maple"]["StorageMultip"] *= 1.135
		"25" :
			TempValues["Global"]["WpsMultip"] *= 1.2
		"26" :
			for woodType in WoodTypes:
				TempValues[woodType]["ExtraWoodcamps"] += max(0, roundi(SaveData.Resources[woodType]["Beavers"] / 7 - 0.5))
		"27" :
			TempValues["Maple"]["WcStorageMultip"] *= 1.75
		"27b" :
			TempValues["Fish"]["FishSpeedMultip"] *= 0.9
		"28" :
			TempValues["Global"]["BeaverMultip"] *= 1.125
		"29" :
			Unlocks.Unlocks["Spruce"]["Unlocked"] = true
		"30" :
			TempValues["Global"]["UpgradePriceMultip"] *= 0.9
		"31" :
			TempValues["Global"]["WpcToWpsMultip"] *= 1.05
		"31b" :
			TempValues["Magic"]["MagicStorageMultip"] *= 1.05
		"32" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.33
		"33" :
			TempValues["Maple"]["StorageMultip"] *= 1.175
		"34" :
			TempValues["Global"]["AchievementWpsMultip"] *= 1.45
		"35" :
			TempValues["Gold"]["UpgradePriceMultip"] *= 0.87
		"35b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"36" :
			TempValues["Oak"]["WcPriceMultip"] *= 0.67
			TempValues["Apple"]["WcPriceMultip"] *= 0.67
			TempValues["Maple"]["WcPriceMultip"] *= 0.67
			TempValues["Birch"]["WcPriceMultip"] *= 0.67
			TempValues["Spruce"]["WcPriceMultip"] *= 0.67
		"37" :
			TempValues["Research"]["Time"] *= 0.5
		"38" :
			TempValues["Global"]["BeaverStorageMultip"] *= 2
		"39" :
			Unlocks.Unlocks["Chestnut"]["Unlocked"] = true
		"40" :
			TempValues["Magic"]["MagicWpsMultip"] *= 1.1
		"41" :
			TempValues["Oak"]["WpsMultip"] *= 1.12
			TempValues["Apple"]["WpsMultip"] *= 1.12
		"42" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.67
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.67
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.67
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.67
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.67
		"43" :
			TempValues["Global"]["WcCostsMultip"] *= 0.94
		"44" :
			TempValues["Oak"]["BeaverPriceMultip"] *= 0.725
			TempValues["Apple"]["BeaverPriceMultip"] *= 0.725
			TempValues["Maple"]["BeaverPriceMultip"] *= 0.725
			TempValues["Birch"]["BeaverPriceMultip"] *= 0.725
			TempValues["Spruce"]["BeaverPriceMultip"] *= 0.725
		"44b" :
			TempValues["Maple"]["WcPriceMultip"] *= 0.3
		"45" :
			TempValues["Oak"]["WoodPriceMultip"] *= 1.33
		"46" :
			TempValues["Global"]["BotPriceMultip"] *= 0.85
		"47" :
			TempValues["Global"]["WpcToWpsMultip"] *= 1.075
		"48" :
			TempValues["Magic"]["GainMultip"] *= 1.1
		"49" :
			Unlocks.Unlocks["Cherry"]["Unlocked"] = true
		"50" :
			TempValues["Oak"]["FlatWpc"] += 199
			TempValues["Apple"]["FlatWpc"] += 199
			TempValues["Maple"]["FlatWpc"] += 199
			TempValues["Birch"]["FlatWpc"] += 199
			TempValues["Spruce"]["FlatWpc"] += 199
			TempValues["Chestnut"]["FlatWpc"] += 199
		"51" :
			TempValues["Maple"]["WpsMultip"] *= 1.22
			TempValues["Spruce"]["WpsMultip"] *= 1.22
		"51b" :
			TempValues["Fish"]["FishSizeMultip"] *= 1.075
		"52" :
			TempValues["Oak"]["ExtraWoodcamps"] += 10
			TempValues["Apple"]["ExtraWoodcamps"] += 10
			TempValues["Maple"]["ExtraWoodcamps"] += 10
			TempValues["Birch"]["ExtraWoodcamps"] += 10
			TempValues["Spruce"]["ExtraWoodcamps"] += 10
		"53" :
			TempValues["Global"]["AchievementWpsMultip"] *= 1.75
		"54" :
			TempValues["Chestnut"]["BeaverPriceMultip"] *= 0.45
		"55" :
			TempValues["Global"]["WcPriceMultip"] *= 0.65
		"56" :
			TempValues["Research"]["Time"] *= 0.85
		"57" :
			TempValues["Global"]["BotSellMoreMultip"] *= 1.25
		"57b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"58" :
			TempValues["Chestnut"]["WoodPriceMultip"] *= 1.15
		"59" :
			Unlocks.Unlocks["Ash"]["Unlocked"] = true
		"60" :
			TempValues["Magic"]["EffectMultip"] *= 1.135
		"61" :
			TempValues["Birch"]["WpsMultip"] *= 1.099
			TempValues["Spruce"]["WpsMultip"] *= 1.099
			TempValues["Birch"]["StorageMultip"] *= 1.099
			TempValues["Spruce"]["StorageMultip"] *= 1.099
		"62" :
			TempValues["Chestnut"]["WcPriceMultip"] *= 0.55
		"63" :
			TempValues["Global"]["BotPriceMultip"] *= 0.5
		"64" :
			TempValues["Global"]["BeaverBaseStorage"] += 250
		"65" :
			TempValues["Cherry"]["WoodPriceMultip"] *= 1.45
		"66" :
			TempValues["Global"]["WcCostsMultip"] *= 1.1
		"66b":
			TempValues["Fish"]["FishBounceMultip"] *= 0.9
		"67" :
			TempValues["Cherry"]["WpsMultip"] *= 1.45
		"68" :
			TempValues["Global"]["StorageMultip"] *= 1.075
		"68b" :
			TempValues["Oak"]["StorageMultip"] *= 10
		"68c" :
			TempValues["Apple"]["StorageMultip"] *= 8
		"68d" :
			TempValues["Maple"]["StorageMultip"] *= 6
		"68e" :
			TempValues["Birch"]["StorageMultip"] *= 25
		"68f" :
			TempValues["Spruce"]["StorageMultip"] *= 15
		"68g" :
			TempValues["Chestnut"]["StorageMultip"] *= 22
		"68h" :
			TempValues["Cherry"]["StorageMultip"] *= 28
		"68i" :
			TempValues["Ash"]["StorageMultip"] *= 16
		"69" :
			Unlocks.Unlocks["Cedar"]["Unlocked"] = true
		"70" :
			TempValues["Ash"]["BeaverMultip"] *= 1.13
			TempValues["Ash"]["BeaverStorageMultip"] *= 1.13
		"71" :
			TempValues["Global"]["WcStorageMultip"] *= 1.2
		"72" :
			TempValues["Magic"]["GainMultip"] *= 1.15
		"73" :
			TempValues["Apple"]["WpsMultip"] *= 1.36
			TempValues["Maple"]["WpsMultip"] *= 1.36
			TempValues["Birch"]["WpsMultip"] *= 1.36
		"73b" :
			TempValues["Fish"]["FishingChanceRefreshTime"] -= 60
		"74" :
			TempValues["Global"]["AchievementStorageMultip"] *= 1.2
		"74b" :
			TempValues["Maple"]["BeaverPriceMultip"] *= 0.05
			TempValues["Birch"]["BeaverPriceMultip"] *= 0.05
		"75" :
			TempValues["Oak"]["WpsMultip"] *= 1.15
			TempValues["Apple"]["WpsMultip"] *= 1.15
			TempValues["Maple"]["WpsMultip"] *= 1.15
			TempValues["Birch"]["WpsMultip"] *= 1.15
			TempValues["Spruce"]["WpsMultip"] *= 1.15
			TempValues["Chestnut"]["WpsMultip"] *= 1.15
			TempValues["Cherry"]["WpsMultip"] *= 1.15
			TempValues["Ash"]["WpsMultip"] *= 1.15
			TempValues["Cedar"]["WpsMultip"] *= 1.15
			TempValues["Mahogany"]["WpsMultip"] *= 1.15
		"76" :
			TempValues["Global"]["BeaverStorageMultip"] *= 1.275
		"77" :
			TempValues["Magic"]["EffectMultip"] *= 1.1
		"78" :
			TempValues["Oak"]["BeaverMultip"] *= 3
			TempValues["Apple"]["BeaverMultip"] *= 3
			TempValues["Maple"]["BeaverMultip"] *= 3
			TempValues["Birch"]["BeaverMultip"] *= 3
			TempValues["Spruce"]["BeaverMultip"] *= 3
		"79" :
			Unlocks.Unlocks["Mahogany"]["Unlocked"] = true
		"79b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"80" :
			var woodTypeMultip = max(unlockedWoodTypeCount() * 1.05, 1)
			TempValues["Chestnut"]["WpsMultip"] *= woodTypeMultip
			TempValues["Cherry"]["WpsMultip"] *= woodTypeMultip
			TempValues["Ash"]["WpsMultip"] *= woodTypeMultip
			TempValues["Cedar"]["WpsMultip"] *= woodTypeMultip
			TempValues["Mahogany"]["WpsMultip"] *= woodTypeMultip
		"81" :
			TempValues["Global"]["AchievementWpcMultip"] *= 1.35
		"81b" :
			TempValues["Fish"]["LongerFishingTimeMultip"] *= 1.075
		"82" :
			TempValues["Global"]["WcBaseStorage"] += 200
		"83" :
			TempValues["Spruce"]["WcPriceMultip"] *= 0.34
		"83b" :
			TempValues["Apple"]["WpsMultip"] *= 2
		"84" :
			TempValues["Research"]["Time"] *= 0.67
		"85" :
			TempValues["Cedar"]["WpsMultip"] *= 1.195
		"86" :
			TempValues["Chestnut"]["UpgradePriceMultip"] *= 0.56
			TempValues["Cherry"]["UpgradePriceMultip"] *= 0.56
			TempValues["Ash"]["UpgradePriceMultip"] *= 0.56
			TempValues["Cedar"]["UpgradePriceMultip"] *= 0.56
			TempValues["Mahogany"]["UpgradePriceMultip"] *= 0.56
		"87" :
			TempValues["Cedar"]["WcCostsMultip"] *= 0.7
		"88" :
			TempValues["Oak"]["ExtraBeavers"] += 15
			TempValues["Apple"]["ExtraBeavers"] += 15
			TempValues["Maple"]["ExtraBeavers"] += 15
			TempValues["Birch"]["ExtraBeavers"] += 15
			TempValues["Spruce"]["ExtraBeavers"] += 15
			TempValues["Chestnut"]["ExtraBeavers"] += 15
			TempValues["Cherry"]["ExtraBeavers"] += 15
			TempValues["Ash"]["ExtraBeavers"] += 15
			TempValues["Cedar"]["ExtraBeavers"] += 15
			TempValues["Mahogany"]["ExtraBeavers"] += 15
		"89" :
			Unlocks.Unlocks["Ebony"]["Unlocked"] = true
		"90" :
			TempValues["Chestnut"]["StorageMultip"] *= 1.235
			TempValues["Cherry"]["StorageMultip"] *= 1.235
			TempValues["Ash"]["StorageMultip"] *= 1.235
			TempValues["Cedar"]["StorageMultip"] *= 1.235
			TempValues["Mahogany"]["StorageMultip"] *= 1.235
		"91" :
			TempValues["Global"]["BeaverMultip"] *= 1.33
		"92" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.8
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.8
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.8
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.8
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.8
			TempValues["Chestnut"]["UpgradePriceMultip"] *= 0.8
			TempValues["Cherry"]["UpgradePriceMultip"] *= 0.8
			TempValues["Ash"]["UpgradePriceMultip"] *= 0.8
			TempValues["Cedar"]["UpgradePriceMultip"] *= 0.8
			TempValues["Mahogany"]["UpgradePriceMultip"] *= 0.8
		"93" :
			var woodTypeMultip = pow(1.03, unlockedWoodTypeCount())
			TempValues["Global"]["BeaverMultip"] *= woodTypeMultip
			TempValues["Global"]["StorageMultip"] *= woodTypeMultip
		"93b" :
			TempValues["Fish"]["FishingChances"] += 1
		"94" :
			TempValues["Mahogany"]["WoodPriceMultip"] *= 1.11
		"94b" :
			TempValues["Apple"]["BeaverPriceMultip"] *= 2
			TempValues["Maple"]["BeaverPriceMultip"] *= 2
			TempValues["Birch"]["BeaverPriceMultip"] *= 2
			TempValues["Spruce"]["BeaverPriceMultip"] *= 2
		"95" :
			TempValues["Magic"]["GainMultip"] *= 1.075
		"95b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 2
		"96" :
			TempValues["Global"]["AchievementWpsMultip"] *= 1.1
		"97" :
			TempValues["Ebony"]["StorageMultip"] *= 1.15
		"97b" :
			TempValues["Cherry"]["BeaverPriceMultip"] *= 0.35
		"97c" :
			TempValues["Birch"]["StorageMultip"] *= 3
		"97d" :
			TempValues["Spruce"]["StorageMultip"] *= 2
		"98" :
			TempValues["Research"]["Time"] *= 0.85
		"98b" :
			TempValues["Apple"]["WpsMultip"] *= 3
			TempValues["Maple"]["WpsMultip"] *= 3
			TempValues["Birch"]["WpsMultip"] *= 3
		"99" :
			Unlocks.Unlocks["Dogwood"]["Unlocked"] = true
		"99b" :
			TempValues["Fish"]["FishingChanceRefreshTime"] -= 60
		"100" :
			TempValues["Global"]["ExtraBeavers"] += round(max(0, achievementCount / 20 - 0.5))
		"101" :
			TempValues["Mahogany"]["WpsMultip"] *= 1.22
		"102" :
			TempValues["Chestnut"]["BeaverMultip"] *= 1.25
			TempValues["Cherry"]["BeaverMultip"] *= 1.25
			TempValues["Ash"]["BeaverMultip"] *= 1.25
			TempValues["Cedar"]["BeaverMultip"] *= 1.25
			TempValues["Mahogany"]["BeaverMultip"] *= 1.25
			TempValues["Ebony"]["BeaverMultip"] *= 1.25
			TempValues["Dogwood"]["BeaverMultip"] *= 1.25
			TempValues["Rosewood"]["BeaverMultip"] *= 1.25
			TempValues["Ghost Gum"]["BeaverMultip"] *= 1.25
			TempValues["Dragonwood"]["BeaverMultip"] *= 1.25
		"103" :
			TempValues["Oak"]["WpsMultip"] *= 1.175
			TempValues["Apple"]["WpsMultip"] *= 1.175
			TempValues["Maple"]["WpsMultip"] *= 1.175
			TempValues["Birch"]["WpsMultip"] *= 1.175
			TempValues["Spruce"]["WpsMultip"] *= 1.175
			TempValues["Chestnut"]["WpsMultip"] *= 1.175
			TempValues["Cherry"]["WpsMultip"] *= 1.175
			TempValues["Ash"]["WpsMultip"] *= 1.175
			TempValues["Cedar"]["WpsMultip"] *= 1.175
			TempValues["Mahogany"]["WpsMultip"] *= 1.175
		"103b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"104" :
			TempValues["Magic"]["EffectMultip"] *= 1.2
		"105" :
			TempValues["Global"]["StorageMultip"] *= 1.045
		"105b" :
			TempValues["Fish"]["FishEffectMultip"] *= 1.2
		"106" :
			TempValues["Ebony"]["ExtraWoodcamps"] += 15
		"106b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.2
		"107" :
			TempValues["Ebony"]["WcPriceMultip"] *= 0.55
			TempValues["Dogwood"]["WcPriceMultip"] *= 0.55
			TempValues["Rosewood"]["WcPriceMultip"] *= 0.55
			TempValues["Ghost Gum"]["WcPriceMultip"] *= 0.55
			TempValues["Dragonwood"]["WcPriceMultip"] *= 0.55
		"108" :
			TempValues["Research"]["Time"] *= 0.8
		"109" :
			Unlocks.Unlocks["Rosewood"]["Unlocked"] = true
		"110" :
			TempValues["Global"]["WpsMultip"] *= 1.275
		"111" :
			TempValues["Ebony"]["BeaverPriceMultip"] *= 0.75
			TempValues["Dogwood"]["BeaverPriceMultip"] *= 0.75
			TempValues["Rosewood"]["BeaverPriceMultip"] *= 0.75
			TempValues["Ghost Gum"]["BeaverPriceMultip"] *= 0.75
			TempValues["Dragonwood"]["BeaverPriceMultip"] *= 0.75
		"112" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.33
		"113" :
			TempValues["Ebony"]["ExtraBeavers"] += 25
		"114" :
			TempValues["Global"]["WpsMultip"] *= 1.115
			TempValues["Global"]["WcStorageMultip"] *= 1.115
		"114b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.25
		"115" :
			TempValues["Global"]["WpsMultip"] *= 1.08
		"116" :
			TempValues["Chestnut"]["WpcToWpsMultip"] *= 1.06
			TempValues["Cherry"]["WpcToWpsMultip"] *= 1.06
			TempValues["Ash"]["WpcToWpsMultip"] *= 1.06
			TempValues["Cedar"]["WpcToWpsMultip"] *= 1.06
			TempValues["Mahogany"]["WpcToWpsMultip"] *= 1.06
		"116b" :
			TempValues["Mahogany"]["StorageMultip"] *= 3
			TempValues["Ebony"]["StorageMultip"] *= 3
			TempValues["Dogwood"]["StorageMultip"] *= 3
			TempValues["Rosewood"]["StorageMultip"] *= 3
		"117" :
			TempValues["Research"]["Time"] *= 0.75
		"117b" :
			TempValues["Fish"]["FishPriceMultip"] *= 1.33
		"118" :
			TempValues["Dogwood"]["ExtraWoodcamps"] += 9
			TempValues["Dogwood"]["ExtraBeavers"] += 9
		"119" :
			Unlocks.Unlocks["Ghost Gum"]["Unlocked"] = true
		"120" :
			TempValues["Global"]["ExtraWoodcamps"] += floor(max(0, achievementCount / 25 - 0.5))
		"121" :
			TempValues["Rosewood"]["StorageMultip"] *= 1.135
		"122" :
			TempValues["Dogwood"]["WcCostsMultip"] *= 0.75
		"123" :
			TempValues["Oak"]["UpgradePriceMultip"] *= 0.61
			TempValues["Apple"]["UpgradePriceMultip"] *= 0.61
			TempValues["Maple"]["UpgradePriceMultip"] *= 0.61
			TempValues["Birch"]["UpgradePriceMultip"] *= 0.61
			TempValues["Spruce"]["UpgradePriceMultip"] *= 0.61
		"124" :
			TempValues["Global"]["WpcToWpsMultip"] *= 1.025
		"124b" :
			TempValues["Global"]["AutoClickerTickLength"] -= 0.1
		"125" :
			TempValues["Global"]["AchievementWpcMultip"] *= 1.15
			TempValues["Global"]["AchievementWpsMultip"] *= 1.15
			TempValues["Global"]["AchievementStorageMultip"] *= 1.15
		"126" :
			TempValues["Magic"]["GainMultip"] *= 1.175
		"126a" :
			TempValues["Cherry"]["WpsMultip"] *= 2
			TempValues["Cedar"]["WpsMultip"] *= 2
		"127" :
			TempValues["Rosewood"]["WpsMultip"] *= 1.2
			TempValues["Rosewood"]["WcStorageMultip"] *= 1.2
		"127b" :
			TempValues["Oak"]["StorageMultip"] *= 2.2
		"127bb" :
			TempValues["Maple"]["WpsMultip"] *= 26
		"127c" :
			TempValues["Apple"]["StorageMultip"] *= 1.75
		"127cc" :
			TempValues["Ash"]["WpsMultip"] *= 1.85
		"127d" :
			TempValues["Maple"]["StorageMultip"] *= 2
		"127dd" :
			TempValues["Oak"]["WpsMultip"] *= 3
		"127e" :
			TempValues["Birch"]["StorageMultip"] *= 13
		"127ee" :
			TempValues["Chestnut"]["WpsMultip"] *= 3.6
		"127f" :
			TempValues["Spruce"]["StorageMultip"] *= 5
		"127ff" :
			TempValues["Apple"]["WpsMultip"] *= 7.5
		"127g" :
			TempValues["Chestnut"]["StorageMultip"] *= 4.5
		"127gg" :
			TempValues["Cedar"]["WpsMultip"] *= 4.7
		"127h" :
			TempValues["Cherry"]["StorageMultip"] *= 1.75
		"127hh" :
			TempValues["Birch"]["WpsMultip"] *= 7.5
		"127i" :
			TempValues["Ash"]["StorageMultip"] *= 1.3
		"127ii" :
			TempValues["Cherry"]["WpsMultip"] *= 14
		"127j" :
			TempValues["Cedar"]["StorageMultip"] *= 1.05
		"127jj" :
			TempValues["Spruce"]["WpsMultip"] *= 88
		"127k" :
			TempValues["Mahogany"]["StorageMultip"] *= 1.4
		"127l" :
			TempValues["Ebony"]["StorageMultip"] *= 10
		"127m" :
			TempValues["Dogwood"]["StorageMultip"] *= 8
		"127n" :
			TempValues["Rosewood"]["StorageMultip"] *= 8
		"127o" :
			TempValues["Ghost Gum"]["StorageMultip"] *= 8
		"128" :
			TempValues["Global"]["WpsMultip"] *= 1.45
		"128b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 2.3
		"128c" :
			TempValues["Global"]["StorageMultip"] *= 1.25
		"128d" :
			TempValues["Oak"]["WoodPriceMultip"] *= 5
			TempValues["Apple"]["WoodPriceMultip"] *= 5
			TempValues["Maple"]["WoodPriceMultip"] *= 5
			TempValues["Birch"]["WoodPriceMultip"] *= 5
			TempValues["Spruce"]["WoodPriceMultip"] *= 5
		"129" :
			Unlocks.Unlocks["Dragonwood"]["Unlocked"] = true
		"129b" :
			TempValues["Fish"]["FishingClicks"] += 1
		"130" :
			TempValues["Ghost Gum"]["BeaverPriceMultip"] *= 0.7
			TempValues["Ghost Gum"]["WcPriceMultip"] *= 0.7
		"131" :
			TempValues["Gold"]["UpgradePriceMultip"] *= 0.7
		"132" :
			TempValues["Magic"]["GainMultip"] *= 1.3
		"133" :
			TempValues["Ebony"]["WpsMultip"] *= 1.55
			TempValues["Dogwood"]["WpsMultip"] *= 1.55
			TempValues["Rosewood"]["WpsMultip"] *= 1.55
			TempValues["Ghost Gum"]["WpsMultip"] *= 1.55
			TempValues["Dragonwood"]["WpsMultip"] *= 1.55
		"134" :
			TempValues["Global"]["WoodPriceMultip"] *= 1.5
		"135" :
			TempValues["Ebony"]["UpgradePriceMultip"] *= 0.2
			TempValues["Dogwood"]["UpgradePriceMultip"] *= 0.2
			TempValues["Rosewood"]["UpgradePriceMultip"] *= 0.2
			TempValues["Ghost Gum"]["UpgradePriceMultip"] *= 0.2
			TempValues["Dragonwood"]["UpgradePriceMultip"] *= 0.2
		"135a" :
			TempValues["Ebony"]["StorageMultip"] *= 1.35
			TempValues["Rosewood"]["StorageMultip"] *= 1.35
			TempValues["Cherry"]["StorageMultip"] *= 1.35
		"135aa" :
			TempValues["Global"]["WpsMultip"] *= 5
		"135b" :
			TempValues["Global"]["BotPriceMultip"] *= 0.05
		"136" :
			TempValues["Global"]["WpsMultip"] += max(0, pow(1.01,achievementCount))
		"136b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.33
		"137" :
			TempValues["Ebony"]["StorageMultip"] *= 1.33
			TempValues["Dogwood"]["StorageMultip"] *= 1.33
			TempValues["Rosewood"]["StorageMultip"] *= 1.33
			TempValues["Ghost Gum"]["StorageMultip"] *= 1.33
			TempValues["Dragonwood"]["StorageMultip"] *= 1.33
		"137a" :
			TempValues["Global"]["BotSellMoreMultip"] *= 10
		"137b" :
			TempValues["Dam"]["ConstructionSpeedMultip"] *= 1.55
		"138" :
			TempValues["Dragonwood"]["WpsMultip"] *= 1.5
			TempValues["Dragonwood"]["BeaverMultip"] *= 1.5
			TempValues["Dragonwood"]["StorageMultip"] *= 1.5
		"139" :
			TempValues["Global"]["BeaverMultip"] *= 5
		"139a" :
			TempValues["Global"]["ExtraWoodcamps"] += 25
			TempValues["Global"]["ExtraBeavers"] += 25
		"139b" :
			TempValues["Oak"]["WpsMultip"] *= 1.1
			TempValues["Apple"]["WpsMultip"] *= 1.1
			TempValues["Maple"]["WpsMultip"] *= 1.1
			TempValues["Birch"]["WpsMultip"] *= 1.1
			TempValues["Spruce"]["WpsMultip"] *= 1.1
		"139c" :
			TempValues["Chestnut"]["WpsMultip"] *= 1.2
			TempValues["Cherry"]["WpsMultip"] *= 1.2
			TempValues["Ash"]["WpsMultip"] *= 1.2
			TempValues["Cedar"]["WpsMultip"] *= 1.2
			TempValues["Mahogany"]["WpsMultip"] *= 1.2
		"139d" :
			TempValues["Ebony"]["WpsMultip"] *= 1.3
			TempValues["Dogwood"]["WpsMultip"] *= 1.3
			TempValues["Rosewood"]["WpsMultip"] *= 1.3
			TempValues["Ghost Gum"]["WpsMultip"] *= 1.3
			TempValues["Dragonwood"]["WpsMultip"] *= 1.3
		"139e" :
			TempValues["Ebony"]["StorageMultip"] *= 1.15
			TempValues["Dogwood"]["StorageMultip"] *= 1.15
			TempValues["Rosewood"]["StorageMultip"] *= 1.15
			TempValues["Ghost Gum"]["StorageMultip"] *= 1.15
			TempValues["Dragonwood"]["StorageMultip"] *= 1.15
		"140" :
			TempValues["Global"]["WpsMultip"] *= 5

func SetGoldUpgradeValue(upgradeId):
	var upgradeLevel = SaveData.Upgrades["Gold"][upgradeId]["Level"]
	
	if upgradeLevel == 0:
		return
	
	match upgradeId:
		"1":
			TempValues["Global"]["BeaverMultip"] *= pow(1.01, upgradeLevel)
		"2":
			TempValues["Global"]["WpsMultip"] *= pow(1.01, upgradeLevel)
		"3":
			TempValues["Global"]["StorageMultip"] *= pow(1.01, upgradeLevel)
		"4":
			TempValues["Research"]["Time"] *= pow(1 - 0.01, upgradeLevel)
		"5":
			TempValues["Global"]["WoodPriceMultip"] *= pow(1.01, upgradeLevel)
		"6":
			TempValues["Global"]["BeaverPriceMultip"] *= pow(1 - 0.01, upgradeLevel)
		"7":
			TempValues["Global"]["WcPriceMultip"] *= pow(1 - 0.01, upgradeLevel)
		"8":
			TempValues["Magic"]["GainMultip"] *= pow(1.01, upgradeLevel)
		"9":
			TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.01, upgradeLevel)
		"10":
			TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.01, upgradeLevel)

func SetUpgradeValue(woodType, upgradeId):
	var upgradeLevel = SaveData.Upgrades[woodType][upgradeId]["Level"]
	var woodcamps = SaveData.Resources[woodType]["Woodcamps"] + TempValues[woodType]["ExtraWoodcamps"] + TempValues["Global"]["ExtraWoodcamps"]
	var beavers = SaveData.Resources[woodType]["Beavers"] + TempValues[woodType]["ExtraBeavers"] + TempValues["Global"]["ExtraBeavers"]
	var achievementCount = SaveData.countAchievements()
	
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
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 0.5 #* 20
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(1.065, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += max(0, roundi(SaveData.Resources[woodType]["Woodcamps"] / 5 * upgradeLevel - 0.5))
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 0.005
				"8":
					TempValues["Global"]["UpgradePriceMultip"] *= pow(1 - 0.06, upgradeLevel)
				"9":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.05, upgradeLevel)
				"10":
					TempValues["Research"]["Time"] *= pow(1 - 0.035, upgradeLevel)
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
					TempValues[woodType]["WpsPerWc"] += upgradeLevel #* 10
				"5":
					TempValues["Oak"]["WpsMultip"] *= pow(1.115, upgradeLevel)
				"6":
					TempValues[woodType]["WpsMultip"] *= pow(1.045, upgradeLevel)
				"7":
					TempValues["Oak"]["WcCostsMultip"] *= pow(1 - 0.0125, upgradeLevel)
				"8":
					TempValues["Global"]["WpsMultip"] *= pow(1.025, upgradeLevel)
				"9":
					TempValues["Global"]["StorageMultip"] *= pow(1.0185, upgradeLevel)
				"10":
					TempValues["Fish"]["FishPriceMultip"] *= pow(1.05, upgradeLevel)
		"Maple":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.4 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 120
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 1.5 #* 70
				"4":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.07, upgradeLevel)
				"5":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.095, upgradeLevel)
				"6":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.045, upgradeLevel)
				"7":
					TempValues["Global"]["BeaverPriceMultip"] *= pow(1 - 0.09, upgradeLevel)
				"8":
					TempValues["Global"]["BotSellMoreMultip"] *= pow(1.04, upgradeLevel)
				"9":
					TempValues["Global"]["WpsMultip"] *= pow(1.0005, upgradeLevel)
				"10":
					TempValues["Magic"]["GainMultip"] *= pow(1.03, upgradeLevel)
		"Birch":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.45 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 130
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 2 #* 36
				"4":
					TempValues[woodType]["BaseStorage"] += beavers * 100 * upgradeLevel
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.04, upgradeLevel)
				"6":
					TempValues[woodType]["StorageMultip"] *= pow(1.033, upgradeLevel)
				"7":
					TempValues["Maple"]["WpsMultip"] *= pow(1.035, upgradeLevel)
				"8":
					TempValues["Fish"]["FishSpeedMultip"] *= pow(1 - 0.0025, upgradeLevel)
				"9":
					TempValues["Global"]["BotPriceMultip"] *= pow(1 - 0.03, upgradeLevel)
				"10":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.04, upgradeLevel)
		"Spruce":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.5 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 140
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 2.5 #* 330
				"4":
					TempValues[woodType]["StorageMultip"] *= pow(1.06, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.025, upgradeLevel)
				"6":
					TempValues[woodType]["BeaverMultip"] *= (pow(1.0075, upgradeLevel) - 1) * woodcamps
				"7":
					TempValues["Birch"]["WcCostsMultip"] *= pow(1 - 0.0195, upgradeLevel)
				"8":
					TempValues["Global"]["BotBaseSell"] += upgradeLevel * 25
				"9":
					TempValues["Fish"]["LongerFishLifetimeMultip"] *= pow(1.0025, upgradeLevel)
				"10":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.05, upgradeLevel)
		"Chestnut":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.55 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 150
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 3 #* 13
				"4":
					TempValues[woodType]["WcEffectMultip"] *= pow(1.05, upgradeLevel)
				"5":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.03, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += max(0, roundi(SaveData.Resources[woodType]["Woodcamps"] / 4 * upgradeLevel - 0.5))
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 0.35
				"8":
					TempValues["Global"]["BeaverMultip"] *= pow(1.0075, upgradeLevel) * woodcamps
				"9":
					TempValues["Gold"]["UpgradePriceMultip"] *= pow(1 - 0.0285, upgradeLevel)
				"10":
					TempValues["Magic"]["GainMultip"] *= pow(1.05, upgradeLevel)
		"Cherry":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.6 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 160
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 3.5 #* 170
				"4":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.075, upgradeLevel)
				"5":
					TempValues[woodType]["BeaverPriceMultip"] *= pow(1 - 0.11, upgradeLevel)
				"6":
					TempValues[woodType]["WoodPriceMultip"] *= pow(1.025, upgradeLevel)
				"7":
					TempValues[woodType]["StorageMultip"] *= pow(1.1, upgradeLevel)
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.022, upgradeLevel)
				"9":
					TempValues["Fish"]["FishSizeMultip"] *= pow(1.0045, upgradeLevel)
				"10":
					TempValues["Dam"]["SectionWpsMultip"] *= pow(1.045, upgradeLevel)
		"Ash":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.65 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 170
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 4 #* 50
				"4":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.095, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.029, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += max(0, roundi(SaveData.Resources["Cherry"]["Beavers"] / 13 * upgradeLevel - 0.5))
				"7":
					TempValues[woodType]["UpgradePriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.0175, upgradeLevel)
				"9":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.033, upgradeLevel)
				"10":
					TempValues["Fish"]["MoreFishMultip"] *= pow(1.0055, upgradeLevel)
		"Cedar":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.7 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 180
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 4.5 #* 72
				"4":
					TempValues[woodType]["ExtraBeavers"] += max(0, roundi(SaveData.Resources[woodType]["Woodcamps"] / 8 * upgradeLevel - 0.5))
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(1.005, upgradeLevel) * beavers
				"6":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.07, upgradeLevel)
				"7":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.003, upgradeLevel)
				"8":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.0045, upgradeLevel)
				"9":
					TempValues["Magic"]["GainMultip"] *= pow(1.035, upgradeLevel)
				"10":
					TempValues["Global"]["WcPriceMultip"] *= pow(1 - 0.04, upgradeLevel)
		"Mahogany":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.75 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 190
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 5 #* 31
				"4":
					TempValues[woodType]["BeaverPriceMultip"] *= pow(1 - 0.05, upgradeLevel)
				"5":
					TempValues[woodType]["ExtraWoodcamps"] += max(0, roundi(SaveData.Resources[woodType]["Beavers"] / 10 * upgradeLevel - 0.5))
				"6":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.055, upgradeLevel)
				"7":
					TempValues["Oak"]["WpsMultip"] *= pow(1.01, upgradeLevel)
					TempValues["Apple"]["WpsMultip"] *= pow(1.01, upgradeLevel)
					TempValues["Maple"]["WpsMultip"] *= pow(1.01, upgradeLevel)
					TempValues["Birch"]["WpsMultip"] *= pow(1.01, upgradeLevel)
					TempValues["Spruce"]["WpsMultip"] *= pow(1.01, upgradeLevel)
				"8":
					TempValues["Global"]["BeaverMultip"] *= pow(1.005, upgradeLevel)
				"9":
					TempValues["Dam"]["SectionWpcMultip"] *= pow(1.05, upgradeLevel)
				"10":
					TempValues["Fish"]["ChanceToUseBait"] -= 0.0025 * upgradeLevel
		"Ebony":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.8 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 200
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 5.5 #* 10
				"4":
					TempValues[woodType]["ExtraWoodcamps"] += max(0, roundi(SaveData.Resources[woodType]["Beavers"] / 8 * upgradeLevel - 0.5))
				"5":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1.015, upgradeLevel)
				"6":
					TempValues[woodType]["ExtraBeavers"] += max(0, roundi(SaveData.Resources[woodType]["Woodcamps"] / 5 * upgradeLevel - 0.5))
				"7":
					TempValues[woodType]["BaseWoodPrice"] += upgradeLevel * 750
				"8":
					TempValues["Fish"]["FishSpeedMultip"] *= pow(1 - 0.02, upgradeLevel)
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
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 6 #* 700
				"4":
					TempValues[woodType]["WpcToWpsMultip"] *= pow(1 - 0.0075, upgradeLevel)
				"5":
					TempValues[woodType]["WcCostsMultip"] *= pow(1 - 0.03, upgradeLevel)
				"6":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.002, upgradeLevel), beavers)
				"7":
					TempValues[woodType]["BeaverMultip"] *= pow(1.06, upgradeLevel)
				"8":
					TempValues["Global"]["BotSellMoreMultip"] *= pow(1.05, upgradeLevel)
				"9":
					TempValues["Fish"]["FishPriceMultip"] *= pow(1.075, upgradeLevel)
				"10":
					TempValues["Dam"]["SectionStorageMultip"] *= pow(1.05, upgradeLevel)
		"Rosewood":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.9 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 220
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 6.5 #* 200
				"4":
					TempValues[woodType]["BeaverPriceMultip"] *= pow(1 - 0.2, upgradeLevel)
				"5":
					TempValues[woodType]["StorageMultip"] *= pow(1.02, upgradeLevel)
				"6":
					TempValues[woodType]["WpsMultip"] *= pow(pow(1.002, upgradeLevel), beavers)
				"7":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * beavers * 300
				"8":
					TempValues["Research"]["Time"] *= pow(1 - 0.003, upgradeLevel)
				"9":
					TempValues["Global"]["WpsMultip"] *= pow(1.0007, upgradeLevel)
				"10":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.06, upgradeLevel)
		"Ghost Gum":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += 0.95 * upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 230
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 7 #* 8
				"4":
					TempValues[woodType]["BeaverUpgrades"] += 0.5 * upgradeLevel * woodcamps
				"5":
					TempValues[woodType]["WcPriceMultip"] *= pow(1 - 0.07, upgradeLevel)
				"6":
					TempValues[woodType]["WcStorageMultip"] *= pow(1.07, upgradeLevel)
				"7":
					TempValues[woodType]["ExtraWoodcamps"] += roundi(SaveData.Resources[woodType]["Beavers"] / 7 * upgradeLevel - 0.5)
				"8":
					TempValues["Global"]["WoodPriceMultip"] *= pow(1.04, upgradeLevel)
				"9":
					TempValues["Global"]["StorageMultip"] *= pow(1.02, upgradeLevel)
				"10":
					TempValues["Dam"]["ConstructionSpeedMultip"] *= pow(1.07, upgradeLevel)
		"Dragonwood":
			match upgradeId:
				"1":
					TempValues[woodType]["BeaverUpgrades"] += upgradeLevel
				"2":
					TempValues[woodType]["BaseStorage"] += upgradeLevel * 240
				"3":
					TempValues[woodType]["WpsPerWc"] += upgradeLevel * 7.5 #* 10
				"4":
					TempValues[woodType]["WcCostsMultip"] *= pow(1 - 0.015, upgradeLevel)
				"5":
					TempValues[woodType]["WpsMultip"] *= pow(1.08, upgradeLevel)
				"6":
					TempValues[woodType]["StorageMultip"] *= pow(pow(1.003, upgradeLevel), beavers)
				"7":
					TempValues[woodType]["ExtraBeavers"] += roundi(SaveData.Resources[woodType]["Woodcamps"] / 10 * upgradeLevel - 0.5)
				"8":
					TempValues["Dam"]["SectionWpsMultip"] *= pow(1.075, upgradeLevel)
					TempValues["Dam"]["SectionWpcMultip"] *= pow(1.075, upgradeLevel)
					TempValues["Dam"]["SectionStorageMultip"] *= pow(1.075, upgradeLevel)
				"9":
					TempValues["Global"]["UpgradePriceMultip"] *= pow(1 - 0.03, upgradeLevel)
				"10":
					TempValues["Magic"]["GainMultip"] *= pow(1.025, upgradeLevel)

var OriginalTempValues = {
	"Global" : {
		"ExtraBeavers" : 0,
		"ExtraWoodcamps" : 0,
		"BeaverMultip" : 1,
		"BeaverPriceMultip" : 1,
		"FlatWpc" : 0,
		"WpsMultip" : 1,
		"UpgradePriceMultip" : 1,
		"StorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcToBeaverMultip" : 0,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WcBaseStorage" : 0,
		"BeaverBaseStorage" : 0,
		"BeaverStorageMultip" : 1,
		"WoodPriceMultip" : 1,
		"BotPriceMultip" : 1,
		"AutoClickers" : 0,
		"BotSellMoreMultip" : 1,
		"BotBaseSell" : 1000,
		"WpcToWpsMultip" : 1,
		"LowerStorageMultip" : 1,
		"LowerWpsAddMultip" : 1,
		"AchievementWpcMultip" : 1,
		"AchievementWpsMultip" : 1,
		"AchievementStorageMultip" : 1,
		"AutoClickerTickLength" : 1,
	},
	"Fish" : {
		"MoreFishMultip" : 1,
		"LongerFishLifetimeMultip" : 1,
		"LongerFishingTimeMultip" : 1,
		"FishEffectMultip" : 1,
		"FishSpeedMultip" : 1,
		"FishPriceMultip" : 1,
		"FishBounceMultip" : 1,
		"FishSizeMultip" : 1,
		"FishingChances" : 3,
		"FishingClicks" : 3,
		"BonusCapacity" : 1,
		"ChanceToUseBait" : 1,
		"BaitBuyCount" : 3,
		"FishingChanceRefreshTime" : 300,
		"FishingTimeout" : 15,
		"ChanceToRefundChance" : 0,
	},
	"Research" : {
		"Time" : 1,
		"ResearchAtATime" : 1,
		"PreUnlockedResearch" : 0,
		"AutoResearch" : false,
	},
	"Gold" : {
		"GainMultip" : 1,
		"UpgradePriceMultip" : 1,
	},
	"Magic" : {
		"GainMultip" : 1,
		"EffectMultip" : 1,
		"PerSecondMultip" : 1,
		"MagicWpcMultip" : 1,
		"MagicWpsMultip" : 1,
		"MagicStorageMultip" : 1,
	},
	"Dam" : {
		"ConstructionSpeedMultip" : 1,
		"SectionWpsMultip" : 1,
		"SectionWpcMultip" : 1,
		"SectionStorageMultip" : 1,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
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
		"BeaverStorageMultip" : 1,
		"WcStorageMultip" : 1,
		"WcEffectMultip" : 1,
		"WcCostsMultip" : 1,
		"WcPriceMultip" : 1,
		"WpsPerWc": 1,
		"WpsMultip" : 1,
		"FlatWpc" : 0,
		"BeaverPriceMultip" : 1,
		"UpgradePriceMultip" : 1,
		"BaseWoodPrice" : 22222,
		"WoodPriceMultip" : 1,
		"WpcToWpsMultip" : 1,
		"LowerWpsAddMultip" : 1,
	},
}

func unlockedWoodTypeCount():
	var unlockedWoodTypes = 0
	
	for woodType in Values.WoodTypes:
		if Unlocks.Unlocks[woodType]["Unlocked"]:
			unlockedWoodTypes += 1
	
	return unlockedWoodTypes
