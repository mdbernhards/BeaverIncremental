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

# Temp Bonus Nodes
var WpcBonusRect
var WpcBonusLabel
var WpsBonusRect
var WpsBonusLabel

func _ready():
	setNodePaths()
	ResourcePage.changePage(1)

func _process(_delta):
	pass

func setGoldAndMagicLabels():
	if GoldLabel:
		GoldLabel.text = "Gold: " + NumberFormatting.formatNumber(floor(SaveData.Gold["Count"]))
		
	if MagicLabel:
		if floor(Values.ResourceValues["Magic"]["PotentialMagic"]) > 0:
			MagicLabel.text = "Magic: " + NumberFormatting.formatNumber(floor(SaveData.Magic["Count"])) + " (" + NumberFormatting.formatNumber(floor(Values.ResourceValues["Magic"]["PotentialMagic"])) + ")"
		else:
			MagicLabel.text = "Magic: " + NumberFormatting.formatNumber(floor(SaveData.Magic["Count"]))

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
	
	WpcBonusRect = $BarsMC/Background/ColorRect/WpcBonusRect
	WpcBonusLabel = $BarsMC/Background/ColorRect/WpcBonusRect/WpcBonusLabel
	WpsBonusRect = $BarsMC/Background/ColorRect/WpsBonusRect
	WpsBonusLabel = $BarsMC/Background/ColorRect/WpsBonusRect/WpsBonusLabel

func setTempBanners():
	var shopItems = SaveData.ShopItems
	var itemEnum = Fishing.ShopItemEnum
	
	if shopItems[itemEnum.WpsBonus1]["Bought"]:
		WpsBonusRect.visible = true
		WpsBonusLabel.text = "WPS UP 10% " + timeConvert(shopItems[itemEnum.WpsBonus1]["TimeLeft"])
	elif shopItems[itemEnum.WpsBonus2]["Bought"]:
		WpsBonusRect.visible = true
		WpsBonusLabel.text = "WPS UP 20% " + timeConvert(shopItems[itemEnum.WpsBonus2]["TimeLeft"])
	elif shopItems[itemEnum.WpsBonus3]["Bought"]:
		WpsBonusRect.visible = true
		WpsBonusLabel.text = "WPS UP 30% " + timeConvert(shopItems[itemEnum.WpsBonus3]["TimeLeft"])
	else:
		WpsBonusRect.visible = false
	
	if shopItems[itemEnum.WpcBonus1]["Bought"]:
		WpcBonusRect.visible = true
		WpcBonusLabel.text = "WPC UP 30% " + timeConvert(shopItems[itemEnum.WpcBonus1]["TimeLeft"])
	elif shopItems[itemEnum.WpcBonus2]["Bought"]:
		WpcBonusRect.visible = true
		WpcBonusLabel.text = "WPC UP 60% " + timeConvert(shopItems[itemEnum.WpcBonus2]["TimeLeft"])
	elif shopItems[itemEnum.WpcBonus3]["Bought"]:
		WpcBonusRect.visible = true
		WpcBonusLabel.text = "WPC UP 90% " + timeConvert(shopItems[itemEnum.WpcBonus3]["TimeLeft"])
	else:
		WpcBonusRect.visible = false

func timeConvert(timeInSeconds):
	timeInSeconds = int(timeInSeconds)
	
	var seconds = timeInSeconds % 60
	var minutes = (timeInSeconds / 60) % 60
	
	return "%02d:%02d" % [minutes, seconds]

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
	
	setTempBanners()
