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

enum ResearchStatesEnum {
	CurrentlyResearching,
	Queued,
	CanResearch,
	CanQueue,
}

func _ready():
	setNodePaths()

func _process(_delta):
	updateResearch()
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
			
	setCancelButtonText()

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
	TimeLeftLabel.text = timeConvert(ResearchData["Time"] * Values.ResourceValues["Research"]["TimeMultip"])
	PriceLabel.text = getPriceText()
	ResearchTimer.wait_time = ResearchData["Time"] * Values.ResourceValues["Research"]["TimeMultip"]

func timeConvert(timeInSeconds):
	timeInSeconds = int(timeInSeconds)
	
	var seconds = timeInSeconds % 60
	var minutes = (timeInSeconds / 60) % 60
	var hours = (timeInSeconds / 60) / 60
	
	return "%02d:%02d:%02d" % [hours, minutes, seconds]

func getPriceText():
	var PriceText = "Price: "

	if ResearchData["OakCost"] > 0:
		PriceText += (str(ResearchData["OakCost"]) + " Oak, ")
	if ResearchData["AppleCost"] > 0:
		PriceText += (str(ResearchData["AppleCost"]) + " Apple, ")
	if ResearchData["MapleCost"] > 0:
		PriceText += (str(ResearchData["MapleCost"]) + " Maple, ")
	if ResearchData["BirchCost"] > 0:
		PriceText += (str(ResearchData["BirchCost"]) + " Birch, ")
	if ResearchData["SpruceCost"] > 0:
		PriceText += (str(ResearchData["SpruceCost"]) + " Spruce, ")
	if ResearchData["ChestnutCost"] > 0:
		PriceText += (str(ResearchData["ChestnutCost"]) + " Chestnut, ")
	if ResearchData["CherryCost"] > 0:
		PriceText += (str(ResearchData["CherryCost"]) + " Cherry, ")
	if ResearchData["AshCost"] > 0:
		PriceText += (str(ResearchData["AshCost"]) + " Ash, ")
	if ResearchData["CedarCost"] > 0:
		PriceText += (str(ResearchData["CedarCost"]) + " Cedar, ")
	if ResearchData["MahoganyCost"] > 0:
		PriceText += (str(ResearchData["MahoganyCost"]) + " Mahogany, ")
	if ResearchData["EbonyCost"] > 0:
		PriceText += (str(ResearchData["EbonyCost"]) + " Ebony, ")
	if ResearchData["DogwoodCost"] > 0:
		PriceText += (str(ResearchData["DogwoodCost"]) + " Dogwood, ")
	if ResearchData["RosewoodCost"] > 0:
		PriceText += (str(ResearchData["RosewoodCost"]) + " Rosewood, ")
	if ResearchData["Ghost GumCost"] > 0:
		PriceText += (str(ResearchData["Ghost GumCost"]) + " Ghost Gum, ")
	if ResearchData["DragonwoodCost"] > 0:
		PriceText += (str(ResearchData["DragonwoodCost"]) + " Dragonwood, ")
		
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
	SaveData.Resources["Oak"]["Count"] -= ResearchData["OakCost"]
	SaveData.Resources["Apple"]["Count"] -= ResearchData["AppleCost"]
	SaveData.Resources["Maple"]["Count"] -= ResearchData["MapleCost"]
	SaveData.Resources["Birch"]["Count"] -= ResearchData["BirchCost"]
	SaveData.Resources["Spruce"]["Count"] -= ResearchData["SpruceCost"]
	SaveData.Resources["Chestnut"]["Count"] -= ResearchData["ChestnutCost"]
	SaveData.Resources["Cherry"]["Count"] -= ResearchData["CherryCost"]
	SaveData.Resources["Ash"]["Count"] -= ResearchData["AshCost"]
	SaveData.Resources["Cedar"]["Count"] -= ResearchData["CedarCost"]
	SaveData.Resources["Mahogany"]["Count"] -= ResearchData["MahoganyCost"]
	SaveData.Resources["Ebony"]["Count"] -= ResearchData["EbonyCost"]
	SaveData.Resources["Dogwood"]["Count"] -= ResearchData["DogwoodCost"]
	SaveData.Resources["Rosewood"]["Count"] -= ResearchData["RosewoodCost"]
	SaveData.Resources["Ghost Gum"]["Count"] -= ResearchData["Ghost GumCost"]
	SaveData.Resources["Dragonwood"]["Count"] -= ResearchData["DragonwoodCost"]

func checkIfCanAfford():
	if ResearchData == null:
		return false
	
	if (ResearchData["OakCost"] <= SaveData.Resources["Oak"]["Count"]
	and ResearchData["AppleCost"] <= SaveData.Resources["Apple"]["Count"]
	and ResearchData["MapleCost"] <= SaveData.Resources["Maple"]["Count"]
	and ResearchData["BirchCost"] <= SaveData.Resources["Birch"]["Count"]
	and ResearchData["SpruceCost"] <= SaveData.Resources["Spruce"]["Count"]
	and ResearchData["ChestnutCost"] <= SaveData.Resources["Chestnut"]["Count"]
	and ResearchData["CherryCost"] <= SaveData.Resources["Cherry"]["Count"]
	and ResearchData["AshCost"] <= SaveData.Resources["Ash"]["Count"]
	and ResearchData["CedarCost"] <= SaveData.Resources["Cedar"]["Count"]
	and ResearchData["MahoganyCost"] <= SaveData.Resources["Mahogany"]["Count"]
	and ResearchData["EbonyCost"] <= SaveData.Resources["Ebony"]["Count"]
	and ResearchData["DogwoodCost"] <= SaveData.Resources["Dogwood"]["Count"]
	and ResearchData["RosewoodCost"] <= SaveData.Resources["Rosewood"]["Count"]
	and ResearchData["Ghost GumCost"] <= SaveData.Resources["Ghost Gum"]["Count"]
	and ResearchData["DragonwoodCost"] <= SaveData.Resources["Dragonwood"]["Count"]):
		return true
	
	return false

func updateProgressBar():
	ResearchProgressBar.value = remap(ResearchTimer.wait_time - ResearchTimer.time_left, 0, ResearchTimer.wait_time, 0, 100)
	TimeLeftLabel.text = timeConvert(ResearchTimer.time_left)

func _on_research_timer_timeout():
	SaveData.UnlockedResearch[str(ItemId)] = true
	CalculateValues.calculateAllValues()
	queue_free()

func setResearchState(state):
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

func hideAllResearchStates():
	StartResearchButton.visible = false
	QueueButton.visible = false
	ResearchingRect.visible = false
	CancelButton.visible = false
	
func refundResources():
	SaveData.Resources["Oak"]["Count"] += ResearchData["OakCost"] * 0.75
	SaveData.Resources["Apple"]["Count"] += ResearchData["AppleCost"] * 0.75
	SaveData.Resources["Maple"]["Count"] += ResearchData["MapleCost"] * 0.75
	SaveData.Resources["Birch"]["Count"] += ResearchData["BirchCost"] * 0.75
	SaveData.Resources["Spruce"]["Count"] += ResearchData["SpruceCost"] * 0.75
	SaveData.Resources["Chestnut"]["Count"] += ResearchData["ChestnutCost"] * 0.75
	SaveData.Resources["Cherry"]["Count"] += ResearchData["CherryCost"] * 0.75
	SaveData.Resources["Ash"]["Count"] += ResearchData["AshCost"] * 0.75
	SaveData.Resources["Cedar"]["Count"] += ResearchData["CedarCost"] * 0.75
	SaveData.Resources["Mahogany"]["Count"] += ResearchData["MahoganyCost"] * 0.75
	SaveData.Resources["Ebony"]["Count"] += ResearchData["EbonyCost"] * 0.75
	SaveData.Resources["Dogwood"]["Count"] += ResearchData["DogwoodCost"] * 0.75
	SaveData.Resources["Rosewood"]["Count"] += ResearchData["RosewoodCost"] * 0.75
	SaveData.Resources["Ghost Gum"]["Count"] += ResearchData["Ghost GumCost"] * 0.75
	SaveData.Resources["Dragonwood"]["Count"] += ResearchData["DragonwoodCost"] * 0.75

func _on_cancel_button_button_down() -> void:
	SaveData.ResearchInfo["Queue"].erase(ItemId)
	refundResources()
	InQueue = false
	IsResearchStarted = false

func _on_cancel_button_mouse_entered() -> void:
	IsMouseOnCancel = true

func _on_cancel_button_mouse_exited() -> void:
	IsMouseOnCancel = false
