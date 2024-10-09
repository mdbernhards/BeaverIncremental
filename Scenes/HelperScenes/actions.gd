extends HBoxContainer

var RNG = RandomNumberGenerator.new()

var foodButtonTimer
var woodButtonTimer
var waterButtonTimer

var woodTicker
var waterTicker
var foodTicker

func _ready():
	foodButtonTimer = get_node("VB/FoodButton/Label/FoodButtonTimer") 
	woodButtonTimer = get_node("VB2/ChopButton/Label/ChopButtonTimer") 
	waterButtonTimer = get_node("VB/WaterButton/Label/WaterButtonTimer") 
	
	woodTicker = get_node("VB2/ChopButton/Label/WoodTicker") 
	waterTicker = get_node("VB/WaterButton/Label/WaterTicker") 
	foodTicker = get_node("VB/FoodButton/Label/FoodTicker") 

func _process(delta):
	$VB/FoodButton/Label.text = str(round(foodButtonTimer.time_left))
	$VB/WaterButton/Label.text = str(round(waterButtonTimer.time_left))
	$VB2/ChopButton/Label.text = str(round(woodButtonTimer.time_left))

# action timer start
func _on_food_button_button_down():
	if checkThatNoButtonsPressed():
		foodButtonTimer.wait_time = GameValues.foodLength
		foodButtonTimer.start()
		foodTicker.start()

func _on_water_button_button_down():
	if checkThatNoButtonsPressed():
		waterButtonTimer.wait_time = GameValues.waterLength
		waterButtonTimer.start()
		waterTicker.start()

func _on_chop_button_button_down():
	if checkThatNoButtonsPressed():
		woodButtonTimer.wait_time = GameValues.chopLength
		woodButtonTimer.start()
		woodTicker.start()

func checkThatNoButtonsPressed():
	return foodButtonTimer.is_stopped() and waterButtonTimer.is_stopped() and woodButtonTimer.is_stopped()

# timer done, action happens
func _on_water_button_timer_timeout():
	waterTicker.stop()

func _on_chop_button_timer_timeout():
	woodTicker.stop()

func _on_food_button_timer_timeout():
	foodTicker.stop()

#1s long tickers (maybe they will have some modifier later)
func _on_food_ticker_timeout():
	if RNG.randi_range(0, 100) <= GameValues.chanceOfWoodPerFoodClick:
		SetGlobalValues.addWood(int(RNG.randf_range(GameValues.possibleWoodPerFoodClick[0], GameValues.possibleWoodPerFoodClick[1])))
	
	SetGlobalValues.addFood(GameValues.FoodPerClick)
	get_tree().get_first_node_in_group("BonusNode").calculatedAndSpawnResource(GameValues.bonusType.wood)

func _on_water_ticker_timeout():
	SetGlobalValues.addWater(GameValues.WaterPerClick)

func _on_wood_ticker_timeout():
	SetGlobalValues.addWood(GameValues.WoodPerChop)
