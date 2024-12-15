extends Control

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_load_button_button_down() -> void:
	get_tree().get_first_node_in_group("Game").goToSavesFromSettings()

func _on_save_button_button_down() -> void:
	GameSaves.saveGame(Values.CurrentSaveName)
