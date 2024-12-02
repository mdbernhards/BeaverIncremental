extends ColorRect

var fishing = false

# Game Values
var BaitUsed = "No"
var FishingWoodMultiplier
var MoreFishMultiplier
var BetterFishMultiplier
var LongerTimeFishMultiplier
var BaitMultiplier

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func startFishing():
	updateFishingValues()
	fishing = true

func updateFishingValues():
	FishingWoodMultiplier = Values.ResourceValues["Fish"]["FishingWoodMultip"]
	MoreFishMultiplier = Values.ResourceValues["Fish"]["MoreFishMultip"]
	BetterFishMultiplier = Values.ResourceValues["Fish"]["BetterFishMultip"]
	LongerTimeFishMultiplier = Values.ResourceValues["Fish"]["LongerFishMultip"]
	BaitMultiplier = Values.ResourceValues["Fish"]["BaitMultip"]

func _on_fish_button_button_down() -> void:
	startFishing()
