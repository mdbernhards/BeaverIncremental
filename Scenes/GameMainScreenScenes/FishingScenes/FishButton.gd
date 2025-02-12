extends Button

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

@export var FishType: Fishing.FishEnum = Fishing.FishEnum.Boot :
	set(value):
		FishData = Fishing.Fish[value] as Fishing.FishObject
		setupNodePaths()
		ChangeFishName()
		settingFishData()

func ChangeFishName():
	if SaveData.CaughtFish[FishType]["Caught"]:
		text = FishData.FishName
	else:
		text = "????"

func _ready() -> void:
	setupNodePaths()

func settingFishData():
	Direction = Vector2(RNG.randf_range(-1, 1), RNG.randf_range(-1, 1))
	position += Vector2(RNG.randf_range(-320, 120), RNG.randf_range(-200, 150))
	SwimType = RNG.randi_range(0, 2)
	Angle = RNG.randi_range(-180, 180)
	AngleDirection = RNG.randi_range(0, 3)
	
	Speed = FishData.Speed
	CurveAmplitude = FishData.CurveAmplitude
	CurveFrequency = FishData.CurveFrequency
	TurnChance = FishData.TurnChance
	Scale = FishData.Scale
	scale *= Scale

func _process(delta: float) -> void:
	move(delta)

func move(delta):
	TimePassed += delta
	position += Direction * Speed * delta
	
	match SwimType:
		0: 
			moveBouncing(delta)
		1: 
			moveCurved(delta)
		2: 
			moveWander(delta)
	
	if position.x > (1030 - size.x * Scale * Scale) and Direction.x > 0:
		Direction.x *= -1
		AngleDirection = RNG.randi_range(0, 3)
	elif position.x < 0 and Direction.x < 0:
		Direction.x *= -1
		AngleDirection = RNG.randi_range(0, 3)

	if position.y > (785 - size.y * Scale * Scale) and Direction.y > 0:
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

func _on_button_down() -> void:
	emit_signal("FishHooked", FishData.Type)
	queue_free()

func _on_despawn_timer_timeout() -> void:
	queue_free()

func _on_refresh_timer_timeout() -> void:
	if DespawnTimer and DespawnTimer.is_stopped():
		DespawnTimer.wait_time = FishData.LifeTime
		DespawnTimer.start()

func setupNodePaths():
	DespawnTimer = $DespawnTimer
