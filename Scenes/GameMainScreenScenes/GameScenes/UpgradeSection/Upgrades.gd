extends MarginContainer

var ResourceType = "Oak"

# Nodes
var UpgradeTabTitle
var ItemGrid

func _ready():
	setNodePaths()
	setupUpgrades()

func _process(_delta):
	pass

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
