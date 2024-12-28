extends MarginContainer

var WoodType = "Oak"
var WCCurrentPrice = 0
var BeaverCurrentPrice = 0

# Nodes
var NameLabel
var PerClickLabel
var PerSecondLabel
var StorageLabel
var WoodProgressBar
var WoodBarRect

# Slider Nodes
var ResourceProductionSlider
var ProductionLabel

# Woodcamp Nodes
var WCCountLabel
var WCPriceLabel
var WCCantAffordRect
var WCMaxCantAffordRect

# Beaver Nodes
var BeaverCountLabel
var BeaverPriceLabel
var BeaverCantAffordRect
var BeaverMaxCantAffordRect

func _ready():
	WCCurrentPrice = 0
	BeaverCurrentPrice = 0
	setNodePaths()
	changeBarValues()

func _process(_delta):
	updateBarValues()

func changeBarValues(woodType = WoodType):
	WoodType = woodType
	NameLabel.text = WoodType
	
	ResourceProductionSlider.value = SaveData.Resources[WoodType]["Production"]
	WoodProgressBar.tint_progress = Values.ResourceValues[WoodType]["Color"]
	WoodBarRect.color = Values.ResourceValues[WoodType]["SecondaryColor"]
	
	updateBarValues()
	
	if WoodType == "Oak":
		ResourceProductionSlider.visible = false
	else:
		ResourceProductionSlider.visible = true

func updateBarValues(woodType = WoodType):
	WoodType = woodType
	PerClickLabel.text = str(roundi(Values.ResourceValues[WoodType]["PerClick"])) + " per click"
	PerSecondLabel.text = str(roundi(Values.ResourceValues[WoodType]["RealPerSecondIncrease"] - Values.ResourceValues[WoodType]["RealPerSecondLoss"])) + " per second"
	StorageLabel.text = str(floor(SaveData.Resources[WoodType]["Count"])) + " / " + str(floor(Values.ResourceValues[WoodType]["Storage"]))
	WoodProgressBar.value = remap(SaveData.Resources[WoodType]["Count"], 0, Values.ResourceValues[WoodType]["Storage"], 0, 100)
	
	# Slider
	ProductionLabel.text = WoodType + " production: " + str(ResourceProductionSlider.value) + "%"
	
	# Woodcamp
	WCCurrentPrice = round(CalculatePrice.getWoodcampCost(SaveData.Resources[WoodType]["Woodcamps"], WoodType) * Values.ResourceValues[WoodType]["WcPriceMultip"])
	
	WCCountLabel.text = str(SaveData.Resources[WoodType]["Woodcamps"])
	WCPriceLabel.text = str(WCCurrentPrice)
	
	if WCCurrentPrice <= SaveData.Gold["Count"]:
		WCCantAffordRect.visible = false
		WCMaxCantAffordRect.visible = false
	else:
		WCCantAffordRect.visible = true
		WCMaxCantAffordRect.visible = true
	
	# Levels
	BeaverCurrentPrice = round(CalculatePrice.getBeaverCost(SaveData.Resources[WoodType]["Beavers"], WoodType) * Values.ResourceValues[WoodType]["BeaverPriceMultip"])
	
	BeaverCountLabel.text = str(SaveData.Resources[WoodType]["Beavers"])
	BeaverPriceLabel.text = str(BeaverCurrentPrice)
	
	if BeaverCurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		BeaverCantAffordRect.visible = false
		BeaverMaxCantAffordRect.visible = false
	else:
		BeaverCantAffordRect.visible = true
		BeaverMaxCantAffordRect.visible = true

func setNodePaths():
	NameLabel = $HBox/BarVBox/BarLabels/MC/TitleLabel
	PerClickLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerClickLabel
	PerSecondLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerSecondLabel
	StorageLabel = $HBox/BarVBox/BarLabels/MC3/StorageLabel
	WoodProgressBar = $HBox/BarVBox/BarRect/ProgressBar
	WoodBarRect = $HBox/BarVBox/BarRect
	
	ResourceProductionSlider = $HBox/BarVBox/BarRect/ResourceProductionSlider
	ProductionLabel = $HBox/BarVBox/BarRect/ResourceProductionSlider/ProductionLabel
	
	WCCountLabel = $HBox/WoodCampMC/WoodCampHBox/MC/VBox/wcCountLabel
	WCPriceLabel = $HBox/WoodCampMC/WoodCampHBox/MC/VBox/wcPriceLabel
	WCCantAffordRect = $HBox/WoodCampMC/WoodCampHBox/MC2/VBox/WoodCampBuyButton/WCCantAffordRect
	WCMaxCantAffordRect = $HBox/WoodCampMC/WoodCampHBox/MC2/VBox/WoodCampBuyMaxButton/WCMaxCantAffordRect
	
	BeaverCountLabel = $HBox/BeaverMC/BeaverHBox/MC/VBox/BeaverCountLabel
	BeaverPriceLabel = $HBox/BeaverMC/BeaverHBox/MC/VBox/BeaverPriceLabel
	BeaverCantAffordRect = $HBox/BeaverMC/BeaverHBox/MC2/VBox/BeaverBuyButton/BeaverCantAffordRect
	BeaverMaxCantAffordRect = $HBox/BeaverMC/BeaverHBox/MC2/VBox/BeaverBuyMaxButton/BeaverMaxCantAffordRect

func _on_click_button_button_down():
	if Values.ResourceValues[WoodType]["Storage"] > (SaveData.Resources[WoodType]["Count"] + Values.ResourceValues[WoodType]["PerClick"]):
		SaveData.Resources[WoodType]["Count"] += Values.ResourceValues[WoodType]["PerClick"]
	else:
		SaveData.Resources[WoodType]["Count"] = Values.ResourceValues[WoodType]["Storage"]

func _on_wood_camp_buy_button_button_down():
	if WCCurrentPrice <= SaveData.Gold["Count"]:
		SaveData.Gold["Count"] -= WCCurrentPrice
		SaveData.Resources[WoodType]["Woodcamps"] += 1
		updateBarValues()
		CalculateValues.calculateAllValues()
		return true
	
	return false

func _on_wood_camp_buy_max_button_button_down() -> void:
	var keepBuying = true
	
	while keepBuying:
		keepBuying = _on_wood_camp_buy_button_button_down()

func _on_beaver_buy_button_button_down():
	if BeaverCurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		SaveData.Resources[WoodType]["Count"] -= BeaverCurrentPrice
		SaveData.Resources[WoodType]["Beavers"] += 1
		updateBarValues()
		CalculateValues.calculateAllValues()
		return true
	
	return false

func _on_beaver_buy_max_button_button_down() -> void:
	var keepBuying = true
	
	while keepBuying:
		keepBuying = _on_beaver_buy_button_button_down()

func _on_resource_production_slider_value_changed(value):
	SaveData.Resources[WoodType]["Production"] = value
	CalculateValues.calculateAllValues()
