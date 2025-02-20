extends VBoxContainer

# Nodes
var UpgradePage
var Page1Button
var Page2Button
var Page3Button
var Page4Button
var LeftPageButton
var RightPageButton

var Page = 1

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func _on_page_1_button_button_down():
	changePage(1)

func _on_page_2_button_button_down():
	changePage(2)

func _on_page_3_button_button_down():
	changePage(3)

func _on_page_4_button_button_down():
	changePage(4)

func changePage(nr):
	Page = nr
	UpgradePage.changePage(nr)
	_on_page_buttons_timer_timeout()

func setNodePaths():
	UpgradePage = $UpgradePage
	Page1Button = $PageButtons/HBox/PageButtonMC/HBox/Page1Button
	Page2Button = $PageButtons/HBox/PageButtonMC/HBox/Page2Button
	Page3Button = $PageButtons/HBox/PageButtonMC/HBox/Page3Button
	Page4Button = $PageButtons/HBox/PageButtonMC/HBox/Page4Button
	LeftPageButton = $UpgradePage/UpgradeTabs/HBox/TabButtonsMC/HBox/LeftPageButton
	RightPageButton = $UpgradePage/UpgradeTabs/HBox/TabButtonsMC/HBox/RightPageButton

func _on_page_buttons_timer_timeout() -> void:
	if Unlocks.Unlocks["Chestnut"]["Unlocked"] or Unlocks.Unlocks["Gold"]["Unlocked"] or Values.DebugMode:
		Page1Button.visible = true
	else:
		Page1Button.visible = false
	
	if Unlocks.Unlocks["Chestnut"]["Unlocked"] or Values.DebugMode:
		Page2Button.visible = true
	else:
		Page2Button.visible = false
	
	if Unlocks.Unlocks["Ebony"]["Unlocked"] or Values.DebugMode:
		Page3Button.visible = true
	else:
		Page3Button.visible = false
	
	if Unlocks.Unlocks["Gold"]["Unlocked"] or Values.DebugMode:
		Page4Button.visible = true
	else:
		Page4Button.visible = false
	
	SetNextPageVisibility()

func SetNextPageVisibility():
	match Page:
		1:
			LeftPageButton.visible = false
			if Unlocks.Unlocks["Chestnut"]["Unlocked"] or Unlocks.Unlocks["Gold"]["Unlocked"] or Values.DebugMode:
				RightPageButton.visible = true
			else:
				RightPageButton.visible = false
		2:
			LeftPageButton.visible = true
			if Unlocks.Unlocks["Ebony"]["Unlocked"] or Unlocks.Unlocks["Gold"]["Unlocked"] or Values.DebugMode:
				RightPageButton.visible = true
			else:
				RightPageButton.visible = false
		3:
			LeftPageButton.visible = true
			if Unlocks.Unlocks["Gold"]["Unlocked"] or Unlocks.Unlocks["Gold"]["Unlocked"] or Values.DebugMode:
				RightPageButton.visible = true
			else:
				RightPageButton.visible = false
		4:
			LeftPageButton.visible = true
			RightPageButton.visible = false

func _on_left_page_button_button_down() -> void:
	if Page == 4:
		if Unlocks.Unlocks["Ebony"]["Unlocked"]:
			changePage(3)
		elif Unlocks.Unlocks["Chestnut"]["Unlocked"]:
			changePage(2)
		else:
			changePage(1)
	else:
		changePage(max(Page - 1, 1))

func _on_right_page_button_button_down() -> void:
	if Page == 1 and !Unlocks.Unlocks["Chestnut"]["Unlocked"] or Page == 2 and !Unlocks.Unlocks["Ebony"]["Unlocked"]:
			changePage(4)
	else:
		changePage(min(Page + 1, 4))
