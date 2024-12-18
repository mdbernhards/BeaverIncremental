extends MarginContainer

var ResourceType = "Oak"

# Nodes
var UpgradeTabTitle
var ItemGrid
var TabsCantAffordRect

func _ready():
	setNodePaths()
	setupUpgrades()

func _process(_delta):
	if checkIfCanAfford():
		TabsCantAffordRect.visible = false
	else:
		TabsCantAffordRect.visible = true

func checkIfCanAfford():
	var canAfford = false
	
	for upgradeItem in ItemGrid.get_children():
		if upgradeItem.updateAffordabilityIndicator():
			return true
	
	return false

func setupUpgradeTabForWoodType(type):
	ResourceType = type
	UpgradeTabTitle.text = ResourceType
	setupUpgrades()

func setupUpgrades():
	var upgradeItems = ItemGrid.get_children()
	
	for nr in 18:
		ItemGrid.get_child(nr).UpgradeNumber = Upgrades.UpgradePositions[ResourceType][nr]
	
	for item in upgradeItems:
		item.changeUpgrade(ResourceType)

func setNodePaths():
	UpgradeTabTitle = $VBox/TopHBox/TitleMC/TitleLabel
	ItemGrid = $VBox/ScrollBar/MC/ItemGrid
	TabsCantAffordRect = $VBox/TopHBox/BuyMaxMC/TabBuyMaxButton/TabsCantAffordRect

func _on_tab_buy_max_button_button_down() -> void:
	while true:
		var cheapestItem = ItemGrid.get_child(1)
		
		for upgradeItem in ItemGrid.get_children():
			if upgradeItem.CurrentPrice < cheapestItem.CurrentPrice:
				cheapestItem = upgradeItem
				
		if !cheapestItem._on_buy_button_button_down():
			return
