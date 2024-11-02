extends MarginContainer

var UpgradeTabTitle
var WoodType

# Called when the node enters the scene tree for the first time.
func _ready():
	setVarPaths()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setupUpgradeTabForWoodType(type):
	WoodType = type
	
	UpgradeTabTitle.text = WoodType
	setupUpgrades(WoodType)

func setupUpgrades(woodType):
	#get all upgrades from upgrrade singleton
	# get each upgrade status from save file singleton
	# set the 18 upgrades up, show them or ??? based on if max level reached in upgrade, upgrade show trigger, indications of afordability 
	pass
	
func setVarPaths():
	UpgradeTabTitle = $VBox/TopHBox/TitleMC/TitleLabel
