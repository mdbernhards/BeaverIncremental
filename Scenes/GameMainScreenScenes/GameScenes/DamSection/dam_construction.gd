extends VBoxContainer

# Nodes
var ConstructionLabel

@export var DamType : DamEnum:
	set(value):
		setupNodePaths()
		DamType = value
		
		match value:
			DamEnum.SmallDam:
				ConstructionLabel.text = "Small Dam Construction"
			DamEnum.MediumDam:
				ConstructionLabel.text = "Medium Dam Construction"
			DamEnum.BigDam:
				ConstructionLabel.text = "Big Dam Construction"
			DamEnum.GiantDam:
				ConstructionLabel.text = "Giant Dam Construction"
			DamEnum.MegaDam:
				ConstructionLabel.text = "Mega Dam Construction"

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
	ConstructionLabel = $ConstructionLabel
