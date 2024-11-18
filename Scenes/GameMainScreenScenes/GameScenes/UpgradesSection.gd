extends VBoxContainer

# Nodes
var UpgradePage

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func _on_page_1_button_button_down():
	UpgradePage.changePage(1)

func _on_page_2_button_button_down():
	UpgradePage.changePage(2)

func _on_page_3_button_button_down():
	UpgradePage.changePage(3)

func _on_page_4_button_button_down():
	UpgradePage.changePage(4)
	
func setNodePaths():
	UpgradePage = $UpgradePage


