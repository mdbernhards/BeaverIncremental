extends Control

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_save_load_button_button_down() -> void:
	get_tree().get_first_node_in_group("Game").goToSavesFromSettings()
