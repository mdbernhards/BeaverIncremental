extends MarginContainer

@export var DamType : Dams.DamEnum:
	set(value):
		DamType = value
		setItemStage()

@export var ItemNum : ItemNumberEnum:
	set(value):
		ItemNum = value

enum ItemNumberEnum {
	one,
	two,
	three,
}

# Nodes
var LockedVBox
var UnlockedVBox

# Construction Nodes
var CurrentConstructionVBox
var ConstructionNameLabel
var TimeLeftLabel
var StageNameLabel
var ResourceList
var ConstructionPrecentigeLabel
var ConstructionSpeedSlider

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func setItemStage():
	var damData = SaveData.DamData[DamType]
	
	if damData["AvailableBuilds"] >= ItemNum:
		setStageVisibility(true)
	else:
		setStageVisibility(false)

func setStageVisibility(canConstruct):
	hideAllConstructionStages()
	
	if canConstruct:
		if SaveData.DamData["CurrentlyInProgress"].empty():
			UnlockedVBox.visible = true
		else:
			CurrentConstructionVBox.visible = true
	else:
		LockedVBox.visible = true

func hideAllConstructionStages():
	CurrentConstructionVBox.visible = false
	LockedVBox.visible = false
	UnlockedVBox.visible = false

func setupNodePaths():
	CurrentConstructionVBox = $CurrentConstructionVBox
	LockedVBox = $LockedVBox
	UnlockedVBox = $UnlockedVBox
	ConstructionNameLabel = $CurrentConstructionVBox/MC/VBox/ConstructionNameLabel
	TimeLeftLabel = $CurrentConstructionVBox/MC/VBox/TimeLeftLabel
	StageNameLabel = $CurrentConstructionVBox/MC2/VBox/ColorRect2/StageNameLabel
	ResourceList = $CurrentConstructionVBox/MC3/MC/ResourceList
	ConstructionPrecentigeLabel = $CurrentConstructionVBox/VBox/MC/ColorRect/VBox/MC2/ContructionPrecentigeLabel
	ConstructionSpeedSlider = $CurrentConstructionVBox/VBox/MC/ColorRect/VBox/MC3/ConstructionSpeedSlider
