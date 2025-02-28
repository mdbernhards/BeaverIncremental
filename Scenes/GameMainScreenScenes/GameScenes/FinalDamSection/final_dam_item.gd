extends MarginContainer

# Nodes
var WoodTypeLabel
var WoodProgressBar
var ProgressMC
var PercentigeDoneLabel
var StorageLabel
var PerSecondLabel
var SliderPercentageLabel
var ProductionSlider
var UnlockButton
var CantAffordRect
var BGColorRect
var CompletedLabel

@export var WoodType: String:
	set(value):
		setupNodePaths()
		WoodType = value
		WoodTypeLabel.text = value
	
		ProductionSlider.value = SaveData.FinalDamData[WoodType]["ProductionSpeedSlider"]
		WoodProgressBar.tint_progress = Values.ResourceValues[WoodType]["Color"]
		BGColorRect.color = Values.ResourceValues[WoodType]["SecondaryColor"]
		UnlockButton.text = NumberFormatting.formatNumber(Values.ResourceValues[WoodType]["MagicToUnlockDamSection"]) + " Magic"

var TotalNeeded = 1e15 + 1000
var UnlockCost = 1e9
var BasePerSecondIncrease = 1e7

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func setCantAffordRect():
	if checkIfCanAfford():
		CantAffordRect.visible = false
	else:
		CantAffordRect.visible = true

func checkIfCanAfford():
	return SaveData.Magic["Count"] >= Values.ResourceValues[WoodType]["MagicToUnlockDamSection"]

func updateBarValues():
	PerSecondLabel.text = str(NumberFormatting.formatNumber(roundf(Values.ResourceValues[WoodType]["FinalDamPerSecond"]))) + " Per Sec"
	StorageLabel.text = str(NumberFormatting.formatNumber(max(0, floor(SaveData.FinalDamData[WoodType]["ResourceCountUsed"])))) + " / " + str(NumberFormatting.formatNumber(TotalNeeded + 1))
	
	var progressPercentige = remap(SaveData.FinalDamData[WoodType]["ResourceCountUsed"], 0, TotalNeeded, 0, 100)
	PercentigeDoneLabel.text = str(roundPercentige(progressPercentige)) + "% Done"
	WoodProgressBar.value = progressPercentige
	ProductionSlider.value = SaveData.FinalDamData[WoodType]["ProductionSpeedSlider"]

func roundPercentige(percentige):
	if percentige < 0.01:
		return roundf(percentige * 10000)/10000
	elif percentige < 0.1:
		return roundf(percentige * 1000)/1000
	elif percentige < 1:
		return roundf(percentige * 100)/100
	else:
		return roundf(percentige * 10)/10

func checkIfCompleted():
	if SaveData.FinalDamData[WoodType]["ResourceCountUsed"] >= TotalNeeded and SaveData.FinalDamData[WoodType]["Completed"] == false:
		get_tree().get_first_node_in_group("TextLogSection").writeToLog(WoodType + " Section of the dam is completed!")
		SaveData.FinalDamData[WoodType]["Completed"] = true

func _on_production_slider_value_changed(value: float) -> void:
	SaveData.FinalDamData[WoodType]["ProductionSpeedSlider"] = value
	SliderPercentageLabel.text = str(value) + "%"
	CalculateValues.calculateAllValues()

func _on_unlock_button_button_down() -> void:
	if checkIfCanAfford():
		if SaveData.Magic["Count"] >= Values.ResourceValues[WoodType]["MagicToUnlockDamSection"]:
			SaveData.Magic["Count"] -= Values.ResourceValues[WoodType]["MagicToUnlockDamSection"]
			SaveData.FinalDamData[WoodType]["Unlocked"] = true
			_on_final_dam_refresh_timer_timeout()

func _on_final_dam_refresh_timer_timeout() -> void:
	setCantAffordRect()
	updateBarValues()
	checkIfCompleted()
	
	if SaveData.FinalDamData[WoodType]["Completed"]:
		CompletedLabel.visible = true
		ProgressMC.visible = false
		UnlockButton.visible = false
	elif SaveData.FinalDamData[WoodType]["Unlocked"]:
		CompletedLabel.visible = false
		ProgressMC.visible = true
		UnlockButton.visible = false
	else:
		CompletedLabel.visible = false
		ProgressMC.visible = false
		UnlockButton.visible = true

func setupNodePaths():
	WoodTypeLabel = $VBox/WoodTypeLabel
	WoodProgressBar = $VBox/BGColorRect/WoodProgressBar
	ProgressMC = $VBox/BGColorRect/WoodProgressBar/ProgressMC
	PercentigeDoneLabel = $VBox/BGColorRect/WoodProgressBar/ProgressMC/VBox/PercentigeDoneLabel
	StorageLabel = $VBox/BGColorRect/WoodProgressBar/ProgressMC/VBox/StorageLabel
	PerSecondLabel = $VBox/BGColorRect/WoodProgressBar/ProgressMC/VBox/PerSecondLabel
	SliderPercentageLabel = $VBox/BGColorRect/WoodProgressBar/ProgressMC/VBox/SliderPercentageLabel
	ProductionSlider = $VBox/BGColorRect/WoodProgressBar/ProgressMC/VBox/ProductionSlider
	UnlockButton = $VBox/BGColorRect/WoodProgressBar/UnlockButton
	CantAffordRect = $VBox/BGColorRect/WoodProgressBar/UnlockButton/CantAffordRect
	BGColorRect = $VBox/BGColorRect
	CompletedLabel = $VBox/BGColorRect/WoodProgressBar/CompleteLabel
