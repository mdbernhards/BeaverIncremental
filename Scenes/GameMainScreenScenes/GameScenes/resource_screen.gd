extends VBoxContainer

# Nodes
var ResourcePage
var GoldLabel
var MagicLabel

func _ready():
	setNodePaths()
	ResourcePage.changePage(1)

func _process(_delta):
	if GoldLabel:
		GoldLabel.text = "Gold: " + str(floor(SaveData.Gold["Count"]))
		
	if MagicLabel:
		MagicLabel.text = "Magic: " + str(floor(SaveData.Magic["Count"]))

func _on_page_1_button_button_down():
	ResourcePage.changePage(1)

func _on_page_2_button_button_down():
	ResourcePage.changePage(2)

func _on_page_3_button_button_down():
	ResourcePage.changePage(3)

func setNodePaths():
	ResourcePage = $BarsMC/MC/TitleVBox/ResourcePage
	GoldLabel = $BarsMC/MC/TitleVBox/MC/LabelHBox/GoldMC/ColorRect/MC/GoldLabel
	MagicLabel = $BarsMC/MC/TitleVBox/MC/LabelHBox/MagicMC/ColorRect/MC/MagicLabel
