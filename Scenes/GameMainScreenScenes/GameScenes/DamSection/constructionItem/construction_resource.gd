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

var DamType = Dams.DamEnum.SmallDam
var ItemNum = 1

var Needed = 1000
var Collected = 0
var PerSecond = 0

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	updateProgress()

func updateProgress():
	if ResourceProgressBar:
		setupNodePaths()
		
		ResourceNeededLabel.text = str(roundi(Collected)) + "/" + str(roundi(Needed))
		ResourceProgressBar.value = remap(Collected, 0, Needed, 0, 100)
		ResourcePerSecondLabel.text = str(roundi(PerSecond)) + " per sec."

func setResource():
	color = Values.ResourceValues[ResourceType]["Color"]
	ResourceNameLabel.text = ResourceType

func setupNodePaths():
	ResourceNameLabel = $MC/VBox/ResourceNameLabel
	ResourceNeededLabel = $MC/VBox/MC/ResourceNeededLabel
	ResourceProgressBar = $MC/VBox/MC2/ResourceProgressBar
	ResourcePerSecondLabel = $MC/VBox/MC3/ResourcePerSecondLabel
