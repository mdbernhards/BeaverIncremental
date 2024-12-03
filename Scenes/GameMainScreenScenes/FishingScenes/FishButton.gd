extends Button

var Up = true
var Right = true

var RNG = RandomNumberGenerator.new()

var VerticalSpeed = 1
var HorizontalSpeed = 1

var Fish : Fishing.FishObject

@export var FishType: Fishing.FishEnum = Fishing.FishEnum.Boot :
	set(value):
		Fish = Fishing.Fish[value] as Fishing.FishObject
		ChangeFishName()

func ChangeFishName():
	text = Fish.Name

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	move(delta)

func move(delta):
	if Up:
		position.y -= VerticalSpeed * delta * 144 * Fish.Speed
	else:
		position.y += VerticalSpeed * delta * 144 * Fish.Speed

	if Right:
		position.x += HorizontalSpeed * delta * 144 * Fish.Speed
	else:
		position.x -= HorizontalSpeed * delta * 144 * Fish.Speed
		
	if position.x > 940 and Right: # Need to account for size
		Right = false
	elif position.x < 25 and !Right:
		Right = true
		
	if position.y < 25 and Up:
		Up = false
	elif position.y > 760 and !Up:  # Need to account for size
		Up = true

func _on_button_down() -> void:
	queue_free()

func _on_change_direction_timer_timeout() -> void:
	VerticalSpeed = RNG.randf_range(0.5 * Fish.Angle, 1.5 * Fish.Angle)
	HorizontalSpeed = RNG.randf_range(0.5 * Fish.Angle, 1.5 * Fish.Angle)
