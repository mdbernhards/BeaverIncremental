extends Node

func setSpecificUpgrade(upgradeName):
	var upgradeType = ConstUpgradeValues.Upgrades[upgradeName].type
	var upgradeTypes = ConstUpgradeValues.upgradeTypes
	
	if upgradeType == upgradeTypes.WoodPerClick:
		GameValues.WoodPerClick += 1
		
	if upgradeType == upgradeTypes.FoodPerTick:
		GameValues.FoodPerTick += 1
		
	if upgradeType == upgradeTypes.WaterPerTick:
		GameValues.WaterPerTick += 1
		
	if upgradeType == upgradeTypes.WaterCombo:
		pass
		
	if upgradeType == upgradeTypes.FoodCombo:
		pass
		
	if upgradeType == upgradeTypes.WoodWhileFood:
		pass
		
	if upgradeType == upgradeTypes.WoodWhileWater:
		pass
		
	if upgradeType == upgradeTypes.FoodActionLength:
		GameValues.foodLength += 1
		
	if upgradeType == upgradeTypes.WaterActionLength:
		GameValues.waterLength += 1
		
	if upgradeType == upgradeTypes.FoodStorage:
		GameValues.FoodLimit += 15
		
	if upgradeType == upgradeTypes.WaterStorage:
		GameValues.WaterLimit += 15
		
	if upgradeType == upgradeTypes.Other:
		if upgradeName == "UnlockResearch":
			var researchButton = get_tree().get_first_node_in_group("ResearchButton")
			researchButton.text = "Research"
	
	if upgradeName == "UnlockChopping":
		get_tree().get_first_node_in_group("chopButton").visible = true

func setUpgrades():
	setDefaultValues()
	
	for upgrade in GameValues.UpgradeState:
		if GameValues.UpgradeState[upgrade] == true:
			setSpecificUpgrade(upgrade)
	
	recalculateProduction()
	applyProductionEffects()

func recalculateProduction(): # Production Impacts manual woodchoping and all automated collection of resources
	var production = DefaultValues.DefaultProductionValue
	
	if GameValues.StatusEffectState["Hungry"]:
		production -= production * DefaultValues.HungerImpact
	
	if GameValues.StatusEffectState["Starving"]:
		production -= production * DefaultValues.StarvingImpact
	
	if GameValues.StatusEffectState["Thirsty"]:
		production -= production * DefaultValues.ThirstyImpact
	
	if GameValues.StatusEffectState["Dehydrated"]:
		production -= production * DefaultValues.DehydratedImpact
	
	GameValues.ProductionValue = production

func applyProductionEffects():
	GameValues.WoodPerClick *= GameValues.ProductionValue
	#GameValues.WaterPerTick *= GameValues.ProductionValue
	#GameValues.FoodPerTick *= GameValues.ProductionValue
	
	#GameValues.WaterPerBonusClick *= GameValues.ProductionValue
	#GameValues.FoodPerBonusClick *= GameValues.ProductionValue
	#GameValues.WoodPerBonusClick *= GameValues.ProductionValue

func setDefaultValues():
	GameValues.WoodPerClick = DefaultValues.DefaultWoodPerClick
	GameValues.WaterPerTick = DefaultValues.DefaultWaterPerTick
	GameValues.FoodPerTick = DefaultValues.DefaultFoodPerTick

	GameValues.WaterPerBonusClick = DefaultValues.DefaultWaterPerBonusClick
	GameValues.FoodPerBonusClick = DefaultValues.DefaultFoodPerBonusClick
	GameValues.WoodPerBonusClick = DefaultValues.DefaultWoodPerBonusClick

	GameValues.FoodLimit = DefaultValues.DefaultFoodLimit
	GameValues.WaterLimit = DefaultValues.DefaultWaterLimit
	GameValues.WoodLimit = DefaultValues.DefaultWoodLimit
	
	GameValues.WaterLength = DefaultValues.DefaultWaterLength
	GameValues.FoodLength = DefaultValues.DefaultFoodLength
