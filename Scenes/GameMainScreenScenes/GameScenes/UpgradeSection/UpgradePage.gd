extends VBoxContainer

var PageNr = 1

var ResourceTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]
var CurrentResourceType = "Oak"

# Nodes
var TabButtons = []
var UpgradesNode
var AllTabsCantAffordRect
var AllTabsBuyMaxButton

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func checkIfCanAfford():
	var canAfford = false
	
	for resourceType in ResourceTypes:
		UpgradesNode.setupUpgradeTabForWoodType(resourceType, true)
		if UpgradesNode.checkIfCanAfford():
			canAfford = true
			break
	
	UpgradesNode.setupUpgradeTabForWoodType(CurrentResourceType)
	
	AllTabsCantAffordRect.visible = !canAfford
	return canAfford

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
	CurrentResourceType = ResourceTypes[0]
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[0])
	_on_upgrade_tab_timer_timeout()

func setUpgradeTabButtons():
	$UpgradeTabs/HBox.visible = true

	for i in ResourceTypes.size():
		TabButtons[i].text = ResourceTypes[i]

func setNodePaths():
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/MC2/UpgradeTabButton1)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/MC3/UpgradeTabButton2)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/MC4/UpgradeTabButton3)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/MC5/UpgradeTabButton4)
	TabButtons.append($UpgradeTabs/HBox/TabButtonsMC/HBox/MC6/UpgradeTabButton5)
	
	UpgradesNode = $Upgrades
	AllTabsCantAffordRect = $UpgradeTabs/HBox/BuyMaxMC/AllTabsBuyMaxButton/AllTabsCantAffordRect
	AllTabsBuyMaxButton = $UpgradeTabs/HBox/BuyMaxMC/AllTabsBuyMaxButton

func _on_upgrade_tab_button_1_button_down():
	CurrentResourceType = ResourceTypes[0]
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[0])

func _on_upgrade_tab_button_2_button_down():
	CurrentResourceType = ResourceTypes[1]
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[1])

func _on_upgrade_tab_button_3_button_down():
	CurrentResourceType = ResourceTypes[2]
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[2])

func _on_upgrade_tab_button_4_button_down():
	CurrentResourceType = ResourceTypes[3]
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[3])

func _on_upgrade_tab_button_5_button_down():
	CurrentResourceType = ResourceTypes[4]
	UpgradesNode.setupUpgradeTabForWoodType(ResourceTypes[4])

func _on_all_tabs_buy_max_button_button_down() -> void:
	for resourceType in ResourceTypes:
		UpgradesNode.setupUpgradeTabForWoodType(resourceType)
		UpgradesNode._on_tab_buy_max_button_button_down()
		
	UpgradesNode.setupUpgradeTabForWoodType(CurrentResourceType)

func _on_upgrade_tab_timer_timeout() -> void:
	checkIfCanAfford()
	
	for i in ResourceTypes.size():
		if (Unlocks.Unlocks[ResourceTypes[i]]["Unlocked"] and Unlocks.Unlocks["Apple"]["Unlocked"]) or Values.DebugMode:
			TabButtons[i].visible = true
		else:
			TabButtons[i].visible = false
	
	if PageNr == 4:
		for i in 5:
			TabButtons[i].visible = false
	
	var resource = ResourceTypes[0]
	if (resource == "Oak" and Unlocks.Unlocks["Upgrades"]["ClassicBuyMax"]) or \
		(resource == "Chestnut" and Unlocks.Unlocks["Upgrades"]["RareBuyMax"]) or \
		(resource == "Ebony" and Unlocks.Unlocks["Upgrades"]["MythicBuyMax"]) or \
		Values.DebugMode:
		AllTabsBuyMaxButton.visible = true
	else:
		AllTabsBuyMaxButton.visible = false
