extends VBoxContainer

# ResearchItem Scene
var ResearchItemScene

# Nodes
var ResearchList

func _ready():
	setupNodePaths()
	setupResearchItems()

func _process(_delta):
	setResearchStates()
	checkQueue()

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

func deleteAllResearchItems():
	if !ResearchList:
		return
	
	for researchItem in ResearchList.get_children():
		ResearchList.remove_child(researchItem)
		researchItem.queue_free()

func checkQueue():
	var queue = SaveData.ResearchInfo["Queue"]
	for QueueResearchId in queue:
		for researchItem in ResearchList.get_children():
			if researchItem.ItemId == QueueResearchId and SaveData.ResearchInfo["ResearchAtATime"] > getActiveResearch().size():
				researchItem.startResearch()

enum ResearchStatesEnum {
	CurrentlyResearching,
	Queued,
	CanResearch,
	CanQueue,
}

func setResearchStates():
	var researchState
	
	for researchItem in ResearchList.get_children():
		if researchItem.InQueue == true:
			researchState = ResearchStatesEnum.Queued
		elif researchItem.IsResearchStarted == true:
			researchState = ResearchStatesEnum.CurrentlyResearching
		elif SaveData.ResearchInfo["ResearchAtATime"] > getActiveResearch().size():
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

func setupNodePaths():
	ResearchList = $MC/ScrollBar/ResearchList
