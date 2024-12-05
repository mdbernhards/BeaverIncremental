extends VBoxContainer

var FishTypes

# Nodes
var FishItemGrid
var CurrentGoldLabel

func _ready() -> void:
	FishTypes = Fishing.FishEnum
	SetupNodePaths()

func _process(delta: float) -> void:
	if CurrentGoldLabel:
		CurrentGoldLabel.text = "Gold: " + str(SaveData.Gold["Count"])

func addAllCaughtFish():
	var fishes = SaveData.CaughtFish
	
	var existingItems = get_tree().get_nodes_in_group("FishShopItem")
	
	for fish in fishes:
		var fishInShop = false
		
		if fishes[fish]["Count"] > 0 and !fishes[fish]["Caught"]:
			fishes[fish]["Caught"] = true
			var fishItem = load("res://Scenes/GameMainScreenScenes/FishingScenes/FishPage/fish_item.tscn")
			fishItem = fishItem.instantiate()
			fishItem.Fish = Fishing.Fish[fish]
			FishItemGrid.add_child(fishItem)

func SetupNodePaths():
	FishItemGrid = $MC2/Scroll/Grid
	CurrentGoldLabel = $MC/CurrentGoldLabel
