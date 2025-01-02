extends MarginContainer

@export var UpgradeNumber = 1

var ResourceType = "Oak"

var Name
var Description
var CurrentPrice
var UpgradeColor
var SaveDataValues

var SecondaryName

# Nodes
var NameLabel
var PriceLabel
var LevelLabel
var CantAffordColorRect
var NrLabel

func _ready():
	CurrentPrice = 100
	setNodePaths()
	changeUpgrade(ResourceType)

func _process(_delta):
	updateAffordabilityIndicator()
	updateUpgradeValues()

func updateAffordabilityIndicator():
	if ResourceType == "Gold":
		if CurrentPrice <= SaveData.Gold["Count"]:
			CantAffordColorRect.visible = false
			return true
		else:
			CantAffordColorRect.visible = true
			return false
	else:
		if CurrentPrice <= SaveData.Resources[ResourceType]["Count"]:
			CantAffordColorRect.visible = false
			return true
		else:
			CantAffordColorRect.visible = true
			return false

func changeUpgrade(woodType, upgradeNr = UpgradeNumber):
	UpgradeNumber = upgradeNr
	
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
	SecondaryName = null
	
	if upgrade.has("SecondaryName"):
		SecondaryName = upgrade.SecondaryName
	
	updateUpgradeValues()

func updateUpgradeValues():
	SaveDataValues = SaveData.Upgrades[ResourceType][str(UpgradeNumber)]
	
	if ResourceType == "Gold":
		CurrentPrice = round(CalculatePrice.getGoldUpgradeCost(SaveDataValues["Level"], str(UpgradeNumber)) * Values.ResourceValues[ResourceType]["UpgradePriceMultip"] * Values.ResourceValues["Gold"]["UpgradePriceMultip"])
	else:
		CurrentPrice = round(CalculatePrice.getUpgradeCost(SaveDataValues["Level"], ResourceType, str(UpgradeNumber)) * Values.ResourceValues[ResourceType]["UpgradePriceMultip"])
	
	PriceLabel.text = "price: " + str(NumberFormatting.formatNumber(CurrentPrice, NumberFormatting.NotationTypesEnum.Engineering))
	LevelLabel.text = "LvL " + str(SaveDataValues["Level"])
	NrLabel.text = str(UpgradeNumber)
	
	if SecondaryName and SecondaryName != NameLabel.text and SaveDataValues["Level"] > 0:
		NameLabel.text = SecondaryName

func setNodePaths():
	NameLabel = $Color/VBox/MC/NameLabel
	PriceLabel = $Color/VBox/MC2/PriceLabel
	LevelLabel = $Color/VBox/MC3/HBox/MC3/LevelLabel
	CantAffordColorRect = $CantAffordColorRect
	NrLabel = $Color/VBox/MC/NrLabel

func _on_buy_button_button_down():
	var upgradeBought = false
	
	if !SaveDataValues:
		return upgradeBought
	
	if ResourceType == "Gold":
		if CurrentPrice <= SaveData.Gold["Count"]:
			SaveData.Gold["Count"] -= CurrentPrice
			SaveDataValues["Level"] += 1
			updateUpgradeValues()
			CalculateValues.calculateAllValues()
			upgradeBought = true
	else:
		if CurrentPrice <= SaveData.Resources[ResourceType]["Count"]:
			SaveData.Resources[ResourceType]["Count"] -= CurrentPrice
			SaveDataValues["Level"] += 1
			updateUpgradeValues()
			CalculateValues.calculateAllValues()
			upgradeBought = true
	
	return upgradeBought

func _on_buy_max_button_button_down() -> void:
	var keepBuying = true
	
	while keepBuying:
		keepBuying = _on_buy_button_button_down()
