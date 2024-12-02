extends Button

var Up = true
var Right = true

var RNG = RandomNumberGenerator.new()

var VerticalSpeed = 1
var HorizontalSpeed = 1

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Up:
		position.y -= VerticalSpeed * delta * 144
	else:
		position.y += VerticalSpeed * delta * 144

	if Right:
		position.x += HorizontalSpeed * delta * 144
	else:
		position.x -= HorizontalSpeed * delta * 144
		
	if position.x > 970 and Right:
		Right = false
	elif position.x < 3 and !Right:
		Right = true
		
	if position.y < 3 and Up:
		Up = false
	elif position.y > 730 and !Up:
		Up = true

func _on_button_down() -> void:
	queue_free()

func _on_change_direction_timer_timeout() -> void:
	VerticalSpeed = RNG.randf_range(0.5, 1.5)
	HorizontalSpeed = RNG.randf_range(0.5, 1.5)
