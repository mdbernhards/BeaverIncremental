extends Control


var WoodTypes = ["Oak", "Apple", "Maple", "Birch", "Spruce",
				 "Chestnut", "Cherry", "Ash", "Cedar", "Mahogany",
				 "Ebony", "Dogwood", "Rosewood", "Ghost Gum", "Dragonwood",]

var MaxResourceCount = {
	"Oak" : 0,
	"Apple" : 0,
	"Maple" : 0,
	"Birch" : 0,
	"Spruce" : 0,
	"Chestnut" : 0,
	"Cherry" : 0,
	"Ash" : 0,
	"Cedar" : 0,
	"Mahogany" : 0,
	"Ebony" : 0,
	"Dogwood" : 0,
	"Rosewood" : 0,
	"Ghost Gum" : 0,
	"Dragonwood" : 0,
	"Gold" : 0,
}

var BaseRequirements = {
		"Oak": 150000,
		"Apple": 140000,
		"Maple": 130000,
		"Birch": 120000,
		"Spruce": 110000,
		"Chestnut": 100000,
		"Cherry": 90000,
		"Ash": 80000,
		"Cedar": 70000,
		"Mahogany": 60000,
		"Ebony": 50000,
		"Dogwood": 40000,
		"Rosewood": 30000,
		"Ghost Gum": 20000,
		"Dragonwood": 10000,
		"Gold": 15000
	}

# Nodes
var MagicGainLabel

func _ready() -> void:
	setupNodePaths()
	calculatePotentialMagicGain()

func _process(delta: float) -> void:
	checkMaxWoodCounts()
	calculatePotentialMagicGain()
	updateMagic()

func checkMaxWoodCounts():
	for resourceType in MaxResourceCount:
		if resourceType == "Gold":
			if MaxResourceCount[resourceType] < SaveData.Gold["Count"]:
				MaxResourceCount[resourceType] = SaveData.Gold["Count"]
		else:
			if MaxResourceCount[resourceType] < SaveData.Resources[resourceType]["Count"]:
				MaxResourceCount[resourceType] = SaveData.Resources[resourceType]["Count"]

func calculatePotentialMagicGain():
	var magic = 0
	
	for resourceType in BaseRequirements:
		var resourceCount = MaxResourceCount[resourceType]
		var baseCost = BaseRequirements[resourceType]
		
		while resourceCount >= baseCost:
			magic += 1
			resourceCount -= baseCost
			baseCost *= 1.1
		
		if resourceCount > 0:
			magic += resourceCount / baseCost
	
	Values.ResourceValues["Magic"]["PotentialMagic"] = round(magic)

func updateMagic():
	MagicGainLabel.text = "You will gain " + str(Values.ResourceValues["Magic"]["PotentialMagic"]) + " Magic"

func setupNodePaths():
	MagicGainLabel = $MC/AscensionVBox/MC2/MagicGainLabel

func _on_ascend_button_button_down() -> void:
	SaveData.Magic["Count"] += Values.ResourceValues["Magic"]["PotentialMagic"]
	SaveData.resetValues()
