extends MarginContainer

var WoodType = "Oak"
var CurrentPrice = 0

# Nodes
var NameLabel
var LevelLabel
var PerClickLabel
var PerSecondLabel
var StorageLabel
var WoodProgressBar

# Slider Nodes
var ResourceProductionSlider
var ProductionLabel

# Woodcamp Nodes
var WCCountLabel
var WCPriceLabel
var CantAffordColorRect

func _ready():
	CurrentPrice = 0
	setNodePaths()
	changeBarValues()

func _process(delta):
	updateBarValues()

func changeBarValues(woodType = WoodType):
	WoodType = woodType
	NameLabel.text = WoodType
	
	ResourceProductionSlider.value = SaveData.Resources[WoodType]["Production"]
	WoodProgressBar.tint_progress = Values.ResourceValues[WoodType]["Color"]
	
	updateBarValues()
	
	if WoodType == "Oak":
		ResourceProductionSlider.visible = false
	else:
		ResourceProductionSlider.visible = true

func updateBarValues(woodType = WoodType):
	WoodType = woodType
	
	LevelLabel.text = "LvL " + str(SaveData.Resources[WoodType]["Level"])
	PerClickLabel.text = str(roundi(Values.ResourceValues[WoodType]["PerClick"])) + " per click"
	PerSecondLabel.text = str(roundi(Values.ResourceValues[WoodType]["PerSecondIncrease"] - Values.ResourceValues[WoodType]["PerSecondLoss"])) + " per second"
	StorageLabel.text = str(roundi(SaveData.Resources[WoodType]["Count"])) + " / " + str(roundi(Values.ResourceValues[WoodType]["Storage"]))
	WoodProgressBar.value = remap(SaveData.Resources[WoodType]["Count"], 0, Values.ResourceValues[WoodType]["Storage"], 0, 100)
	
	# Slider
	ProductionLabel.text = WoodType + " production: " + str(ResourceProductionSlider.value) + "%"
	
	# Woodcamp
	CurrentPrice = CalculatePrice.getWoodcampCost(SaveData.Resources[WoodType]["Woodcamps"], WoodType)
	
	WCCountLabel.text = str(SaveData.Resources[WoodType]["Woodcamps"])
	WCPriceLabel.text = str(CurrentPrice)
	
	if CurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		CantAffordColorRect.visible = false
	else:
		CantAffordColorRect.visible = true

func setNodePaths():
	NameLabel = $HBox/BarVBox/BarLabels/MC/TitleLabel
	LevelLabel = $HBox/BarVBox/BarLabels/MC2/LevelLabel
	PerClickLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerClickLabel
	PerSecondLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerSecondLabel
	StorageLabel = $HBox/BarVBox/BarLabels/MC3/StorageLabel
	WoodProgressBar = $HBox/BarVBox/BarRect/ProgressBar
	
	ResourceProductionSlider = $HBox/BarVBox/BarRect/ResourceProductionSlider
	ProductionLabel = $HBox/BarVBox/BarRect/ResourceProductionSlider/ProductionLabel
	
	WCCountLabel = $HBox/WoodCampMC/WoodCampHBox/MC/VBox/wcCountLabel
	WCPriceLabel = $HBox/WoodCampMC/WoodCampHBox/MC/VBox/wcPriceLabel
	CantAffordColorRect = $HBox/WoodCampMC/WoodCampHBox/MC2/VBox/WoodCampBuyButton/CantAffordColorRect

func _on_click_button_button_down():
	if Values.ResourceValues[WoodType]["Storage"] > (SaveData.Resources[WoodType]["Count"] + Values.ResourceValues[WoodType]["PerClick"]):
		SaveData.Resources[WoodType]["Count"] += Values.ResourceValues[WoodType]["PerClick"]
	else:
		SaveData.Resources[WoodType]["Count"] = Values.ResourceValues[WoodType]["Storage"]

func _on_wood_camp_buy_button_button_down():
	if CurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		SaveData.Resources[WoodType]["Count"] -= CurrentPrice
		SaveData.Resources[WoodType]["Woodcamps"] += 1
		updateBarValues()
		CalculateValues.calculateAllValues()

func _on_level_buy_button_button_down():
	pass

func _on_resource_production_slider_value_changed(value):
	SaveData.Resources[WoodType]["Production"] = value
	CalculateValues.calculateAllValues()
