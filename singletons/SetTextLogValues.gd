extends Node

var PhaseTwoIntroText = [
	"You survived....",
	"...",
	"",
	"Just barely",
	"Before you can think of what happend you pass out",
	"...",
	"", 
	"...",
	"", 
	"...", 
	"You wake up..",
	"You're in a place you don't recognize with memories rushing back of all that you have lost, you also remember you are a beaver",
	"",
	"You shed a single tear",
	"...", 
	"...", 
	"Then you remember",
	"",
	"Beavers don't give up",
	"...", 
	"...", 
	"You won't give up",
	"You won't give up",
	"You won't give up so you start walking not being sure where",
	"Not being sure why",]

var PhaseTwoWalkingText = [
	"...",
	"...",
	"",
	"",
	"",
	"Walking makes you tired",]

func WriteToTextLog(text):
	get_tree().get_first_node_in_group("TextLogContainer").WriteToLog(text)
