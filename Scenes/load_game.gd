extends Control

enum BackTrackEnum {
	ToMainMenu,
	ToSettings,
}

var BackTrackTo : BackTrackEnum

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass

func _on_back_button_button_down() -> void:
	visible = false
	
	var GameNode = get_tree().get_first_node_in_group("Game")
	
	if BackTrackTo == BackTrackEnum.ToMainMenu:
		GameNode.goToMenuFromSaves()
	elif BackTrackTo == BackTrackEnum.ToSettings:
		GameNode.goToSettingsFromSaves()
