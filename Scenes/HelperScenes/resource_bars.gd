extends TextureRect

func _ready():
	pass

func _process(delta):
	updateWaterBar()
	updateFoodBar()
	updateWoodBar()

func updateWaterBar():
	var value = remap(GameValues.WaterCount, 0, GameValues.WaterLimit, 0, 100)
	$WaterBar.value = value

func updateFoodBar():
	var value = remap(GameValues.WoodCount, 0, GameValues.WoodLimit, 0, 100)
	$FoodBar.value = value

func updateWoodBar():
	var value = remap(GameValues.FoodCount, 0, GameValues.FoodLimit, 0, 100)
	$WoodBar.value = value
