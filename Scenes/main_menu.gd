extends Control

var Game

func _ready() -> void:
	Game = get_tree().get_first_node_in_group("Game")

func _process(delta: float) -> void:
	pass

func _on_play_button_button_down() -> void:
	Game.goToSavesFromMenu()

func _on_continue_button_button_down() -> void:
	pass

func _on_settings_button_button_down() -> void:
	Game.goToSettingsFromMainMenu()

func _on_quit_button_button_down() -> void:
	get_tree().quit()
