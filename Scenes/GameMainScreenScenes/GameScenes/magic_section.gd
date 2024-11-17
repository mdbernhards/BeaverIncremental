extends MarginContainer

# Nodes
var MagicCountLabel

func _ready():
	setNodePaths()

func _process(delta):
	MagicCountLabel.text = str(SaveData.Magic["Count"]) + " Magic"

func setNodePaths():
	MagicCountLabel = $VBoxContainer/TopHBox/TitleMC/MagicCountLabel
