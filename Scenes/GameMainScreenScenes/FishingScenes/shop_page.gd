extends VBoxContainer

var CurrentBiscutsLabel

func _ready() -> void:
	SetupNodePaths()

func _process(_delta: float) -> void:
	if CurrentBiscutsLabel:
		CurrentBiscutsLabel.text = "Fish Biscuits: " + str(floor(SaveData.FishBiscuits["Count"] * 10) / 10)

func SetupNodePaths():
	CurrentBiscutsLabel = $MC/CurrentBiscutsLabel
