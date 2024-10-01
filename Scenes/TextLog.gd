extends ScrollContainer

var MessagePeriodTimer
var TextLogger

var logInFocus = false

var CurrentTextArray
var CurrentlyWritingAnArray = false
var NextMessage = 0

var PhaseTwoIntroHappening = false

func _ready():
	MessagePeriodTimer = get_tree().get_first_node_in_group("PhaseTwoIntroPeriod")
	TextLogger = get_tree().get_first_node_in_group("TextLog")
	
	MessagePeriodTimer.wait_time = GameValues.TextLogMessageSpeed

func _process(_delta):
	pass

func WriteToLog(text):
	if text != "":
		TextLogger.append_text(text + " \n")
		
		if !logInFocus:
			await get_v_scroll_bar().changed
			scroll_vertical = int(get_v_scroll_bar().max_value)
	
func PhaseTwoStart():
	PhaseTwoIntroHappening = true
	WriteOutAnArray(SetTextLogValues.PhaseTwoIntroText)

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
		if PhaseTwoIntroHappening:
			PhaseTwoIntroHappening = false
			get_tree().get_first_node_in_group("IntroActionPeriodTimer").start()

func _on_message_period_timer_timeout():
	WriteNextMessage()

func _on_text_log_mouse_entered():
	logInFocus = true

func _on_text_log_mouse_exited():
	logInFocus = false
