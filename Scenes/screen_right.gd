extends VBoxContainer

func _ready():
	pass

func _process(delta):
	pass

func resetTabs():
	$TabScreen/UpgradeTab.visible = false
	$TabScreen/BuildingsTab.visible = false
	$TabScreen/ReaserchTab.visible = false

func _on_upgrades_button_button_down():
	resetTabs()
	$TabScreen/UpgradeTab.visible = true

func _on_buildings_button_button_down():
	resetTabs()
	$TabScreen/BuildingsTab.visible = true


func _on_reaserch_button_button_down():
	resetTabs()
	$TabScreen/ReaserchTab.visible = true
