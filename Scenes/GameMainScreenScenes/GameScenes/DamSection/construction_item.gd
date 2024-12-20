extends MarginContainer

@export var DamType : Dams.DamEnum:
	set(value):
		DamType = value
		
		setupNodePaths()
		setItemStage()

@export var ItemNum : Dams.ItemNumberEnum:
	set(value):
		ItemNum = value

var DamStage : DamStageEnum:
	set(value):
		DamStage = value
		setItemVisability(value)

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
var ResourceList
var ConstructionPrecentigeLabel

var DamData = SaveData.DamData[DamType]
var DamsConstData = Dams.Dams

func _ready() -> void:
	setupNodePaths()
	setItemStage()

func _process(delta: float) -> void:
	setCantAffordRect()

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

func setItemStage():
	DamData = SaveData.DamData[DamType]
	
	if DamData["AvailableBuilds"] >= ItemNum:
		if DamData["CurrentlyInProgress"].size() > 0:
			DamStage = DamStageEnum.Construction
		else:
			DamStage = DamStageEnum.Ready
	else:
		DamStage = DamStageEnum.Locked

func hideAllConstructionStages():
	CurrentConstructionVBox.visible = false
	LockedVBox.visible = false
	UnlockedVBox.visible = false

func _on_start_building_button_button_down() -> void:
	if checkIfCanAfford():
		removeResources()
		DamStage = DamStageEnum.Construction

func startConstruction():
	DamType = Dams.DamEnum

func getPriceText():
	var PriceText = ""
	
	var startingPriceData = Dams.Dams[DamType]["StartingPrice"]
	
	for costType in startingPriceData.keys():
		var cost = startingPriceData[costType]
		
		if cost > 0:
			PriceText += str(cost) + " " + costType.replace("Cost", "") + "\n"
	
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
	ResourceList = $CurrentConstructionVBox/MC3/MC/ResourceList
	ConstructionPrecentigeLabel = $CurrentConstructionVBox/VBox/MC/ColorRect/VBox/MC2/ContructionPrecentigeLabel
	PriceLabel = $UnlockedVBox/MC/VBox/PriceLabel
	CantAffordRect = $UnlockedVBox/ColorRect/StartBuildingButton/CantAffordRect

func _on_construction_speed_slider_value_changed(value: float) -> void:
	ConstructionPrecentigeLabel.text = str(value) + "%"
