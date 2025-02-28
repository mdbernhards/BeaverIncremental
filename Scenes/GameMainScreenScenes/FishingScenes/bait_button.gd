extends Button

@export var BaitType: Fishing.ShopItemEnum = Fishing.ShopItemEnum.NoBait:
	set(value):
		BaitType = value
		text = Fishing.ShopItems[value]["Name"]

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _on_button_down() -> void:
	Values.ResourceValues["Fish"]["SelectedBait"] = BaitType

func _on_bait_button_refresh_timer_timeout() -> void:
	if SaveData.ShopItems.has(BaitType) and SaveData.ShopItems[BaitType]["Unlocked"]:
		visible = true
		
		if BaitType == Fishing.ShopItemEnum.WyvernsFeather:
			text = "Wyverns F.(" + str(SaveData.ShopItems[BaitType]["Count"]) + ")"
		else:
			text = Fishing.ShopItems[BaitType]["Name"] + " (" + str(SaveData.ShopItems[BaitType]["Count"]) + ")"
		
		if SaveData.ShopItems[BaitType]["Count"] > 0 and !Values.ResourceValues["Fish"]["IsFishing"]:
			disabled = false
		else:
			disabled = true
	elif BaitType != Fishing.ShopItemEnum.NoBait:
		visible = false
	
	if BaitType == Fishing.ShopItemEnum.NoBait:
		if SaveData.ShopItems[Fishing.ShopItemEnum.Worm]["Unlocked"]:
			visible = true
		else:
			visible = false
		
		if !Values.ResourceValues["Fish"]["IsFishing"]:
			disabled = false
		else:
			disabled = true
