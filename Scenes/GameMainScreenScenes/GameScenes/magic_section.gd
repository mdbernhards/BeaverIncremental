extends MarginContainer

# Magic Nodes
var MagicCountLabel
var MagicButtonGrid
var MagicScroll
var TitleLabel

# History Nodes
var HistoryButton
var HistoryScroll
var HistoryGrid

var ViewingHistory = false

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func setMagicItems():
	deleteMagicItems()
	
	var magicItemScene = load("res://Scenes/GameMainScreenScenes/GameScenes/MagicSection/magic_item.tscn")
	var magicData = Magic.Magic
	
	for magicId in magicData:
		if !SaveData.UnlockedMagicUpgrades.has(magicId) or (SaveData.UnlockedMagicUpgrades.has(magicId) and SaveData.UnlockedMagicUpgrades[magicId] == false):
			var magicItem = magicItemScene.instantiate()
			
			magicItem.setMagicUpgrade(magicId)
			MagicButtonGrid.add_child(magicItem)

func deleteMagicItems():
	if !MagicButtonGrid:
		return
	
	for magicItem in MagicButtonGrid.get_children():
		MagicButtonGrid.remove_child(magicItem)
		magicItem.queue_free()

func setHistoryItems():
	deleteHistoryItems()
	
	var magicItemScene = load("res://Scenes/GameMainScreenScenes/GameScenes/MagicSection/magic_item.tscn")
	var unlockedMagic = SaveData.UnlockedMagicUpgrades
	
	for magicId in unlockedMagic:
		if unlockedMagic[magicId]:
			var magicItem = magicItemScene.instantiate()
			
			magicItem.setMagicUpgrade(magicId, true)
			HistoryGrid.add_child(magicItem)

func deleteHistoryItems():
	if !HistoryGrid:
		return
	
	for historyItem in HistoryGrid.get_children():
		HistoryGrid.remove_child(historyItem)
		historyItem.queue_free()

func setNodePaths():
	MagicCountLabel = $VBoxContainer/TopHBox/TitleMC/HBox/MagicCountLabel
	MagicButtonGrid = $VBoxContainer/MagicScroll/MC/MagicButtonsGrid
	MagicScroll = $VBoxContainer/MagicScroll
	HistoryScroll = $VBoxContainer/HistoryScroll
	HistoryGrid = $VBoxContainer/HistoryScroll/MC/HistoryGrid
	HistoryButton = $VBoxContainer/TopHBox/TitleMC/HBox/HistoryButton
	TitleLabel = $VBoxContainer/TopHBox/TitleMC/TitleLabel

func _on_history_button_button_down() -> void:
	if ViewingHistory:
		HistoryButton.text = "History"
		TitleLabel.text = "Magic Store"
		MagicScroll.visible = true
		HistoryScroll.visible = false
		ViewingHistory = false
	else:
		HistoryButton.text = "Back"
		TitleLabel.text = "History"
		MagicScroll.visible = false
		HistoryScroll.visible = true
		ViewingHistory = true

func _on_magic_refresh_timer_timeout() -> void:
	if MagicCountLabel:
		MagicCountLabel.text = str(SaveData.Magic["Count"]) + " Magic"
