extends VBoxContainer

var PageNr = 1

var ResourceTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]

# Nodes
var UpgradesNode
var TabButtons = []

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func changePage(nr):
	PageNr = nr
	
	match PageNr:
		1:
			ResourceTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]
		2:
			ResourceTypes = ["Chestnut", "Cherry", "Ash", "Cedar", "Mahogany"]
		3:
			ResourceTypes = ["Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood"]
		4:
			ResourceTypes = ["Gold"]
	
	setUpgradeTabButtons()
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[0])

func setUpgradeTabButtons():
	if ResourceTypes[0] == "Gold":
		$UpgradeTabs/HBox.visible = false
	else:
		$UpgradeTabs/HBox.visible = true

	for i in ResourceTypes.size():
		TabButtons[i].text = ResourceTypes[i]

func setNodePaths():
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton1)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton2)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton3)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton4)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton5)
	
	UpgradesNode = $Upgrades

func _on_upgrade_tab_button_1_button_down():
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[0])

func _on_upgrade_tab_button_2_button_down():
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[1])

func _on_upgrade_tab_button_3_button_down():
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[2])

func _on_upgrade_tab_button_4_button_down():
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[3])

func _on_upgrade_tab_button_5_button_down():
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[4])
