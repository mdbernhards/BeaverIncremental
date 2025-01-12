extends Control

# Nodes
var Gameplay
var GameScreen
var FishingScreen
var AchievementsScreen
var AscensionScreen
var SettingsScreen

var AchievementsButton
var AscensionButton
var FishingButton

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
	SettingsScreen.goToSettings(false)

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
	AchievementsButton = $BackgroundButtons/MenuButtonsVBox/AchievementsButton
	AscensionButton = $BackgroundButtons/MenuButtonsVBox/AscensionButton
	FishingButton = $BackgroundButtons/MenuButtonsVBox/FishingButton

func _on_game_main_screen_timer_timeout() -> void:
	if Unlocks.Unlocks["Magic"]["Ascention"] or Values.DebugMode:
		AscensionButton.text = "Ascension"
		AscensionButton.disabled = false
	else:
		AscensionButton.disabled = true
		AscensionButton.text = "?????"
		
		if Values.ResourceValues["Magic"]["PotentialMagic"] >= 1:
			Unlocks.Unlocks["Magic"]["Ascention"] = true
	
	if Unlocks.Unlocks["Achievements"]["Unlocked"] or Values.DebugMode:
		AchievementsButton.text = "Achievements"
		AchievementsButton.disabled = false
	else:
		AchievementsButton.disabled = true
		AchievementsButton.text = "?????"
	
	if Unlocks.Unlocks["Fishing"]["Unlocked"] or Values.DebugMode:
		FishingButton.text = "Fishing"
		FishingButton.disabled = false
	else:
		FishingButton.disabled = true
		FishingButton.text = "?????"
