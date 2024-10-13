extends HBoxContainer

var RNG = RandomNumberGenerator.new()

var foodButtonTimer
var waterButtonTimer

var waterTicker
var foodTicker

func _ready():
	foodButtonTimer = get_node("VB/FoodButton/Label/FoodButtonTimer") 
	waterButtonTimer = get_node("VB/WaterButton/Label/WaterButtonTimer") 
	
	waterTicker = get_node("VB/WaterButton/Label/WaterTicker") 
	foodTicker = get_node("VB/FoodButton/Label/FoodTicker") 

func _process(delta):
	$VB/FoodButton/Label.text = str(round(foodButtonTimer.time_left))
	$VB/WaterButton/Label.text = str(round(waterButtonTimer.time_left))

# action timer start
func _on_food_button_button_down():
	if checkThatNoButtonsPressed():
		foodButtonTimer.wait_time = GameValues.FoodLength
		foodButtonTimer.start()
		foodTicker.start()

func _on_water_button_button_down():
	if checkThatNoButtonsPressed():
		waterButtonTimer.wait_time = GameValues.WaterLength
		waterButtonTimer.start()
		waterTicker.start()

func _on_chop_button_button_down():
	if checkThatNoButtonsPressed():
		SetGameValues.addWood(GameValues.WoodPerClick)

func checkThatNoButtonsPressed():
	return foodButtonTimer.is_stopped() and waterButtonTimer.is_stopped()

# timer done, action happens
func _on_water_button_timer_timeout():
	waterTicker.stop()

func _on_food_button_timer_timeout():
	foodTicker.stop()

#1s long tickers (maybe they will have some modifier later)
func _on_food_ticker_timeout():
	if RNG.randi_range(0, 100) <= DefaultValues.DefaultChanceOfWoodPerFoodTick:
		SetGameValues.addWood(int(RNG.randf_range(DefaultValues.DefaultPossibleWoodPerFoodTick[0], DefaultValues.DefaultPossibleWoodPerFoodTick[1])))
	
	SetGameValues.addFood(GameValues.FoodPerTick)
	get_tree().get_first_node_in_group("BonusNode").calculatedAndSpawnResource(ConstBonusValues.bonusType.wood)

func _on_water_ticker_timeout():
	SetGameValues.addWater(GameValues.WaterPerTick)
