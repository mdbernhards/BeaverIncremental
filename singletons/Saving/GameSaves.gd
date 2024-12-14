extends Node

func _ready() -> void:
	pass
	#saveGame()
	#loadGame()

func _process(delta: float) -> void:
	pass

func saveGame():
	var saveFile = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	
	var jsonGold = JSON.stringify(var_to_str(SaveData.Gold))
	saveFile.store_line(jsonGold)
	
	var jsonResources = JSON.stringify(var_to_str(SaveData.Resources))
	saveFile.store_line(jsonResources)
	
	var jsonUpgrades = JSON.stringify(var_to_str(SaveData.Upgrades))
	saveFile.store_line(jsonUpgrades)
	
	var jsonUnlockedResearch = JSON.stringify(var_to_str(SaveData.UnlockedResearch))
	saveFile.store_line(jsonUnlockedResearch)
	
	var jsonUnlockedDams = JSON.stringify(var_to_str(SaveData.UnlockedDams))
	saveFile.store_line(jsonUnlockedDams)
	
	var jsonCaughtFish = JSON.stringify(var_to_str(SaveData.CaughtFish))
	saveFile.store_line(jsonCaughtFish)
	
	var jsonBait = JSON.stringify(var_to_str(SaveData.Bait))
	saveFile.store_line(jsonBait)
	
func loadGame():
	if not FileAccess.file_exists("user://savegame.save"):
		return

	var saveFile = FileAccess.open("user://savegame.save", FileAccess.READ)
	
	var jsonGold = saveFile.get_line()
	SaveData.Gold = parseJson(jsonGold)
	
	var jsonResources = saveFile.get_line()
	SaveData.Resources = parseJson(jsonResources)
	
	var jsonUpgrades = saveFile.get_line()
	SaveData.Upgrades = parseJson(jsonUpgrades)
	
	var jsonUnlockedResearch = saveFile.get_line()
	SaveData.UnlockedResearch = parseJson(jsonUnlockedResearch)
	
	var jsonUnlockedDams = saveFile.get_line()
	SaveData.UnlockedDams = parseJson(jsonUnlockedDams)
	
	var jsonCaughtFish = saveFile.get_line()
	SaveData.CaughtFish = parseJson(jsonCaughtFish)
	
	var jsonBait = saveFile.get_line()
	SaveData.Bait = parseJson(jsonBait)
	
	SaveData.recalculateValues()

func parseJson(jsonString):
	var json = JSON.new()
	var parseResult = json.parse(jsonString)
	
	if parseResult != OK:
		print("JSON Parse Error: ", json.get_error_message(), " in ", jsonString, " at line ", json.get_error_line())
		return
	
	return str_to_var(json.get_data()) as Dictionary
