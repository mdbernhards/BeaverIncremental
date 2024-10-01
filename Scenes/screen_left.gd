extends VBoxContainer

var woodLabel
var foodLabel
var waterLabel

var foodButtonTimer
var woodButtonTimer
var waterButtonTimer

var woodTicker
var waterTicker
var foodTicker

#objects
var StatusEffectsObject
var ActionsObject
var TextLogObject
var RevvedBarObject
var ResourceBars
var WoodCountLabel

var RNG = RandomNumberGenerator.new()

var everythingIsVisible = false
var PhaseTwoStarted = false

func _ready():
	assignVariables()

func _process(_delta):
	$MidHBox/Actions/FoodButton/Label.text = str(round(foodButtonTimer.time_left))
	$MidHBox/Actions/WaterButton/Label.text = str(round(waterButtonTimer.time_left))
	$MidHBox/Actions/ChopButton/Label.text = str(round(woodButtonTimer.time_left))
	
	setWoodCountLabel()
	
	if GameValues.introEnabled and !everythingIsVisible:
		setEverythingInvisible()
		setVisibility()

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

# remove timers
func _on_food_timer_timeout():
	SetGlobalValues.addFood(-1)

func _on_water_timer_timeout():
	SetGlobalValues.addWater(-1)

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

func setEverythingInvisible():
	StatusEffectsObject.visible = false
	ActionsObject.visible = false
	if !PhaseTwoStarted:
		TextLogObject.visible = false
	RevvedBarObject.visible = false
	WoodCountLabel.visible = false
	ResourceBars.visible = false

func setVisibility():
	if GameValues.PhaseTwo and !PhaseTwoStarted:
		PhaseTwoStarted = true
		$BotHBox/MarginContainer/TextLogVisibilityTimer.start()
		$IntroNode/IntroButton/IntroTimer.stop()
	if GameValues.PhaseThree:
		ActionsObject.visible = true
		WoodCountLabel.visible = true
	if GameValues.PhaseFour:
		ResourceBars.visible = true
		StatusEffectsObject.visible = true
		RevvedBarObject.visible = true
		everythingIsVisible = true

func assignVariables():
	StatusEffectsObject = $HB/StatusEffects
	ActionsObject = $MidHBox/Actions
	TextLogObject = $BotHBox/MarginContainer/TextLogScroll
	RevvedBarObject = $BotHBox/RevvedBar
	ResourceBars = $HB/ResourceBars
	WoodCountLabel = $HB/WoodCountLabel
	
	foodButtonTimer = get_node("MidHBox/Actions/FoodButton/Label/FoodButtonTimer") 
	woodButtonTimer = get_node("MidHBox/Actions/ChopButton/Label/ChopButtonTimer") 
	waterButtonTimer = get_node("MidHBox/Actions/WaterButton/Label/WaterButtonTimer") 
	
	woodTicker = get_node("MidHBox/Actions/ChopButton/Label/WoodTicker") 
	waterTicker = get_node("MidHBox/Actions/WaterButton/Label/WaterTicker") 
	foodTicker = get_node("MidHBox/Actions/FoodButton/Label/FoodTicker") 

func setWoodCountLabel():
	WoodCountLabel.text = "You have " + str(GameValues.WoodCount) + " Wood."

func _on_text_log_visibility_timer_timeout():
	TextLogObject.visible = true
	get_tree().get_first_node_in_group("TextLogContainer").PhaseTwoStart()
