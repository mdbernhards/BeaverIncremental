extends MarginContainer

# Buy Nodes
var BuyVbox
var ItemNameLabel
var ItemCountRect
var ItemCountLabel
var BuyButton
var BoughtLabel
var EffectLabel

# Unlock Nodes
var UnlockVBox
var UnlockButton

# SaveData
var Bought = false
var Unlocked = true
var Count = 0

# Fishing
var Price = 0
var UnlockPrice = 0
var IsBait = false
var HasCount = false

var ShopItemType: Fishing.ShopItemEnum :
	set(value):
		ShopItemType = value
		
		setupNodePaths()
		refreshItemData()

func refreshItemData():
		ItemNameLabel.text = Fishing.ShopItems[ShopItemType]["Name"]
		EffectLabel.text = str(Fishing.ShopItems[ShopItemType]["Description"])
		
		IsBait = Fishing.ShopItems[ShopItemType]["IsBait"]
		HasCount = Fishing.ShopItems[ShopItemType]["HasCount"]
		Price = Fishing.ShopItems[ShopItemType]["Price"]
		
		if IsBait:
			UnlockPrice = Fishing.ShopItems[ShopItemType]["UnlockPrice"]
			Unlocked = SaveData.ShopItems[ShopItemType]["Unlocked"]
		
		if HasCount:
			Count = SaveData.ShopItems[ShopItemType]["Count"]
		else:
			Bought = SaveData.ShopItems[ShopItemType]["Bought"]
		
		setShopItem()

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
	pass

func setShopItem():
	if ShopItemType == Fishing.ShopItemEnum.NoBait:
		queue_free()
		return
	
	if IsBait and !Unlocked:
		BuyVbox.visible = false
		UnlockVBox.visible = true
		
		UnlockButton.text = str(UnlockPrice)
	elif IsBait or HasCount:
		BuyVbox.visible = true
		UnlockVBox.visible = false
		ItemCountRect.visible = true
		
		ItemCountLabel.text = str(Count)
		BuyButton.text = str(getPrice())
	else:
		BuyButton.text = str(getPrice())
		
		if Bought:
			BuyButton.visible = false
			BoughtLabel.visible = true
		else:
			BuyButton.visible = true
			BoughtLabel.visible = false

func _on_buy_button_button_down() -> void:
	if SaveData.FishBiscuits["Count"] >= getPrice():
		SaveData.FishBiscuits["Count"] -= getPrice()
		
		if IsBait:
			SaveData.ShopItems[ShopItemType]["Count"] += Values.ResourceValues["Fish"]["BaitBuyCount"]
		elif HasCount:
			SaveData.ShopItems[ShopItemType]["Count"] += 1
		else:
			SaveData.ShopItems[ShopItemType]["Bought"] = true
	refreshItemData()

func _on_shop_item_refresh_timer_timeout() -> void:
	if ShopItemType == Fishing.ShopItemEnum.NoBait:
		queue_free()
		return
	
	if Unlocked:
		BuyButton.text = str(getPrice())
		if SaveData.FishBiscuits["Count"] >= getPrice():
			BuyButton.disabled = false
		else:
			BuyButton.disabled = true
	else:
		if SaveData.FishBiscuits["Count"] >= Fishing.ShopItems[ShopItemType]["UnlockPrice"]:
			UnlockButton.disabled = false
		else:
			UnlockButton.disabled = true

func getPrice():
	if !HasCount or IsBait:
		return Price
	
	var priceMultip = SaveData.ShopItems[ShopItemType]["Count"]
	return max(round((0.04 * pow(priceMultip, 3) + pow(priceMultip, 2) + priceMultip + Price) * Price / 5), 1)

func setupNodePaths():
	BuyVbox = $HBox/MC/BuyVBox
	ItemNameLabel = $HBox/MC/BuyVBox/HBox/ItemNameLabel
	ItemCountRect = $HBox/MC/BuyVBox/HBox/ItemCountRect
	ItemCountLabel = $HBox/MC/BuyVBox/HBox/ItemCountRect/ItemCountLabel
	BuyButton = $HBox/MC/BuyVBox/HBox/BuyButton
	BoughtLabel = $HBox/MC/BuyVBox/HBox/BoughtLabel
	EffectLabel = $HBox/MC/BuyVBox/MC/EffectLabel

	UnlockVBox = $HBox/MC/UnlockVBox
	UnlockButton = $HBox/MC/UnlockVBox/HBox/UnlockButton

func _on_unlock_button_button_down() -> void:
	if SaveData.FishBiscuits["Count"] >= Fishing.ShopItems[ShopItemType]["UnlockPrice"]:
		SaveData.FishBiscuits["Count"] -= Fishing.ShopItems[ShopItemType]["UnlockPrice"]
		SaveData.ShopItems[ShopItemType]["Unlocked"] = true
	refreshItemData()
