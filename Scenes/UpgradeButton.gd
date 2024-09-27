extends TextureRect

@export var upgradeName = "NaN"
@export var upgradePrice = 0

signal upgrade_clicked(upgrade)

func _ready():
	pass

func _process(_delta):
	checkIfAfordable()
	
func checkIfAfordable():
	if $ColorRect and upgradePrice > GameValues.WoodCount:
		$ColorRect.visible = true
	elif $ColorRect:
		$ColorRect.visible = false

func _make_custom_tooltip(_for_text):
	if GameValues.Upgrades.has(upgradeName):
		var upgrade = GameValues.Upgrades[upgradeName]
		var tooltip = load("res://Scenes/HelperScenes/tooltip.tscn").instantiate()
		tooltip.setTooltip(upgrade.icon, upgrade.name, "Price: " + str(upgrade.price), upgrade.description)
		return tooltip
	else:
		var label = Label.new()
		label.text = "No eggs"
		return label

func _on_mouse_entered():
	pass

func _on_mouse_exited():
	if not Rect2(Vector2(), size).has_point(get_local_mouse_position()):
		pass

func _on_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		upgrade_clicked.emit(self)
