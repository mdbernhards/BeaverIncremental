extends Control

# Nodes
var MagicLabel
var EffectLabel
var MagicGainLabel
var NextMagicLabel
var AscendButton

var PotentialMagic = 0

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

func _ready() -> void:
	setupNodePaths()

func _process(_delta: float) -> void:
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
	if !Values.ResourceValues["Fish"]["IsFishing"]:
		var magic = 0
		
		for resourceType in BaseRequirements:
			var resourceCount = SaveData.MaxResourceCount[resourceType] - SaveData.SavedMagicCalculation[resourceType]["WoodCountCalculatedOn"]
			
			if resourceCount < 0:
				continue
			
			var baseCost
			if SaveData.SavedMagicCalculation[resourceType]["CurrentBaseCost"] > BaseRequirements[resourceType]:
				baseCost = SaveData.SavedMagicCalculation[resourceType]["CurrentBaseCost"]
			else:
				baseCost = BaseRequirements[resourceType]
			
			var resourcesMagic = 0
			if SaveData.SavedMagicCalculation[resourceType]["PotentialMagicGain"] > resourcesMagic:
				resourcesMagic = SaveData.SavedMagicCalculation[resourceType]["PotentialMagicGain"]
			
			var usedWoodCount = 0
			
			while resourceCount >= baseCost:
				resourcesMagic += 1
				resourceCount -= baseCost
				usedWoodCount += baseCost
				
				if resourceType == "Gold":
					if resourcesMagic <= 250:
						baseCost *= 1.029
					elif resourcesMagic <= 1000:
						baseCost *= 1.002
					elif resourcesMagic <= 10000:
						baseCost *= 1.0006
					else:
						baseCost *= 1.0003
				else:
					if resourcesMagic <= 90:
						baseCost *= 1.032
					elif resourcesMagic <= 1000:
						baseCost *= 1.00055
					elif resourcesMagic <= 10000:
						baseCost *= 1.000035
					elif resourcesMagic <= 100000:
						baseCost *= 1.00001
					elif resourcesMagic <= 250000:
						baseCost *= 1.0000017
					elif resourcesMagic <= 5000000:
						baseCost *= 1.000001
					elif resourcesMagic <= 50000000:
						baseCost *= 1.0000008
					elif resourcesMagic <= 500000000:
						baseCost *= 1.0000002
					else:
						baseCost *= 1.0000001

			if resourceCount > 0:
				resourcesMagic += resourceCount / baseCost
				usedWoodCount += resourceCount / baseCost
				
			magic += resourcesMagic
			
			SaveData.SavedMagicCalculation[resourceType]["PotentialMagicGain"] = resourcesMagic
			SaveData.SavedMagicCalculation[resourceType]["CurrentBaseCost"] = baseCost
			SaveData.SavedMagicCalculation[resourceType]["WoodCountCalculatedOn"] += usedWoodCount
			
		Values.ResourceValues["Magic"]["PotentialMagic"] = magic * Values.ResourceValues["Magic"]["GainMultip"]

func updateMagicValue(value):
	Values.ResourceValues["Magic"]["PotentialMagic"] = PotentialMagic

func updateMagic():
	MagicGainLabel.text = "You will gain " + str(NumberFormatting.formatNumber(floor(Values.ResourceValues["Magic"]["PotentialMagic"]))) + " Magic"
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
	updateMagic()
	calculatePotentialMagicGain()
	
	if floor(Values.ResourceValues["Magic"]["PotentialMagic"]) > 0:
		AscendButton.disabled = false
	else:
		AscendButton.disabled = true
	
	MagicLabel.text = "You have " + str(NumberFormatting.formatNumber(SaveData.Magic["Count"])) + " Magic"
	
	var wpcMultip = str(roundf((Values.ResourceValues["Magic"]["WpcMultip"] - 1) * 100))
	var wpsMultip = str(roundf((Values.ResourceValues["Magic"]["WpsMultip"] - 1) * 100))
	var storageMultip = str(roundf((Values.ResourceValues["Magic"]["StorageMultip"] - 1) * 100))
	
	EffectLabel.text = wpcMultip + "% Wood Per Click\n" + wpsMultip + "% Wood Per Second \n" + storageMultip + "% Storage \n"
