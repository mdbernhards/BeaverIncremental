extends MarginContainer

var UsedBaitLabel
var BaitSelectionVBox

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func setupNodePaths():
	UsedBaitLabel = $VBox/MC/UsedBaitLabel
	BaitSelectionVBox = $VBox/BaitButtons/BaitSelectionVBox

func _on_bait_selection_refresh_timer_timeout() -> void:
	if Unlocks.Unlocks["Fishing"]["Bait"]["Unlocked"]:
		UsedBaitLabel.text = "Used Bait"
	else:
		UsedBaitLabel.text = "???? ????"
		
		for child in BaitSelectionVBox.get_children():
			child.visible = false
