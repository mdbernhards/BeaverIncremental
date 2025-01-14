extends Control

# Nodes
var TitleLabel
var DescriptionLabel

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func setupNodePaths():
	TitleLabel = $MC/VBox/HBox/TitleLabel
	DescriptionLabel = $MC/VBox/DescriptionLabel

func setAchievementTooltip(title, description):
	setupNodePaths()
	TitleLabel.text = title
	DescriptionLabel.text = description
