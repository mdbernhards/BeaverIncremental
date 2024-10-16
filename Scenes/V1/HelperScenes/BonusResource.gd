extends Button

var bonusType = ConstBonusValues.bonusType

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
		SetGameValues.addWater(GameValues.WaterPerBonusClick)
	elif Type == bonusType.food:
		SetGameValues.addFood(GameValues.FoodPerBonusClick)
	elif Type == bonusType.wood:
		SetGameValues.addWood(GameValues.WoodPerBonusClick)
	queue_free()
