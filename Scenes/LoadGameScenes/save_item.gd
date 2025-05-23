extends MarginContainer

enum SaveSlotEnum {
	New,
	Existing,
}

var SaveState : SaveSlotEnum
var SaveInfo

# Nodes
var SaveNameLabel
var SaveTimeStampLabel
var TimePlayedLabel
var CurrentMagicLabel
var CurrentGoldLabel
var ErrorLabel
var SaveNameLineEdit
var LoadGame
var NewGame

func _ready() -> void:
	setupNodePaths()
	SaveState = SaveSlotEnum.New
	ErrorLabel.visible = false

func _process(_delta: float) -> void:
	pass

func setupNodePaths():
	SaveNameLabel = $ColorRect/LoadGame/MC/VBox/SaveNameLabel
	SaveTimeStampLabel = $ColorRect/LoadGame/MC/VBox/SaveTimeStampLabel
	TimePlayedLabel = $ColorRect/LoadGame/MC2/VBox/TimePlayedLabel
	CurrentMagicLabel = $ColorRect/LoadGame/MC2/VBox/CurrentMagicLabel
	CurrentGoldLabel = $ColorRect/LoadGame/MC2/VBox/CurrentGoldLabel
	LoadGame = $ColorRect/LoadGame
	NewGame = $ColorRect/NewGame
	ErrorLabel = $ColorRect/NewGame/MC2/ErrorLabel
	SaveNameLineEdit = $ColorRect/NewGame/MC/SaveNameLineEdit

func getSaveData(saveName):
	setupNodePaths()
	
	SaveInfo = SaveData.SavesInfo[saveName]
	
	var dateDictionary = SaveInfo.LastSavedTimeStamp
	var timeStamp = "%02d:%02d:%02d %02d/%02d/%04d" % [dateDictionary.hour, dateDictionary.minute, dateDictionary.second, dateDictionary.day, dateDictionary.month, dateDictionary.year]
	
	SaveNameLabel.text = SaveInfo.SaveName
	SaveTimeStampLabel.text = "Last Saved: " + timeStamp
	TimePlayedLabel.text = "Time Played: " + str(roundf(SaveInfo.TimePlayed / 360) / 10) + "h"
	
	if SaveInfo.CurrentMagic > 0:
		CurrentMagicLabel.text = "Magic: " + NumberFormatting.formatNumber(SaveInfo.CurrentMagic)
	else:
		CurrentMagicLabel.text = ""
	
	if SaveInfo.CurrentGold > 0:
		CurrentGoldLabel.text = "Gold: " + NumberFormatting.formatNumber(SaveInfo.CurrentGold)
	else:
		CurrentGoldLabel.text = ""
	
	SaveState = SaveSlotEnum.Existing

func _on_load_game_button_button_down() -> void:
	GameSaves.loadGame(SaveInfo.SaveName)
	get_tree().get_first_node_in_group("Game").goToGameFromSaves()

func _on_delete_button_button_down() -> void:
	SaveState = SaveSlotEnum.New
	GameSaves.deleteGame(SaveInfo.SaveName)

func _on_new_game_button_button_down() -> void:
	var saveName = SaveNameLineEdit.text
	
	if checkIfSaveNameIsValid(saveName):
		GameSaves.addSaveFileToInfo(saveName)
		GameSaves.saveNewGame(saveName)
		GameSaves.loadGame(saveName)
		
		ErrorLabel.visible = false
		get_tree().get_first_node_in_group("Game").goToGameFromSaves()
	else:
		ErrorLabel.visible = true

func checkIfSaveNameIsValid(saveName):
	if saveName == null or saveName == "" or SaveData.SavesInfo.has(saveName):
		return false
	
	return true

func _on_save_item_refresh_timer_timeout() -> void:
	if SaveState == SaveSlotEnum.New:
		NewGame.visible = true
		LoadGame.visible = false
	elif SaveState == SaveSlotEnum.Existing:
		NewGame.visible = false
		LoadGame.visible = true
