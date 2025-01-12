extends VBoxContainer

# Nodes
var UpgradePage
var Page1Button
var Page2Button
var Page3Button
var Page4Button

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
	Page1Button = $PageButtons/HBox/PageButtonMC/HBox/Page1Button
	Page2Button = $PageButtons/HBox/PageButtonMC/HBox/Page2Button
	Page3Button = $PageButtons/HBox/PageButtonMC/HBox/Page3Button
	Page4Button = $PageButtons/HBox/PageButtonMC/HBox/Page4Button

func _on_page_buttons_timer_timeout() -> void:
	if Unlocks.Unlocks["Chestnut"]["Unlocked"] or Values.DebugMode:
		Page1Button.visible = true
		Page2Button.visible = true
	else:
		Page1Button.visible = false
		Page2Button.visible = false
	
	if Unlocks.Unlocks["Ebony"]["Unlocked"] or Values.DebugMode:
		Page3Button.visible = true
	else:
		Page3Button.visible = false
	
	if Unlocks.Unlocks["Gold"]["Unlocked"] or Values.DebugMode:
		Page4Button.visible = true
	else:
		Page4Button.visible = false
