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
	
	magic += MaxResourceCount["Oak"] / 10000
	magic += MaxResourceCount["Apple"] / 9000
	magic += MaxResourceCount["Maple"] / 8000
	magic += MaxResourceCount["Birch"] / 7000
	magic += MaxResourceCount["Spruce"] / 6000
	magic += MaxResourceCount["Chestnut"] / 5000
	magic += MaxResourceCount["Cherry"] / 4000
	magic += MaxResourceCount["Ash"] / 3000
	magic += MaxResourceCount["Cedar"] / 2000
	magic += MaxResourceCount["Mahogany"] / 1000
	magic += MaxResourceCount["Ebony"] / 900
	magic += MaxResourceCount["Dogwood"] / 800
	magic += MaxResourceCount["Rosewood"] / 700
	magic += MaxResourceCount["Ghost Gum"] / 600
	magic += MaxResourceCount["Dragonwood"] / 500
	magic += MaxResourceCount["Gold"] / 15000
	
	Values.ResourceValues["Magic"]["PotentialMagic"] = round(magic)

func updateMagic():
	MagicGainLabel.text = "You will gain " + str(Values.ResourceValues["Magic"]["PotentialMagic"]) + " Magic"

func setupNodePaths():
	MagicGainLabel = $MC/AscensionVBox/MC2/MagicGainLabel

func _on_ascend_button_button_down() -> void:
	SaveData.Magic["Count"] += Values.ResourceValues["Magic"]["PotentialMagic"]
	SaveData.resetValues()
