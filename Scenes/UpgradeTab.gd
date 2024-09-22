extends Control

var Upgrades = GameValues.Upgrades

func _ready():
	listUpgradesFromResourceFile()
	
func _process(delta):
	pass

func listUpgradesFromResourceFile():
	var upgradeButton = load("res://Scenes/HelperScenes/upgrade_button.tscn")
	
	for upgrade in Upgrades:
		var upgradeButtonInstance = upgradeButton.instantiate()
		upgradeButtonInstance.set_texture(load(Upgrades[upgrade].icon))
		upgradeButtonInstance.upgradeName = upgrade
		upgradeButtonInstance.upgrade_clicked.connect(_on_upgrade_button_upgrade_clicked)
		$MarginContainer/BuildingsList.add_child(upgradeButtonInstance)

func setUpgrades():
	GameValues.setDefaultValues()
	
	for upgrade in GameValues.UpgradeState:
		if GameValues.UpgradeState[upgrade] == true:
			setSpecificUpgrade(upgrade)
			
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

func _on_upgrade_button_upgrade_clicked(upgrade):
	var upgradeData = Upgrades[upgrade.upgradeName]
	
	if GameValues.WoodCount >= upgradeData.price:
		SetGlobalValues.addWood(-upgradeData.price)
		GameValues.UpgradeState[upgrade.upgradeName] = true
		setUpgrades()
		upgrade.queue_free()
