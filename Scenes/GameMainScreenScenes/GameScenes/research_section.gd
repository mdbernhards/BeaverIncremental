extends VBoxContainer

var AllResearchData = Research.Research

# ResearchItem Scene
var ResearchItemScene

# Nodes
var ResearchList

func _ready():
	setupNodePaths()
	setupResearchItems()

func _process(_delta):
	pass

func setupResearchItems():
	ResearchItemScene = load("res://Scenes/GameMainScreenScenes/GameScenes/ResearchSection/research_item.tscn")
	
	for researchId in AllResearchData:
		if !SaveData.UnlockedResearch.has(researchId) or (SaveData.UnlockedResearch.has(researchId) and !SaveData.UnlockedResearch[researchId]):
			var researchItem = ResearchItemScene.instantiate()
			
			researchItem.setResearch(researchId)
			ResearchList.add_child(researchItem)
			
	for currentResearchId in SaveData.CurrentResearch:
		for researchItem in ResearchList.get_children():
			if researchItem.ItemId == currentResearchId:
				researchItem.resumeResearch(SaveData.CurrentResearch[currentResearchId]["TimeLeft"])

func deleteAllResearchItems():
	if !ResearchList:
		return
	
	for researchItem in ResearchList.get_children():
		ResearchList.remove_child(researchItem)
		researchItem.queue_free()

func getActiveResearch():
	var activeResearch = {}
	
	for researchItem in ResearchList.get_children():
		if researchItem.IsResearchStarted:
			if not activeResearch.has(researchItem.ItemId):
				activeResearch[researchItem.ItemId] = {}
				
			activeResearch[researchItem.ItemId]["TimeLeft"] = researchItem.ResearchTimer.time_left
	
	return activeResearch

func resetResearch():
	deleteAllResearchItems()
	setupResearchItems()

func setupNodePaths():
	ResearchList = $MC/ScrollBar/ResearchList
