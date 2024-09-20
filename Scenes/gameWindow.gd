extends Control

var woodCount = 0;
var foodCount = 0;

func _ready():
	$WoodLabel.text = "Wood: " + str(woodCount)

func _process(delta):
	$FoodButton/Label.text = str(round($FoodButton/Label/FoodButtonTimer.time_left))

func _on_button_button_down():
	woodCount += 1
	$WoodLabel.text = "Wood: " + str(woodCount)

func _on_food_button_button_down():
	$FoodButton/Label/FoodButtonTimer.start()

func _on_food_timer_timeout():
	foodCount -= 1
	$FoodLabel.text = "Food: " + str(foodCount)


func _on_food_button_timer_timeout():
	foodCount += 50
	$FoodLabel.text = "Food: " + str(foodCount)
