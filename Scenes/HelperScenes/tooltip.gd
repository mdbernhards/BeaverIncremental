extends Control

func _ready():
	pass

func _process(_delta):
	pass

func setTooltip(iconPath, title, description, price, flavor = "\"Call me Velvet Thunder\" - Holt"):
	$MarginBox/VBox/HBox/IconBox/Icon.texture = load(iconPath)
	$MarginBox/VBox/HBox/TitleBox/TitleLabel.text = title
	$MarginBox/VBox/DescriptionBox/DescriptionLabel.text = description
	$MarginBox/VBox/FlavorBox/FlavorLabel.text = flavor
	$MarginBox/VBox/PriceBox/PriceLabel.text = price
