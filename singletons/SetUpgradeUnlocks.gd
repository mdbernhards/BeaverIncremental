extends Node

func setSpecificUpgrade(upgradeName):
	var upgradeType = GameValues.Upgrades[upgradeName].type
	var upgradeTypes = GameValues.upgradeTypes
	
	if upgradeType == upgradeTypes.WoodPerClick:
		GameValues.WoodPerChop += 1
		
	if upgradeType == upgradeTypes.FoodPerClick:
		GameValues.FoodPerClick += 3
		
	if upgradeType == upgradeTypes.WaterPerClick:
		GameValues.WaterPerClick += 3
		
	if upgradeType == upgradeTypes.WaterCombo:
		pass
		
	if upgradeType == upgradeTypes.FoodCombo:
		pass
		
	if upgradeType == upgradeTypes.ChopWhileFood:
		pass
		
	if upgradeType == upgradeTypes.ChopWhileWater:
		pass
		
	if upgradeType == upgradeTypes.WoodActionLength:
		GameValues.chopLength += 1
		
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
			
			var statusEffectsWindow = get_tree().get_first_node_in_group("StatusEffects")
			statusEffectsWindow.visible = true
	
	if upgradeName == "UnlockChopping":
		pass
		#get_tree().get_first_node_in_group("chopButton").visible = true

func setUpgrades():
	GameValues.setDefaultValues()
	
	for upgrade in GameValues.UpgradeState:
		if GameValues.UpgradeState[upgrade] == true:
			setSpecificUpgrade(upgrade)
