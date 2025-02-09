extends Control

# Nodes
var FishPage
var ShopPage

var ShopPageButton

enum Pages {
	FishPage,
	ShopPage,
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

func setupNodePaths():
	FishPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/FishPage
	ShopPage = $MC/HBox/FishingImprovementsMenusHBox/VBox/PagesMC/ShopPage
	ShopPageButton = $MC/HBox/FishingImprovementsMenusHBox/VBox/MC/ColorRect/HBox/MC3/ShopPageButton

func changePage(pageEnum):
	hideAllPages()
	
	match pageEnum:
		Pages.FishPage:
			FishPage.visible = true
		Pages.ShopPage:
			ShopPage.visible = true

func hideAllPages():
	FishPage.visible = false
	ShopPage.visible = false

func _on_fishing_screen_refresh_timer_timeout() -> void:
	if !Unlocks.Unlocks["Fishing"].has("Shop"):
		Unlocks.Unlocks["Fishing"]["Shop"] = { "Unlocked" : false }
	
	if Unlocks.Unlocks["Fishing"]["Shop"]["Unlocked"]:
		ShopPageButton.disabled = false
		ShopPageButton.text = "Shop"
	else:
		ShopPageButton.disabled = true
		ShopPageButton.text = "????"
