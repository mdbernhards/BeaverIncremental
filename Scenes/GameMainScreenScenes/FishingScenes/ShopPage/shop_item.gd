extends MarginContainer

# Buy Nodes
var BuyVbox
var ItemNameLabel
var ItemCountRect
var ItemCountLabel
var BuyButton
var BoughtLabel
var TimerLabel
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
		ItemCountRect.visible = false
		BuyButton.text = str(getPrice())
		
		if ShopItemType == Fishing.ShopItemEnum.WpsBonus1 or ShopItemType == Fishing.ShopItemEnum.WpsBonus2 or ShopItemType == Fishing.ShopItemEnum.WpsBonus3 \
		or ShopItemType == Fishing.ShopItemEnum.WpcBonus1 or ShopItemType == Fishing.ShopItemEnum.WpcBonus2 or ShopItemType == Fishing.ShopItemEnum.WpcBonus3:
			BoughtLabel.visible = false
			
			if Bought:
				BuyButton.visible = false
				TimerLabel.visible = true
			else:
				BuyButton.visible = true
				TimerLabel.visible = false
		else:
			TimerLabel.visible = false
			
			if Bought:
				BuyButton.visible = false
				BoughtLabel.visible = true
			else:
				BuyButton.visible = true
				BoughtLabel.visible = false

func refreshItemData():
	if !SaveData.ShopItems.has(ShopItemType):
		SaveData.ShopItems[ShopItemType] = SaveData.OriginalShopItems[ShopItemType]
	
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
		if !SaveData.ShopItems[ShopItemType].has("Bought"):
			SaveData.ShopItems[ShopItemType]["Bought"] = false
		
		Bought = SaveData.ShopItems[ShopItemType]["Bought"]
	
	setShopItem()

func RefreshItemValues():
	if ShopItemType == Fishing.ShopItemEnum.NoBait:
		queue_free()
		return
	
	if ShopItemType == Fishing.ShopItemEnum.WpsBonus1 or ShopItemType == Fishing.ShopItemEnum.WpsBonus2 or ShopItemType == Fishing.ShopItemEnum.WpsBonus3 \
	or ShopItemType == Fishing.ShopItemEnum.WpcBonus1 or ShopItemType == Fishing.ShopItemEnum.WpcBonus2 or ShopItemType == Fishing.ShopItemEnum.WpcBonus3:
		match ShopItemType:
			Fishing.ShopItemEnum.WpsBonus1:
				if Bought:
					TimerLabel.text = timeConvert(get_tree().get_first_node_in_group("ShopPage").WpsBonusTimer.time_left)
					SaveData.ShopItems[ShopItemType]["TimeLeft"] = get_tree().get_first_node_in_group("ShopPage").WpsBonusTimer.time_left
				elif SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus2]["Bought"] or SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus3]["Bought"] or SaveData.FishBiscuits["Count"] < getPrice():
					BuyButton.disabled = true
				else:
					BuyButton.disabled = false
			Fishing.ShopItemEnum.WpsBonus2:
				if Bought:
					TimerLabel.text = timeConvert(get_tree().get_first_node_in_group("ShopPage").WpsBonusTimer.time_left)
					SaveData.ShopItems[ShopItemType]["TimeLeft"] = get_tree().get_first_node_in_group("ShopPage").WpsBonusTimer.time_left
				elif SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus1]["Bought"] or SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus3]["Bought"] or SaveData.FishBiscuits["Count"] < getPrice():
					BuyButton.disabled = true
				else:
					BuyButton.disabled = false
			Fishing.ShopItemEnum.WpsBonus3:
				if Bought:
					TimerLabel.text = timeConvert(get_tree().get_first_node_in_group("ShopPage").WpsBonusTimer.time_left)
					SaveData.ShopItems[ShopItemType]["TimeLeft"] = get_tree().get_first_node_in_group("ShopPage").WpsBonusTimer.time_left
				elif SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus2]["Bought"] or SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus1]["Bought"] or SaveData.FishBiscuits["Count"] < getPrice():
					BuyButton.disabled = true
				else:
					BuyButton.disabled = false
			Fishing.ShopItemEnum.WpcBonus1:
				if Bought:
					TimerLabel.text = timeConvert(get_tree().get_first_node_in_group("ShopPage").WpcBonusTimer.time_left)
					SaveData.ShopItems[ShopItemType]["TimeLeft"] = get_tree().get_first_node_in_group("ShopPage").WpcBonusTimer.time_left
				elif SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus2]["Bought"] or SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus3]["Bought"] or SaveData.FishBiscuits["Count"] < getPrice():
					BuyButton.disabled = true
				else:
					BuyButton.disabled = false
			Fishing.ShopItemEnum.WpcBonus2:
				if Bought:
					TimerLabel.text = timeConvert(get_tree().get_first_node_in_group("ShopPage").WpcBonusTimer.time_left)
					SaveData.ShopItems[ShopItemType]["TimeLeft"] = get_tree().get_first_node_in_group("ShopPage").WpcBonusTimer.time_left
				elif SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus1]["Bought"] or SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus3]["Bought"] or SaveData.FishBiscuits["Count"] < getPrice():
					BuyButton.disabled = true
				else:
					BuyButton.disabled = false
			Fishing.ShopItemEnum.WpcBonus3:
				if Bought:
					TimerLabel.text = timeConvert(get_tree().get_first_node_in_group("ShopPage").WpcBonusTimer.time_left)
					SaveData.ShopItems[ShopItemType]["TimeLeft"] = get_tree().get_first_node_in_group("ShopPage").WpcBonusTimer.time_left
				elif SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus2]["Bought"] or SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus1]["Bought"] or SaveData.FishBiscuits["Count"] < getPrice():
					BuyButton.disabled = true
				else:
					BuyButton.disabled = false
	elif Unlocked:
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

func _on_buy_button_button_down() -> void:
	if SaveData.FishBiscuits["Count"] >= getPrice():
		SaveData.FishBiscuits["Count"] -= getPrice()
		
		if IsBait:
			SaveData.ShopItems[ShopItemType]["Count"] += Values.ResourceValues["Fish"]["BaitBuyCount"]
		elif HasCount:
			SaveData.ShopItems[ShopItemType]["Count"] += 1
		else:
			SaveData.ShopItems[ShopItemType]["Bought"] = true
			
			if ShopItemType == Fishing.ShopItemEnum.WpsBonus1 or ShopItemType == Fishing.ShopItemEnum.WpsBonus2 or ShopItemType == Fishing.ShopItemEnum.WpsBonus3:
				get_tree().get_first_node_in_group("ShopPage").setWpsTempBonus(ShopItemType)
			elif ShopItemType == Fishing.ShopItemEnum.WpcBonus1 or ShopItemType == Fishing.ShopItemEnum.WpcBonus2 or ShopItemType == Fishing.ShopItemEnum.WpcBonus3:
				get_tree().get_first_node_in_group("ShopPage").setWpcTempBonus(ShopItemType)
		
		if !SaveData.GeneralInfo.has("FishShopItemsBoughtCount"):
			SaveData.GeneralInfo["FishShopItemsBoughtCount"] = 0
		
		SaveData.GeneralInfo["FishShopItemsBoughtCount"] += 1
	
	RefreshItemValues()
	refreshItemData()
	CalculateValues.calculateAllValues()

func _on_shop_item_refresh_timer_timeout() -> void:
	RefreshItemValues()
	refreshItemData()

func timeConvert(timeInSeconds):
	timeInSeconds = int(timeInSeconds)
	
	var seconds = timeInSeconds % 60
	var minutes = (timeInSeconds / 60) % 60
	
	return "%02d:%02d" % [minutes, seconds]

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
	TimerLabel = $HBox/MC/BuyVBox/HBox/TimerLabel
	EffectLabel = $HBox/MC/BuyVBox/MC/EffectLabel

	UnlockVBox = $HBox/MC/UnlockVBox
	UnlockButton = $HBox/MC/UnlockVBox/HBox/UnlockButton

func _on_unlock_button_button_down() -> void:
	if SaveData.FishBiscuits["Count"] >= Fishing.ShopItems[ShopItemType]["UnlockPrice"]:
		SaveData.FishBiscuits["Count"] -= Fishing.ShopItems[ShopItemType]["UnlockPrice"]
		SaveData.ShopItems[ShopItemType]["Unlocked"] = true
		
		if !SaveData.GeneralInfo.has("FishShopItemsBoughtCount"):
			SaveData.GeneralInfo["FishShopItemsBoughtCount"] = 0
		
		SaveData.GeneralInfo["FishShopItemsBoughtCount"] += 1
	refreshItemData()
