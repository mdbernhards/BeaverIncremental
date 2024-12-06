extends VBoxContainer

var CurrentGoldLabel

func _ready() -> void:
	SetupNodePaths()

func _process(delta: float) -> void:
	if CurrentGoldLabel:
		CurrentGoldLabel.text = "Gold: " + str(SaveData.Gold["Count"])

func SetupNodePaths():
	CurrentGoldLabel = $MC/CurrentGoldLabel
