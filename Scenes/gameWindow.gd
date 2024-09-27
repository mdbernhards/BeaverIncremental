extends Control

var isSetVisible = false

func _ready():
	pass

func _process(_delta):
	positionToolTip()
	if (GameValues.PhaseFour or !GameValues.introEnabled) and !isSetVisible:
		$Background/RightBackground.visible = true
		isSetVisible = true

func positionToolTip():
	var toolTipPos = get_global_mouse_position()
	
	if toolTipPos.x > 1500:
		toolTipPos.x -= 405
	else:
		toolTipPos.x += 10
	
	if toolTipPos.y > 800:
		toolTipPos.y -= 255
	else:
		toolTipPos.y += 10
	
	$ToolTip.position = toolTipPos
