extends MarginContainer

var WoodType = "Oak"

# Nodes
var NameLabel
var LevelLabel
var PerClickLabel
var PerSecondLabel
var StorageLabel

func _ready():
	setNodePaths()
	changeBarValues()

func _process(delta):
	updateBarValues()

func changeBarValues(woodType = WoodType):
	WoodType = woodType
	NameLabel.text = WoodType
	LevelLabel.text = "LvL " + str(SaveData.Resources[WoodType]["Level"])
	#PerClickLabel.text = calculatePerClickValue()
	#PerSecondLabel.text = calculatePerSecondValue()
	#StorageLabel.text = calculareStorageCapacity()

func updateBarValues(woodType = WoodType):
	WoodType = woodType
	LevelLabel.text = "LvL " + str(SaveData.Resources[WoodType]["Level"])
	#PerClickLabel.text = calculatePerClickValue()
	#PerSecondLabel.text = calculatePerSecondValue()
	#StorageLabel.text = calculareStorageCapacity()

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

func _on_click_button_button_down():
	pass # +1 Wood
