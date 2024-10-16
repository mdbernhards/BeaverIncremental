extends TextureRect

@export var effectName = "NaN"

func _ready():
	pass

func _process(delta):
	if effectName != "NaN" and GameValues.StatusEffectState[effectName] == false:
		queue_free()

func _make_custom_tooltip(_for_text):
	if ConstStatusEffectValues.StatusEffects.has(effectName):
		var effect = ConstStatusEffectValues.StatusEffects[effectName]
		var tooltip = load("res://Scenes/HelperScenes/tooltip.tscn").instantiate()
		tooltip.setTooltip(effect.icon, effect.name, "End Condition: " + effect.endCondition, "Effect: " + effect.effect)
		return tooltip
	else:
		var label = Label.new()
		label.text = "Status Effect Tooltip Error"
		return label
