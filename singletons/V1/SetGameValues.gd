extends Node

func _ready():
	pass

func _process(_delta):
	pass

func addWood(amount):
	GameValues.WoodCount = clamp(GameValues.WoodCount + amount, 0, GameValues.WoodLimit)

func addWater(amount):
	GameValues.WaterCount = clamp(GameValues.WaterCount + amount, 0, GameValues.WaterLimit)

func addFood(amount):
	GameValues.FoodCount = clamp(GameValues.FoodCount + amount, 0, GameValues.FoodLimit)

func unlockReaserch():
	pass

func unlockBuildings():
	pass
