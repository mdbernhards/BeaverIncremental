extends Control

var Upgrades = GameValues.Upgrades
var UpgradeIds = {}

func _ready():
	listUpgradesFromResourceFile()
	listUpgradesFromResourceFile2()
	
func _process(delta):
	pass

func listUpgradesFromResourceFile():
	for upgrade in Upgrades:
		var id = $UpgradeList.add_item(Upgrades[upgrade].name, load(Upgrades[upgrade].icon))
		$UpgradeList.set_item_tooltip(id, Upgrades[upgrade].description)
		UpgradeIds[id] = upgrade

func listUpgradesFromResourceFile2():
	var upgradeButton = load("res://Scenes/HelperScenes/upgrade_button.tscn")
	
	for upgrade in Upgrades:
		var upgradeButtonInstance = upgradeButton.instantiate()
		upgradeButtonInstance.set_texture(load(Upgrades[upgrade].icon))
		upgradeButtonInstance.upgradeName = upgrade
		$MarginContainer/BuildingsList.add_child(upgradeButtonInstance)

func _on_upgrade_list_item_selected(index):
	GameValues.UpgradeState[UpgradeIds[index]] = true
	$UpgradeList.remove_item(index)
	setUpgrades()

func setUpgrades():
	GameValues.setDefaultValues()
	
	for upgrade in GameValues.UpgradeState:
		if GameValues.UpgradeState[upgrade] == true:
			setSpecificUpgrade(upgrade)
			
func setSpecificUpgrade(upgrade):
	if upgrade == "Wood1" or upgrade == "Wood2" or upgrade == "Wood3" or upgrade == "Wood4" or upgrade == "Wood5":
		GameValues.WoodPerChop += 1
		
	if upgrade == "Food1" or upgrade == "Food2":
		GameValues.FoodPerClick += 3
		
	if upgrade == "Water1":
		GameValues.WaterPerClick += 3
		
