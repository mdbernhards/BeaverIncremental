extends Node

var RNG = RandomNumberGenerator.new()

func _ready():
	pass

func _process(delta):
	pass

func calculatedAndSpawnResource(type):
	if RNG.randf_range(0, 100) <= DefaultValues.DefaultChanceOfSpawningBonusResource:
		spawnBonusResource(type)

func spawnBonusResource(type):
	var bonusTemp = load("res://Scenes/HelperScenes/BonusResource.tscn")
	var bonus = bonusTemp.instantiate()
	bonus.setType(type) # bonus.bonusType.wood
	bonus.position = Vector2(RNG.randf_range(30, 1850), RNG.randf_range(30, 1000))
	add_child(bonus)
