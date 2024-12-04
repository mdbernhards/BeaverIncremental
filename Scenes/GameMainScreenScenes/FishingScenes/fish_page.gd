extends VBoxContainer

var FishTypes

func _ready() -> void:
	FishTypes = Fishing.FishEnum

func _process(delta: float) -> void:
	pass

func addAllCaughtFish():
	var fishes = SaveData.CaughtFish
	
	var existingItems = get_tree().get_nodes_in_group("FishShopItem")
	
	var fishInShop = false
	
	for fish in fishes:
		if fishes[fish]["Caught"]:
			for existingItem in existingItems:
				if existingItem.FishType == fish:
					fishInShop = true
		
		if !fishInShop:
			var fishItem = load("res://Scenes/GameMainScreenScenes/FishingScenes/FishPage/fish_item.tscn")
			fishItem.instantiate()
			fishItem.FishType = fish
