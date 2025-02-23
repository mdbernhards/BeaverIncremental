extends HBoxContainer

var MouseInFocus
var active_tooltip = null

# Nodes
var TextLog
var TooltipNode

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
	pass

func writeResearchUnlockToLog(researchId):
	var researchData = Research.Research[researchId]
	writeToLog("[url=tooltip_research,%s][color=#228B22][b][%s][/b][/color][/url] has been researched" % [researchId, researchData["Name"]])

func writeResearchAutoQueuedToLog(researchId):
	var researchData = Research.Research[researchId]
	writeToLog("[url=tooltip_research,%s][color=#228B22][b][%s][/b][/color][/url] has been automaticaly queued to be researched" % [researchId, researchData["Name"]])

func writeAchievementUnlockToLog(achievementId):
	var achievementData = Achievements.Achievements[achievementId]
	writeToLog("Achievement [url=tooltip_achievement,%s][color=#FFD700][b][%s][/b][/color][/url] has been unlocked" % [achievementId, achievementData["Name"]])

func writeMagicUpgradeUnlockToLog(magicId):
	var magicUpgradeData = Magic.Magic[magicId]
	writeToLog("Magic Upgrade [url=tooltip_magic,%s][color=#800080][b][%s][/b][/color][/url] has been unlocked" % [magicId, magicUpgradeData["Name"]])

func writeCaughtFishToLog(fishId):
	var fishData = Fishing.Fish[fishId]
	if SaveData.CaughtFish[fishId]["Caught"]:
		writeToLog("[url=tooltip_fish,%s][color=#2999ff][b][%s][/b][/color][/url] has been caught" % [fishId, fishData.FishName])
	else:
		writeToLog("[url=tooltip_fish,%s][color=#2999ff][b][%s][/b][/color][/url] has been caught for the first time" % [fishId, fishData.FishName])

func writeToLog(text):
	if text != "":
		TextLog.append_text(text + "\n")
	
	if !MouseInFocus:
		TextLog.scroll_to_line(TextLog.get_line_count()-1)

func clearLog():
	TextLog.text = ""

func _make_custom_tooltip(_for_text):
	var title = "????"
	var description = "????"
	var price = null
	
	if _for_text.begins_with("tooltip_research"):
		var researchId = _for_text.split(",")[1]
		title = Research.Research[researchId]["Name"]
		description = Research.Research[researchId]["Description"]
	elif _for_text.begins_with("tooltip_achievement"):
		var achievementId = _for_text.split(",")[1]
		title = Achievements.Achievements[achievementId]["Name"]
		description = Achievements.Achievements[achievementId]["Description"]
	elif _for_text.begins_with("tooltip_magic"):
		var magicId = _for_text.split(",")[1]
		title = Magic.Magic[magicId]["Name"]
		description = Magic.Magic[magicId]["Description"]
	elif _for_text.begins_with("tooltip_fish"):
		var fishId = _for_text.split(",")[1]
		title = Fishing.Fish[int(fishId)].FishName
		description = Fishing.FishEffect[int(fishId)]
		price = Fishing.FishPrice[int(fishId)] * Values.ResourceValues["Fish"]["FishPriceMultip"]
		
	var tooltip = load("res://Scenes/Tooltips/tooltip.tscn").instantiate()
	tooltip.IsTextLogTooltip = true
	tooltip.setTooltip(title, description, null, null, null, price)
	
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

func _on_text_log_meta_hover_ended(_meta: Variant) -> void:
	if active_tooltip:
		active_tooltip.queue_free()
		active_tooltip = null
