extends VBoxContainer

var woodLabel
var foodLabel
var waterLabel
var foodButtonTimer

func _ready():
	woodLabel = get_node("TopHBox/StatLabels/WoodLabel") 
	foodLabel = get_node("TopHBox/StatLabels/FoodLabel") 
	waterLabel = get_node("TopHBox/StatLabels/WaterLabel") 
	foodButtonTimer = get_node("MidHBox/VBoxContainer/FoodButton/Label/FoodButtonTimer") 
	SetGlobalValues.refreshValues()

func _process(delta):
	$MidHBox/VBoxContainer/FoodButton/Label.text = str(round(foodButtonTimer.time_left))

func _on_food_button_button_down():
	foodButtonTimer.start()

func _on_food_button_timer_timeout():
	SetGlobalValues.addFood(GameValues.FoodPerClick)

func _on_water_button_button_down():
	SetGlobalValues.addWater(GameValues.WaterPerClick)

func _on_chop_button_button_down():
	SetGlobalValues.addWood(GameValues.WoodPerChop)

func _on_food_timer_timeout():
	SetGlobalValues.addFood(-1)

func _on_water_timer_timeout():
	SetGlobalValues.addWater(-1)
