extends HBoxContainer

var MouseInFocus
var active_tooltip = null

# Nodes
var TextLog
var TooltipNode

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func writeResearchUnlockToLog(researchId):
	var researchData = Research.Research[researchId]
	WriteToLog("[url=tooltip_research,%s][color=#228B22][b][%s][/b][/color][/url] has been researched" % [researchId, researchData["Name"]])

func writeAchievementUnlockToLog(achievementId):
	var achievementData = Achievements.Achievements[achievementId]
	WriteToLog("Achievement [url=tooltip_achievement,%s][color=#FFD700][b][%s][/b][/color][/url] has been unlocked" % [achievementId, achievementData["Name"]])

func writeMagicUpgradeUnlockToLog(magicId):
	var magicUpgradeData = Magic.Magic[magicId]
	WriteToLog("Magic Upgrade [url=tooltip_magic,%s][color=#800080][b][%s][/b][/color][/url] has been unlocked" % [magicId, magicUpgradeData["Name"]])

func WriteToLog(text):
	if text != "":
		TextLog.append_text(text + "\n")
	else:
		if !MouseInFocus:
			await TextLog.get_v_scroll_bar().changed
			TextLog.scroll_vertical = int(TextLog.get_v_scroll_bar().max_value)

func clearLog():
	TextLog.text = ""

func _make_custom_tooltip(_for_text):
	var name = "????"
	var description = "????"
	
	if _for_text.begins_with("tooltip_research"):
		var researchId = _for_text.split(",")[1]
		name = Research.Research[researchId]["Name"]
		description = Research.Research[researchId]["Description"]
	elif _for_text.begins_with("tooltip_achievement"):
		var achievementId = _for_text.split(",")[1]
		name = Achievements.Achievements[achievementId]["Name"]
		description = Achievements.Achievements[achievementId]["Description"]
	elif _for_text.begins_with("tooltip_magic"):
		var magicId = _for_text.split(",")[1]
		name = Magic.Magic[magicId]["Name"]
		description = Magic.Magic[magicId]["Description"]
		
	var tooltip = load("res://Scenes/Tooltips/tooltip.tscn").instantiate()
	tooltip.setTooltip(name, description)
	
	return tooltip

func _on_text_log_mouse_entered() -> void:
	MouseInFocus = true

func _on_text_log_mouse_exited() -> void:
	MouseInFocus = false

func setupNodePaths():
	TextLog = $MC/VBox/MC/MC/TextLog
	TooltipNode = $TooltipNode

func _on_text_log_meta_hover_started(meta: Variant) -> void:
	active_tooltip = _make_custom_tooltip(meta)
	TooltipNode.add_child(active_tooltip)
	active_tooltip.global_position = get_global_mouse_position() + Vector2(5, -200)

func _on_text_log_meta_hover_ended(meta: Variant) -> void:
	if active_tooltip:
		active_tooltip.queue_free()
		active_tooltip = null
