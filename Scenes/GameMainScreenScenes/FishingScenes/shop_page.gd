extends VBoxContainer

var CurrentBiscutsLabel

func _ready() -> void:
	SetupNodePaths()

func _process(_delta: float) -> void:
	if CurrentBiscutsLabel:
		CurrentBiscutsLabel.text = "Fish Biscuts: " + str(SaveData.FishBiscuits["Count"])

func SetupNodePaths():
	CurrentBiscutsLabel = $MC/CurrentBiscutsLabel
