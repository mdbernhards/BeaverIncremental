extends Node

var RNG = RandomNumberGenerator.new()
var IntroTimer
var IntroButton

var PhaseOneButtonText = ["Swim", "Survive", "Breath", "Don't Die", "Do it for Her", "not drown", "push", "suffer", "triumph"]
var PhaseTwoButtonText = ["Walk", "Take a nap", "Breath", "Run", "Climb", "Look around", "Think", "food?", "mmm wood...."]
var PhaseThreeButtonText = ["Walk", "Speed Walk", "Explore", "Go in circles", "Stargaze", "Look behind", "Discover?", "Go get it", "Cry"]

func _ready():
	IntroTimer = $IntroButton/IntroTimer
	IntroButton = $IntroButton
	
	IntroTimer.wait_time = GameValues.IntroRefreshLength
	
	if GameValues.introEnabled:
		SetIntroButton()

func _process(_delta):
	CheckPhaseCompletion()

func SetIntroButton():
	IntroButton.position = Vector2(RNG.randf_range(30, 1850), RNG.randf_range(30, 1000))
	
	match getPhase():
		1:
			IntroButton.text = SetFirstPhaseText()
		2:
			IntroButton.text = SetSecondPhaseText()
		3:
			IntroButton.text = SetThirdPhaseText()
		4:
			IntroButton.text = SetFirstPhaseText() # there is no fourth phase text
	
	IntroButton.visible = true

func SetFirstPhaseText():
	if RNG.randi_range(1, 3) == 1:
		return PhaseOneButtonText[RNG.randi_range(0,PhaseOneButtonText.size()-1)]
	return PhaseOneButtonText[0]

func SetSecondPhaseText():
	if RNG.randi_range(1, 4) == 1:
		return PhaseTwoButtonText[RNG.randi_range(0,PhaseTwoButtonText.size()-1)]
	return PhaseTwoButtonText[0]

func SetThirdPhaseText():
	if RNG.randi_range(1, 2) == 1:
		return PhaseThreeButtonText[RNG.randi_range(0,PhaseThreeButtonText.size()-1)]
	return PhaseThreeButtonText[0]

func _on_intro_button_button_down():
	GameValues.IntroClickCount += 1
	IntroButton.visible = false
	IntroTimer.start()

func _on_intro_timer_timeout():
	SetIntroButton()

func CheckPhaseCompletion():
	if GameValues.PhaseThree:
		if GameValues.Phase4StartClicksNeeded <= GameValues.IntroClickCount:
			GameValues.PhaseFour = true
	elif GameValues.PhaseTwo:
		if GameValues.Phase3StartClicksNeeded <= GameValues.IntroClickCount:
			GameValues.PhaseThree = true
	elif GameValues.PhaseOne:
		if GameValues.Phase2StartClicksNeeded <= GameValues.IntroClickCount:
			GameValues.PhaseTwo = true

func getPhase():
	if GameValues.PhaseFour:
		return 4
	elif GameValues.PhaseThree:
		return 3
	elif GameValues.PhaseTwo:
		return 2
	elif GameValues.PhaseOne:
		return 1
