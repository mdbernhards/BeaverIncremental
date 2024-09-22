extends TextureRect

@export var upgradeName = "NaN"

func _ready():
	pass


func _process(delta):
	pass

func _make_custom_tooltip(for_text):
	
	if GameValues.Upgrades.has(upgradeName):
		var upgrade = GameValues.Upgrades[upgradeName]
		var tooltip = load("res://Scenes/HelperScenes/tooltip.tscn").instantiate()
		tooltip.setTooltip(upgrade.icon, upgrade.name, upgrade.description)
		return tooltip
	else:
		var label = Label.new()
		label.text = "No eggs"
		return label
