extends VBoxContainer

var PageNr = 1
var woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]

# Nodes
var MarketVBox

func _ready():
	setNodePaths()
	changePage(1)

func _process(_delta):
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
		MarketVBox.get_node("MarketItem" + str(i + 1)).changeItemType(woodTypes[i])

func _on_page_button_1_button_down():
	changePage(1)

func _on_page_button_2_button_down():
	changePage(2)

func _on_page_button_3_button_down():
	changePage(3)

func setNodePaths():
	MarketVBox = $SellPageMC/MarketVBox
