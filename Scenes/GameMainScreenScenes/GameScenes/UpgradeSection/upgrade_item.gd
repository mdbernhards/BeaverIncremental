extends MarginContainer

@export var UpgradeNumber = 1

var ResourceType = "Oak"

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
	changeUpgrade(ResourceType)

func _process(_delta):
	updateAffordabilityIndicator()
	setUpgradePriceAndLevel()

func updateAffordabilityIndicator():
	if ResourceType == "Gold":
		if CurrentPrice <= SaveData.Gold["Count"]:
			CantAffordColorRect.visible = false
		else:
			CantAffordColorRect.visible = true
	else:
		if CurrentPrice <= SaveData.Resources[ResourceType]["Count"]:
			CantAffordColorRect.visible = false
		else:
			CantAffordColorRect.visible = true

func changeUpgrade(woodType):
	ResourceType = woodType
	$Color.color = Values.ResourceValues[ResourceType]["Color"]
	
	var upgrade = Upgrades.Upgrades[ResourceType][str(UpgradeNumber)]
	SaveDataValues = SaveData.Upgrades[ResourceType][str(UpgradeNumber)]

	if !upgrade or !SaveDataValues:
		NameLabel.text = "????"
		PriceLabel.text = "???"
		LevelLabel.text = "?"
		return
	
	NameLabel.text = upgrade.Name
	setUpgradePriceAndLevel()

func setUpgradePriceAndLevel():
	CurrentPrice = round(CalculatePrice.getUpgradeCost(SaveDataValues["Level"], ResourceType, str(UpgradeNumber)) * Values.ResourceValues[ResourceType]["UpgradePriceMultip"])
	
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
	
	if ResourceType == "Gold":
		if CurrentPrice <= SaveData.Gold["Count"]:
			SaveData.Gold["Count"] -= CurrentPrice
			SaveDataValues["Level"] += 1
			setUpgradePriceAndLevel()
			CalculateValues.calculateAllValues()
	else:
		if CurrentPrice <= SaveData.Resources[ResourceType]["Count"]:
			SaveData.Resources[ResourceType]["Count"] -= CurrentPrice
			SaveDataValues["Level"] += 1
			setUpgradePriceAndLevel()
			CalculateValues.calculateAllValues()
