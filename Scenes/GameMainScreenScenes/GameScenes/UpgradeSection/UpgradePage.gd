extends VBoxContainer

var PageNr = 1

var woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]

# Nodes
var Upgrades
var TabButtons = []

func _ready():
	setNodePaths()

func _process(delta):
	pass

func changePage(nr):
	PageNr = nr
	
	match PageNr:
		1:
			woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]
		2:
			woodTypes = ["Chestnut", "Cherry", "Ash", "Cedar", "Mahogany"]
		3:
			woodTypes = ["Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood"]
	
	setUpgradeTabButtons()
	Upgrades.setupUpgradeTabForWoodType(woodTypes[0])

func setUpgradeTabButtons():
	for i in TabButtons.size():
		TabButtons[i].text = woodTypes[i]

func setNodePaths():
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton1)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton2)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton3)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton4)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton5)
	
	Upgrades = $Upgrades

func _on_upgrade_tab_button_1_button_down():
	Upgrades.setupUpgradeTabForWoodType(woodTypes[0])

func _on_upgrade_tab_button_2_button_down():
	Upgrades.setupUpgradeTabForWoodType(woodTypes[1])

func _on_upgrade_tab_button_3_button_down():
	Upgrades.setupUpgradeTabForWoodType(woodTypes[2])

func _on_upgrade_tab_button_4_button_down():
	Upgrades.setupUpgradeTabForWoodType(woodTypes[3])

func _on_upgrade_tab_button_5_button_down():
	Upgrades.setupUpgradeTabForWoodType(woodTypes[4])
