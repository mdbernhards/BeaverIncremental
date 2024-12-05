extends MarginContainer

# Nodes
var NameLabel
var EffectLabel
var BaitCountLabel

func _ready() -> void:
	SetupNodePaths()

func _process(delta: float) -> void:
	pass

func SetupNodePaths():
	NameLabel = $HBox/MC1/VBox/MC/NameLabel
	EffectLabel = $HBox/MC1/VBox/MC2/EffectLabel
	BaitCountLabel = $HBox/MC3/BaitCountLabel
	
