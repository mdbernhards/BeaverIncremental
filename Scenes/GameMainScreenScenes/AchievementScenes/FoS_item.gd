extends VBoxContainer

var FoSId :
	set(value):
		FoSId = value

# Nodes
var SubItems

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func setFoS():
	pass

func setupNodePaths():
	SubItems = $MC2/SubItemHBox
