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
		"LastSavedTimeStamp" = Time.get_datetime_dict_from_system(),
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
	
	SaveData.SavesInfo[saveName].LastSavedTimeStamp = Time.get_datetime_dict_from_system()
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
	
	var jsonUnlockedFeatsOfStrength = JSON.stringify(var_to_str(SaveData.UnlockedFeatsOfStrength))
	saveFile.store_line(jsonUnlockedFeatsOfStrength)
	
	var jsonGeneralInfo = JSON.stringify(var_to_str(SaveData.GeneralInfo))
	saveFile.store_line(jsonGeneralInfo)

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
	
	var jsonUnlockedFeatsOfStrength = JSON.stringify(var_to_str(SaveData.OriginalUnlockedFeatsOfStrength))
	saveFile.store_line(jsonUnlockedFeatsOfStrength)
	
	var jsonGeneralInfo = JSON.stringify(var_to_str(SaveData.OriginalGeneralInfo))
	saveFile.store_line(jsonGeneralInfo)
	
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
	
	var jsonUnlockedFeatsOfStrength = saveFile.get_line()
	SaveData.UnlockedFeatsOfStrength = parseJson(jsonUnlockedFeatsOfStrength)
	
	var jsonGeneralInfo = saveFile.get_line()
	SaveData.GeneralInfo = parseJson(jsonGeneralInfo)
	
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
