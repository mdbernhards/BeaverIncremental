extends Node

func _ready() -> void:
	checkInfoFileForSaves()

func _process(delta: float) -> void:
	pass

func checkInfoFileForSaves():
	if not FileAccess.file_exists("user://info.save"):
		return
		
	var infoFile = FileAccess.open("user://info.save", FileAccess.READ)
	
	var jsonInfo = infoFile.get_line()
	SaveData.SavesInfo = parseJson(jsonInfo)

func addSaveFileToInfo(saveName):
	checkInfoFileForSaves()
	
	var infoFile = FileAccess.open("user://info.save", FileAccess.WRITE)
	
	SaveData.SavesInfo[saveName] = {
		"SaveName" = saveName,
		"LastSavedTimeStamp" = Time.get_time_dict_from_system(),
		"TimePlayed" = 0,
		"MagicEarned" = 0,
	}
	
	var jsonSaveInfo = JSON.stringify(var_to_str(SaveData.SavesInfo))
	infoFile.store_line(jsonSaveInfo)

	var SaveName
	var LastSavedTimeStamp
	var TimePlayed
	var MagicEarned

func updateSaveFileInfo(saveName):
	checkInfoFileForSaves()
	
	var infoFile = FileAccess.open("user://info.save", FileAccess.WRITE)
	
	SaveData.SavesInfo[saveName].LastSavedTimeStamp = Time.get_time_dict_from_system()
	SaveData.SavesInfo[saveName].TimePlayed += 1
	SaveData.SavesInfo[saveName].MagicEarned += SaveData.Magic["Count"]
	
	var jsonSaveInfo = JSON.stringify(var_to_str(SaveData.SavesInfo))
	infoFile.store_line(jsonSaveInfo)

func saveGame(saveName):
	if not FileAccess.file_exists("user://" + saveName + ".save"):
		addSaveFileToInfo(saveName)
	else:
		updateSaveFileInfo(saveName)
	
	var saveFile = FileAccess.open("user://" + saveName + ".save", FileAccess.WRITE)
	
	var jsonGold = JSON.stringify(var_to_str(SaveData.Gold))
	saveFile.store_line(jsonGold)
	
	var jsonResources = JSON.stringify(var_to_str(SaveData.Resources))
	saveFile.store_line(jsonResources)
	
	var jsonUpgrades = JSON.stringify(var_to_str(SaveData.Upgrades))
	saveFile.store_line(jsonUpgrades)
	
	var jsonUnlockedResearch = JSON.stringify(var_to_str(SaveData.UnlockedResearch))
	saveFile.store_line(jsonUnlockedResearch)
	
	var jsonCurrentResearch = JSON.stringify(var_to_str(get_tree().get_first_node_in_group("ResearchSection").getActiveResearch()))
	saveFile.store_line(jsonCurrentResearch)
	
	var jsonUnlockedDams = JSON.stringify(var_to_str(SaveData.UnlockedDams))
	saveFile.store_line(jsonUnlockedDams)
	
	var jsonCaughtFish = JSON.stringify(var_to_str(SaveData.CaughtFish))
	saveFile.store_line(jsonCaughtFish)
	
	var jsonBait = JSON.stringify(var_to_str(SaveData.Bait))
	saveFile.store_line(jsonBait)
	
func loadGame(saveName):
	if not FileAccess.file_exists("user://" + saveName + ".save"):
		return

	var saveFile = FileAccess.open("user://" + saveName + ".save", FileAccess.READ)
	
	var jsonGold = saveFile.get_line()
	SaveData.Gold = parseJson(jsonGold)
	
	var jsonResources = saveFile.get_line()
	SaveData.Resources = parseJson(jsonResources)
	
	var jsonUpgrades = saveFile.get_line()
	SaveData.Upgrades = parseJson(jsonUpgrades)
	
	var jsonUnlockedResearch = saveFile.get_line()
	SaveData.UnlockedResearch = parseJson(jsonUnlockedResearch)
	
	var jsonCurrentResearch = saveFile.get_line()
	SaveData.CurrentResearch = parseJson(jsonCurrentResearch)
	
	var jsonUnlockedDams = saveFile.get_line()
	SaveData.UnlockedDams = parseJson(jsonUnlockedDams)
	
	var jsonCaughtFish = saveFile.get_line()
	SaveData.CaughtFish = parseJson(jsonCaughtFish)
	
	var jsonBait = saveFile.get_line()
	SaveData.Bait = parseJson(jsonBait)
	
	SaveData.recalculateValues()
	
	Values.CurrentSaveName = saveName
	
func deleteGame(saveName):
	if not FileAccess.file_exists("user://" + saveName + ".save"):
		return
		
	DirAccess.remove_absolute("user://" + saveName + ".save")
	
	checkInfoFileForSaves()
	
	SaveData.SavesInfo.erase(saveName)
	var jsonSaveInfo = JSON.stringify(var_to_str(SaveData.SavesInfo))
	
	var infoFile = FileAccess.open("user://info.save", FileAccess.WRITE)
	infoFile.store_line(jsonSaveInfo)

func parseJson(jsonString):
	var json = JSON.new()
	var parseResult = json.parse(jsonString)
	
	if parseResult != OK:
		print("JSON Parse Error: ", json.get_error_message(), " in ", jsonString, " at line ", json.get_error_line())
		return
	
	return str_to_var(json.get_data())
