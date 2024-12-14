extends MarginContainer

# Nodes
var DamNameLabel
var DamCountLabel

func _ready() -> void:
	setupNodePaths()
	
func _process(delta: float) -> void:
	pass

func setupNodePaths():
	DamNameLabel = $ColorRect/VBox/DamNameLabel
	DamCountLabel = $ColorRect/VBox/ColorRect/DamCountLabel

func _on_build_button_button_down() -> void:
	pass # Replace with function body.
