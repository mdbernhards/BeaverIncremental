extends MarginContainer

# Nodes
var TitleLabel
var DescriptionLabel
var UnlockLabel
var SecondaryDescriptionLabel
var IconRect
var PriceLabel

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	global_position = get_global_mouse_position() + Vector2(5, -size.y - 5)

func setTooltip(title, description, secondaryDescription = null, unlocked = null, type = null, price = null):
	setupNodePaths()
	
	TitleLabel.text = title
	DescriptionLabel.text = description
	
	if secondaryDescription:
		SecondaryDescriptionLabel.visible = true
		SecondaryDescriptionLabel.text = secondaryDescription
	else:
		SecondaryDescriptionLabel.visible = false
	
	if unlocked:
		UnlockLabel.visible = true
		UnlockLabel.text = unlocked
	else:
		UnlockLabel.visible = false
	
	if price:
		PriceLabel.visible = true
		PriceLabel.text = "Sell For: " + str(price)
	else:
		PriceLabel.visible = false
	
	if type == "Research":
		IconRect.visible = true # change to research icon
	elif type == "Magic":
		IconRect.visible = true # change to Magic Upgrades icon
	elif type == "Achievements":
		IconRect.visible = true # change to Achievements icon
	elif type == "Upgrades":
		IconRect.visible = true # change to Upgrades icon
	else:
		IconRect.visible = true

func setupNodePaths():
	TitleLabel = $MC/MC/VBox/HBox/VBox/MC/TitleLabel
	DescriptionLabel = $MC/MC/VBox/HBox/VBox/MC2/DescriptionLabel
	UnlockLabel = $MC/MC/VBox/HBox/MC2/UnlockLabel
	SecondaryDescriptionLabel = $MC/MC/VBox/SecondaryMC/SecondaryDescriptionLabel
	IconRect = $MC/MC/VBox/HBox/MC/IconRect
	PriceLabel = $MC/MC/VBox/PriceMc/PriceLabel
