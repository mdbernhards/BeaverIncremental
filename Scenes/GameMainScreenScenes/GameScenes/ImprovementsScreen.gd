extends MarginContainer

# Nodes
var UpgradesSection
var ResearchSection
var MarketSection
var MagicSection
var DamSection
var ResearchButton
var MarketButton
var MagicButton
var DamButton

func _ready():
	setNodePaths()

func _process(_delta):
	pass

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
	ResearchButton = $RightVBox/TopMenuMC/ButtonMC/VBox/ResearchButton
	MarketButton = $RightVBox/TopMenuMC/ButtonMC/VBox/MarketButton
	MagicButton = $RightVBox/TopMenuMC/ButtonMC/VBox/MagicButton
	DamButton = $RightVBox/TopMenuMC/ButtonMC/VBox/DamButton

func _on_improvement_screen_timer_timeout() -> void:
	if Unlocks.Unlocks["Research"]["Unlocked"] or Values.DebugMode:
		ResearchButton.text = "Research"
		ResearchButton.disabled = false
	else:
		ResearchButton.disabled = true
		ResearchButton.text = "?????"
	
	if Unlocks.Unlocks["Market"]["Unlocked"] or Values.DebugMode:
		MarketButton.text = "Market"
		MarketButton.disabled = false
	else:
		MarketButton.disabled = true
		MarketButton.text = "?????"
	
	if Unlocks.Unlocks["Magic"]["Upgrades"] or Values.DebugMode:
		MagicButton.text = "Magic"
		MagicButton.disabled = false
	else:
		MagicButton.disabled = true
		MagicButton.text = "?????"
	
	if Unlocks.Unlocks["Dams"]["Unlocked"] or Values.DebugMode:
		DamButton.text = "Dams"
		DamButton.disabled = false
	else:
		DamButton.disabled = true
		DamButton.text = "?????"
