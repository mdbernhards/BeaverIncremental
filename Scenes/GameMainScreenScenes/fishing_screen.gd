extends Control

# Nodes
var FishPage
var ShopPage
var FishingSpotsPage

var ShopPageButton
var SpotPageButton

enum Pages {
	FishPage,
	ShopPage,
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
	changePage(Pages.ShopPage)

func _on_spot_button_button_down() -> void:
	changePage(Pages.FishingSpotsPage)

func setupNodePaths():
	FishPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/FishPage
	ShopPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/ShopPage
	FishingSpotsPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/FishingSpotsPage
	ShopPageButton = $MC/HBox/FishingImprovementsMenusHBox/VBox/MC/ColorRect/HBox/MC3/ShopPageButton
	SpotPageButton = $MC/HBox/FishingImprovementsMenusHBox/VBox/MC/ColorRect/HBox/MC2/SpotPageButton

func changePage(pageEnum):
	hideAllPages()
	
	match pageEnum:
		Pages.FishPage:
			FishPage.visible = true
		Pages.ShopPage:
			ShopPage.visible = true
		Pages.FishingSpotsPage:
			FishingSpotsPage.visible = true

func hideAllPages():
	FishPage.visible = false
	ShopPage.visible = false
	FishingSpotsPage.visible = false

func _on_fishing_screen_refresh_timer_timeout() -> void:
	if Unlocks.Unlocks["Fishing"]["Shop"]["Unlocked"]:
		ShopPageButton.disabled = false
		ShopPageButton.text = "Shop"
	else:
		ShopPageButton.disabled = true
		ShopPageButton.text = "????"
	
	if Unlocks.Unlocks["Fishing"]["Spot"]["2"]:
		SpotPageButton.disabled = false
		SpotPageButton.text = "Spots"
	else:
		SpotPageButton.disabled = true
		SpotPageButton.text = "?????"
