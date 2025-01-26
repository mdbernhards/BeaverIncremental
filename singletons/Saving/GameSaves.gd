extends Node

var TimeStart

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
		"LastSavedTimeStamp" = Time.get_datetime_dict_from_system(),
		"TimePlayed" = 0,
		"CurrentMagic" = 0,
		"CurrentGold" = 0,
		"NumberNotation" = NumberFormatting.NotationTypesEnum.Scientific,
	}
	
	var jsonSaveInfo = JSON.stringify(var_to_str(SaveData.SavesInfo))
	infoFile.store_line(jsonSaveInfo)

func updateSaveFileInfo(saveName):
	checkInfoFileForSaves()
	
	var infoFile = FileAccess.open("user://info.save", FileAccess.WRITE)
	
	SaveData.SavesInfo[saveName].LastSavedTimeStamp = Time.get_datetime_dict_from_system()
	SaveData.SavesInfo[saveName].TimePlayed = SaveData.GeneralInfo["TimePlayed"]
	SaveData.SavesInfo[saveName].CurrentMagic = SaveData.Magic["Count"]
	SaveData.SavesInfo[saveName].CurrentGold = SaveData.Gold["Count"]
	SaveData.SavesInfo[saveName].NumberNotation = SaveData.GeneralInfo["NumberNotation"]
	
	var jsonSaveInfo = JSON.stringify(var_to_str(SaveData.SavesInfo))
	infoFile.store_line(jsonSaveInfo)

func getCurrentPlayTime():
	if TimeStart:
		return SaveData.GeneralInfo["TimePlayed"] + Time.get_unix_time_from_system() - TimeStart
	return 0

func saveGame(saveName):
	SaveData.GeneralInfo["TimePlayed"] += Time.get_unix_time_from_system() - TimeStart
	
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
	
	var jsonResearchInfo = JSON.stringify(var_to_str(SaveData.ResearchInfo))
	saveFile.store_line(jsonResearchInfo)
	
	var jsonDamData = JSON.stringify(var_to_str(SaveData.DamData))
	saveFile.store_line(jsonDamData)
	
	var jsonCaughtFish = JSON.stringify(var_to_str(SaveData.CaughtFish))
	saveFile.store_line(jsonCaughtFish)
	
	var jsonBait = JSON.stringify(var_to_str(SaveData.Bait))
	saveFile.store_line(jsonBait)
	
	var jsonMagic = JSON.stringify(var_to_str(SaveData.Magic))
	saveFile.store_line(jsonMagic)
	
	var jsonUnlockedMagicUpgrades = JSON.stringify(var_to_str(SaveData.UnlockedMagicUpgrades))
	saveFile.store_line(jsonUnlockedMagicUpgrades)
	
	var jsonUnlockedAchievements = JSON.stringify(var_to_str(SaveData.UnlockedAchievements))
	saveFile.store_line(jsonUnlockedAchievements)
	
	var jsonGeneralInfo = JSON.stringify(var_to_str(SaveData.GeneralInfo))
	saveFile.store_line(jsonGeneralInfo)
	
	var jsonMaxResourceCount = JSON.stringify(var_to_str(SaveData.MaxResourceCount))
	saveFile.store_line(jsonMaxResourceCount)
	
	var jsonUnlocks = JSON.stringify(var_to_str(Unlocks.Unlocks))
	saveFile.store_line(jsonUnlocks)

func saveNewGame(saveName):
	if not FileAccess.file_exists("user://" + saveName + ".save"):
		addSaveFileToInfo(saveName)
	else:
		updateSaveFileInfo(saveName)
	
	var saveFile = FileAccess.open("user://" + saveName + ".save", FileAccess.WRITE)
	
	var jsonGold = JSON.stringify(var_to_str(SaveData.OriginalGold))
	saveFile.store_line(jsonGold)
	
	var jsonResources = JSON.stringify(var_to_str(SaveData.OriginalResources))
	saveFile.store_line(jsonResources)
	
	var jsonUpgrades = JSON.stringify(var_to_str(SaveData.OriginalUpgrades))
	saveFile.store_line(jsonUpgrades)
	
	var jsonUnlockedResearch = JSON.stringify(var_to_str(SaveData.OriginalUnlockedResearch))
	saveFile.store_line(jsonUnlockedResearch)
	
	var jsonResearchInfo = JSON.stringify(var_to_str(SaveData.OriginalResearchInfo))
	saveFile.store_line(jsonResearchInfo)
	
	var jsonDamData = JSON.stringify(var_to_str(SaveData.OriginalDamData))
	saveFile.store_line(jsonDamData)
	
	var jsonCaughtFish = JSON.stringify(var_to_str(SaveData.OriginalCaughtFish))
	saveFile.store_line(jsonCaughtFish)
	
	var jsonBait = JSON.stringify(var_to_str(SaveData.OriginalBait))
	saveFile.store_line(jsonBait)
	
	var jsonMagic = JSON.stringify(var_to_str(SaveData.OriginalMagic))
	saveFile.store_line(jsonMagic)
	
	var jsonUnlockedMagicUpgrades = JSON.stringify(var_to_str(SaveData.OriginalUnlockedMagicUpgrades))
	saveFile.store_line(jsonUnlockedMagicUpgrades)
	
	var jsonUnlockedAchievements = JSON.stringify(var_to_str(SaveData.OriginalUnlockedAchievements))
	saveFile.store_line(jsonUnlockedAchievements)
	
	var jsonGeneralInfo = JSON.stringify(var_to_str(SaveData.OriginalGeneralInfo))
	saveFile.store_line(jsonGeneralInfo)
	
	var jsonMaxResourceCount = JSON.stringify(var_to_str(SaveData.OriginalMaxResourceCount))
	saveFile.store_line(jsonMaxResourceCount)
	
	var jsonUnlocks = JSON.stringify(var_to_str(Unlocks.Unlocks))
	saveFile.store_line(jsonUnlocks)
	
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
	
	var jsonResearchInfo = saveFile.get_line()
	SaveData.ResearchInfo = parseJson(jsonResearchInfo)
	
	var jsonDamData = saveFile.get_line()
	SaveData.DamData = parseJson(jsonDamData)
	
	var jsonCaughtFish = saveFile.get_line()
	SaveData.CaughtFish = parseJson(jsonCaughtFish)
	
	var jsonBait = saveFile.get_line()
	SaveData.Bait = parseJson(jsonBait)
	
	var jsonMagic = saveFile.get_line()
	SaveData.Magic = parseJson(jsonMagic)
	
	var jsonUnlockedMagicUpgrades = saveFile.get_line()
	SaveData.UnlockedMagicUpgrades = parseJson(jsonUnlockedMagicUpgrades)
	
	var jsonUnlockedAchievements = saveFile.get_line()
	SaveData.UnlockedAchievements = parseJson(jsonUnlockedAchievements)
	
	var jsonGeneralInfo = saveFile.get_line()
	SaveData.GeneralInfo = parseJson(jsonGeneralInfo)
	
	var jsonMaxResourceCount = saveFile.get_line()
	SaveData.MaxResourceCount = parseJson(jsonMaxResourceCount)
	
	var jsonUnlocks = saveFile.get_line()
	Unlocks.Unlocks = parseJson(jsonUnlocks)
	
	SaveData.recalculateValues()
	get_tree().get_first_node_in_group("TextLogSection").clearLog()
	
	Values.CurrentSaveName = saveName
	
	TimeStart = Time.get_unix_time_from_system()
	
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
