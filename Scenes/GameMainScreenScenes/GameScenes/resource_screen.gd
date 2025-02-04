extends VBoxContainer

# Nodes
var ResourcePage
var GoldLabel
var MagicLabel
var Page1Button
var Page2Button
var Page3Button

var BeaverRect
var LockedBeaverRect

var WoodcampRect
var LockedWoodcampRect

var GoldRect
var LockedGoldRect

var MagicRect
var LockedMagicRect

func _ready():
	setNodePaths()
	ResourcePage.changePage(1)

func _process(_delta):
	pass

func setGoldAndMagicLabels():
	if GoldLabel:
		GoldLabel.text = "Gold: " + str(floor(SaveData.Gold["Count"]))
		
	if MagicLabel:
		if floor(Values.ResourceValues["Magic"]["PotentialMagic"]) > 0:
			MagicLabel.text = "Magic: " + str(floor(SaveData.Magic["Count"])) + " (" + str(floor(Values.ResourceValues["Magic"]["PotentialMagic"])) + ")"
		else:
			MagicLabel.text = "Magic: " + str(floor(SaveData.Magic["Count"]))

func _on_page_1_button_button_down():
	ResourcePage.changePage(1)

func _on_page_2_button_button_down():
	ResourcePage.changePage(2)

func _on_page_3_button_button_down():
	ResourcePage.changePage(3)

func setNodePaths():
	ResourcePage = $BarsMC/MC/TitleVBox/ResourcePage
	GoldLabel = $BarsMC/MC/TitleVBox/MC/LabelHBox/GoldMC/GoldRect/MC/GoldLabel
	MagicLabel = $BarsMC/MC/TitleVBox/MC/LabelHBox/MagicMC/MagicRect/MC/MagicLabel
	Page1Button = $PageButtonsMC/ColorRect/MC/HBox/Page1Button
	Page2Button = $PageButtonsMC/ColorRect/MC/HBox/Page2Button
	Page3Button = $PageButtonsMC/ColorRect/MC/HBox/Page3Button
	
	BeaverRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/BeaverMC/BeaverRect
	LockedBeaverRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/BeaverMC/LockedBeaverRect
	
	WoodcampRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/WCMC/WoodcampRect
	LockedWoodcampRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/WCMC/LockedWoodcampsRect
	
	GoldRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/GoldMC/GoldRect
	LockedGoldRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/GoldMC/LockedGoldRect
	
	MagicRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/MagicMC/MagicRect
	LockedMagicRect = $BarsMC/MC/TitleVBox/MC/LabelHBox/MagicMC/LockedMagicRect

func _on_resource_screen_timer_timeout() -> void:
	setGoldAndMagicLabels()
	
	if Unlocks.Unlocks["Chestnut"]["Unlocked"] or Values.DebugMode:
		Page1Button.visible = true
		Page2Button.visible = true
	else:
		Page1Button.visible = false
		Page2Button.visible = false
	
	if Unlocks.Unlocks["Ebony"]["Unlocked"] or Values.DebugMode:
		Page3Button.visible = true
	else:
		Page3Button.visible = false
	
	if Unlocks.Unlocks["Woodcamps"]["Unlocked"] or Values.DebugMode:
		WoodcampRect.visible = true
		LockedWoodcampRect.visible = false
	else:
		WoodcampRect.visible = false
		LockedWoodcampRect.visible = true
	
	if Unlocks.Unlocks["Beavers"]["Unlocked"] or Values.DebugMode:
		BeaverRect.visible = true
		LockedBeaverRect.visible = false
	else:
		BeaverRect.visible = false
		LockedBeaverRect.visible = true
	
	if !Unlocks.Unlocks["Gold"].has("Label"):
		Unlocks.Unlocks["Gold"]["Label"] = false
	
	if is_nan(SaveData.Gold["Count"]):
		SaveData.Gold["Count"] = 0
	
	if !Unlocks.Unlocks["Gold"]["Label"] and SaveData.Gold["Count"] > 0:
		Unlocks.Unlocks["Gold"]["Label"] = true
	
	if Unlocks.Unlocks["Gold"]["Label"] or Values.DebugMode:
		GoldRect.visible = true
		LockedGoldRect.visible = false
	else:
		GoldRect.visible = false
		LockedGoldRect.visible = true
	
	if Unlocks.Unlocks["Magic"]["Ascention"] or Values.DebugMode:
		MagicRect.visible = true
		LockedMagicRect.visible = false
	else:
		MagicRect.visible = false
		LockedMagicRect.visible = true
