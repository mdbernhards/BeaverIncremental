extends MarginContainer

var WoodType = "Oak"
var WCCurrentPrice = 0
var LevelCurrentPrice = 0

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
var WCCantAffordRect

# Level Nodes
var CurrentLevelLabel
var LevelPriceLabel
var LevelCantAffordRect

func _ready():
	WCCurrentPrice = 0
	LevelCurrentPrice = 0
	setNodePaths()
	changeBarValues()

func _process(_delta):
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
	PerSecondLabel.text = str(roundi(Values.ResourceValues[WoodType]["RealPerSecondIncrease"] - Values.ResourceValues[WoodType]["RealPerSecondLoss"])) + " per second"
	StorageLabel.text = str(roundi(SaveData.Resources[WoodType]["Count"])) + " / " + str(roundi(Values.ResourceValues[WoodType]["Storage"]))
	WoodProgressBar.value = remap(SaveData.Resources[WoodType]["Count"], 0, Values.ResourceValues[WoodType]["Storage"], 0, 100)
	
	# Slider
	ProductionLabel.text = WoodType + " production: " + str(ResourceProductionSlider.value) + "%"
	
	# Woodcamp
	WCCurrentPrice = CalculatePrice.getWoodcampCost(SaveData.Resources[WoodType]["Woodcamps"], WoodType)
	
	WCCountLabel.text = str(SaveData.Resources[WoodType]["Woodcamps"])
	WCPriceLabel.text = str(WCCurrentPrice)
	
	if WCCurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		WCCantAffordRect.visible = false
	else:
		WCCantAffordRect.visible = true
	
	# Levels
	LevelCurrentPrice = CalculatePrice.getLevelCost(SaveData.Resources[WoodType]["Level"], WoodType)
	
	CurrentLevelLabel.text = str(SaveData.Resources[WoodType]["Level"])
	LevelPriceLabel.text = str(LevelCurrentPrice)
	
	if LevelCurrentPrice <= SaveData.Gold["Count"]:
		LevelCantAffordRect.visible = false
	else:
		LevelCantAffordRect.visible = true

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
	WCCantAffordRect = $HBox/WoodCampMC/WoodCampHBox/MC2/VBox/WoodCampBuyButton/WCCantAffordRect
	
	CurrentLevelLabel = $HBox/LevelMC/LevelHBox/MC/VBox/CurrentLevelLabel
	LevelPriceLabel = $HBox/LevelMC/LevelHBox/MC/VBox/LevelPriceLabel
	LevelCantAffordRect = $HBox/LevelMC/LevelHBox/MC2/VBox/LevelBuyButton/LevelCantAffordRect

func _on_click_button_button_down():
	if Values.ResourceValues[WoodType]["Storage"] > (SaveData.Resources[WoodType]["Count"] + Values.ResourceValues[WoodType]["PerClick"]):
		SaveData.Resources[WoodType]["Count"] += Values.ResourceValues[WoodType]["PerClick"]
	else:
		SaveData.Resources[WoodType]["Count"] = Values.ResourceValues[WoodType]["Storage"]

func _on_wood_camp_buy_button_button_down():
	if WCCurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		SaveData.Resources[WoodType]["Count"] -= WCCurrentPrice
		SaveData.Resources[WoodType]["Woodcamps"] += 1
		updateBarValues()
		CalculateValues.calculateAllValues()

func _on_level_buy_button_button_down():
	if LevelCurrentPrice <= SaveData.Gold["Count"]:
		SaveData.Gold["Count"] -= LevelCurrentPrice
		SaveData.Resources[WoodType]["Level"] += 1
		updateBarValues()
		CalculateValues.calculateAllValues()

func _on_resource_production_slider_value_changed(value):
	SaveData.Resources[WoodType]["Production"] = value
	CalculateValues.calculateAllValues()
