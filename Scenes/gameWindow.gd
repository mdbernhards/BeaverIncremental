extends Control

var isSetVisible = false
var resourceDrainStarted = false

func _ready():
	pass

func _process(_delta):
	if (GameValues.PhaseFive or !GameValues.introEnabled) and !isSetVisible:
		$Background/RightBackground.visible = true
		isSetVisible = true
		
	if (!GameValues.introEnabled or GameValues.PhaseFour) and !resourceDrainStarted:
		resourceDrainStarted = true
		GameValues.WaterCount = DefaultValues.DefaultWaterLimit * 0.5
		GameValues.FoodCount = DefaultValues.DefaultFoodLimit * 0.5
		$ResourceDrain.start()

func _on_resource_drain_timeout():
	setResourceDrain()

func setResourceDrain():
	SetGameValues.addWater(-1)
	SetGameValues.addFood(-1)
