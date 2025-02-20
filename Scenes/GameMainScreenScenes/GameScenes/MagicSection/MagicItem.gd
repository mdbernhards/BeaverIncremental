extends MarginContainer

# Nodes
var NameLabel
var CostLabel
var CantAffordRect
var MagicButton
var MagicIdLabel

var Upgrade
@export var Nr = 1

var IsHistoryItem = false

func _ready():
	setMagicUpgrade()

func _process(_delta):
	pass

func setCantAffordRect():
	if Upgrade && (SaveData.Magic["Count"] >= Upgrade["Cost"]) or IsHistoryItem:
		CantAffordRect.visible = false
	else:
		CantAffordRect.visible = true

func setMagicUpgrade(nr = Nr, isHistoryItem = IsHistoryItem):
	setNodePaths()
	
	IsHistoryItem = isHistoryItem
	
	Nr = nr
	Upgrade = Magic.Magic[str(Nr)]
	MagicIdLabel.text = str(Nr)
	
	NameLabel.text = Upgrade["Name"]
	CostLabel.text = str(NumberFormatting.formatNumber(Upgrade["Cost"])) + " Magic"
	
	if IsHistoryItem:
		MagicButton.disabled = true
	else:
		MagicButton.disabled = false

func setNodePaths():
	NameLabel = $MagicButton/MC/VBox/NameLabel
	CostLabel = $MagicButton/MC/VBox/CostLabel
	CantAffordRect = $CantAffordColorRect
	MagicButton = $MagicButton
	MagicIdLabel = $MagicButton/MC/MagicIdLabel

func _on_magic_button_button_down():
	if SaveData.Magic["Count"] >= Upgrade["Cost"] and !IsHistoryItem:
		SaveData.Magic["Count"] -= Upgrade["Cost"]
		SaveData.UnlockedMagicUpgrades[Nr] = true
		CalculateValues.calculateAllValues()
		get_tree().get_first_node_in_group("TextLogSection").writeMagicUpgradeUnlockToLog(Nr)
		get_tree().get_first_node_in_group("MagicSection").setHistoryItems()
		queue_free()

func checkIfVisible():
	return Upgrade["Cost"] * 0.7 < SaveData.Magic["Count"] or IsHistoryItem

func _on_magic_item_timer_timeout() -> void:
	if Unlocks.Unlocks["Magic"]["MagicItems"].has(Nr) or IsHistoryItem or Values.DebugMode:
		MagicButton.visible = true
		setCantAffordRect()
	else:
		CantAffordRect.visible = false
		MagicButton.visible = false
		if checkIfVisible():
			Unlocks.Unlocks["Magic"]["MagicItems"][Nr] = true
