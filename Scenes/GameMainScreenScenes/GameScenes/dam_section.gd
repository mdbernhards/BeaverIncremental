extends MarginContainer

# Nodes
var SmallDamConstruction
var MediumDamConstruction
var BigDamConstruction
var GiantDamConstruction
var MegaDamConstruction

enum DamEnum {
	SmallDam,
	MediumDam,
	BigDam,
	GiantDam,
	MegaDam,
}

func _ready() -> void:
	setupNodePaths()
	showConstructionPage(DamEnum.SmallDam)

func _process(delta: float) -> void:
	pass

func showConstructionPage(damType):
	hideAllConstruction()
	
	match damType:
		DamEnum.SmallDam:
			SmallDamConstruction.visible = true
		DamEnum.MediumDam:
			MediumDamConstruction.visible = true
		DamEnum.BigDam:
			BigDamConstruction.visible = true
		DamEnum.GiantDam:
			GiantDamConstruction.visible = true
		DamEnum.MegaDam:
			MegaDamConstruction.visible = true

func hideAllConstruction():
	SmallDamConstruction.visible = false
	MediumDamConstruction.visible = false
	BigDamConstruction.visible = false
	GiantDamConstruction.visible = false
	MegaDamConstruction.visible = false

func setupNodePaths():
	SmallDamConstruction = $VBox/DamsHBox/SmallDamConstruction
	MediumDamConstruction = $VBox/DamsHBox/MediumDamConstruction
	BigDamConstruction = $VBox/DamsHBox/BigDamConstruction
	GiantDamConstruction = $VBox/DamsHBox/GiantDamConstruction
	MegaDamConstruction = $VBox/DamsHBox/MegaDamConstruction
