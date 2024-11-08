extends MarginContainer

var WoodType

# Nodes
var UpgradeTabTitle
var ItemGrid

func _ready():
	setNodePaths()

func _process(delta):
	pass

func setupUpgradeTabForWoodType(type):
	WoodType = type
	UpgradeTabTitle.text = type
	
	UpgradeTabTitle.text = WoodType
	setupUpgrades()

func setupUpgrades():
	var upgradeItems = ItemGrid.get_children()
	
	for item in upgradeItems:
		item.changeUpgrade(WoodType)
	
func setNodePaths():
	UpgradeTabTitle = $VBox/TopHBox/TitleMC/TitleLabel
	ItemGrid = $VBox/ScrollBar/MC/ItemGrid
