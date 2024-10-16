extends TextureRect

var waterBarMouseOver = false
var foodBarMouseOver = false
var woodBarMouseOver = false

func _process(delta):
	updateWaterBar()
	updateFoodBar()
	updateWoodBar()

func updateWaterBar():
	$WaterBar.value = remap(GameValues.WaterCount, 0, GameValues.WaterLimit, 0, 100)
	
	if waterBarMouseOver:
		$WaterBar/Label.text = "     " + str(GameValues.WaterCount) + " / " + str(GameValues.WaterLimit)
	else:
		$WaterBar/Label.text = "     " + str(GameValues.WaterCount)

func updateFoodBar():
	$FoodBar.value = remap(GameValues.FoodCount, 0, GameValues.FoodLimit, 0, 100)
	
	if foodBarMouseOver:
		$FoodBar/Label.text = "     " + str(GameValues.FoodCount) + " / " + str(GameValues.FoodLimit)
	else:
		$FoodBar/Label.text = "     " + str(GameValues.FoodCount)

func updateWoodBar():
	$WoodBar.value = remap(GameValues.WoodCount, 0, GameValues.WoodLimit, 0, 100)
	
	if woodBarMouseOver:
		$WoodBar/Label.text = "     " + str(GameValues.WoodCount) + " / " + str(GameValues.WoodLimit)
	else:
		$WoodBar/Label.text = "     " + str(GameValues.WoodCount)

func _on_water_bar_mouse_entered():
	waterBarMouseOver = true

func _on_water_bar_mouse_exited():
	waterBarMouseOver = false

func _on_food_bar_mouse_entered():
	foodBarMouseOver = true

func _on_food_bar_mouse_exited():
	foodBarMouseOver = false

func _on_wood_bar_mouse_entered():
	woodBarMouseOver = true

func _on_wood_bar_mouse_exited():
	woodBarMouseOver = false
