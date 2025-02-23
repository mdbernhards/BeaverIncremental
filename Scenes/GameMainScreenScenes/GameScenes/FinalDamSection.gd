extends MarginContainer

# Nodes
var DamItemsMC
var GameDoneNode

# Rare Nodes
var RareMC
var RareLockedVBox
var RareCantAffordRect

# Mythic Nodes
var MythicMC
var MythicLockedVBox
var MythicCantAffordRect

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
	pass

func checkIfGameDone():
	pass

func setRareCantAffordRect():
	if checkRareIfCanAfford():
		RareCantAffordRect.visible = false
	else:
		RareCantAffordRect.visible = true

func checkRareIfCanAfford():
	return SaveData.Magic["Count"] >= 1000000

func setMythicCantAffordRect():
	if checkMythicIfCanAfford():
		MythicCantAffordRect.visible = false
	else:
		MythicCantAffordRect.visible = true

func checkMythicIfCanAfford():
	return SaveData.Magic["Count"] >= 10000000

func setupNodePaths():
	DamItemsMC = $VBox/ColorRect/DamItemsMC
	GameDoneNode = $VBox/ColorRect/GameDoneNode
	RareMC = $VBox/ColorRect/DamItemsMC/HBox/DamSection2/RareMC
	RareLockedVBox = $VBox/ColorRect/DamItemsMC/HBox/DamSection2/RareLockedVBox
	RareCantAffordRect = $VBox/ColorRect/DamItemsMC/HBox/DamSection2/RareLockedVBox/RareLockedButton/RareCantAffordRect
	MythicMC = $VBox/ColorRect/DamItemsMC/HBox/DamSection3/MythicMC
	MythicLockedVBox = $VBox/ColorRect/DamItemsMC/HBox/DamSection3/MythicLockedVBox
	MythicCantAffordRect = $VBox/ColorRect/DamItemsMC/HBox/DamSection3/MythicLockedVBox/MythicLockedButton/MythicCantAffordRect

func _on_final_dam_section_refresh_timer_timeout() -> void:
	setMythicCantAffordRect()
	setRareCantAffordRect()
	
	if checkIfGameDone():
		GameDoneNode.visible = true
		DamItemsMC.visible = false
	else:
		GameDoneNode.visible = false
		DamItemsMC.visible = true
	
	var completedDamSections = SaveData.countCompletedDamSections()
	Values.ResourceValues["Dam"]["CompletedSectionCount"] = completedDamSections
	
	if !Unlocks.Unlocks["Dams"].has("AnySectionCompleted"):
		Unlocks.Unlocks["Dams"]["AnySectionCompleted"] = false
	
	if completedDamSections > 0 and !Unlocks.Unlocks["Dams"]["AnySectionCompleted"]:
		Unlocks.Unlocks["Dams"]["AnySectionCompleted"] = true
	
	if !Unlocks.Unlocks["Dams"].has("RareUnlocked"):
		Unlocks.Unlocks["Dams"]["RareUnlocked"] = false
	
	if Unlocks.Unlocks["Dams"]["RareUnlocked"]:
		RareMC.visible = true
		RareLockedVBox.visible = false
	else:
		RareMC.visible = false
		RareLockedVBox.visible = true
	
	if !Unlocks.Unlocks["Dams"].has("MythicUnlocked"):
		Unlocks.Unlocks["Dams"]["MythicUnlocked"] = false
	
	if Unlocks.Unlocks["Dams"]["MythicUnlocked"]:
		MythicMC.visible = true
		MythicLockedVBox.visible = false
	else:
		MythicMC.visible = false
		MythicLockedVBox.visible = true

func _on_rare_locked_button_button_down() -> void:
	if checkRareIfCanAfford():
		SaveData.Magic["Count"] -= 1000000
		Unlocks.Unlocks["Dams"]["RareUnlocked"] = true

func _on_mythic_locked_button_button_down() -> void:
	if checkMythicIfCanAfford():
		SaveData.Magic["Count"] -= 10000000
		Unlocks.Unlocks["Dams"]["MythicUnlocked"] = true
