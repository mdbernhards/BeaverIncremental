extends MarginContainer

# Nodes
var ItemNameLabel
var BaitCountLabel
var BuyButton
var EffectLabel

@export var BaitType: Fishing.BaitEnum :
	set(value):
		SetupNodePaths()
		BaitType = value
		
		ItemNameLabel.text = Fishing.Bait[value]["Name"]
		BaitCountLabel.text = str(SaveData.Bait[BaitType]["Count"])
		BuyButton.text = str(Fishing.Bait[value]["Price"])
		EffectLabel.text = "Fishing Power: " + str(Fishing.Bait[value]["Effect"]) + "%"

func _ready() -> void:
	SetupNodePaths()

func _process(_delta: float) -> void:
	pass

func SetupNodePaths():
	ItemNameLabel = $HBox/MC/VBox/HBox/ItemNameLabel
	BaitCountLabel = $HBox/MC/VBox/HBox/ColorRect/BaitCountLabel
	BuyButton = $HBox/MC/VBox/HBox/BuyButton
	EffectLabel = $HBox/MC/VBox/MC/EffectLabel

func _on_buy_button_button_down() -> void:
	if SaveData.Gold["Count"] >= Fishing.Bait[BaitType]["Price"]:
		SaveData.Gold["Count"] -= Fishing.Bait[BaitType]["Price"]
		SaveData.Bait[BaitType]["Count"] += 1

func _on_shop_item_refresh_timer_timeout() -> void:
	if SaveData.Bait[BaitType]["Unlocked"] or true:
		visible = true
		BaitCountLabel.text = str(SaveData.Bait[BaitType]["Count"])
	else:
		visible = false
