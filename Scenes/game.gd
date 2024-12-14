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

func goToMenuFromSaves():
	MainMenu.visible = true 
	LoadGame.visible = false

func goToSavesFromSettings():
	GameMainScreen.visible = false
	LoadGame.visible = true
	LoadGame.BackTrackTo = BackTrackEnum.ToSettings

func goToSettingsFromSaves():
	GameMainScreen.visible = true
	LoadGame.visible = false
	
func setupNodePaths():
	MainMenu = $MainMenu
	LoadGame = $LoadGame
	GameMainScreen = $GameMainScreen
