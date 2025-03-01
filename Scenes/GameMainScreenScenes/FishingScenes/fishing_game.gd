extends ColorRect

var RNG = RandomNumberGenerator.new()

# Game Values
var BaitUsed = Fishing.ShopItemEnum.NoBait
var MoreFishMultip
var LongerFishingTimeMultip
var FishBounceMultip
var FishingChances
var FishingClicks
var ChanceToUseBait

# Nodes
var SpawnTimer
var FishBounceBar
var Fish
var FishingGameLogic
var FishingTimeoutTimer
var TimeoutBar
var TimeoutLabel
var FishingChancesLabel
var ChanceRefreshLabel
var FishButton
var FishingChanceRefreshTimer
var ClicksLeftLabel
var ChanceVBox
var BounceTexture
var SelectedBaitLabel

var IsBouncing = false
var BarUp = true
var BounceTime := 0.0
var BouncingFishType

var FishObjectScene = preload("res://Scenes/GameMainScreenScenes/FishingScenes/fish_button.tscn")

func _ready() -> void:
	SetNodePaths()
	updateFishingValues()

func _process(delta: float) -> void:
	if IsBouncing:
		RunBounceProgressBar(delta)
		
	if Values.ResourceValues["Fish"]["IsFishing"]:
		TimeoutBar.visible = true
		TimeoutBar.value = remap(FishingTimeoutTimer.time_left, 0, Values.ResourceValues["Fish"]["FishingTimeout"] * LongerFishingTimeMultip, 0, 100)
		TimeoutLabel.text = str(roundi(FishingTimeoutTimer.time_left))
		
		if FishingClicks <= 0:
			stopFishing()
	else:
		TimeoutBar.visible = false

func RunBounceProgressBar(delta):
	var baitMultip
	
	if Values.ResourceValues["Fish"]["SelectedBait"] == 0:
		baitMultip = 1
	else:
		baitMultip = 1 - ((Fishing.ShopItems[BaitUsed]["FishingPower"] - Fishing.FishLevel[BouncingFishType]) / 8)
	
	var bounceIncrement = delta * 239 * FishBounceMultip * Fishing.Fish[BouncingFishType].BounceMultip * baitMultip
	
	if BarUp:
		BounceTime += bounceIncrement
	else:
		BounceTime -= bounceIncrement
	
	if BounceTime >= 100:
		BarUp = false
	elif BounceTime <= 0:
		BarUp = true
	
	FishBounceBar.value = BounceTime

func startFishing():
	updateFishingValues()
	StartSpawningFish()
	StartFishingTimeout()

func stopFishing(gameLoad = false):
	useBait()
	Values.ResourceValues["Fish"]["IsFishing"] = false
	IsBouncing = false
	SpawnTimer.stop()
	FishingTimeoutTimer.stop()
	deleteAllFish()
	FishingClicks = Values.ResourceValues["Fish"]["FishingClicks"]
	
	if !gameLoad:
		if Values.ResourceValues["Fish"]["ChanceToRefundChance"] < RNG.randf():
			SaveData.GeneralInfo["CurrentFishingChances"] = clamp(SaveData.GeneralInfo["CurrentFishingChances"] - 1, 0, FishingChances)
		else:
			get_tree().get_first_node_in_group("TextLogSection").writeToLog("Fishing Chance Refunded!")

func useBait():
	if BaitUsed == Fishing.ShopItemEnum.NoBait:
		return
	
	if ChanceToUseBait > RNG.randf():
		SaveData.ShopItems[BaitUsed]["Count"] -= 1
	else:
		if !SaveData.GeneralInfo.has("TimesBaitNotUsed"):
			SaveData.GeneralInfo["TimesBaitNotUsed"] = 0
		
		SaveData.GeneralInfo["TimesBaitNotUsed"] += 1
		get_tree().get_first_node_in_group("TextLogSection").writeToLog("Bait Refunded!")

func StartFishingTimeout():
	FishingTimeoutTimer.wait_time = Values.ResourceValues["Fish"]["FishingTimeout"] * LongerFishingTimeMultip
	FishingTimeoutTimer.start()

func updateFishingValues(onLoad = false):
	MoreFishMultip = Values.ResourceValues["Fish"]["MoreFishMultip"]
	LongerFishingTimeMultip = Values.ResourceValues["Fish"]["LongerFishingTimeMultip"]
	FishBounceMultip = Values.ResourceValues["Fish"]["FishBounceMultip"]
	FishingChances = Values.ResourceValues["Fish"]["FishingChances"]
	FishingClicks = Values.ResourceValues["Fish"]["FishingClicks"]
	ChanceToUseBait = Values.ResourceValues["Fish"]["ChanceToUseBait"]
	BaitUsed = Values.ResourceValues["Fish"]["SelectedBait"]
	
	if !Values.ResourceValues["Fish"].has("IsFishing"):
		Values.ResourceValues["Fish"]["IsFishing"] = false
	
	if onLoad:
		FishingChanceRefreshTimer.stop()
		BaitUsed = Fishing.ShopItemEnum.NoBait

func _on_fish_button_button_down() -> void:
	if IsBouncing:
		checkIfFishCaught()
	else:
		if !SaveData.GeneralInfo.has("TotalFishedCount"):
			SaveData.GeneralInfo["TotalFishedCount"] = 0
		
		SaveData.GeneralInfo["TempFishedCount"] += 1
		SaveData.GeneralInfo["TotalFishedCount"] += 1
		startFishing()
	_on_refresh_timer_timeout()

func checkIfFishCaught():
	if FishBounceBar.value >= 60 and FishBounceBar.value <= 80:
		get_tree().get_first_node_in_group("TextLogSection").writeCaughtFishToLog(BouncingFishType)
		SaveData.CaughtFish[BouncingFishType]["Count"] += 1
		SaveData.CaughtFish[BouncingFishType]["Caught"] = true
		get_tree().get_first_node_in_group("FishPage").addAllCaughtFish()
		stopFishing()
		CalculateValues.calculateAllValues()
	
	IsBouncing = false
	FishingClicks -= 1

func SetNodePaths():
	SpawnTimer = $FishingGameLogic/SpawnTimer
	FishBounceBar = $FishingGameLogic/BounceTexture/FishBounceBar
	Fish = $FishingGameLogic/Fish
	FishingGameLogic = $FishingGameLogic
	FishingTimeoutTimer = $FishingGameLogic/FishingTimeoutTimer
	TimeoutBar = $FishingGameLogic/TimeoutBar
	TimeoutLabel = $FishingGameLogic/TimeoutBar/TimeoutLabel
	FishingChancesLabel = $MC/ChanceVBox/HBox/MC/VBox/FishingChancesLabel
	ChanceRefreshLabel = $MC/ChanceVBox/HBox/MC/VBox/ChanceRefreshLabel
	FishButton = $MC/VBox/HBox/MC/FishButton
	FishingChanceRefreshTimer = $FishingGameLogic/FishingChanceRefreshTimer
	ClicksLeftLabel = $FishingGameLogic/ClicksLeftLabel
	ChanceVBox = $MC/ChanceVBox
	BounceTexture = $FishingGameLogic/BounceTexture
	SelectedBaitLabel = $FishingGameLogic/SelectedBaitLabel

func StartSpawningFish():
	Values.ResourceValues["Fish"]["IsFishing"] = true
	
	var spawnTimeMultip = 1 / MoreFishMultip
	SpawnTimer.wait_time = RNG.randf_range(0.8 * spawnTimeMultip, 4.5 * spawnTimeMultip)
	SpawnTimer.start()

func _on_spawn_timer_timeout() -> void:
	spawnFish()
	
	var spawnTimeMultip = 1 / MoreFishMultip
	SpawnTimer.wait_time = RNG.randf_range(0.8 * spawnTimeMultip, 4.5 * spawnTimeMultip)
	SpawnTimer.start()
	
func pickFishToSpawn():
	var weightList = []
	var totalWeight = 0
	var baitUsed
	var baitType = Values.ResourceValues["Fish"]["SelectedBait"]
	
	if baitType == Fishing.ShopItemEnum.NoBait:
		baitUsed = { "FishingPower" : 0}
	else:
		baitUsed = Fishing.ShopItems[baitType]
	
	for fishTypeName in Fishing.FishEnum:
		var fishType = Fishing.FishEnum[fishTypeName]
		
		var fishLevel = Fishing.FishLevel[fishType]
		var weight = Fishing.FishRarity[fishType]
		
		if fishLevel > baitUsed["FishingPower"]:
			continue
		elif fishLevel < baitUsed["FishingPower"]:
			var differenceMultip = 1 - ((baitUsed["FishingPower"] - fishLevel) / 10)
			weight *= differenceMultip
		
		weightList.append({"FishType": fishType, "Weight": totalWeight + weight})
		totalWeight += weight
	
	var spawningWeight = RNG.randi_range(0, totalWeight)
	
	for weightItem in weightList:
		if spawningWeight <= weightItem["Weight"]:
			return weightItem["FishType"]

func spawnFish():
	if !IsBouncing:
		var fishType = pickFishToSpawn()
		
		var tempFish = FishObjectScene.instantiate()
		tempFish.FishType = fishType
		tempFish.FishHooked.connect(startFishCatchPhase)
		Fish.add_child(tempFish)

func startFishCatchPhase(fishType):
	IsBouncing = true
	BouncingFishType = fishType
	
	var newTime = min(FishingTimeoutTimer.get_time_left() + 5, Values.ResourceValues["Fish"]["FishingTimeout"] * LongerFishingTimeMultip)
	FishingTimeoutTimer.start(newTime)
	deleteAllFish()

func deleteAllFish():
	for fish in Fish.get_children():
		fish.queue_free()

func _on_fishing_timeout_timer_timeout() -> void:
	stopFishing()

func _on_refresh_timer_timeout() -> void:
	if !SaveData.GeneralInfo.has("CurrentFishingChances"):
		SaveData.GeneralInfo["CurrentFishingChances"] =  3
	
	FishingChances = Values.ResourceValues["Fish"]["FishingChances"]
	FishingChancesLabel.text = str(SaveData.GeneralInfo["CurrentFishingChances"]) + "/" + str(FishingChances)
	ClicksLeftLabel.text = str(FishingClicks) + " Clicks Left"
	SaveData.GeneralInfo["CurrentFishingChances"] = clamp(SaveData.GeneralInfo["CurrentFishingChances"], 0, FishingChances)
	
	if IsBouncing:
		BounceTexture.visible = true
	else:
		BounceTexture.visible = false
	
	if Values.ResourceValues["Fish"]["IsFishing"]:
		ClicksLeftLabel.visible = true
	else:
		ClicksLeftLabel.visible = false
	
	if SaveData.GeneralInfo["CurrentFishingChances"] <= 0 or Values.ResourceValues["Fish"]["IsFishing"] and !IsBouncing:
		FishButton.disabled = true
	else:
		FishButton.disabled = false
	
	if FishingChanceRefreshTimer.is_stopped():
		ChanceRefreshLabel.visible = false
		
		if FishingChances and SaveData.GeneralInfo["CurrentFishingChances"] < FishingChances:
			FishingChanceRefreshTimer.wait_time = Values.ResourceValues["Fish"]["FishingChanceRefreshTime"]
			FishingChanceRefreshTimer.start()
	else:
		var timeLeft = int(FishingChanceRefreshTimer.time_left)
		
		var seconds = timeLeft % 60
		var minutes = (timeLeft / 60) % 60
		
		ChanceRefreshLabel.text = str(minutes) + " min " + str(seconds) + " sec until refresh"
		ChanceRefreshLabel.visible = true
	
	if SaveData.ShopItems[Fishing.ShopItemEnum.Worm]["Unlocked"]:
		SelectedBaitLabel.visible = true
		var baitType = Values.ResourceValues["Fish"]["SelectedBait"]
		
		if baitType != Fishing.ShopItemEnum.NoBait:
			if SaveData.ShopItems[baitType]["Count"] == 0:
				BaitUsed = Fishing.ShopItemEnum.NoBait
				baitType = Fishing.ShopItemEnum.NoBait
				Values.ResourceValues["Fish"]["SelectedBait"] = Fishing.ShopItemEnum.NoBait
		
		if baitType == Fishing.ShopItemEnum.NoBait:
			SelectedBaitLabel.text = "Selected Bait: No Bait"
		else:
			SelectedBaitLabel.text = "Selected Bait: " + Fishing.ShopItems[Values.ResourceValues["Fish"]["SelectedBait"]]["Name"]
	else:
		SelectedBaitLabel.visible = false

func _on_fishing_chance_refresh_timer_timeout() -> void:
	SaveData.GeneralInfo["CurrentFishingChances"] = min(SaveData.GeneralInfo["CurrentFishingChances"] + 1, FishingChances)
	get_tree().get_first_node_in_group("TextLogSection").writeToLog("Fishing Chance Recharged")
	
	if SaveData.GeneralInfo["CurrentFishingChances"] == FishingChances:
		get_tree().get_first_node_in_group("TextLogSection").writeToLog("All Fishing Chances Have Been Recharged!")

func _on_fish_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		FishingClicks -= 1
	_on_refresh_timer_timeout()
