extends MarginContainer

var AchievementId :
	set(value):
		AchievementId = value

# Nodes
var UnlockedRect
var LockedRect
var PreviousState

func _ready() -> void:
	setupNodePaths()
	setPreviousState()

func _process(delta: float) -> void:
	pass

func setupNodePaths():
	UnlockedRect = $UnlockedRect
	LockedRect = $LockedRect

func _make_custom_tooltip(_for_text):
	var tooltip = load("res://Scenes/Tooltips/tooltip.tscn").instantiate()
	
	var unlockedAchieves = SaveData.UnlockedAchievements
	
	if AchievementId and unlockedAchieves.has(str(AchievementId)) and unlockedAchieves[str(AchievementId)]:
		tooltip.setTooltip(Achievements.Achievements[AchievementId].Name, Achievements.Achievements[AchievementId].Description)
	else:
		tooltip.setTooltip("????", "????")
	
	return tooltip

func setPreviousState():
	var unlockedAchieves = SaveData.UnlockedAchievements
	PreviousState = unlockedAchieves.has(AchievementId) and unlockedAchieves[AchievementId]

func _on_achievement_timer_timeout() -> void:
	var unlockedAchieves = SaveData.UnlockedAchievements
	
	if AchievementId and unlockedAchieves.has(AchievementId) and unlockedAchieves[AchievementId] and (Unlocks.Unlocks["Achievements"]["Unlocked"] or Values.DebugMode):
		if !PreviousState:
			PreviousState = true
			get_tree().get_first_node_in_group("TextLogSection").writeAchievementUnlockToLog(AchievementId)
		
		LockedRect.visible = false
		UnlockedRect.visible = true
	else:
		LockedRect.visible = true
		UnlockedRect.visible = false
		
		if Achievements.Achievements[AchievementId]["Trigger"].call() == true and (Unlocks.Unlocks["Achievements"]["Unlocked"] or Values.DebugMode):
			SaveData.UnlockedAchievements[AchievementId] = true

func _on_locked_rect_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if AchievementId == "91":
			SaveData.UnlockedAchievements[AchievementId] = true
