extends Control

# Nodes
var MainMenu
var LoadGame
var GameMainScreen

enum BackTrackEnum {
	ToMainMenu,
	ToSettings,
}

func _ready() -> void:
	setupNodePaths()
	
func _process(delta: float) -> void:
	pass

func goToSavesFromMenu():
	MainMenu.visible = false
	LoadGame.visible = true
	LoadGame.BackTrackTo = BackTrackEnum.ToMainMenu
	LoadGame.loadSaves()

func goToMenuFromSaves():
	MainMenu.visible = true 
	LoadGame.visible = false

func goToSavesFromSettings():
	GameMainScreen.visible = false
	LoadGame.visible = true
	LoadGame.BackTrackTo = BackTrackEnum.ToSettings
	LoadGame.loadSaves()

func goToGameFromSaves():
	GameMainScreen.visible = true
	MainMenu.visible = false
	LoadGame.visible = false
	GameMainScreen._on_home_button_button_down()
	get_tree().get_first_node_in_group("BackgroundButtons").visible = true

func goToSettingsFromSaves():
	GameMainScreen.visible = true
	LoadGame.visible = false

func goToSettingsFromMainMenu():
	GameMainScreen.visible = true
	MainMenu.visible = false
	LoadGame.visible = false
	get_tree().get_first_node_in_group("Settings").goToSettings(true)
	get_tree().get_first_node_in_group("BackgroundButtons").visible = false

func goToMainMenuFromSettings():
	GameMainScreen.visible = false
	LoadGame.visible = false
	MainMenu.visible = true
	get_tree().get_first_node_in_group("Settings").visible = false

func setupNodePaths():
	MainMenu = $MainMenu
	LoadGame = $LoadGame
	GameMainScreen = $GameMainScreen
