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
var BuyMaxButton
var UpgradeVBox
var MagicLockVBox
var MagicLockButton

func _ready():
	CurrentPrice = 100
	setNodePaths()
	changeUpgrade(ResourceType)

func _process(_delta):
	pass

func updateAffordabilityIndicator():
	if ResourceType == "Gold":
		if CurrentPrice <= SaveData.Gold["Count"]:
			CantAffordColorRect.visible = false
			return true
		else:
			CantAffordColorRect.visible = true
			return false
	elif checkIfMagicLocked():
		if checkIfCanAffordMagic():
			CantAffordColorRect.visible = false
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

func checkIfMagicLocked():
	return SaveDataValues.has("MagicLocked") and SaveDataValues["MagicLocked"]

func checkIfCanAffordMagic():
	if checkIfMagicLocked():
		return SaveData.Magic["Count"] >= Upgrades.Upgrades[ResourceType][str(UpgradeNumber)]["MagicCost"]
	else:
		return true

func changeUpgrade(woodType, upgradeNr = UpgradeNumber):
	UpgradeNumber = upgradeNr
	
	ResourceType = woodType
	$Color.color = Values.ResourceValues[ResourceType]["Color"]
	
	var upgrade = Upgrades.Upgrades[ResourceType][str(UpgradeNumber)]
	SaveDataValues = SaveData.Upgrades[ResourceType][str(UpgradeNumber)]

	NameLabel.text = upgrade.Name
	SecondaryName = null
	
	if upgrade.has("MagicCost"):
		MagicLockButton.text = str(upgrade.MagicCost) + " Magic"
	
	if upgrade.has("SecondaryName"):
		SecondaryName = upgrade.SecondaryName
	
	updateUpgradeValues()

func updateUpgradeValues():
	SaveDataValues = SaveData.Upgrades[ResourceType][str(UpgradeNumber)]
	
	if ResourceType == "Gold":
		CurrentPrice = round(CalculatePrice.getGoldUpgradeCost(SaveDataValues["Level"], str(UpgradeNumber)) * Values.ResourceValues[ResourceType]["UpgradePriceMultip"] * Values.ResourceValues["Gold"]["UpgradePriceMultip"])
	else:
		CurrentPrice = round(CalculatePrice.getUpgradeCost(SaveDataValues["Level"], ResourceType, str(UpgradeNumber)) * Values.ResourceValues[ResourceType]["UpgradePriceMultip"])
	
	PriceLabel.text = "price: " + str(NumberFormatting.formatNumber(CurrentPrice))
	LevelLabel.text = "LvL " + str(SaveDataValues["Level"])
	NrLabel.text = str(UpgradeNumber)
	
	if SecondaryName and SecondaryName != NameLabel.text and SaveDataValues["Level"] > 0:
		NameLabel.text = SecondaryName

func setNodePaths():
	NameLabel = $Color/UpgradeVBox/MC/NameLabel
	PriceLabel = $Color/UpgradeVBox/MC2/PriceLabel
	LevelLabel = $Color/UpgradeVBox/MC3/HBox/MC3/LevelLabel
	NrLabel = $Color/UpgradeVBox/MC/NrLabel
	BuyMaxButton = $Color/UpgradeVBox/MC3/HBox/MC2/BuyMaxButton
	UpgradeVBox = $Color/UpgradeVBox
	MagicLockVBox = $Color/MagicLockVBox
	MagicLockButton = $Color/MagicLockVBox/MagicLockButton
	CantAffordColorRect = $CantAffordColorRect

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
	
	if upgradeBought:
		if SaveData.GeneralInfo.has("TotalUpgradesBought"):
			SaveData.GeneralInfo["TotalUpgradesBought"] += 1
		else:
			SaveData.GeneralInfo["TotalUpgradesBought"] = 1
	
	return upgradeBought

func _on_buy_max_button_button_down() -> void:
	var keepBuying = true
	
	while keepBuying:
		keepBuying = _on_buy_button_button_down()

func _on_upgrade_item_timer_timeout() -> void:
	updateAffordabilityIndicator()
	updateUpgradeValues()
	
	if (Unlocks.Unlocks[ResourceType][str(UpgradeNumber)] and Upgrades.Upgrades[ResourceType][str(UpgradeNumber)]["Unlocked"].call()) or Values.DebugMode:
		visible = true
	
		if checkIfMagicLocked():
			MagicLockVBox.visible = true
			UpgradeVBox.visible = false
		else:
			MagicLockVBox.visible = false
			UpgradeVBox.visible = true
	else:
		visible = false
		
		if ResourceType == "Gold":
			if CurrentPrice * 0.4 < SaveData.Gold["Count"]:
				Unlocks.Unlocks[ResourceType][str(UpgradeNumber)] = true
		else:
			if CurrentPrice * 0.4 < SaveData.Resources[ResourceType]["Count"]:
				Unlocks.Unlocks[ResourceType][str(UpgradeNumber)] = true
	
	if Unlocks.Unlocks[ResourceType]["ButtonBuyMax"] or Values.DebugMode:
		BuyMaxButton.visible = true
	else:
		BuyMaxButton.visible = false

func _on_magic_lock_button_button_down() -> void:
	if checkIfCanAffordMagic():
		SaveData.Magic["Count"] -= Upgrades.Upgrades[ResourceType][str(UpgradeNumber)]["MagicCost"]
		SaveDataValues["MagicLocked"] = false
		_on_upgrade_item_timer_timeout()
		CalculateValues.calculateAllValues()
