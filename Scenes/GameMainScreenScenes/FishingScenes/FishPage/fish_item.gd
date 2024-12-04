extends MarginContainer

# Nodes
var NameLabel
var CountLabel

var Fish

var FishType := Fishing.FishEnum.Boot :
	set(value):
		Fish = Fishing.Fish[value] as Fishing.FishObject
		
		NameLabel.text = Fish.Name
		CountLabel.text = SaveData.CaughtFish[value]["Count"]

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	updateData()

func updateData():
	NameLabel.text = Fish.Name
	CountLabel.text = SaveData.CaughtFish[FishType]["Count"]

func setupNodePaths():
	NameLabel = $HBox/MC1/VBox/MC/NameLabel
	CountLabel = $HBox/MC1/VBox/MC3/CountLabel

func _on_sell_button_button_down() -> void:
	pass # Replace with function body.
