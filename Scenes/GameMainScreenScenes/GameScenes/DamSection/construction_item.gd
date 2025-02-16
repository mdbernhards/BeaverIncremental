extends MarginContainer

@export var DamType : Dams.DamEnum:
	set(value):
		DamType = value

@export var ItemNum : Dams.ItemNumberEnum

var DamStage : DamStageEnum:
	set(value):
		DamStage = value
		setItemVisability(value)

var BuildingStage := Dams.DamParts.First

enum DamStageEnum {
	Construction,
	Ready,
	Locked
}

# Nodes
var LockedVBox
var UnlockedVBox
var PriceLabel
var CantAffordRect

# Construction Nodes
var CurrentConstructionVBox
var ConstructionNameLabel
var TimeLeftLabel
var StageNameLabel
var StageNrLabel
var ResourceList
var ConstructionPrecentigeLabel
var ConstructionCheckTimer

var DamsConstData = Dams.Dams

func _ready() -> void:
	setupNodePaths()
	setItemStage()
	deleteAllConstructionResourceItems()

func _process(_delta: float) -> void:
	pass

func setCantAffordRect():
	if checkIfCanAfford():
		CantAffordRect.visible = false
	else:
		CantAffordRect.visible = true	

func setItemVisability(stage):
	hideAllConstructionStages()
	
	if stage == DamStageEnum.Construction:
		CurrentConstructionVBox.visible = true
	elif stage == DamStageEnum.Ready:
		UnlockedVBox.visible = true
		PriceLabel.text = getPriceText()
	elif stage == DamStageEnum.Locked:
		LockedVBox.visible = true

func hideAllConstructionStages():
	CurrentConstructionVBox.visible = false
	LockedVBox.visible = false
	UnlockedVBox.visible = false

func setItemStage():
	var damData = SaveData.DamData[DamType]
	
	if damData["AvailableBuilds"] >= ItemNum + 1:
		if damData["BuildingSlots"][ItemNum]["Constructing"]:
			DamStage = DamStageEnum.Construction
		else:
			DamStage = DamStageEnum.Ready
	else:
		DamStage = DamStageEnum.Locked

func _on_start_building_button_button_down() -> void:
	if checkIfCanAfford():
		removeResources()
		startConstruction()

func startConstruction():
	DamStage = DamStageEnum.Construction
	BuildingStage = 0
	setupConstruction()

func switchStage():
	deleteAllConstructionResourceItems()
	
	if BuildingStage < Dams.DamParts.Fourth:
		BuildingStage += 1
		setupConstruction()
	else:
		DamStage = DamStageEnum.Ready
		BuildingStage = 0
		ConstructionCheckTimer.stop()
		SaveData.DamData[DamType]["Count"] += 1
		SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["Constructing"] = false
		SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["Stage"] = 0

func checkIfConstructionResumes():
	ConstructionCheckTimer.stop()
	deleteAllConstructionResourceItems(false)
	setItemStage()
	
	if SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["Constructing"]:
		BuildingStage = SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["Stage"]
		setupConstruction()

func setupConstruction():
	ConstructionCheckTimer.start()
	
	var damData = Dams.Dams[DamType][BuildingStage]
	StageNameLabel.text = damData.Name
	StageNrLabel.text = "Stage " + str(BuildingStage + 1)
	
	var ConstructionResourceSceen = load("res://Scenes/GameMainScreenScenes/GameScenes/DamSection/constructionItem/construction_resource.tscn")
	
	SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["Stage"] = BuildingStage
	SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["Constructing"] = true
	
	for costName in damData["Price"]:
		var resourceType = null
		
		if damData["Price"][costName] > 0:
			resourceType = costName.replace("Cost", "")
		
		if resourceType:
			var resourceItem = ConstructionResourceSceen.instantiate()
			var resourceData = SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["ResourcesCollected"]
			
			resourceItem.Needed = damData["Price"][costName]
			
			if resourceData.has(resourceType):
				resourceItem.Collected = resourceData[resourceType]
			
			resourceItem.ResourceType = resourceType
			resourceItem.ItemNum = ItemNum
			resourceItem.DamType = DamType
			
			ResourceList.add_child(resourceItem)

func deleteAllConstructionResourceItems(cleanSaveData = true):
	if !ResourceList:
		return
	
	if cleanSaveData:
		var resourceTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce",
					 "Chestnut", "Cherry", "Ash", "Cedar", "Mahogany",
					 "Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood", "Gold"]
		
		var slotData = SaveData.DamData[DamType]["BuildingSlots"][ItemNum]["ResourcesCollected"]
		for key in resourceTypes:
				if slotData and slotData.has(key):
					slotData.erase(key)
	
	for resourceItem in ResourceList.get_children():
		ResourceList.remove_child(resourceItem)
		resourceItem.queue_free()

func getPriceText():
	var PriceText = ""
	
	var startingPriceData = Dams.Dams[DamType]["StartingPrice"]
	
	for costType in startingPriceData.keys():
		var cost = startingPriceData[costType]
		
		if cost > 0:
			PriceText += str(NumberFormatting.formatNumber(cost)) + " " + costType.replace("Cost", "") + "\n"
	
	return PriceText.strip_edges()

func removeResources():
	var Storage = SaveData.Resources
	var DamCosts = Dams.Dams[DamType]["StartingPrice"]
	
	Storage["Oak"]["Count"] -= DamCosts["OakCost"]
	Storage["Apple"]["Count"] -= DamCosts["AppleCost"]
	Storage["Maple"]["Count"] -= DamCosts["MapleCost"]
	Storage["Birch"]["Count"] -= DamCosts["BirchCost"]
	Storage["Spruce"]["Count"] -= DamCosts["SpruceCost"]
	Storage["Chestnut"]["Count"] -= DamCosts["ChestnutCost"]
	Storage["Cherry"]["Count"] -= DamCosts["CherryCost"]
	Storage["Ash"]["Count"] -= DamCosts["AshCost"]
	Storage["Cedar"]["Count"] -= DamCosts["CedarCost"]
	Storage["Mahogany"]["Count"] -= DamCosts["MahoganyCost"]
	Storage["Ebony"]["Count"] -= DamCosts["EbonyCost"]
	Storage["Dogwood"]["Count"] -= DamCosts["DogwoodCost"]
	Storage["Rosewood"]["Count"] -= DamCosts["RosewoodCost"]
	Storage["Ghost Gum"]["Count"] -= DamCosts["Ghost GumCost"]
	Storage["Dragonwood"]["Count"] -= DamCosts["DragonwoodCost"]
	SaveData.Gold["Count"] -= DamCosts["GoldCost"]
	
func checkIfCanAfford():
	var Storage = SaveData.Resources
	var DamCosts = Dams.Dams[DamType]["StartingPrice"]
	
	if (DamCosts["OakCost"] <= Storage["Oak"]["Count"]
	and DamCosts["AppleCost"] <= Storage["Apple"]["Count"]
	and DamCosts["MapleCost"] <= Storage["Maple"]["Count"]
	and DamCosts["BirchCost"] <= Storage["Birch"]["Count"]
	and DamCosts["SpruceCost"] <= Storage["Spruce"]["Count"]
	and DamCosts["ChestnutCost"] <= Storage["Chestnut"]["Count"]
	and DamCosts["CherryCost"] <= Storage["Cherry"]["Count"]
	and DamCosts["AshCost"] <= Storage["Ash"]["Count"]
	and DamCosts["CedarCost"] <= Storage["Cedar"]["Count"]
	and DamCosts["MahoganyCost"] <= Storage["Mahogany"]["Count"]
	and DamCosts["EbonyCost"] <= Storage["Ebony"]["Count"]
	and DamCosts["DogwoodCost"] <= Storage["Dogwood"]["Count"]
	and DamCosts["RosewoodCost"] <= Storage["Rosewood"]["Count"]
	and DamCosts["Ghost GumCost"] <= Storage["Ghost Gum"]["Count"]
	and DamCosts["DragonwoodCost"] <= Storage["Dragonwood"]["Count"]
	and DamCosts["GoldCost"] <= SaveData.Gold["Count"]):
		return true
	return false

func setupNodePaths():
	CurrentConstructionVBox = $CurrentConstructionVBox
	LockedVBox = $LockedVBox
	UnlockedVBox = $UnlockedVBox
	ConstructionNameLabel = $CurrentConstructionVBox/MC/VBox/ConstructionNameLabel
	TimeLeftLabel = $CurrentConstructionVBox/MC/VBox/TimeLeftLabel
	StageNameLabel = $CurrentConstructionVBox/MC2/VBox/ColorRect2/StageNameLabel
	StageNrLabel = $CurrentConstructionVBox/MC2/VBox/ColorRect/StageNrLabel
	ResourceList = $CurrentConstructionVBox/MC3/MC/ResourceList
	ConstructionPrecentigeLabel = $CurrentConstructionVBox/VBox/MC/ColorRect/VBox/MC2/ContructionPrecentigeLabel
	PriceLabel = $UnlockedVBox/MC/VBox/PriceLabel
	CantAffordRect = $UnlockedVBox/ColorRect/StartBuildingButton/CantAffordRect
	ConstructionCheckTimer = $ConstructionCheckTimer

func _on_construction_speed_slider_value_changed(value: float) -> void:
	SaveData.DamData[DamType]["ConstructionSpeedPrecentige"][ItemNum] = value
	ConstructionPrecentigeLabel.text = str(value) + "%"

func _on_construction_check_timer_timeout() -> void:
	for resourceItem in ResourceList.get_children():
		if resourceItem.Constructing:
			return
	
	switchStage()

func _on_construction_item_refresh_timer_timeout() -> void:
	setCantAffordRect()
