extends VBoxContainer

func _ready():
	pass

func _process(delta):
	pass

func triggerStatusEffects():
	if GameValues.WaterLimit * 0.05 > GameValues.WaterCount:
		GameValues.StatusEffects["Dehydrated"].triggered = true
	elif GameValues.WaterLimit * 0.2 > GameValues.WaterCount:
		GameValues.StatusEffects["Thirsty"].triggered = true
		
	if GameValues.FoodLimit * 0.05 > GameValues.FoodCount:
		GameValues.StatusEffects["Starving"].triggered = true
	elif GameValues.FoodLimit * 0.2 > GameValues.FoodCount:
		GameValues.StatusEffects["Hungry"].triggered = true
