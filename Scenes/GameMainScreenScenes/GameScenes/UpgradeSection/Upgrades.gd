extends MarginContainer

var ResourceType

# Nodes
var UpgradeTabTitle
var ItemGrid

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func setupUpgradeTabForWoodType(type):
	ResourceType = type
	UpgradeTabTitle.text = ResourceType
	setupUpgrades()

func setupUpgrades():
	var upgradeItems = ItemGrid.get_children()
	
	for item in upgradeItems:
		item.changeUpgrade(ResourceType)
		
	for nr in 18:
		ItemGrid.move_child(ItemGrid.get_child(Upgrades.UpgradePositions[ResourceType][nr]), nr)
	
func setNodePaths():
	UpgradeTabTitle = $VBox/TopHBox/TitleMC/TitleLabel
	ItemGrid = $VBox/ScrollBar/MC/ItemGrid
