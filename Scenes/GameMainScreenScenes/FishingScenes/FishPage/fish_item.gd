extends MarginContainer

# Nodes
var NameLabel
var CountLabel
var CountColorRect

var Fish: Fishing.FishObject = Fishing.Fish[Fishing.FishEnum.Boot] :
	set(value):
		setupNodePaths()
		
		Fish = value
		NameLabel.text = Fish.FishName
		
		updateData()

func _ready() -> void:
	setupNodePaths()

func _process(delta: float) -> void:
	pass

func updateData():
	if Fish:
		NameLabel.text = Fish.FishName
		
		var fishCount = SaveData.CaughtFish[Fish.Type]["Count"]
		var bonusCapacity = Values.ResourceValues["Fish"]["BonusCapacity"]
		
		CountLabel.text = str(fishCount) + " | " + str(bonusCapacity)
		
		if fishCount >= bonusCapacity:
			CountColorRect.color = Color("486d53")
		else:
			CountColorRect.color = Color("694c26")

func setupNodePaths():
	NameLabel = $HBox/MC1/VBox/MC/NameLabel
	CountLabel = $HBox/MC1/VBox/MC3/CountLabel
	CountColorRect = $HBox/MC1/VBox/MC3/CountColorRect

func _on_sell_button_button_down() -> void:
	if SaveData.CaughtFish[Fish.Type]["Count"] > 0:
		SaveData.CaughtFish[Fish.Type]["Count"] -= 1
		SaveData.FishBiscuits["Count"] += Fishing.FishPrice[Fish.Type] * Values.ResourceValues["Fish"]["FishPriceMultip"]
		
		if !SaveData.GeneralInfo.has("FishSoldCount"):
			SaveData.GeneralInfo["FishSoldCount"] = 0
		
		SaveData.GeneralInfo["FishSoldCount"] += 1
		updateData()

func _on_fish_item_refresh_timer_timeout() -> void:
	updateData()
