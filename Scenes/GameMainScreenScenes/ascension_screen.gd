extends Control

var WoodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce",
				 "Chestnut", "Cherry", "Ash", "Cedar", "Mahogany",
				 "Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood",]

var BaseRequirements = {
		"Oak": 70000,
		"Apple": 67500,
		"Maple": 65000,
		"Birch": 62500,
		"Spruce": 55000,
		"Chestnut": 47500,
		"Cherry": 45000,
		"Ash": 40000,
		"Cedar": 35000,
		"Mahogany": 30000,
		"Ebony": 25000,
		"Dogwood": 20000,
		"Rosewood": 15000,
		"Ghost Gum": 10000,
		"Dragonwood": 5000,
		"Gold": 250000
	}

# Nodes
var MagicLabel
var EffectLabel
var MagicGainLabel
var NextMagicLabel
var AscendButton

func _ready() -> void:
	setupNodePaths()
	calculatePotentialMagicGain()

func _process(delta: float) -> void:
	pass

func checkMaxWoodCounts():
	for resourceType in SaveData.MaxResourceCount:
		if resourceType == "Gold":
			if SaveData.MaxResourceCount[resourceType] < SaveData.Gold["Count"]:
				SaveData.MaxResourceCount[resourceType] = SaveData.Gold["Count"]
		else:
			if SaveData.MaxResourceCount[resourceType] < SaveData.Resources[resourceType]["Count"]:
				SaveData.MaxResourceCount[resourceType] = SaveData.Resources[resourceType]["Count"]

func calculatePotentialMagicGain():
	var magic = 0
	
	for resourceType in BaseRequirements:
		var resourceCount = SaveData.MaxResourceCount[resourceType]
		var baseCost = BaseRequirements[resourceType]
		
		while resourceCount >= baseCost:
			magic += 1
			resourceCount -= baseCost
			baseCost *= 1.15
		
		if resourceCount > 0:
			magic += resourceCount / baseCost
	
	Values.ResourceValues["Magic"]["PotentialMagic"] = magic * Values.ResourceValues["Magic"]["GainMultip"]

func updateMagic():
	MagicGainLabel.text = "You will gain " + str(floor(Values.ResourceValues["Magic"]["PotentialMagic"])) + " Magic"
	NextMagicLabel.text = str(round((Values.ResourceValues["Magic"]["PotentialMagic"] - floor(Values.ResourceValues["Magic"]["PotentialMagic"])) * 100)) + "% To Next Magic"

func setupNodePaths():
	MagicLabel = $MC/AscensionVBox/TopHBox/MC/VBox/MagicLabel
	EffectLabel = $MC/AscensionVBox/TopHBox/MC/VBox/EffectLabel
	MagicGainLabel = $MC/AscensionVBox/MC2/VBox/MagicGainLabel
	NextMagicLabel = $MC/AscensionVBox/MC2/VBox/NextMagicLabel
	AscendButton = $MC/AscensionVBox/MC/AscendButton

func _on_ascend_button_button_down() -> void:
	if floor(Values.ResourceValues["Magic"]["PotentialMagic"]) > 0:
		if SaveData.GeneralInfo.has("TimesAscended"):
			SaveData.GeneralInfo["TimesAscended"] += 1
		else:
			SaveData.GeneralInfo["TimesAscended"] = 1
		
		SaveData.Magic["Count"] += floor(Values.ResourceValues["Magic"]["PotentialMagic"])
		SaveData.resetValues()
		_on_timer_timeout()

func _on_timer_timeout() -> void:
	checkMaxWoodCounts()
	calculatePotentialMagicGain()
	updateMagic()
	
	if floor(Values.ResourceValues["Magic"]["PotentialMagic"]) > 0:
		AscendButton.disabled = false
	else:
		AscendButton.disabled = true
	
	MagicLabel.text = "You have " + str(SaveData.Magic["Count"]) + " Magic"
	
	var wpcMultip = str(roundf((Values.ResourceValues["Magic"]["WpcMultip"] - 1) * 100))
	var wpsMultip = str(roundf((Values.ResourceValues["Magic"]["WpsMultip"] - 1) * 100))
	var storageMultip = str(roundf((Values.ResourceValues["Magic"]["StorageMultip"] - 1) * 100))
	
	EffectLabel.text = wpcMultip + "% Wood Per Click\n" + wpsMultip + "% Wood Per Second \n" + storageMultip + "% Storage \n"
