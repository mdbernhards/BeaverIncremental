extends MarginContainer

# Nodes
var NameLabel
var CountLabel

var Fish: Fishing.FishObject = Fishing.Fish[Fishing.FishEnum.Boot] :
	set(value):
		setupNodePaths()
		Fish = value
		
		NameLabel.text = Fish.Name
		CountLabel.text = str(SaveData.CaughtFish[Fish.Type]["Count"])

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	updateData()

func updateData():
	if Fish:
		NameLabel.text = Fish.Name
		CountLabel.text = str(SaveData.CaughtFish[Fish.Type]["Count"])

func setupNodePaths():
	NameLabel = $HBox/MC1/VBox/MC/NameLabel
	CountLabel = $HBox/MC1/VBox/MC3/CountLabel

func _on_sell_button_button_down() -> void:
	pass # Replace with function body.
