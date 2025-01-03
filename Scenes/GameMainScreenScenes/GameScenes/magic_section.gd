extends MarginContainer

# Nodes
var MagicCountLabel
var MagicButtonGrid

func _ready():
	setNodePaths()

func _process(delta):
	MagicCountLabel.text = str(SaveData.Magic["Count"]) + " Magic"

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

func setNodePaths():
	MagicCountLabel = $VBoxContainer/TopHBox/TitleMC/MagicCountLabel
	MagicButtonGrid = $VBoxContainer/Scroll/MC/MagicButtonsGrid
