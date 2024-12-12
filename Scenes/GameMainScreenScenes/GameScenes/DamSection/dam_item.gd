extends MarginContainer

# Nodes
var DamNameLabel
var DamEffectsLabel

func _ready() -> void:
	setupNodePaths()
	
func _process(delta: float) -> void:
	pass

func setupNodePaths():
	DamNameLabel = $ColorRect/VBox/DamNameLabel
	DamEffectsLabel = $ColorRect/VBox/ColorRect3/DamEffectsLabel

func _on_build_button_button_down() -> void:
	pass # Replace with function body.
