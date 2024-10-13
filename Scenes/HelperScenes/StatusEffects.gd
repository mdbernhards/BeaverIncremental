extends VBoxContainer

enum statusEffects 
{
	Hungry,
	Starving,
	Thirsty,
	Dehydrated,
	Tired,
	RevvedUp,
}

func _ready():
	pass

func _process(delta):
	triggerStatusEffects()
	detriggerStatusEffects()

func triggerStatusEffects():
	if GameValues.WaterLimit * 0.05 > GameValues.WaterCount:
		trigger(statusEffects.Dehydrated)
	elif GameValues.WaterLimit * 0.2 > GameValues.WaterCount:
		trigger(statusEffects.Thirsty)
		
	if GameValues.FoodLimit * 0.05 > GameValues.FoodCount:
		trigger(statusEffects.Starving)
	elif GameValues.FoodLimit * 0.2 > GameValues.FoodCount:
		trigger(statusEffects.Hungry)

func detriggerStatusEffects():
	if GameValues.WaterLimit * 0.1 < GameValues.WaterCount && GameValues.StatusEffectState["Dehydrated"] == true:
		detrigger(statusEffects.Dehydrated)
		
	if GameValues.WaterLimit * 0.3 < GameValues.WaterCount && GameValues.StatusEffectState["Thirsty"] == true:
		detrigger(statusEffects.Thirsty)
		
	if GameValues.FoodLimit * 0.1 < GameValues.FoodCount && GameValues.StatusEffectState["Starving"] == true:
		detrigger(statusEffects.Starving)
		
	if GameValues.FoodLimit * 0.3 < GameValues.FoodCount && GameValues.StatusEffectState["Hungry"] == true:
		detrigger(statusEffects.Hungry)

func trigger(typeEnum):
	if typeEnum == statusEffects.Hungry && !GameValues.StatusEffectState["Hungry"]:
		GameValues.StatusEffectState["Hungry"] = true
		spawnStatusEffectIcon("Hungry")
		
	if typeEnum == statusEffects.Starving && !GameValues.StatusEffectState["Starving"]:
		GameValues.StatusEffectState["Starving"] = true
		GameValues.StatusEffectState["Hungry"] = false
		spawnStatusEffectIcon("Starving")
		
	if typeEnum == statusEffects.Thirsty && !GameValues.StatusEffectState["Thirsty"]:
		GameValues.StatusEffectState["Thirsty"] = true
		spawnStatusEffectIcon("Thirsty")
		
	if typeEnum == statusEffects.Dehydrated && !GameValues.StatusEffectState["Dehydrated"]:
		GameValues.StatusEffectState["Dehydrated"] = true
		GameValues.StatusEffectState["Thirsty"] = false
		spawnStatusEffectIcon("Dehydrated")
		
	if typeEnum == statusEffects.Tired:
		pass
		
	if typeEnum == statusEffects.RevvedUp:
		pass

func detrigger(typeEnum):
	if typeEnum == statusEffects.Hungry:
		GameValues.StatusEffectState["Hungry"] = false
		
	if typeEnum == statusEffects.Starving:
		GameValues.StatusEffectState["Starving"] = false
		GameValues.StatusEffectState["Hungry"] = true
		
	if typeEnum == statusEffects.Thirsty:
		GameValues.StatusEffectState["Thirsty"] = false
		
	if typeEnum == statusEffects.Dehydrated:
		GameValues.StatusEffectState["Dehydrated"] = false
		GameValues.StatusEffectState["Thirsty"] = true
		
	if typeEnum == statusEffects.Tired:
		pass
		
	if typeEnum == statusEffects.RevvedUp:
		pass

func spawnStatusEffectIcon(type):
	var effectIcon = load("res://Scenes/HelperScenes/StatusEffectIcon.tscn")
	var effectInstance = effectIcon.instantiate()
	
	effectInstance.set_texture(load(ConstStatusEffectValues.StatusEffects[type].icon))
	effectInstance.effectName = type
	
	$Grid.add_child(effectInstance)

