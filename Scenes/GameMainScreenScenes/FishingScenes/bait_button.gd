extends Button

@export var BaitType: Fishing.BaitEnum = Fishing.BaitEnum.NoBait :
	set(value):
		BaitType = value
		text = Fishing.Bait[value]["Name"]

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if SaveData.Bait[BaitType]["Count"] > 0 and SaveData.Bait[BaitType]["Unlocked"] or BaitType == Fishing.BaitEnum.NoBait:
		visible = true
	else:
		visible = false

func _on_button_down() -> void:
	pass
