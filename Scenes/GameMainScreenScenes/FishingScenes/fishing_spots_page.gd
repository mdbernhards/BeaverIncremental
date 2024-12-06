extends VBoxContainer

# Nodes
var NameLabel
var DescriptionLabel

var SpotType # need to implement enum for spots

func _ready() -> void:
	SetupNodePaths()

func _process(delta: float) -> void:
	pass

func SetupNodePaths():
	NameLabel = $MC2/Scroll/MC/VBox/SpotItem/HBox/MC2/VBox/MC/NameLabel
	DescriptionLabel = $MC2/Scroll/MC/VBox/SpotItem/HBox/MC2/VBox/MC2/DescriptionLabel
