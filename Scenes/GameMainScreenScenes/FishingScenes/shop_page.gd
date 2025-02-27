extends VBoxContainer

# Nodes
var CurrentBiscutsLabel
var ShopItemVBox
var WpsBonusTimer
var WpcBonusTimer

func _ready() -> void:
	setupNodePaths()
	setShopItems()

func _process(_delta: float) -> void:
	pass

func setupNodePaths():
	CurrentBiscutsLabel = $MC/CurrentBiscutsLabel
	ShopItemVBox = $MC2/Scroll/MC/ShopItemVBox
	WpsBonusTimer = $WpsBonusTimer
	WpcBonusTimer = $WpcBonusTimer

func deleteAllShopItem():
	for item in ShopItemVBox.get_children():
		item.queue_free()

func setShopItems():
	deleteAllShopItem()
	var shopItemScene = load("res://Scenes/GameMainScreenScenes/FishingScenes/ShopPage/shop_item.tscn")
	
	for item in Fishing.ShopItems:
		var shopItem = shopItemScene.instantiate()
		shopItem.ShopItemType = item
		ShopItemVBox.add_child(shopItem)
	
	loadTemporaryBonuses()

func loadTemporaryBonuses():
	if SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus1]["Bought"]:
		WpsBonusTimer.wait_time = SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus1]["TimeLeft"]
		WpsBonusTimer.start()
	elif SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus2]["Bought"]:
		WpsBonusTimer.wait_time = SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus2]["TimeLeft"]
		WpsBonusTimer.start()
	elif SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus3]["Bought"]:
		WpsBonusTimer.wait_time = SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus3]["TimeLeft"]
		WpsBonusTimer.start()
	
	if SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus1]["Bought"]:
		WpcBonusTimer.wait_time = SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus1]["TimeLeft"]
		WpcBonusTimer.start()
	elif SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus2]["Bought"]:
		WpcBonusTimer.wait_time = SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus2]["TimeLeft"]
		WpcBonusTimer.start()
	elif SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus3]["Bought"]:
		WpcBonusTimer.wait_time = SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus3]["TimeLeft"]
		WpcBonusTimer.start()

func setWpsTempBonus(bonusType):
	if !SaveData.ShopItems[bonusType]["Bought"] or !WpsBonusTimer.is_stopped():
		return
	
	match bonusType:
		Fishing.ShopItemEnum.WpsBonus1:
			WpsBonusTimer.wait_time = 600
		Fishing.ShopItemEnum.WpsBonus2:
			WpsBonusTimer.wait_time = 1200
		Fishing.ShopItemEnum.WpsBonus3:
			WpsBonusTimer.wait_time = 1800
	
	WpsBonusTimer.start()
	CalculateValues.calculateAllValues()

func setWpcTempBonus(bonusType):
	if !SaveData.ShopItems[bonusType]["Bought"] or !WpcBonusTimer.is_stopped():
		return
	
	match bonusType:
		Fishing.ShopItemEnum.WpcBonus1:
			WpcBonusTimer.wait_time = 600
		Fishing.ShopItemEnum.WpcBonus2:
			WpcBonusTimer.wait_time = 1200
		Fishing.ShopItemEnum.WpcBonus3:
			WpcBonusTimer.wait_time = 1800
	
	WpcBonusTimer.start()
	CalculateValues.calculateAllValues()

func _on_wps_bonus_timer_timeout() -> void:
	SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus1]["Bought"] = false
	SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus2]["Bought"] = false
	SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus3]["Bought"] = false
	SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus1]["TimeLeft"] = 0
	SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus2]["TimeLeft"] = 0
	SaveData.ShopItems[Fishing.ShopItemEnum.WpsBonus3]["TimeLeft"] = 0
	CalculateValues.calculateAllValues()
	get_tree().get_first_node_in_group("TextLogSection").writeToLog("Wood Per Second Bonus Ended")

func _on_wpc_bonus_timer_timeout() -> void:
	SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus1]["Bought"] = false
	SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus2]["Bought"] = false
	SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus3]["Bought"] = false
	SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus1]["TimeLeft"] = 0
	SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus2]["TimeLeft"] = 0
	SaveData.ShopItems[Fishing.ShopItemEnum.WpcBonus3]["TimeLeft"] = 0
	CalculateValues.calculateAllValues()
	get_tree().get_first_node_in_group("TextLogSection").writeToLog("Wood Per Click Bonus Ended")

func _on_shop_page_refresh_timer_timeout() -> void:
	if CurrentBiscutsLabel:
		CurrentBiscutsLabel.text = "Fish Biscuits: " + NumberFormatting.formatNumber(floor(SaveData.FishBiscuits["Count"] * 10) / 10)
