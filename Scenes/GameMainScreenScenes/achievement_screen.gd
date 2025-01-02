extends Control

# Nodes
var AchievementGrid

func _ready() -> void:
	setupNodePaths()
	setupAchievements()

func _process(delta: float) -> void:
	pass

func setupAchievements():
	var achievements = Achievements.Achievements
	var achievementScene = load("res://Scenes/GameMainScreenScenes/AchievementScenes/achievement_item.tscn")
	
	for achievement in achievements:
		var achievementItem = achievementScene.instantiate()
		achievementItem.AchievementId = achievement
		
		AchievementGrid.add_child(achievementItem)

func setupNodePaths():
	AchievementGrid = $AchievementScreenHBox/AchievementsVBox/MC/Scroll/AchievementGrid
