extends VBoxContainer

# Nodes
var ConstructionLabel
var ConstructionItem1
var ConstructionItem2
var ConstructionItem3

@export var DamType : Dams.DamEnum:
	set(value):
		setupNodePaths()
		DamType = value
		
		match value:
			Dams.DamEnum.SmallDam:
				ConstructionLabel.text = "Small Dam Construction"
			Dams.DamEnum.MediumDam:
				ConstructionLabel.text = "Medium Dam Construction"
			Dams.DamEnum.BigDam:
				ConstructionLabel.text = "Big Dam Construction"
			Dams.DamEnum.GiantDam:
				ConstructionLabel.text = "Giant Dam Construction"
			Dams.DamEnum.MegaDam:
				ConstructionLabel.text = "Mega Dam Construction"
		
		ConstructionItem1.DamType = value
		ConstructionItem2.DamType = value
		ConstructionItem3.DamType = value

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
	pass

func setupNodePaths():
	ConstructionLabel = $ConstructionLabel
	ConstructionItem1 = $MC2/MC/ConstructionHBox/ConstructionItem1
	ConstructionItem2 = $MC2/MC/ConstructionHBox/ConstructionItem2
	ConstructionItem3 = $MC2/MC/ConstructionHBox/ConstructionItem3
