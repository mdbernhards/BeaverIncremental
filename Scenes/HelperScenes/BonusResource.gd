extends Button

enum bonusType {
	water,
	food,
	wood }

var Type

func setType(type):
	Type = type
	
	if type == bonusType.water:
		text = "Water"
	elif type == bonusType.food:
		text = "Food"
	elif type == bonusType.wood:
		text = "Wood"

func _on_button_down():
	if Type == bonusType.water:
		SetGlobalValues.addWater(GameValues.WaterPerBonusClick)
	elif Type == bonusType.food:
		SetGlobalValues.addFood(GameValues.FoodPerBonusClick)
	elif Type == bonusType.wood:
		SetGlobalValues.addWood(GameValues.WoodPerBonusClick)
	queue_free()
