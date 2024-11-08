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
var CantAffordColorRect

func _ready():
	CurrentPrice = 100
	setNodePaths()
	changeUpgrade(WoodType)

func _process(delta):
	if CurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		CantAffordColorRect.visible = false
	else:
		CantAffordColorRect.visible = true
		 

func changeUpgrade(woodType):
	WoodType = woodType
	
	var upgrade = ConstUpgrades.Upgrades[WoodType][str(UpgradeNumber)]
	SaveDataValues = SaveData.Upgrades[WoodType][str(UpgradeNumber)]
	
	if SaveDataValues:
		CurrentPrice = CalculatePrice.getUpgradeCost(SaveDataValues["Level"], WoodType, str(UpgradeNumber))
	
	if !upgrade or !SaveDataValues:
		NameLabel.text = "????"
		PriceLabel.text = "???"
		LevelLabel.text = "?"
		return
	
	NameLabel.text = upgrade.Name
	setUpgradePriceAndLevel()

func setUpgradePriceAndLevel():
	CurrentPrice = CalculatePrice.getUpgradeCost(SaveDataValues["Level"], WoodType, str(UpgradeNumber))
	
	PriceLabel.text = "price: " + str(CurrentPrice)
	LevelLabel.text = "LvL " + str(SaveDataValues["Level"])

func setNodePaths():
	NameLabel = $Color/VBox/MC/NameLabel
	PriceLabel = $Color/VBox/MC2/PriceLabel
	LevelLabel = $Color/VBox/MC3/HBox/MC3/LevelLabel
	CantAffordColorRect = $CantAffordColorRect

func _on_buy_button_button_down():
	if !SaveDataValues:
		return
	
	if CurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		SaveData.Resources[WoodType]["Count"] -= CurrentPrice
		SaveDataValues["Level"] += 1
		setUpgradePriceAndLevel()
		CalculateValues.calculateAllValues()
