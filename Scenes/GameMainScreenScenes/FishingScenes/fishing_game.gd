extends ColorRect

var IsFishing = false
var ClicksLeft = 3

var RNG = RandomNumberGenerator.new()

# Game Values
var BaitUsed = Fishing.ShopItemEnum.NoBait
var MoreFishMultiplier
var BetterFishMultiplier
var LongerTimeFishMultiplier
var FishSpeedMultiplier
var BaitEffectMultiplier

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

var TotalFishingChances = 3

var FishObjectScene = preload("res://Scenes/GameMainScreenScenes/FishingScenes/fish_button.tscn")

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	SetNodePaths()
	
	if IsBouncing:
		RunBounceProgressBar(delta)
		
	if IsFishing:
		TimeoutBar.visible = true
		TimeoutBar.value = remap(FishingTimeoutTimer.time_left, 0, FishingTimeoutTimer.wait_time, 0, 100)
		TimeoutLabel.text = str(roundi(FishingTimeoutTimer.time_left))
	else:
		TimeoutBar.visible = false
		
	if ClicksLeft <= 0:
		StopFishing()

func RunBounceProgressBar(delta):
	if BarUp:
		BounceTime += delta * 75
	else:
		BounceTime -= delta * 75
	
	if BounceTime >= 100 or BounceTime <= 0:
		BarUp = !BarUp
	
	FishBounceBar.value = BounceTime

func startFishing():
	updateFishingValues()
	StartSpawningFish()
	StartFishingTimeout()

func StartFishingTimeout():
	FishingTimeoutTimer.start()

func updateFishingValues():
	MoreFishMultiplier = Values.ResourceValues["Fish"]["MoreFishMultip"]
	BetterFishMultiplier = Values.ResourceValues["Fish"]["BetterFishMultip"]
	LongerTimeFishMultiplier = Values.ResourceValues["Fish"]["LongerFishMultip"]
	FishSpeedMultiplier = Values.ResourceValues["Fish"]["FishSpeedMultip"]
	BaitEffectMultiplier = Values.ResourceValues["Fish"]["BaitEffectMultip"]
	
	BaitUsed = Values.ResourceValues["Fish"]["SelectedBait"]
	ClicksLeft = Values.ResourceValues["Fish"]["FishingClicks"]
	TotalFishingChances = Values.ResourceValues["Fish"]["FishingChances"]

func _on_fish_button_button_down() -> void:
	if IsBouncing:
		checkIfFishCaught()
	else:
		startFishing()
	_on_refresh_timer_timeout()

func checkIfFishCaught():
	if FishBounceBar.value >= 60 and FishBounceBar.value <= 80:
		SaveData.CaughtFish[BouncingFishType]["Count"] += 1
		SaveData.CaughtFish[BouncingFishType]["Caught"] = true
		get_tree().get_first_node_in_group("FishPage").addAllCaughtFish()
		StopFishing()
	IsBouncing = false
	ClicksLeft -= 1

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
	IsFishing = true
	SpawnTimer.wait_time = RNG.randf_range(1, 7)
	SpawnTimer.start()

func StopFishing():
	IsFishing = false
	IsBouncing = false
	SaveData.GeneralInfo["CurrentFishingChances"] = max(SaveData.GeneralInfo["CurrentFishingChances"] - 1, 0)
	SpawnTimer.stop()
	FishingTimeoutTimer.stop()
	deleteAllFish()
	ClicksLeft = 3

func _on_spawn_timer_timeout() -> void:
	spawnFish()
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
			var differenceMultip = 1 - (baitUsed["FishingPower"] - fishLevel / 10)
			weight *= differenceMultip
		
		weightList.append({"FishType": fishType, "Weight": totalWeight + weight})
		totalWeight += weight
	
	var spawningWeight = RNG.randi_range(0, totalWeight)
	
	for weightItem in weightList:
		if spawningWeight <= weightItem["Weight"]:
			return weightItem["FishType"]

func spawnFish():
	var fishType = pickFishToSpawn()
	
	var tempFish = FishObjectScene.instantiate()
	tempFish.FishType = fishType
	tempFish.FishHooked.connect(startFishCatchPhase)
	Fish.add_child(tempFish)

func startFishCatchPhase(fishType):
	IsBouncing = true
	BouncingFishType = fishType

func deleteAllFish():
	for fish in Fish.get_children():
		fish.queue_free()

func _on_fishing_timeout_timer_timeout() -> void:
	StopFishing()

func _on_refresh_timer_timeout() -> void:
	if !SaveData.GeneralInfo.has("CurrentFishingChances"):
		SaveData.GeneralInfo["CurrentFishingChances"] =  3
	
	FishingChancesLabel.text = str(SaveData.GeneralInfo["CurrentFishingChances"]) + "/" + str(TotalFishingChances)
	ClicksLeftLabel.text = str(ClicksLeft) + " Clicks Left"
	
	if IsBouncing:
		BounceTexture.visible = true
	else:
		BounceTexture.visible = false
	
	if IsFishing:
		ClicksLeftLabel.visible = true
	else:
		ClicksLeftLabel.visible = false
	
	if SaveData.GeneralInfo["CurrentFishingChances"] <= 0 or IsFishing and !IsBouncing:
		FishButton.disabled = true
	else:
		FishButton.disabled = false
	
	if FishingChanceRefreshTimer.is_stopped():
		ChanceRefreshLabel.visible = false
		
		if SaveData.GeneralInfo["CurrentFishingChances"] < TotalFishingChances:
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
		
		if baitType == Fishing.ShopItemEnum.NoBait:
			SelectedBaitLabel.text = "Selected Bait: No Bait"
		else:
			SelectedBaitLabel.text = "Selected Bait: " + Fishing.ShopItems[Values.ResourceValues["Fish"]["SelectedBait"]]["Name"]
	else:
		SelectedBaitLabel.visible = false

func _on_fishing_chance_refresh_timer_timeout() -> void:
	SaveData.GeneralInfo["CurrentFishingChances"] = min(SaveData.GeneralInfo["CurrentFishingChances"] + 1, TotalFishingChances)

func _on_fish_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		ClicksLeft -= 1
	_on_refresh_timer_timeout()
