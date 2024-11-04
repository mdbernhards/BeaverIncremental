extends MarginContainer

var PageNr = 1
var woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]

# Nodes
var BarList

func _ready():
	setNodePaths()

func _process(delta):
	pass

func changePage(nr):
	PageNr = nr
	
	match PageNr:
		1:
			woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]
		2:
			woodTypes = ["Chestnut", "Cherry", "Ash", "Cedar", "Mahogany"]
		3:
			woodTypes = ["Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood"]
			
	updateBars()

func updateBars():
	for i in 5:
		BarList.get_node("BarItem" + str(i + 1)).changeBarValues(woodTypes[i])
		
func setNodePaths():
	BarList = $BarList
