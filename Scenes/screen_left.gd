extends VBoxContainer

var woodLabel
var foodLabel
var waterLabel

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
var PhaseThreeStarted = false
var PhaseFourStarted = false
var PhaseFiveStarted = false

func _ready():
	assignVariables()

func _process(_delta):
	setWoodCountLabel()
	
	if GameValues.introEnabled and !everythingIsVisible:
		setEverythingInvisible()
		setVisibility()

func setEverythingInvisible():
	if !PhaseFiveStarted:
		RevvedBarObject.visible = false
	if !PhaseFourStarted:
		ResourceBars.visible = false
	if !PhaseThreeStarted:
		ActionsObject.visible = false
		WoodCountLabel.visible = false
		StatusEffectsObject.visible = false
	if !PhaseTwoStarted:
		TextLogObject.visible = false
	elif GameValues.WoodCount > 0 &&  GameValues.WoodCount < 11:
		WoodCountLabel.visible = true

func setVisibility():
	if GameValues.PhaseFive and !PhaseFiveStarted:
		$PhaseFiveStartDelayTimer.wait_time = ConstTextLogValues.phase5IntroText.size() * DefaultValues.TextLogMessageSpeed
		$PhaseFiveStartDelayTimer.start()
		PhaseFiveStarted = true
	if GameValues.PhaseFour and !PhaseFourStarted:
		$PhaseFourStartDelayTimer.wait_time = ConstTextLogValues.Phase4IntroText.size() * DefaultValues.TextLogMessageSpeed
		$PhaseFourStartDelayTimer.start()
		PhaseFourStarted = true
	elif GameValues.PhaseThree and !PhaseThreeStarted:
		$PhaseFourStartDelayTimer.wait_time = ConstTextLogValues.Phase3IntroText.size() * DefaultValues.TextLogMessageSpeed
		$PhaseThreeStartDelayTimer.start()
		PhaseThreeStarted = true
	elif GameValues.PhaseTwo and !PhaseTwoStarted:
		PhaseTwoStarted = true
		$BotHBox/MarginContainer/TextLogVisibilityTimer.start()
		$IntroNode/IntroButton/IntroTimer.stop()

func assignVariables():
	StatusEffectsObject = $HB/StatusEffects
	ActionsObject = $MidHBox/Actions
	TextLogObject = $BotHBox/MarginContainer/TextLogScroll
	RevvedBarObject = $BotHBox/RevvedBar
	ResourceBars = $HB/VB/ResourceBars
	WoodCountLabel = $HB/VB2/WoodCountLabel

func setWoodCountLabel():
	WoodCountLabel.text = "You have " + str(GameValues.WoodCount) + " Wood."

func _on_text_log_visibility_timer_timeout():
	TextLogObject.visible = true
	get_tree().get_first_node_in_group("TextLogContainer").PhaseTwoStart()

func _on_phase_three_start_delay_timer_timeout():
	ActionsObject.visible = true
	StatusEffectsObject.visible = true

func _on_phase_four_start_delay_timer_timeout():
	ResourceBars.visible = true
	WoodCountLabel.visible = true

func _on_phase_five_start_delay_timer_2_timeout():
	RevvedBarObject.visible = true
	everythingIsVisible = true
