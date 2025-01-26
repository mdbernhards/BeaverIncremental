extends Control

# Nodes
var AchievementGrid
var AchievementEffectLabel
var AchievementCountLabel

var AchievementCount = 0

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

func deleteAllAchievements():
	if !AchievementGrid:
		return
	
	for achievement in AchievementGrid.get_children():
		AchievementGrid.remove_child(achievement)
		achievement.queue_free()

func resetAchievements():
	deleteAllAchievements()
	setupAchievements()

func setupNodePaths():
	AchievementGrid = $AchievementScreenHBox/AchievementsVBox/MC/Scroll/AchievementGrid
	AchievementEffectLabel = $AchievementScreenHBox/AchievementsVBox/TopMC/MC/HBox/AchievementEffectLabel
	AchievementCountLabel = $AchievementScreenHBox/AchievementsVBox/TopMC/MC/HBox/AchievementCountLabel

func _on_achievement_screen_timer_timeout() -> void:
	var achievementCount = SaveData.countAchievements()
	
	if achievementCount != AchievementCount:
		AchievementCount = achievementCount
		CalculateValues.calculateAllValues()
		
		AchievementCountLabel.text = str(AchievementCount) + "/300"
		
		var wpcMultip = str(roundf((Values.ResourceValues["Achievements"]["WpcMultip"] - 1) * 1000)/10)
		var wpsMultip = str(roundf((Values.ResourceValues["Achievements"]["WpsMultip"] - 1) * 1000)/10)
		var storageMultip = str(roundf((Values.ResourceValues["Achievements"]["StorageMultip"] - 1) * 1000)/10)
		
		AchievementEffectLabel.text = wpcMultip + "% Wood Per Click\n" + wpsMultip + "% Wood Per Second \n" + storageMultip + "% Storage \n"
