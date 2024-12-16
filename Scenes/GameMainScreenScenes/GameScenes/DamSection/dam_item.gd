extends MarginContainer

# Nodes
var DamNameLabel
var DamCountLabel

@export var DamType : DamEnum:
	set(value):
		setupNodePaths()
		DamType = value
		
		match value:
			DamEnum.SmallDam:
				DamNameLabel.text = "Small Dam"
				DamCountLabel.text = str(0)
			DamEnum.MediumDam:
				DamNameLabel.text = "Medium Dam"
				DamCountLabel.text = str(0)
			DamEnum.BigDam:
				DamNameLabel.text = "Big Dam"
				DamCountLabel.text = str(0)
			DamEnum.GiantDam:
				DamNameLabel.text = "Giant Dam"
				DamCountLabel.text = str(0)
			DamEnum.MegaDam:
				DamNameLabel.text = "Mega Dam"
				DamCountLabel.text = str(0)

enum DamEnum {
	SmallDam,
	MediumDam,
	BigDam,
	GiantDam,
	MegaDam,
}

func _ready() -> void:
	setupNodePaths()
	
func _process(delta: float) -> void:
	pass

func setupNodePaths():
	DamNameLabel = $ColorRect/VBox/DamNameLabel
	DamCountLabel = $ColorRect/VBox/ColorRect/DamCountLabel

func _on_build_button_button_down() -> void:
	get_tree().get_first_node_in_group("DamSection").showConstructionPage(DamType)
