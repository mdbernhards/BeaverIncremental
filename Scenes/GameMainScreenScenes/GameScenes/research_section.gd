extends VBoxContainer

var AllResearchData = Research.Research

# ResearchItem Scene
var ResearchItemScene

# Nodes
var ResearchList

func _ready():
	setNodePaths()
	SetupResearchItems()

func _process(_delta):
	pass

func SetupResearchItems():
	ResearchItemScene = load("res://Scenes/GameMainScreenScenes/GameScenes/ResearchSection/research_item.tscn")
	
	for researchId in AllResearchData:
		var researchItem = ResearchItemScene.instantiate()
		
		researchItem.setResearch(researchId)
		ResearchList.add_child(researchItem)

func setNodePaths():
	ResearchList = $MC/ScrollBar/ResearchList
