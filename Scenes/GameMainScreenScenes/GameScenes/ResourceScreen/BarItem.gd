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
var WCRect
var WCHBox
var LockedWCRect
var WoodCampBuyMaxButton

# Beaver Nodes
var BeaverCountLabel
var BeaverPriceLabel
var BeaverCantAffordRect
var BeaverMaxCantAffordRect
var BeaverRect
var BeaverHBox
var LockedBeaverRect
var BeaverBuyMaxButton

var mouseOverBeaver = false
var mouseOverWoodcamp = false

func _ready():
	WCCurrentPrice = 0
	BeaverCurrentPrice = 0
	setNodePaths()
	changeBarValues()

func _process(_delta):
	pass

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
	PerClickLabel.text = str(NumberFormatting.formatNumber(roundi(Values.ResourceValues[WoodType]["PerClick"]))) + " per click"
	PerSecondLabel.text = str(NumberFormatting.formatNumber(roundi(Values.ResourceValues[WoodType]["RealPerSecondIncrease"] - Values.ResourceValues[WoodType]["RealPerSecondLoss"]))) + " per second"
	StorageLabel.text = str(NumberFormatting.formatNumber(floor(SaveData.Resources[WoodType]["Count"]))) + " / " + str(NumberFormatting.formatNumber(floor(Values.ResourceValues[WoodType]["Storage"])))
	WoodProgressBar.value = remap(SaveData.Resources[WoodType]["Count"], 0, Values.ResourceValues[WoodType]["Storage"], 0, 100)
	
	# Slider
	ProductionLabel.text = WoodType + " production: " + str(ResourceProductionSlider.value) + "%"
	
	# Woodcamp
	WCCurrentPrice = round(CalculatePrice.getWoodcampCost(SaveData.Resources[WoodType]["Woodcamps"], WoodType) * Values.ResourceValues[WoodType]["WcPriceMultip"])
	
	if mouseOverWoodcamp and Values.ResourceValues[WoodType]["ExtraWoodcamps"] > 0:
		WCCountLabel.text = str(SaveData.Resources[WoodType]["Woodcamps"]) + " + " + str(Values.ResourceValues[WoodType]["ExtraWoodcamps"])
	else:
		WCCountLabel.text = str(SaveData.Resources[WoodType]["Woodcamps"] + Values.ResourceValues[WoodType]["ExtraWoodcamps"])
	
	WCPriceLabel.text = str(NumberFormatting.formatNumber(WCCurrentPrice))
	
	if WCCurrentPrice <= SaveData.Gold["Count"]:
		WCCantAffordRect.visible = false
		WCMaxCantAffordRect.visible = false
	else:
		WCCantAffordRect.visible = true
		WCMaxCantAffordRect.visible = true
	
	# Levels
	BeaverCurrentPrice = round(CalculatePrice.getBeaverCost(SaveData.Resources[WoodType]["Beavers"], WoodType) * Values.ResourceValues[WoodType]["BeaverPriceMultip"])
	
	if mouseOverBeaver and Values.ResourceValues[WoodType]["ExtraBeavers"] > 0:
		BeaverCountLabel.text = str(SaveData.Resources[WoodType]["Beavers"]) + " + " + str(Values.ResourceValues[WoodType]["ExtraBeavers"])
	else:
		BeaverCountLabel.text = str(SaveData.Resources[WoodType]["Beavers"] + Values.ResourceValues[WoodType]["ExtraBeavers"])
	
	BeaverPriceLabel.text = str(NumberFormatting.formatNumber(BeaverCurrentPrice))
	
	if BeaverCurrentPrice <= SaveData.Resources[WoodType]["Count"]:
		BeaverCantAffordRect.visible = false
		BeaverMaxCantAffordRect.visible = false
	else:
		BeaverCantAffordRect.visible = true
		BeaverMaxCantAffordRect.visible = true

func getExtraBeaverCount():
	return Values.ResourceValues

func setNodePaths():
	NameLabel = $HBox/BarVBox/BarLabels/MC/TitleLabel
	PerClickLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerClickLabel
	PerSecondLabel = $HBox/BarVBox/BarRect/HBox/MC/VBox/PerSecondLabel
	StorageLabel = $HBox/BarVBox/BarLabels/MC3/StorageLabel
	WoodProgressBar = $HBox/BarVBox/BarRect/ProgressBar
	WoodBarRect = $HBox/BarVBox/BarRect
	
	ResourceProductionSlider = $HBox/BarVBox/BarRect/ResourceProductionSlider
	ProductionLabel = $HBox/BarVBox/BarRect/ResourceProductionSlider/ProductionLabel
	
	WCCountLabel = $HBox/WCMC/WCHBox/MC/VBox/wcCountLabel
	WCPriceLabel = $HBox/WCMC/WCHBox/MC/VBox/wcPriceLabel
	WCCantAffordRect = $HBox/WCMC/WCHBox/MC2/VBox/WoodCampBuyButton/WCCantAffordRect
	WCMaxCantAffordRect = $HBox/WCMC/WCHBox/MC2/VBox/WoodCampBuyMaxButton/WCMaxCantAffordRect
	WCRect = $HBox/WCMC/WCRect
	WCHBox = $HBox/WCMC/WCHBox
	LockedWCRect = $HBox/WCMC/LockedWCRect
	WoodCampBuyMaxButton = $HBox/WCMC/WCHBox/MC2/VBox/WoodCampBuyMaxButton
	
	BeaverCountLabel = $HBox/BeaverMC/BeaverHBox/MC/VBox/BeaverCountLabel
	BeaverPriceLabel = $HBox/BeaverMC/BeaverHBox/MC/VBox/BeaverPriceLabel
	BeaverCantAffordRect = $HBox/BeaverMC/BeaverHBox/MC2/VBox/BeaverBuyButton/BeaverCantAffordRect
	BeaverMaxCantAffordRect = $HBox/BeaverMC/BeaverHBox/MC2/VBox/BeaverBuyMaxButton/BeaverMaxCantAffordRect
	BeaverRect = $HBox/BeaverMC/BeaverRect
	BeaverHBox = $HBox/BeaverMC/BeaverHBox
	LockedBeaverRect = $HBox/BeaverMC/LockedBeaverRect
	BeaverBuyMaxButton = $HBox/BeaverMC/BeaverHBox/MC2/VBox/BeaverBuyMaxButton 

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

func _on_beaver_count_label_mouse_entered() -> void:
	mouseOverBeaver = true

func _on_beaver_count_label_mouse_exited() -> void:
	mouseOverBeaver = false

func _on_wc_count_label_mouse_entered() -> void:
	mouseOverWoodcamp = true

func _on_wc_count_label_mouse_exited() -> void:
	mouseOverWoodcamp = false

func _on_bar_item_timer_timeout() -> void:
	updateBarValues()
	Unlocks.checkForUnlocks()
	
	if Unlocks.Unlocks[WoodType]["Unlocked"] or Values.DebugMode:
		visible = true
	else:
		visible = false
	
	if Unlocks.Unlocks["Beavers"]["Unlocked"] or Values.DebugMode:
		BeaverRect.visible = true
		BeaverHBox.visible = true
		LockedBeaverRect.visible = false
		
		if Unlocks.Unlocks["Beavers"]["BuyMax"] or Values.DebugMode:
			BeaverBuyMaxButton.visible = true
		else:
			BeaverBuyMaxButton.visible = false
	else:
		BeaverRect.visible = false
		BeaverHBox.visible = false
		LockedBeaverRect.visible = true
		if SaveData.Resources["Oak"]["Count"] > BeaverCurrentPrice * 2:
			Unlocks.Unlocks["Beavers"]["Unlocked"] = true
	
	if Unlocks.Unlocks["Woodcamps"]["Unlocked"] or Values.DebugMode:
		WCRect.visible = true
		WCHBox.visible = true
		PerSecondLabel.visible = true
		LockedWCRect.visible = false
		
		if WoodType != "Oak":
			ResourceProductionSlider.visible = true
		else:
			ResourceProductionSlider.visible = false
		
		if Unlocks.Unlocks["Woodcamps"]["BuyMax"] or Values.DebugMode:
			WoodCampBuyMaxButton.visible = true
		else:
			WoodCampBuyMaxButton.visible = false
	else:
		WCRect.visible = false
		WCHBox.visible = false
		PerSecondLabel.visible = false
		ResourceProductionSlider.visible = false
		LockedWCRect.visible = true
