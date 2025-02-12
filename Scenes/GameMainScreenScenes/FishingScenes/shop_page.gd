extends VBoxContainer

# Nodes
var CurrentBiscutsLabel
var ShopItemVBox

func _ready() -> void:
	setupNodePaths()
	setShopItems()

func _process(_delta: float) -> void:
	if CurrentBiscutsLabel:
		CurrentBiscutsLabel.text = "Fish Biscuits: " + str(floor(SaveData.FishBiscuits["Count"] * 10) / 10)

func setupNodePaths():
	CurrentBiscutsLabel = $MC/CurrentBiscutsLabel
	ShopItemVBox = $MC2/Scroll/MC/ShopItemVBox

func deleteAllFish():
	for item in ShopItemVBox.get_children():
		item.queue_free()

func setShopItems():
	deleteAllFish()
	var shopItemScene = load("res://Scenes/GameMainScreenScenes/FishingScenes/ShopPage/shop_item.tscn")
	
	for item in Fishing.ShopItems:
		var shopItem = shopItemScene.instantiate()
		shopItem.ShopItemType = item
		ShopItemVBox.add_child(shopItem)
