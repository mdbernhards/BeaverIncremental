extends MarginContainer

@export var UpgradeNumber = 1

var WoodType = "Oak"

var Name
var Description
var CurrentPrice
var UpgradeColor
var SaveDataValues

# Nodes
var NameLabel
var PriceLabel
var LevelLabel

func _ready():
	setNodePaths()
	changeUpgrade(WoodType)

func _process(delta):
	pass

func changeUpgrade(woodType):
	WoodType = woodType
	
	var upgrade = ConstUpgrades.Upgrades[WoodType][str(UpgradeNumber)]
	SaveDataValues = SaveData.Upgrades[WoodType][str(UpgradeNumber)]
	
	if !upgrade or !SaveDataValues:
		NameLabel.text = "????"
		PriceLabel.text = "???"
		LevelLabel.text = "?"
		return
	
	NameLabel.text = upgrade.Name
	setUpgradePriceAndLevel()

func setUpgradePriceAndLevel():
	PriceLabel.text = str(ConstUpgrades.getUpgradeCost(SaveDataValues["Level"], WoodType, str(UpgradeNumber)))
	LevelLabel.text = str(SaveDataValues["Level"] - 1)

func setNodePaths():
	NameLabel = $Color/VBox/MC/NameLabel
	PriceLabel = $Color/VBox/MC2/PriceLabel
	LevelLabel = $Color/VBox/MC3/HBox/MC3/LevelLabel

func _on_buy_button_button_down():
	if !SaveDataValues:
		return
	
	SaveDataValues["Level"] += 1
	setUpgradePriceAndLevel()
