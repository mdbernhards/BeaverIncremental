extends MarginContainer

# Nodes
var NameLabel
var CostLabel
var CantAffordRect
var MagicButton

var Upgrade
@export var Nr = 1

func _ready():
	setMagicUpgrade()

func _process(delta):
	pass

func setCantAffordRect():
	if Upgrade && (SaveData.Magic["Count"] >= Upgrade["Cost"]):
		CantAffordRect.visible = false
	else:
		CantAffordRect.visible = true

func setMagicUpgrade(nr = Nr):
	setNodePaths()
	
	Nr = nr
	Upgrade = Magic.Magic[str(Nr)]
	
	NameLabel.text = Upgrade["Name"]
	CostLabel.text = str(NumberFormatting.formatNumber(Upgrade["Cost"])) + " Magic"

func setNodePaths():
	NameLabel = $MagicButton/MC/VBox/NameLabel
	CostLabel = $MagicButton/MC/VBox/CostLabel
	CantAffordRect = $CantAffordColorRect
	MagicButton = $MagicButton

func _on_magic_button_button_down():
	if SaveData.Magic["Count"] >= Upgrade["Cost"]:
		SaveData.Magic["Count"] -= Upgrade["Cost"]
		SaveData.UnlockedMagicUpgrades[Nr] = true
		queue_free()

func checkIfVisible():
	return Upgrade["Cost"] * 0.5 < SaveData.Magic["Count"]

func _on_magic_item_timer_timeout() -> void:
	setCantAffordRect()
	
	if Unlocks.Unlocks["Magic"]["MagicItems"].has(Nr) or Values.DebugMode:
		CantAffordRect.visible = true
		MagicButton.visible = true
	else:
		CantAffordRect.visible = false
		MagicButton.visible = false
		if checkIfVisible():
			Unlocks.Unlocks["Magic"]["MagicItems"][Nr] = true
