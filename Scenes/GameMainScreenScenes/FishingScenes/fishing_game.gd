extends ColorRect

var IsFishing = false
var ClicksLeft = 3

var RNG = RandomNumberGenerator.new()

# Game Values
var BaitUsed = "No"
var FishingWoodMultiplier
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

var IsBouncing = false
var BarUp = true
var BounceTime := 0.0
var BouncingFishType

var TotalFishingChances = 3
var CurrentFishingChances = 3

var FishObjectScene = preload("res://Scenes/GameMainScreenScenes/FishingScenes/fish_button.tscn")

func _ready() -> void:
	addSignalToAllTestingFish()

func _process(delta: float) -> void:
	SetNodePaths()
	
	if IsBouncing:
		RunBounceProgressBar(delta)
		
	if IsFishing:
		TimeoutBar.visible = true
		TimeoutBar.value = remap(FishingTimeoutTimer.time_left, 0, 20, 0, 100)
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
	FishingWoodMultiplier = Values.ResourceValues["Fish"]["FishingWoodMultip"]
	MoreFishMultiplier = Values.ResourceValues["Fish"]["MoreFishMultip"]
	BetterFishMultiplier = Values.ResourceValues["Fish"]["BetterFishMultip"]
	LongerTimeFishMultiplier = Values.ResourceValues["Fish"]["LongerFishMultip"]
	FishSpeedMultiplier = Values.ResourceValues["Fish"]["FishSpeedMultip"]
	BaitEffectMultiplier = Values.ResourceValues["Fish"]["BaitEffectMultip"]
	
	ClicksLeft = 3

func _on_fish_button_button_down() -> void:
	if IsBouncing:
		checkIfFishCaught()
	else:
		startFishing()
	_on_refresh_timer_timeout()

func checkIfFishCaught():
	if FishBounceBar.value >= 60 and FishBounceBar.value <= 80:
		SaveData.CaughtFish[BouncingFishType]["Count"] += 1
		get_tree().get_first_node_in_group("FishPage").addAllCaughtFish()
		StopFishing()
	IsBouncing = false
	ClicksLeft -= 1

func SetNodePaths():
	SpawnTimer = $FishingGameLogic/SpawnTimer
	FishBounceBar = $FishingGameLogic/FishBounceBar
	Fish = $FishingGameLogic/Fish
	FishingGameLogic = $FishingGameLogic
	FishingTimeoutTimer = $FishingGameLogic/FishingTimeoutTimer
	TimeoutBar = $FishingGameLogic/TimeoutBar
	TimeoutLabel = $FishingGameLogic/TimeoutBar/TimeoutLabel
	FishingChancesLabel = $MC/VBox2/HBox/MC/VBox/FishingChancesLabel
	ChanceRefreshLabel = $MC/VBox2/HBox/MC/VBox/ChanceRefreshLabel
	FishButton = $MC/VBox/HBox/MC/FishButton
	FishingChanceRefreshTimer = $FishingGameLogic/FishingChanceRefreshTimer
	ClicksLeftLabel = $FishingGameLogic/ClicksLeftLabel

func StartSpawningFish():
	IsFishing = true
	SpawnTimer.wait_time = RNG.randf_range(2, 7)
	SpawnTimer.start()

func StopFishing():
	IsFishing = false
	SpawnTimer.stop()
	deleteAllFish()

func _on_spawn_timer_timeout() -> void:
	spawnFish()
	SpawnTimer.start()

func spawnFish():
	var fishType = Fishing.FishEnum.Boot
	
	var tempFish = FishObjectScene.instantiate()
	tempFish.FishType = fishType
	tempFish.FishHooked.connect(startFishCatchPhase)
	Fish.add_child(tempFish)

func startFishCatchPhase(fishType):
	IsBouncing = true
	BouncingFishType = fishType
	
func addSignalToAllTestingFish():
	for fish in get_tree().get_nodes_in_group("FishObject"):
		fish.FishHooked.connect(startFishCatchPhase)

func deleteAllFish():
	for fish in Fish.get_children():
		fish.queue_free()

func _on_fishing_timeout_timer_timeout() -> void:
	StopFishing()
	deleteAllFish()

func _on_refresh_timer_timeout() -> void:
	FishingChancesLabel.text = str(CurrentFishingChances) + "/" + str(TotalFishingChances)
	ClicksLeftLabel.text = str(ClicksLeft) + " Clicks Left"
	
	if IsFishing:
		ClicksLeftLabel.visible = true
	else:
		ClicksLeftLabel.visible = false
	
	if CurrentFishingChances <= 0:
		FishButton.disabled = true
	else:
		FishButton.disabled = false
	
	if FishingChanceRefreshTimer.is_stopped():
		ChanceRefreshLabel.visible = false
		
		if CurrentFishingChances < TotalFishingChances:
			FishingChanceRefreshTimer.start()
	else:
		var seconds = FishingChanceRefreshTimer.wait_time % 60
		var minutes = (FishingChanceRefreshTimer.wait_time / 60) % 60
		
		ChanceRefreshLabel.text = str(minutes) + " min " + str(seconds) + " sec until refresh"
		ChanceRefreshLabel.visible = true

func _on_fishing_chance_refresh_timer_timeout() -> void:
	CurrentFishingChances = min(CurrentFishingChances + 1, TotalFishingChances)

func _on_fish_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		ClicksLeft -= 1
	_on_refresh_timer_timeout()
