extends VBoxContainer

var PageNr = 1

#This pages wood types in order
var woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]
var UpgradeTabTitle

var TabButtons = []

func _ready():
	setVarPaths()

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

func setUpgradeTabButtons():
	for i in TabButtons.size():
		TabButtons[i].text = woodTypes[i]

func setVarPaths():
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton1)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton2)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton3)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton4)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/UpgradeTabButton5)
	
	UpgradeTabTitle = $Upgrades/VBox/TopHBox/TitleMC/TitleLabel

func _on_upgrade_tab_button_1_button_down():
	UpgradeTabTitle.text = woodTypes[0]

func _on_upgrade_tab_button_2_button_down():
	UpgradeTabTitle.text = woodTypes[1]

func _on_upgrade_tab_button_3_button_down():
	UpgradeTabTitle.text = woodTypes[2]

func _on_upgrade_tab_button_4_button_down():
	UpgradeTabTitle.text = woodTypes[3]

func _on_upgrade_tab_button_5_button_down():
	UpgradeTabTitle.text = woodTypes[4]
