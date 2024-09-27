extends Control

var Upgrades = GameValues.Upgrades

func _ready():
	listUpgradesFromResourceFile()
	
func _process(_delta):
	pass

func listUpgradesFromResourceFile():
	var upgradeButton = load("res://Scenes/HelperScenes/upgrade_button.tscn")
	
	for upgrade in Upgrades:
		var upgradeButtonInstance = upgradeButton.instantiate()
		upgradeButtonInstance.set_texture(load(Upgrades[upgrade].icon))
		upgradeButtonInstance.upgradeName = upgrade
		upgradeButtonInstance.upgradePrice = Upgrades[upgrade].price
		upgradeButtonInstance.upgrade_clicked.connect(_on_upgrade_button_upgrade_clicked)
		$Margin/UpgradeList.add_child(upgradeButtonInstance)

func _on_upgrade_button_upgrade_clicked(upgrade):
	var upgradeData = Upgrades[upgrade.upgradeName]
	
	if GameValues.WoodCount >= upgradeData.price:
		SetGlobalValues.addWood(-upgradeData.price)
		GameValues.UpgradeState[upgrade.upgradeName] = true
		SetUpgradeUnlocks.setUpgrades()
		upgrade.queue_free()
