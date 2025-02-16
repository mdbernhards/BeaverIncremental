extends MarginContainer

var ResourceType = "Oak"

# Nodes
var UpgradeTabTitle
var ItemGrid
var TabsCantAffordRect
var TabBuyMaxButton

func _ready():
	setNodePaths()
	setupUpgrades()

func _process(_delta):
	pass

func checkIfCanAfford():
	for upgradeItem in ItemGrid.get_children():
		if upgradeItem.updateAffordabilityIndicator():
			return true
	
	return false

func setupUpgradeTabForWoodType(type, cantAffordCheck = false):
	ResourceType = type
	UpgradeTabTitle.text = ResourceType
	setupUpgrades(cantAffordCheck)

func setupUpgrades(cantAffordCheck = false):
	var upgradeItems = ItemGrid.get_children()
	
	for nr in 10:
		ItemGrid.get_child(nr).UpgradeNumber = Upgrades.UpgradePositions[ResourceType][nr]
	
	for item in upgradeItems:
		item.changeUpgrade(ResourceType)
		
		if !cantAffordCheck:
			item._on_upgrade_item_timer_timeout()

func setNodePaths():
	UpgradeTabTitle = $VBox/TopHBox/TitleMC/TitleLabel
	ItemGrid = $VBox/ScrollBar/MC/ItemGrid
	TabsCantAffordRect = $VBox/TopHBox/BuyMaxMC/TabBuyMaxButton/TabsCantAffordRect
	TabBuyMaxButton = $VBox/TopHBox/BuyMaxMC/TabBuyMaxButton

func _on_tab_buy_max_button_button_down() -> void:
	while true:
		var cheapestItem = ItemGrid.get_child(1)
		
		for upgradeItem in ItemGrid.get_children():
			if !SaveData.Upgrades[ResourceType][str(upgradeItem.UpgradeNumber)].has("MagicLocked") or SaveData.Upgrades[ResourceType][str(upgradeItem.UpgradeNumber)].has("MagicLocked") and !SaveData.Upgrades[ResourceType][str(upgradeItem.UpgradeNumber)]["MagicLocked"]:
				if upgradeItem.CurrentPrice < cheapestItem.CurrentPrice:
					cheapestItem = upgradeItem
				
		if !cheapestItem._on_buy_button_button_down():
			return

func _on_upgrades_refresh_timer_timeout() -> void:
	if Unlocks.Unlocks[ResourceType]["PageBuyMax"] or Values.DebugMode:
		TabBuyMaxButton.visible = true
	else:
		TabBuyMaxButton.visible = false
	
	if checkIfCanAfford():
		TabsCantAffordRect.visible = false
	else:
		TabsCantAffordRect.visible = true
