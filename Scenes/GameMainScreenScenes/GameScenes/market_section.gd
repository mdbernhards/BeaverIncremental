extends VBoxContainer

var PageNr = 1
var woodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce"]

# Nodes
var MarketVBox
var PageButton1
var PageButton2
var PageButton3

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
	PageButton1 = $SellPageMC/MarketVBox/PageButtonsMC/HBox/PageButtonMC/HBox/PageButton1
	PageButton2 = $SellPageMC/MarketVBox/PageButtonsMC/HBox/PageButtonMC/HBox/PageButton2
	PageButton3 = $SellPageMC/MarketVBox/PageButtonsMC/HBox/PageButtonMC/HBox/PageButton3

func _on_market_section_timer_timeout() -> void:
	for i in 5:
		if Unlocks.Unlocks[woodTypes[i]]["Unlocked"] or Values.DebugMode:
			MarketVBox.get_node("MarketItem" + str(i + 1)).visible = true
		else:
			MarketVBox.get_node("MarketItem" + str(i + 1)).visible = false
	
	if Unlocks.Unlocks["Chestnut"]["Unlocked"] or Values.DebugMode:
		PageButton1.visible = true
		PageButton2.visible = true
	else:
		PageButton1.visible = false
		PageButton2.visible = false
	
	if Unlocks.Unlocks["Ebony"]["Unlocked"] or Values.DebugMode:
		PageButton3.visible = true
	else:
		PageButton3.visible = false
