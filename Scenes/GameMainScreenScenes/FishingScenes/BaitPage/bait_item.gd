extends MarginContainer

# Nodes
var NameLabel
var EffectLabel
var BaitCountLabel
var PriceLabel

@export var BaitType: Fishing.BaitEnum :
	set(value):
		SetupNodePaths()
		BaitType = value
		
		NameLabel.text = Fishing.Bait[value]["Name"]
		BaitCountLabel.text = str(SaveData.Bait[BaitType]["Count"])
		PriceLabel.text = str(Fishing.Bait[value]["Price"])
		EffectLabel.text = "Fishing Power: " + str(Fishing.Bait[value]["Effect"]) + "%"

func _ready() -> void:
	SetupNodePaths()

func _process(delta: float) -> void:
	if SaveData.Bait[BaitType]["Unlocked"] or true:
		visible = true
		BaitCountLabel.text = str(SaveData.Bait[BaitType]["Count"])
	else:
		visible = false

func SetupNodePaths():
	NameLabel = $HBox/MC1/VBox/MC/NameLabel
	EffectLabel = $HBox/MC1/VBox/MC2/EffectLabel
	BaitCountLabel = $HBox/MC3/BaitCountLabel
	PriceLabel = $HBox/MC2/VBox/PriceLabel

func _on_buy_button_button_down() -> void:
	if SaveData.Gold["Count"] >= Fishing.Bait[BaitType]["Price"]:
		SaveData.Gold["Count"] -= Fishing.Bait[BaitType]["Price"]
		SaveData.Bait[BaitType]["Count"] += 1
