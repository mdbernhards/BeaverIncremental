extends VBoxContainer

# Scene
var ResearchItemScene

# Nodes
var ResearchList
var HistoryList
var ResearchTab
var HistoryTab
var SectionTitleLabel
var HistoryButton
var AutoResearchButton

var IsHistoryOpen = false

enum ResearchStatesEnum {
	CurrentlyResearching,
	Queued,
	CanResearch,
	CanQueue,
}

var ActiveResearch

func _ready():
	setupNodePaths()
	setupResearchItems()
	setupHistoryItems()

func _process(_delta):
	pass

func setupResearchItems():
	ResearchItemScene = load("res://Scenes/GameMainScreenScenes/GameScenes/ResearchSection/research_item.tscn")
	
	for researchId in Research.Research:
		if !SaveData.UnlockedResearch.has(researchId) or (SaveData.UnlockedResearch.has(researchId) and !SaveData.UnlockedResearch[researchId]):
			var researchItem = ResearchItemScene.instantiate()
			
			researchItem.setResearch(researchId)
			ResearchList.add_child(researchItem)
			
	for currentResearchId in SaveData.ResearchInfo["CurrentResearch"]:
		for researchItem in ResearchList.get_children():
			if researchItem.ItemId == currentResearchId:
				researchItem.resumeResearch(SaveData.ResearchInfo["CurrentResearch"][currentResearchId])
			
	for queueResearchId in SaveData.ResearchInfo["Queue"]:
		for researchItem in ResearchList.get_children():
			if researchItem.ItemId == queueResearchId:
				researchItem.InQueue = true

func setupHistoryItems():
	deleteAllHistoryItems()
	var historyItemScene = load("res://Scenes/GameMainScreenScenes/GameScenes/ResearchSection/history_item.tscn")
	
	var keys = SaveData.UnlockedResearch.keys()
	keys.sort_custom(sortDescending)
	
	for researchId in keys:
		if SaveData.UnlockedResearch[researchId]:
			var historyItem = historyItemScene.instantiate()
			
			historyItem.setResearch(researchId)
			HistoryList.add_child(historyItem)

func sortDescending(a, b):
	if int(a) > int(b):
		return true
	return false

func deleteAllResearchItems():
	if !ResearchList:
		return
	
	for researchItem in ResearchList.get_children():
		ResearchList.remove_child(researchItem)
		researchItem.queue_free()

func deleteAllHistoryItems():
	if !HistoryList:
		return
	
	for historyItem in HistoryList.get_children():
		HistoryList.remove_child(historyItem)
		historyItem.queue_free()

func checkQueue():
	var queue = SaveData.ResearchInfo["Queue"]
	for queueResearchId in queue:
		for researchItem in ResearchList.get_children():
			if researchItem.ItemId == queueResearchId and Values.ResourceValues["Research"]["ResearchAtATime"] > getActiveResearch().size():
				researchItem.startResearch()
		
		if SaveData.UnlockedResearch.has(queueResearchId) and SaveData.UnlockedResearch[queueResearchId]:
			SaveData.ResearchInfo["Queue"].erase(queueResearchId)

func setResearchStates():
	var researchState
	
	for researchItem in ResearchList.get_children():
		if researchItem.InQueue == true:
			researchState = ResearchStatesEnum.Queued
		elif researchItem.IsResearchStarted == true:
			researchState = ResearchStatesEnum.CurrentlyResearching
		elif Values.ResourceValues["Research"]["ResearchAtATime"] > getActiveResearch().size():
			researchState = ResearchStatesEnum.CanResearch
		else:
			researchState = ResearchStatesEnum.CanQueue

		researchItem.setResearchState(researchState)

func getActiveResearch():
	var activeResearch = {}
	
	for researchItem in ResearchList.get_children():
		if researchItem.IsResearchStarted:
			if not activeResearch.has(researchItem.ItemId):
				activeResearch[researchItem.ItemId] = {}
				
			activeResearch[researchItem.ItemId] = researchItem.ResearchTimer.time_left
	
	SaveData.ResearchInfo["CurrentResearch"] = activeResearch
	
	return activeResearch

func resetResearch():
	deleteAllResearchItems()
	setupResearchItems()
	setupHistoryItems()

func setupNodePaths():
	ResearchList = $Research/ScrollBar/MC/ResearchList
	HistoryList = $History/Scroll/MC/HistoryList
	ResearchTab = $Research
	HistoryTab = $History
	SectionTitleLabel = $TopHBox/TitleMC/TitleLabel
	HistoryButton = $TopHBox/TitleMC/HistoryButton
	AutoResearchButton = $TopHBox/TitleMC/AutoResearchButton

func _on_history_button_button_down() -> void:
	IsHistoryOpen = !IsHistoryOpen
	
	if IsHistoryOpen:
		ResearchTab.visible = false
		HistoryTab.visible = true
		SectionTitleLabel.text = "Research History"
		HistoryButton.text = "Back"
	else:
		ResearchTab.visible = true
		HistoryTab.visible = false
		SectionTitleLabel.text = "Research"
		HistoryButton.text = "History"

func _on_research_section_timer_timeout() -> void:
	if ActiveResearch != getActiveResearch().keys():
		setupHistoryItems()
		ActiveResearch = getActiveResearch().keys()
	
	setResearchStates()
	checkQueue()
	
	if Unlocks.Unlocks["Research"]["History"] or Values.DebugMode:
		HistoryButton.visible = true
	else:
		HistoryButton.visible = false
	
	if Unlocks.Unlocks["Research"]["AutoResearch"] or Values.DebugMode:
		AutoResearchButton.visible = true
	else:
		AutoResearchButton.visible = false
		AutoResearchButton.button_pressed = false

func _on_auto_research_button_toggled(toggled_on: bool) -> void:
	Values.ResourceValues["Research"]["AutoResearch"] = toggled_on
