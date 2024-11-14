extends MarginContainer

# Nodes
var UpgradesSection
var ResearchSection
var MarketSection
var MagicSection
var DamSection

func _ready():
	pass

func _process(_delta):
	setNodePaths()

func _on_upgrades_button_button_down():
	SetAllSectionsInvisible()
	UpgradesSection.visible = true

func _on_research_button_button_down():
	SetAllSectionsInvisible()
	ResearchSection.visible = true

func _on_market_button_button_down():
	SetAllSectionsInvisible()
	MarketSection.visible = true

func _on_magic_button_button_down():
	SetAllSectionsInvisible()
	MagicSection.visible = true

func _on_dam_button_button_down():
	SetAllSectionsInvisible()
	DamSection.visible = true

func SetAllSectionsInvisible():
	UpgradesSection.visible = false
	ResearchSection.visible = false
	MarketSection.visible = false
	MagicSection.visible = false
	DamSection.visible = false
	
func setNodePaths():
	UpgradesSection = $RightVBox/TabsMC/UpgradesSection
	ResearchSection = $RightVBox/TabsMC/ResearchSection
	MarketSection = $RightVBox/TabsMC/MarketSection
	MagicSection = $RightVBox/TabsMC/MagicSection
	DamSection =  $RightVBox/TabsMC/DamSection
