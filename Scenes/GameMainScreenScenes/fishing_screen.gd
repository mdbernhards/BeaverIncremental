extends Control

# Nodes
var FishPage
var BaitPage
var FishingSpotsPage

var BaitPageButton
var SpotPageButton

enum Pages {
	FishPage,
	BaitPage,
	FishingSpotsPage,
}

func _ready() -> void:
	setupNodePaths()
	changePage(Pages.FishPage)

func _process(_delta: float) -> void:
	pass

func _on_fish_button_button_down() -> void:
	changePage(Pages.FishPage)

func _on_bait_button_button_down() -> void:
	changePage(Pages.BaitPage)

func _on_spot_button_button_down() -> void:
	changePage(Pages.FishingSpotsPage)

func setupNodePaths():
	FishPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/FishPage
	BaitPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/BaitPage
	FishingSpotsPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/FishingSpotsPage
	BaitPageButton = $MC/HBox/FishingImprovementsMenusHBox/VBox/MC/ColorRect/HBox/MC3/BaitPageButton
	SpotPageButton = $MC/HBox/FishingImprovementsMenusHBox/VBox/MC/ColorRect/HBox/MC2/SpotPageButton

func changePage(pageEnum):
	hideAllPages()
	
	match pageEnum:
		Pages.FishPage:
			FishPage.visible = true
		Pages.BaitPage:
			BaitPage.visible = true
		Pages.FishingSpotsPage:
			FishingSpotsPage.visible = true

func hideAllPages():
	FishPage.visible = false
	BaitPage.visible = false
	FishingSpotsPage.visible = false

func _on_fishing_screen_refresh_timer_timeout() -> void:
	if Unlocks.Unlocks["Fishing"]["Bait"]["Unlocked"]:
		BaitPageButton.disabled = false
		BaitPageButton.text = "Bait"
	else:
		BaitPageButton.disabled = true
		BaitPageButton.text = "????"
	
	if Unlocks.Unlocks["Fishing"]["Spot"]["2"]:
		SpotPageButton.disabled = false
		SpotPageButton.text = "Spots"
	else:
		SpotPageButton.disabled = true
		SpotPageButton.text = "?????"
