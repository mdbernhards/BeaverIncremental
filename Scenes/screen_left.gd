extends VBoxContainer

var woodCount = 0;
var foodCount = 0;
var waterCount = 0;

var woodLabel
var foodLabel
var waterLabel
var foodButtonTimer

func _ready():
	woodLabel = get_node("TopHBox/StatLabels/WoodLabel") 
	foodLabel = get_node("TopHBox/StatLabels/FoodLabel") 
	waterLabel = get_node("TopHBox/StatLabels/WaterLabel") 
	foodButtonTimer = get_node("MidHBox/VBoxContainer/FoodButton/Label/FoodButtonTimer") 
	woodLabel.text = "Wood: " + str(woodCount)

func _process(delta):
	$MidHBox/VBoxContainer/FoodButton/Label.text = str(round(foodButtonTimer.time_left))

func _on_food_button_button_down():
	foodButtonTimer.start()

func _on_food_button_timer_timeout():
	foodCount += 50
	
	if foodCount > GameValues.foodLimit:
		foodCount = GameValues.foodLimit
	
	foodLabel.text = "Food: " + str(foodCount) + "/" + str(GameValues.foodLimit)

func _on_water_button_button_down():
	waterCount += 50
	
	if waterCount > GameValues.waterLimit:
		waterCount = GameValues.waterLimit
		
	waterLabel.text = "Water: " + str(waterCount) + "/" + str(GameValues.waterLimit)

func _on_chop_button_button_down():
	woodCount += 1
	
	if woodCount > GameValues.woodLimit:
		woodCount = GameValues.woodLimit
		
	woodLabel.text = "Wood: " + str(woodCount) + "/" + str(GameValues.woodLimit)

func _on_food_timer_timeout():
	if foodCount > 0:
		foodCount -= 1
		
	foodLabel.text = "Food: " + str(foodCount) + "/" + str(GameValues.foodLimit)

func _on_water_timer_timeout():
	if waterCount > 0:
		waterCount -= 1
		
	waterLabel.text = "Water: " + str(waterCount) + "/" + str(GameValues.waterLimit)
