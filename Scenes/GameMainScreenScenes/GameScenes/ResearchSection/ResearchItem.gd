extends MarginContainer

var ResearchData
var ItemId

# Nodes
var NameLabel
var DescriptionLabel
var TimeLeftLabel
var PriceLabel
var ResearchProgressBar
var ResearchTimer
var ResearchCantAffordColorRect
var QueueCantAffordColorRect
var StartResearchButton
var QueueButton
var ResearchingRect
var ResearchingLabel
var CancelButton
var ResearchIdLabel

var IsResearchStarted = false
var InQueue = false

var IsMouseOnCancel = false

var State

enum ResearchStatesEnum {
	CurrentlyResearching,
	Queued,
	CanResearch,
	CanQueue,
}

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func updateResearchVisability():
	if IsResearchStarted:
		updateProgressBar()
		
		if ResearchTimer.is_stopped():
			ResearchTimer.start()
	else:
		if checkIfCanAfford():
			ResearchCantAffordColorRect.visible = false
			QueueCantAffordColorRect.visible = false
		else:
			ResearchCantAffordColorRect.visible = true
			QueueCantAffordColorRect.visible = true	

func setCancelButtonText():
	if IsMouseOnCancel:
		CancelButton.text = "Remove?"
	else:
		var spotInQueue = 1
		var buttonText
			
		for queueId in SaveData.ResearchInfo["Queue"]:
			if ItemId == queueId:
				break
			spotInQueue += 1
		
		if spotInQueue == 1:
			buttonText = "1st"
		elif spotInQueue == 2:
			buttonText = "2nd"
		elif spotInQueue == 3:
			buttonText = "3rd"
		else:
			buttonText = str(spotInQueue) + "th"
		
		CancelButton.text = buttonText + " in Queue"

func setResearch(ResearchNr):
	setNodePaths()
	
	ItemId = ResearchNr
	ResearchData = Research.Research[ResearchNr]
	
	NameLabel.text = ResearchData["Name"]
	DescriptionLabel.text = ResearchData["Description"]
	ResearchIdLabel.text = str(ResearchNr)
	
	updateResearch()

func updateResearch():
	ResearchData = Research.Research[ItemId]
	
	var researchTime = ResearchData["Time"] * Values.ResourceValues["Research"]["TimeMultip"]
	
	ResearchTimer.wait_time = researchTime
	TimeLeftLabel.text = timeConvert(researchTime)
	
	PriceLabel.text = getPriceText()

func timeConvert(timeInSeconds):
	timeInSeconds = int(timeInSeconds)
	
	var seconds = timeInSeconds % 60
	var minutes = (timeInSeconds / 60) % 60
	var hours = (timeInSeconds / 60) / 60
	
	return "%02d:%02d:%02d" % [hours, minutes, seconds]

func getPriceText():
	var PriceText = "Price: "
	
	var woodTypes = Values.WoodTypes
	
	for woodType in woodTypes:
		var resourceCost = ResearchData[woodType + "Cost"]
		var formatedCost = str(NumberFormatting.formatNumber(resourceCost)) + " " + woodType
		
		if resourceCost > 0:
			if resourceCost > SaveData.Resources[woodType]["Count"]:
				PriceText += "[color=red]" + formatedCost + "[/color], "
			else:
				PriceText += formatedCost + ", "
	
	return PriceText.left(PriceText.length() - 2)

func setNodePaths():
	NameLabel = $BG/HBox/MC/VBox/MC/TitleLabel
	DescriptionLabel = $BG/HBox/MC/VBox/MC2/EffectLabel
	TimeLeftLabel = $BG/HBox/MC2/VBox/MC/ResearchProgressBar/MC/TimeLeftLabel
	PriceLabel = $BG/HBox/MC/VBox/MC3/PriceLabel
	ResearchProgressBar = $BG/HBox/MC2/VBox/MC/ResearchProgressBar
	ResearchTimer = $ResearchTimer
	ResearchCantAffordColorRect = $BG/HBox/MC2/VBox/MC2/StartResearchButton/ResearchCantAffordColorRect
	QueueCantAffordColorRect = $BG/HBox/MC2/VBox/MC2/QueueButton/QueueCantAffordColorRect
	StartResearchButton = $BG/HBox/MC2/VBox/MC2/StartResearchButton
	QueueButton = $BG/HBox/MC2/VBox/MC2/QueueButton
	ResearchingRect = $BG/HBox/MC2/VBox/MC2/ResearchingRect
	ResearchingLabel = $BG/HBox/MC2/VBox/MC2/ResearchingRect/ResearchingLabel
	CancelButton = $BG/HBox/MC2/VBox/MC2/CancelButton
	ResearchIdLabel = $BG/ResearchIdLabel

func _on_start_research_button_button_down():
	if checkIfCanAfford():
		removeResources()
		startResearch()

func _on_queue_button_button_down() -> void:
	if checkIfCanAfford():
		removeResources()
		SaveData.ResearchInfo["Queue"].append(ItemId)
		InQueue = true

func startResearch():
	InQueue = false
	SaveData.ResearchInfo["Queue"].erase(ItemId)
	IsResearchStarted = true
	ResearchTimer.start()

func resumeResearch(timeLeft):
	IsResearchStarted = true
	ResearchTimer.start(timeLeft)

func removeResources():
	var woodTypes = Values.WoodTypes
	
	for woodType in woodTypes:
		SaveData.Resources[woodType]["Count"] -= ResearchData[woodType + "Cost"]

func checkIfCanAfford():
	if ResearchData == null:
		return false
	
	var woodTypes = Values.WoodTypes
	
	for woodType in woodTypes:
		if ResearchData[woodType + "Cost"] > 0 and ResearchData[woodType + "Cost"] > SaveData.Resources[woodType]["Count"]:
			return false
	
	return true

func checkIfVisible():
	if ResearchData == null:
		return false
	
	var woodTypes = Values.WoodTypes
	
	for woodType in woodTypes:
		if ResearchData[woodType + "Cost"] > 0 and Unlocks.Unlocks[woodType]["Unlocked"]:
			if ResearchData[woodType + "Cost"] * 0.66 < SaveData.Resources[woodType]["Count"]:
				return true
				
			if ResearchData[woodType + "Cost"] * 0.3 > SaveData.Resources[woodType]["Count"]:
				return false
			
		if ResearchData[woodType + "Cost"] > 0 and !Unlocks.Unlocks[woodType]["Unlocked"]:
			return false
	
	return true

func updateProgressBar():
	ResearchProgressBar.value = remap(ResearchTimer.wait_time - ResearchTimer.time_left, 0, ResearchTimer.wait_time, 0, 100)
	TimeLeftLabel.text = timeConvert(ResearchTimer.time_left)

func _on_research_timer_timeout():
	SaveData.UnlockedResearch[str(ItemId)] = true
	CalculateValues.calculateAllValues()
	get_tree().get_first_node_in_group("TextLogSection").writeResearchUnlockToLog(ItemId)
	
	if SaveData.GeneralInfo.has("TotalResearchDone"):
		SaveData.GeneralInfo["TotalResearchDone"] += 1
	else:
		SaveData.GeneralInfo["TotalResearchDone"] = 1
	
	if SaveData.GeneralInfo.has("TempResearchDone"):
		SaveData.GeneralInfo["TempResearchDone"] += 1
	else:
		SaveData.GeneralInfo["TempResearchDone"] = 1
	
	queue_free()

func setResearchState(state):
	if State != state:
		hideAllResearchStates()
		
		match state:
			ResearchStatesEnum.CurrentlyResearching:
				ResearchingRect.visible = true
			ResearchStatesEnum.Queued:
				CancelButton.visible = true
			ResearchStatesEnum.CanResearch:
				StartResearchButton.visible = true
			ResearchStatesEnum.CanQueue:
				QueueButton.visible = true
		
		State = state

func hideAllResearchStates():
	StartResearchButton.visible = false
	QueueButton.visible = false
	ResearchingRect.visible = false
	CancelButton.visible = false
	
func refundResources():
	var woodTypes = Values.WoodTypes
	
	for woodType in woodTypes:
		SaveData.Resources[woodType]["Count"] += ResearchData[woodType + "Cost"] * 0.75

func _on_cancel_button_button_down() -> void:
	SaveData.ResearchInfo["Queue"].erase(ItemId)
	refundResources()
	InQueue = false
	IsResearchStarted = false

func _on_cancel_button_mouse_entered() -> void:
	IsMouseOnCancel = true

func _on_cancel_button_mouse_exited() -> void:
	IsMouseOnCancel = false

func _on_research_item_refresh_timer_timeout() -> void:
	updateResearch()
	setCancelButtonText()
	updateResearchVisability()
	
	if (Unlocks.Unlocks["Research"]["ResearchItems"].has(ItemId) and Research.Research[str(ItemId)]["Unlocked"].call()) or Values.DebugMode:
		visible = true
	else:
		visible = false
		if checkIfVisible():
			Unlocks.Unlocks["Research"]["ResearchItems"][ItemId] = true
