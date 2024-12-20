extends ColorRect

# Nodes
var ResourceNameLabel
var ResourceNeededLabel
var ResourceProgressBar
var ResourcePerSecondLabel

var ResourceType = "Oak":
	set(value):
		ResourceType = value
		setupNodePaths()
		setResource()

var Needed = 1000
var Colected = 0

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	updateProgress()

func updateProgress():
	if ResourceProgressBar == null:
		setupNodePaths()
		
		ResourceNeededLabel.text = str(Colected) + "/" + str(Needed)
		ResourceProgressBar.value = remap(Colected, 0, Needed, 0, 100)
		ResourcePerSecondLabel.text = "4" # Need to setup first before I can display

func setResource():
	color = Values.ResourceValues[ResourceType]["Color"]
	ResourceNameLabel.text = ResourceType

func setupNodePaths():
	ResourceNameLabel = $MC/VBox/ResourceNameLabel
	ResourceNeededLabel = $MC/VBox/MC/ResourceNeededLabel
	ResourceProgressBar = $MC/VBox/MC2/ResourceProgressBar
	ResourcePerSecondLabel = $MC/VBox/MC3/ResourcePerSecondLabel
