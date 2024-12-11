extends Control

# Nodes
var FoSVBox
var AchievementGrid

func _ready() -> void:
	setupNodePaths()
	setupAchievements()
	setupFoS()

func _process(delta: float) -> void:
	pass

func setupAchievements():
	var achievements = Achievements.Achievements
	var achievementScene = load("res://Scenes/GameMainScreenScenes/AchievementScenes/achievement_item.tscn")
	
	for achievement in achievements:
		var achievementItem = achievementScene.instantiate()
		achievementItem.AchievementId = achievement
		
		AchievementGrid.add_child(achievementItem)

func setupFoS():
	pass

func setupNodePaths():
	FoSVBox = $AchievementScreenHBox/FeatsOfStrengthVBox/MC/Scroll/FoSVBox
	AchievementGrid = $AchievementScreenHBox/AchievementsVBox/MC/Scroll/AchievementGrid
