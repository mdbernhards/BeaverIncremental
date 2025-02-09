extends MarginContainer

var UsedBaitLabel
var BaitSelectionVBox

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
	pass

func setupNodePaths():
	UsedBaitLabel = $VBox/MC/UsedBaitLabel
	BaitSelectionVBox = $VBox/BaitButtons/BaitSelectionVBox

func _on_bait_selection_refresh_timer_timeout() -> void:
	if SaveData.ShopItems[Fishing.ShopItemEnum.Worm]["Unlocked"]:
		UsedBaitLabel.text = "Bait Selection"
	else:
		UsedBaitLabel.text = "???? ?????????"
