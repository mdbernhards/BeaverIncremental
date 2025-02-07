extends Control

enum BackTrackEnum {
	ToMainMenu,
	ToSettings,
}

enum SaveSlotEnum {
	New,
	Existing,
}

# Nodes
var SaveGames

var BackTrackTo : BackTrackEnum

func _ready() -> void:
	setupNodePaths()
	
func _process(_delta: float) -> void:
	pass

func _on_back_button_button_down() -> void:
	visible = false
	
	var GameNode = get_tree().get_first_node_in_group("Game")
	
	if BackTrackTo == BackTrackEnum.ToMainMenu:
		GameNode.goToMenuFromSaves()
	elif BackTrackTo == BackTrackEnum.ToSettings:
		GameNode.goToSettingsFromSaves()

func loadSaves():
	var saves = SaveData.SavesInfo
	
	for child in SaveGames.get_children():
		SaveGames.remove_child(child)
	
	var SaveScene = load("res://Scenes/LoadGameScenes/save_item.tscn")
	
	if saves:
		for saveName in saves:
			var saveItem = SaveScene.instantiate()
			saveItem.getSaveData(saveName)
			
			SaveGames.add_child(saveItem)
			saveItem.SaveState = SaveSlotEnum.Existing
		
	var newSaveItem = SaveScene.instantiate()
	SaveGames.add_child(newSaveItem)

func setupNodePaths():
	SaveGames = $MC/LoadGameVBox/MC2/VBox/MC2/Scroll/MC/SaveGames
