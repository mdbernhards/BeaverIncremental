extends MarginContainer

# Nodes
var SmallDamConstruction
var MediumDamConstruction
var BigDamConstruction
var GiantDamConstruction
var MegaDamConstruction

func _ready() -> void:
	setupNodePaths()
	showConstructionPage(Dams.DamEnum.SmallDam)

func _process(delta: float) -> void:
	pass

func showConstructionPage(damType):
	hideAllConstruction()
	
	match damType:
		Dams.DamEnum.SmallDam:
			SmallDamConstruction.visible = true
		Dams.DamEnum.MediumDam:
			MediumDamConstruction.visible = true
		Dams.DamEnum.BigDam:
			BigDamConstruction.visible = true
		Dams.DamEnum.GiantDam:
			GiantDamConstruction.visible = true
		Dams.DamEnum.MegaDam:
			MegaDamConstruction.visible = true

func hideAllConstruction():
	SmallDamConstruction.visible = false
	MediumDamConstruction.visible = false
	BigDamConstruction.visible = false
	GiantDamConstruction.visible = false
	MegaDamConstruction.visible = false

func setDamConstruction():
	var constructionItems = get_tree().get_nodes_in_group("ConstructionItem")
	
	for constructionItem in constructionItems:
		constructionItem.checkIfConstructionResumes()

func setupNodePaths():
	SmallDamConstruction = $VBox/DamsHBox/SmallDamConstruction
	MediumDamConstruction = $VBox/DamsHBox/MediumDamConstruction
	BigDamConstruction = $VBox/DamsHBox/BigDamConstruction
	GiantDamConstruction = $VBox/DamsHBox/GiantDamConstruction
	MegaDamConstruction = $VBox/DamsHBox/MegaDamConstruction
