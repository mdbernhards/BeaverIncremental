extends MarginContainer

# Nodes
var ItemNameLabel
var ItemCountLabel
var BuyButton
var EffectLabel
var UnlockedLabel

@export var ShopItemType: Fishing.ShopItemEnum :
	set(value):
		SetupNodePaths()
		ShopItemType = value
		
		ItemNameLabel.text = Fishing.ShopItems[value]["Name"]
		EffectLabel.text = "Fishing Power: " + str(Fishing.ShopItems[value]["FishingPower"]) + "%"

func _ready() -> void:
	SetupNodePaths()

func _process(_delta: float) -> void:
	pass

func SetupNodePaths():
	ItemNameLabel = $HBox/MC/VBox/HBox/ItemNameLabel
	ItemCountLabel = $HBox/MC/VBox/HBox/ColorRect/ItemCountLabel
	BuyButton = $HBox/MC/VBox/HBox/BuyButton
	EffectLabel = $HBox/MC/VBox/MC/EffectLabel
	UnlockedLabel = $HBox/MC/VBox/HBox/UnlockedLabel

func _on_buy_button_button_down() -> void:
	if !SaveData.ShopItems[ShopItemType]["Unlocked"] and Fishing.ShopItems[ShopItemType].has("UnlockPrice") and Fishing.ShopItems[ShopItemType]["UnlockPrice"] > 0:
		if SaveData.FishBiscuits["Count"] >= Fishing.ShopItems[ShopItemType]["UnlockPrice"]:
			SaveData.FishBiscuits["Count"] -= Fishing.ShopItems[ShopItemType]["UnlockPrice"]
			SaveData.ShopItems[ShopItemType]["Count"] += 1
			SaveData.ShopItems[ShopItemType]["Unlocked"] = true
	elif SaveData.ShopItems[ShopItemType]["Unlocked"] and SaveData.ShopItems[ShopItemType].has("Count") or !SaveData.ShopItems[ShopItemType]["Unlocked"] and !SaveData.ShopItems[ShopItemType].has("Count"):
		var priceMultip = 1
		if SaveData.ShopItems[ShopItemType].has("Count") and !Fishing.ShopItems[ShopItemType].has("UnlockPrice"):
			priceMultip += SaveData.ShopItems[ShopItemType].has["Count"]
		
		if SaveData.FishBiscuits["Count"] >= Fishing.ShopItems[ShopItemType]["Price"] * priceMultip:
			SaveData.FishBiscuits["Count"] -= Fishing.ShopItems[ShopItemType]["Price"] * priceMultip
			SaveData.ShopItems[ShopItemType]["Count"] += 1

func _on_shop_item_refresh_timer_timeout() -> void:
	if ShopItemType == Fishing.ShopItemEnum.NoBait:
		queue_free()
		return
	
	if SaveData.ShopItems[ShopItemType].has("Count"):
		if SaveData.ShopItems[ShopItemType]["Unlocked"]:
			ItemCountLabel.visible = true
			ItemCountLabel.text = str(SaveData.ShopItems[ShopItemType]["Count"])
			BuyButton.text = str(Fishing.ShopItems[ShopItemType]["Price"])
		elif Fishing.ShopItems[ShopItemType].has("UnlockPrice"):
			if Fishing.ShopItems[ShopItemType]["UnlockPrice"] > 0:
				BuyButton.text = "Unlock"
			else:
				BuyButton.text = "In Magic Upgrades"
			ItemCountLabel.visible = false
		else:
			BuyButton.text = str(Fishing.ShopItems[ShopItemType]["Price"])
			ItemCountLabel.visible = false
	else:
		ItemCountLabel.visible = false
		
		if SaveData.ShopItems[ShopItemType]["Unlocked"]:
			BuyButton.visible = false
			UnlockedLabel.visible = true
		else:
			BuyButton.visible = true
			UnlockedLabel.visible = false
	
	if !SaveData.ShopItems[ShopItemType]["Unlocked"] and Fishing.ShopItems[ShopItemType].has("UnlockPrice") and Fishing.ShopItems[ShopItemType]["UnlockPrice"] < 0:
		BuyButton.disabled = true
	else:
		BuyButton.disabled = false

func _on_buy_button_mouse_entered() -> void:
	if !SaveData.ShopItems[ShopItemType]["Unlocked"] and Fishing.ShopItems[ShopItemType].has("UnlockPrice"):
		if Fishing.ShopItems[ShopItemType]["UnlockPrice"] > 0:
			BuyButton.text = str(Fishing.ShopItems[ShopItemType]["UnlockPrice"])
		else:
			BuyButton.text = "No"

func _on_buy_button_mouse_exited() -> void:
	if !SaveData.ShopItems[ShopItemType]["Unlocked"] and Fishing.ShopItems[ShopItemType].has("UnlockPrice"):
		if Fishing.ShopItems[ShopItemType]["UnlockPrice"] > 0:
			BuyButton.text = "Unlock"
		else:
			BuyButton.text = "In Magic Upgrades"
			
