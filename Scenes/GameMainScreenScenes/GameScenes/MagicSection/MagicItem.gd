extends MarginContainer

# Nodes
var NameLabel
var CostLabel
var CantAffordRect

var Upgrade
@export var Nr = 1

func _ready():
	setMagicUpgrade()

func _process(delta):
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

func _on_magic_button_button_down():
	if SaveData.Magic["Count"] >= Upgrade["Cost"]:
		SaveData.Magic["Count"] -= Upgrade["Cost"]
		SaveData.UnlockedMagicUpgrades[Nr] = true
		$MagicButton.visible = false
