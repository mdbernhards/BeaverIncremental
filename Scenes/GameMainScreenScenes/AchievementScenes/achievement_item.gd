extends MarginContainer

var AchievementId :
	set(value):
		AchievementId = value

# Nodes
var UnlockedRect
var LockedRect

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func setupNodePaths():
	UnlockedRect = $UnlockedRect
	LockedRect = $LockedRect

func _make_custom_tooltip(_for_text):
	var tooltip = load("res://Scenes/Tooltips/achievement_tooltip.tscn").instantiate()
	
	var unlockedAchieves = SaveData.UnlockedAchievements
	
	if AchievementId and unlockedAchieves.has(str(AchievementId)) and unlockedAchieves[str(AchievementId)]:
		tooltip.setAchievementTooltip(Achievements.Achievements[AchievementId].Name, Achievements.Achievements[AchievementId].Description)
	else:
		tooltip.setAchievementTooltip("????", "????")
	
	return tooltip

func _on_achievement_timer_timeout() -> void:
	var unlockedAchieves = SaveData.UnlockedAchievements
	
	if AchievementId and unlockedAchieves.has(AchievementId) and unlockedAchieves[AchievementId]:
		LockedRect.visible = false
		UnlockedRect.visible = true
	else:
		LockedRect.visible = true
		UnlockedRect.visible = false
