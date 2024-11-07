extends MarginContainer

var WoodType = "Oak"

# Nodes
var NameLabel
var LevelLabel
var PerClickLabel
var PerSecondLabel
var StorageLabel
var WoodProgressBar

func _ready():
	setNodePaths()
	changeBarValues()

func _process(delta):
	updateBarValues()

func changeBarValues(woodType = WoodType):
	WoodType = woodType
	
	NameLabel.text = WoodType
	WoodProgressBar.tint_progress = Values.ResourceValues[WoodType]["Color"]
	updateBarValues()

func updateBarValues(woodType = WoodType):
	WoodType = woodType
	
	LevelLabel.text = "LvL " + str(SaveData.Resources[WoodType]["Level"])
	PerClickLabel.text = str(Values.ResourceValues[WoodType]["PerClick"])
	PerSecondLabel.text = str(Values.ResourceValues[WoodType]["PerSecondIncrease"])
	StorageLabel.text =  str(SaveData.Resources[WoodType]["Count"]) + " / " + str(Values.ResourceValues[WoodType]["Storage"])
	WoodProgressBar.value = remap(SaveData.Resources[WoodType]["Count"], 0, Values.ResourceValues[WoodType]["Storage"], 0, 100)

func calculatePerClickValue():
	pass

func calculatePerSecondValue():
	pass

func calculareStorageCapacity():
	pass

func setNodePaths():
	NameLabel = $HBox/BarVBox/BarLabels/MC/TitleLabel
	LevelLabel = $HBox/BarVBox/BarLabels/MC2/LevelLabel
	PerClickLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerClickLabel
	PerSecondLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerSecondLabel
	StorageLabel = $HBox/BarVBox/BarLabels/MC3/StorageLabel
	WoodProgressBar = $HBox/BarVBox/BarRect/ProgressBar

func _on_click_button_button_down():
	SaveData.Resources[WoodType]["Count"] += Values.ResourceValues[WoodType]["PerClick"]
