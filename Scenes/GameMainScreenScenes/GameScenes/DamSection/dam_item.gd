extends MarginContainer

# Nodes
var DamNameLabel
var DamCountLabel

@export var DamType : Dams.DamEnum:
	set(value):
		setupNodePaths()
		DamType = value
		DamCountLabel.text = str(SaveData.DamData[DamType]["Count"])
		
		match value:
			Dams.DamEnum.SmallDam:
				DamNameLabel.text = "Small Dam"
			Dams.DamEnum.MediumDam:
				DamNameLabel.text = "Medium Dam"
			Dams.DamEnum.BigDam:
				DamNameLabel.text = "Big Dam"
			Dams.DamEnum.GiantDam:
				DamNameLabel.text = "Giant Dam"
			Dams.DamEnum.MegaDam:
				DamNameLabel.text = "Mega Dam"

func _ready() -> void:
	setupNodePaths()
	
func _process(_delta: float) -> void:
	pass

func setupNodePaths():
	DamNameLabel = $ColorRect/VBox/DamNameLabel
	DamCountLabel = $ColorRect/VBox/ColorRect/DamCountLabel

func _on_build_button_button_down() -> void:
	get_tree().get_first_node_in_group("DamSection").showConstructionPage(DamType)

func _on_dam_item_timer_timeout() -> void:
	if Unlocks.Unlocks["Dams"][DamNameLabel.text]["Unlocked"] or Values.DebugMode:
		visible = true
	else:
		visible = false
