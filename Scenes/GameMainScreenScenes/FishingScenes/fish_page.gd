extends VBoxContainer

var FishTypes

# Nodes
var FishItemGrid
var CurrentBiscutsLabel
var NoFishLabel

func _ready() -> void:
	FishTypes = Fishing.FishEnum
	SetupNodePaths()

func _process(_delta: float) -> void:
	pass

func addAllCaughtFish():
	deleteAllFish()
	
	var fishes = SaveData.CaughtFish
	var existingItems = get_tree().get_nodes_in_group("FishShopItem")
	
	for fish in fishes:
		if fishes[fish]["Caught"]:
			var fishItem = load("res://Scenes/GameMainScreenScenes/FishingScenes/FishPage/fish_item.tscn")
			fishItem = fishItem.instantiate()
			fishItem.Fish = Fishing.Fish[fish]
			FishItemGrid.add_child(fishItem)

func deleteAllFish():
	for item in FishItemGrid.get_children():
		item.queue_free()

func SetupNodePaths():
	FishItemGrid = $MC2/Scroll/Grid
	CurrentBiscutsLabel = $MC/CurrentBiscutsLabel
	NoFishLabel = $MC2/NoFishLabel

func _on_fish_page_refresh_timer_timeout() -> void:
	if CurrentBiscutsLabel:
		CurrentBiscutsLabel.text = "Fish Biscuits: " + NumberFormatting.formatNumber(floor(SaveData.FishBiscuits["Count"] * 10) / 10)
		
	if FishItemGrid.get_child_count() > 0:
		NoFishLabel.visible = false
	else:
		NoFishLabel.visible = true
