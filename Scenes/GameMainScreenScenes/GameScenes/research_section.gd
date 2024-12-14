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
		var researchItem = ResearchItemScene.instantiate()
		
		researchItem.setResearch(researchId)
		ResearchList.add_child(researchItem)

func deleteAllResearchItems():
	if !ResearchList:
		return
	
	for researchItem in ResearchList.get_children():
		ResearchList.remove_child(researchItem)
		researchItem.queue_free()

func resetResearch():
	deleteAllResearchItems()
	setupResearchItems()

func setupNodePaths():
	ResearchList = $MC/ScrollBar/ResearchList
