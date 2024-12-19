extends ColorRect

var IsFishing = false

var RNG = RandomNumberGenerator.new()

# Game Values
var BaitUsed = "No"
var FishingWoodMultiplier
var MoreFishMultiplier
var BetterFishMultiplier
var LongerTimeFishMultiplier
var BaitMultiplier

# Nodes
var SpawnTimer
var FishBounceBar
var Fish
var FishingGameLogic
var FishingTimeoutTimer
var TimeoutBar
var TimeoutLabel

var IsBouncing = false
var BarUp = true
var BounceTime := 0.0
var BouncingFishType

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
	BaitMultiplier = Values.ResourceValues["Fish"]["BaitMultip"]

func _on_fish_button_button_down() -> void:
	if IsBouncing:
		checkIfFishCaught()
	else:
		startFishing()

func checkIfFishCaught():
	if FishBounceBar.value >= 60 and FishBounceBar.value <= 80:
		SaveData.CaughtFish[BouncingFishType]["Count"] += 1
		get_tree().get_first_node_in_group("FishPage").addAllCaughtFish()
	
	IsBouncing = false

func SetNodePaths():
	SpawnTimer = $FishingGameLogic/SpawnTimer
	FishBounceBar = $FishingGameLogic/FishBounceBar
	Fish = $FishingGameLogic/Fish
	FishingGameLogic = $FishingGameLogic
	FishingTimeoutTimer = $FishingGameLogic/FishingTimeoutTimer
	TimeoutBar = $FishingGameLogic/TimeoutBar
	TimeoutLabel = $FishingGameLogic/TimeoutBar/TimeoutLabel

func StartSpawningFish():
	IsFishing = true
	SpawnTimer.wait_time = RNG.randf_range(2, 7)
	SpawnTimer.start()

func StopSpawningFish():
	IsFishing = false
	SpawnTimer.stop()

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
	StopSpawningFish()
	deleteAllFish()
