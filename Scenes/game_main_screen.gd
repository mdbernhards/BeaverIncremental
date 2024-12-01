extends Control

# Nodes
var Gameplay
var GameScreen
var FishingScreen
var AchievementsScreen
var AscensionScreen
var SettingsScreen

func _ready() -> void:
	setNodePaths()
	Gameplay.visible = true
	GameScreen.visible = true

func _on_achievements_button_button_down() -> void:
	HideAllScreens()
	AchievementsScreen.visible = true

func _on_ascension_button_button_down() -> void:
	HideAllScreens()
	AscensionScreen.visible = true

func _on_fishing_button_button_down() -> void:
	HideAllScreens()
	Gameplay.visible = true
	FishingScreen.visible = true

func _on_home_button_button_down() -> void:
	HideAllScreens()
	Gameplay.visible = true
	GameScreen.visible = true

func _on_settings_button_button_down() -> void:
	HideAllScreens()
	SettingsScreen.visible = true

func HideAllScreens():
	Gameplay.visible = false
	GameScreen.visible = false
	FishingScreen.visible = false
	AchievementsScreen.visible = false
	AscensionScreen.visible = false
	SettingsScreen.visible = false

func setNodePaths():
	Gameplay = $Gameplay
	GameScreen = $Gameplay/GameScreen
	FishingScreen = $Gameplay/FishingScreen
	AchievementsScreen = $AchievementScreen
	AscensionScreen = $AscensionScreen
	SettingsScreen = $SettingsScreen
