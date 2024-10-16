extends Node

func WriteToTextLog(text):
	get_tree().get_first_node_in_group("TextLogContainer").WriteToLog(text)
	
func WriteArrayToTextLog(array):
	get_tree().get_first_node_in_group("TextLogContainer").WriteOutAnArray(array)
