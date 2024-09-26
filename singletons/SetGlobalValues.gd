extends Node

func addWood(amount):
	GameValues.WoodCount = clamp(GameValues.WoodCount + amount, 0, GameValues.WoodLimit)
	refreshValues()

func addWater(amount):
	GameValues.WaterCount = clamp(GameValues.WaterCount + amount, 0, GameValues.WaterLimit)
	refreshValues()

func addFood(amount):
	GameValues.FoodCount = clamp(GameValues.FoodCount + amount, 0, GameValues.FoodLimit)
	refreshValues()

func refreshValues():
	var ResourceLabels = get_tree().get_first_node_in_group("ResourceLabels")
	var foodLabel = ResourceLabels.get_node("FoodLabel")
	var woodLabel = ResourceLabels.get_node("WoodLabel")
	var waterLabel = ResourceLabels.get_node("WaterLabel")
	
	foodLabel.text = "Food: " + str(GameValues.FoodCount) + "/" + str(GameValues.FoodLimit)
	waterLabel.text = "Water: " + str(GameValues.WaterCount) + "/" + str(GameValues.WaterLimit)
	woodLabel.text = "Wood: " + str(GameValues.WoodCount) + "/" + str(GameValues.WoodLimit)

func unlockReaserch():
	pass

func unlockBuildings():
	pass
