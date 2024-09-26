extends VBoxContainer

var woodLabel
var foodLabel
var waterLabel

var foodButtonTimer
var woodButtonTimer
var waterButtonTimer
var SwimButtonTimer

var woodTicker
var waterTicker
var foodTicker

var RNG = RandomNumberGenerator.new()

func _ready():
	woodLabel = get_node("TopHBox/StatLabels/WoodLabel") 
	foodLabel = get_node("TopHBox/StatLabels/FoodLabel") 
	waterLabel = get_node("TopHBox/StatLabels/WaterLabel") 
	
	foodButtonTimer = get_node("MidHBox/VBox/FoodButton/Label/FoodButtonTimer") 
	woodButtonTimer = get_node("MidHBox/VBox/ChopButton/Label/ChopButtonTimer") 
	waterButtonTimer = get_node("MidHBox/VBox/WaterButton/Label/WaterButtonTimer") 
	SwimButtonTimer = get_node("MidHBox/VBox/SwimButton/Label/SwimButtonTimer") 
	
	woodTicker = get_node("MidHBox/VBox/ChopButton/Label/WoodTicker") 
	waterTicker = get_node("MidHBox/VBox/WaterButton/Label/WaterTicker") 
	foodTicker = get_node("MidHBox/VBox/FoodButton/Label/FoodTicker") 
	
	SetGlobalValues.refreshValues()

func _process(delta):
	$MidHBox/VBox/FoodButton/Label.text = str(round(foodButtonTimer.time_left))
	$MidHBox/VBox/WaterButton/Label.text = str(round(waterButtonTimer.time_left))
	$MidHBox/VBox/ChopButton/Label.text = str(round(woodButtonTimer.time_left))
	$MidHBox/VBox/SwimButton/Label.text = str(round(SwimButtonTimer.time_left))

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

func _on_swim_button_button_down():
	if checkThatNoButtonsPressed():
		SwimButtonTimer.wait_time = GameValues.swimLength
		SwimButtonTimer.start()

func checkThatNoButtonsPressed():
	return foodButtonTimer.is_stopped() and waterButtonTimer.is_stopped() and woodButtonTimer.is_stopped() and SwimButtonTimer.is_stopped()

# timer done, action happens
func _on_water_button_timer_timeout():
	waterTicker.stop()

func _on_chop_button_timer_timeout():
	woodTicker.stop()

func _on_food_button_timer_timeout():
	foodTicker.stop()

# remove timers
func _on_food_timer_timeout():
	SetGlobalValues.addFood(-1)

func _on_water_timer_timeout():
	SetGlobalValues.addWater(-1)

func _on_swim_button_timer_timeout():
	GameValues.SwimCount += 1

#1s long tickers (maybe they will have some modifier later)
func _on_food_ticker_timeout():
	if RNG.randi_range(0, 100) <= GameValues.chanceOfWoodPerFoodClick:
		SetGlobalValues.addWood(int(RNG.randf_range(GameValues.possibleWoodPerFoodClick[0], GameValues.possibleWoodPerFoodClick[1])))
	
	SetGlobalValues.addFood(GameValues.FoodPerClick)
	spawnBonusResource()

func _on_water_ticker_timeout():
	SetGlobalValues.addWater(GameValues.WaterPerClick)

func _on_wood_ticker_timeout():
	SetGlobalValues.addWood(GameValues.WoodPerChop)
	
func spawnBonusResource():
	var bonusTemp = load("res://Scenes/HelperScenes/BonusResource.tscn")
	var bonus = bonusTemp.instantiate()
	bonus.setType(bonus.bonusType.wood)
	bonus.position = Vector2(RNG.randf_range(30, 1850), RNG.randf_range(30, 1000))
	get_node("BonusResourceNode").add_child(bonus)
	
