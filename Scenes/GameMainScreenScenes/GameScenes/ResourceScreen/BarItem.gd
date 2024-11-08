extends MarginContainer

var WoodType = "Oak"

# Nodes
var NameLabel
var LevelLabel
var PerClickLabel
var PerSecondLabel
var StorageLabel
var WoodProgressBar
var ResourceProductionSlider

# Woodcamp Nodes
var WCCountLabel
var WCPriceLabel

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
	
	if WoodType == "Oak":
		ResourceProductionSlider.visible = false
	else:
		ResourceProductionSlider.visible = true

func updateBarValues(woodType = WoodType):
	WoodType = woodType
	
	LevelLabel.text = "LvL " + str(SaveData.Resources[WoodType]["Level"])
	PerClickLabel.text = str(Values.ResourceValues[WoodType]["PerClick"]) + " per click"
	PerSecondLabel.text = str(Values.ResourceValues[WoodType]["PerSecondIncrease"]) + " per second"
	StorageLabel.text = str(SaveData.Resources[WoodType]["Count"]) + " / " + str(Values.ResourceValues[WoodType]["Storage"])
	WoodProgressBar.value = remap(SaveData.Resources[WoodType]["Count"], 0, Values.ResourceValues[WoodType]["Storage"], 0, 100)
	
	# Woodcamp
	WCCountLabel.text = str(SaveData.Resources[WoodType]["Woodcamps"])
	WCPriceLabel.text = str(CalculatePrice.getWoodcampCost(SaveData.Resources[WoodType]["Woodcamps"], WoodType))

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
	ResourceProductionSlider = $HBox/BarVBox/BarRect/ResourceProductionSlider
	
	WCCountLabel = $HBox/WoodCampMC/WoodCampHBox/MC/VBox/wcCountLabel
	WCPriceLabel = $HBox/WoodCampMC/WoodCampHBox/MC/VBox/wcPriceLabel

func _on_click_button_button_down():
	if Values.ResourceValues[WoodType]["Storage"] > (SaveData.Resources[WoodType]["Count"] + Values.ResourceValues[WoodType]["PerClick"]):
		SaveData.Resources[WoodType]["Count"] += Values.ResourceValues[WoodType]["PerClick"]
	else:
		SaveData.Resources[WoodType]["Count"] = Values.ResourceValues[WoodType]["Storage"]

func _on_wood_camp_buy_button_button_down():
	pass # Replace with function body.

func _on_level_buy_button_button_down():
	pass # Replace with function body.
