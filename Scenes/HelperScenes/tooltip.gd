extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setTooltip(iconPath, title, description, flavor = "\"Call me Velvet Thunder\" - Holt"):
	$MarginBox/VBox/HBox/IconBox/Icon.texture = load(iconPath)
	$MarginBox/VBox/HBox/TitleBox/TitleLabel.text = title
	$MarginBox/VBox/DescriptionBox/DescriptionLabel.text = description
	$MarginBox/VBox/FlavorBox/FlavorLabel.text = flavor
