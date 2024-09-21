extends Control

var Upgrades = GameValues.Upgrades
var WoodUpgrades = Upgrades["WoodUpgrades"]

func _ready():
	setUpgrades()
	
func _process(delta):
	pass

func setUpgrades():
	var texture = load("res://Art/UpgradeIcons/axeIcon.png")
	for upgrade in WoodUpgrades:
		
		var id = $UpgradeList.add_item(WoodUpgrades[upgrade].name, texture)
		$UpgradeList.set_item_tooltip(id, WoodUpgrades[upgrade].description)
		
