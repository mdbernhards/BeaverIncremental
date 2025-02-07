extends Control

# Nodes
var BackButton
var SaveButton

# Numbers Nodes
var NotationDropDown

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
	pass

func _on_load_button_button_down() -> void:
	get_tree().get_first_node_in_group("Game").goToSavesFromSettings()

func _on_save_button_button_down() -> void:
	GameSaves.saveGame(Values.CurrentSaveName)

func setupNodePaths():
	BackButton = $BackButton
	SaveButton = $MC/VBox/SettingsMC/Grid/SaveSettings/MC/VBox/Grid/MC/SaveButton
	NotationDropDown = $MC/VBox/SettingsMC/Grid/NumberSettings/MC/VBox/Grid/VBox/NotationDropDown

func updateSettings():
	NotationDropDown.selected = SaveData.GeneralInfo["NumberNotation"]

func goToSettings(backToMainMenu):
	visible = true
	
	if backToMainMenu:
		BackButton.visible = true
		get_tree().get_first_node_in_group("BackgroundButtons").visible = false
		SaveButton.visible = false
		NotationDropDown.visible = false
	else:
		BackButton.visible = false
		get_tree().get_first_node_in_group("BackgroundButtons").visible = true
		SaveButton.visible = true
		NotationDropDown.visible = true

func _on_back_button_button_down() -> void:
	visible = false
	get_tree().get_first_node_in_group("Game").goToMainMenuFromSettings()

func _on_notation_drop_down_item_selected(index: int) -> void:
	SaveData.GeneralInfo["NumberNotation"] = index
