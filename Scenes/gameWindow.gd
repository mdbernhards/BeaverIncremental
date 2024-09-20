extends Control

var woodCount = 0;
var foodCount = 0;

func _ready():
	$UI/LeftVBox/TopHBox/StatLabels/WoodLabel.text = "Wood: " + str(woodCount)

func _process(delta):
	$UI/LeftVBox/MidHBox/VBoxContainer/FoodButton/Label.text = str(round($UI/LeftVBox/MidHBox/VBoxContainer/FoodButton/Label/FoodButtonTimer.time_left))

func _on_button_button_down():
	woodCount += 1
	$UI/LeftVBox/TopHBox/StatLabels/WoodLabel.text = "Wood: " + str(woodCount)

func _on_food_button_button_down():
	$UI/LeftVBox/MidHBox/VBoxContainer/FoodButton/Label/FoodButtonTimer.start()

func _on_food_timer_timeout():
	foodCount -= 1
	$UI/LeftVBox/TopHBox/StatLabels/FoodLabel.text = "Food: " + str(foodCount)


func _on_food_button_timer_timeout():
	foodCount += 50
	$UI/LeftVBox/TopHBox/StatLabels/FoodLabel.text = "Food: " + str(foodCount)
