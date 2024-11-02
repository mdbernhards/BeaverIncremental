extends VBoxContainer

var UpgradePage

func _ready():
	setVariablePaths()


func _process(delta):
	pass


func _on_page_1_button_button_down():
	UpgradePage.changePage(1)


func _on_page_2_button_button_down():
	UpgradePage.changePage(2)


func _on_page_3_button_button_down():
	UpgradePage.changePage(3)

func setVariablePaths():
	UpgradePage = $UpgradePage
