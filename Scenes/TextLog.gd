extends ScrollContainer

var MessagePeriodTimer
var TextLogger

var logInFocus = false

var CurrentTextArray
var CurrentlyWritingAnArray = false
var NextMessage = 0

var Phase2IntroHappening = false

# Used so that text printing triggers only once
var Phase2WalkTriggered = false
var Phase3IntroTriggered = false
var Phase3OutroTriggered = false
var Phase4IntroTriggered = false
var Phase5IntroTriggered = false

func _ready():
	MessagePeriodTimer = get_tree().get_first_node_in_group("PhaseTwoIntroPeriod")
	TextLogger = get_tree().get_first_node_in_group("TextLog")
	
	MessagePeriodTimer.wait_time = GameValues.TextLogMessageSpeed

func _process(_delta):
	CheckIfTextNeedsToBeTriggered()

func CheckIfTextNeedsToBeTriggered():
	if GameValues.Phase2MidClicksNeeded <= GameValues.IntroClickCount && !Phase2WalkTriggered:
		SetTextLogValues.WriteArrayToTextLog(SetTextLogValues.Phase2WalkingText)
		Phase2WalkTriggered = true
	elif GameValues.Phase3StartClicksNeeded <= GameValues.IntroClickCount && !Phase3IntroTriggered:
		SetTextLogValues.WriteArrayToTextLog(SetTextLogValues.Phase3IntroText)
		Phase3IntroTriggered = true
	elif GameValues.Phase3MidClicksNeeded <= GameValues.IntroClickCount && !Phase3OutroTriggered:
		SetTextLogValues.WriteArrayToTextLog(SetTextLogValues.Phase3OutroText)
		Phase3OutroTriggered = true
	elif GameValues.Phase4StartClicksNeeded <= GameValues.IntroClickCount && !Phase4IntroTriggered:
		SetTextLogValues.WriteArrayToTextLog(SetTextLogValues.Phase2IntroText)
		Phase4IntroTriggered = true
	elif GameValues.Phase5StartClicksNeeded <= GameValues.IntroClickCount && !Phase5IntroTriggered:
		SetTextLogValues.WriteArrayToTextLog(SetTextLogValues.phase5IntroText)
		Phase5IntroTriggered = true

func WriteToLog(text):
	if text != "":
		TextLogger.append_text(text + " \n")
		
		if !logInFocus:
			await get_v_scroll_bar().changed
			scroll_vertical = int(get_v_scroll_bar().max_value)
	
func PhaseTwoStart():
	Phase2IntroHappening = true
	WriteOutAnArray(SetTextLogValues.Phase2IntroText)

func WriteOutAnArray(array):
	if CurrentlyWritingAnArray:
		CurrentTextArray += array
	else:
		CurrentlyWritingAnArray = true
		CurrentTextArray = array
		NextMessage = 0
		
		WriteNextMessage()
	MessagePeriodTimer.start()

func WriteNextMessage():
	if NextMessage < CurrentTextArray.size():
		WriteToLog(CurrentTextArray[NextMessage])
		NextMessage += 1
	
		MessagePeriodTimer.start()
	else:
		CurrentlyWritingAnArray = false
		if Phase2IntroHappening:
			Phase2IntroHappening = false
			get_tree().get_first_node_in_group("IntroActionPeriodTimer").start()

func _on_message_period_timer_timeout():
	WriteNextMessage()

func _on_text_log_mouse_entered():
	logInFocus = true

func _on_text_log_mouse_exited():
	logInFocus = false
