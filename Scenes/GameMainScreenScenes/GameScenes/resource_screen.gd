extends VBoxContainer

# Nodes
var ResourcePage

func _ready():
	setNodePaths()
	ResourcePage.changePage(1)

func _process(delta):
	pass

func _on_page_1_button_button_down():
	ResourcePage.changePage(1)

func _on_page_2_button_button_down():
	ResourcePage.changePage(2)

func _on_page_3_button_button_down():
	ResourcePage.changePage(3)

func setNodePaths():
	ResourcePage = $BarsMC/MC/TitleVBox/ResourcePage
