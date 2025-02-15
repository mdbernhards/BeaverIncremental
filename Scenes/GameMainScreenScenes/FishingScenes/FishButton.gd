extends Node2D

signal FishHooked(FishType)

var Speed = 100
var CurveAmplitude = 50
var CurveSpeed = 1.0
var CurveFrequency = 2
var TurnChance = 0.02
var SwimType = SwimTypeEnum.Bouncing
var Scale = 1

var Direction = Vector2(1,1)
var TimePassed = 0
var Angle
var AngleDirection = 0

var RNG = RandomNumberGenerator.new()
var FishData : Fishing.FishObject

enum SwimTypeEnum {
	Bouncing,
	Curved,
	Random,
}

# Nodes
var DespawnTimer
var FishButton

@export var FishType: Fishing.FishEnum = Fishing.FishEnum.Boot :
	set(value):
		FishType = value
		FishData = Fishing.Fish[value] as Fishing.FishObject
		setupNodePaths()
		ChangeFishName()
		settingFishData()

func ChangeFishName():
	if SaveData.CaughtFish[FishType]["Caught"]:
		FishButton.text = FishData.FishName
	else:
		FishButton.text = "????"

func _ready() -> void:
	setupNodePaths()

func settingFishData():
	Direction = Vector2(RNG.randf_range(-1, 1), RNG.randf_range(-1, 1))
	position += Vector2(RNG.randf_range(0, 850), RNG.randf_range(0, 680))
	SwimType = RNG.randi_range(0, 2)
	Angle = RNG.randi_range(-180, 180)
	AngleDirection = RNG.randi_range(0, 3)
	
	var baitMultip
	
	if Values.ResourceValues["Fish"]["SelectedBait"] == 0:
		baitMultip = 1
	else:
		baitMultip = 1 - ((Fishing.ShopItems[Values.ResourceValues["Fish"]["SelectedBait"]]["FishingPower"] - Fishing.FishLevel[FishType]) / 8)
	
	Speed = FishData.Speed * Values.ResourceValues["Fish"]["FishSpeedMultip"] * baitMultip
	CurveAmplitude = FishData.CurveAmplitude
	CurveFrequency = FishData.CurveFrequency
	TurnChance = FishData.TurnChance
	Scale = FishData.Scale * Values.ResourceValues["Fish"]["FishSizeMultip"] / baitMultip
	scale *= Scale

func _process(delta: float) -> void:
	pass
	
func _physics_process(delta):
	move(delta)

func move(delta):
	TimePassed += delta
	position += (Direction.normalized() * Speed * delta).round()
	
	match SwimType:
		0: 
			moveBouncing(delta)
		1: 
			moveCurved(delta)
		2: 
			moveWander(delta)
	
	if position.x + FishButton.size.x * Scale > 1030 and Direction.x > 0:
		Direction.x *= -1
		AngleDirection = RNG.randi_range(0, 3)
	elif position.x < 0 and Direction.x < 0:
		Direction.x *= -1
		AngleDirection = RNG.randi_range(0, 3)

	if position.y + FishButton.size.y * Scale > 785 and Direction.y > 0:
		Direction.y *= -1
		AngleDirection = RNG.randi_range(0, 3)
	elif position.y < 0 and Direction.y < 0:
		Direction.y *= -1
		AngleDirection = RNG.randi_range(0, 3)

func moveBouncing(delta):
	Direction.x += RNG.randf_range(-0.03, 0.03)
	Direction.y += RNG.randf_range(-0.03, 0.03)

func moveCurved(delta):
	Angle += CurveSpeed * delta
	
	if randf() < TurnChance / 200:
		AngleDirection = RNG.randi_range(0, 3)
	
	match AngleDirection:
		0:
			Direction = Vector2(cos(Angle), sin(Angle))
		1:
			Direction = Vector2(-cos(Angle), -sin(Angle))
		2:
			Direction = Vector2(-cos(Angle), sin(Angle))
		3:
			Direction = Vector2(cos(Angle), -sin(Angle))

func moveWander(delta):
	if randf() < TurnChance / 60:
		Direction = Vector2(randf_range(-0.8, 0.8), randf_range(-0.8, 0.8)).normalized()

func _on_despawn_timer_timeout() -> void:
	queue_free()

func _on_refresh_timer_timeout() -> void:
	if DespawnTimer and DespawnTimer.is_stopped():
		DespawnTimer.wait_time = FishData.LifeTime * Values.ResourceValues["Fish"]["LongerFishLifetimeMultip"] * 1.1
		DespawnTimer.start()

func _on_fish_button_button_down() -> void:
	emit_signal("FishHooked", FishData.Type)
	queue_free()

func setupNodePaths():
	DespawnTimer = $DespawnTimer
	FishButton = $FishButton
