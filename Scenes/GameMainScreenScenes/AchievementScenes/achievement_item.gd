extends MarginContainer

var AchievementId :
	set(value):
		AchievementId = value

var AchievementValues

var Unlocked = false

# Nodes
var UnlockedRect
var LockedRect

func _ready() -> void:
	setupNodePaths()
	
	LockedRect.visible = true
	UnlockedRect.visible = false
	
func _process(delta: float) -> void:
	if AchievementId and !Unlocked:
		checkIfUnlocked()

func checkIfUnlocked():
	if SaveData.UnlockedAchievements.has(AchievementId) and SaveData.UnlockedAchievements[AchievementId] == true:
		Unlocked = true
	
		LockedRect.visible = false
		UnlockedRect.visible = true

func setAchievement(achievementId):
	AchievementValues = Achievements.Achievements[achievementId]

func setupNodePaths():
	UnlockedRect = $UnlockedRect
	LockedRect = $LockedRect
