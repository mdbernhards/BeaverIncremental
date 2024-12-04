extends Control

# Nodes
var FishPage
var BaitPage
var FishingSpotsPage

enum Pages {
	FishPage,
	BaitPage,
	FishingSpotsPage,
}

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
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
