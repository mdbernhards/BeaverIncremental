extends MarginContainer

var ResearchData
var ItemId

# Nodes
var NameLabel
var DescriptionLabel
var PriceLabel
var ResearchIdLabel

func _ready():
	setNodePaths()

func _process(_delta):
	pass

func setResearch(ResearchNr):
	setNodePaths()
	
	ItemId = ResearchNr
	
	if !Research.Research.has(ResearchNr):
		queue_free()
		return
	
	ResearchData = Research.Research[ResearchNr]
	
	NameLabel.text = ResearchData["Name"]
	DescriptionLabel.text = ResearchData["Description"]
	ResearchIdLabel.text = str(ResearchNr)
	PriceLabel.text = getPriceText()

func getPriceText():
	var PriceText = "Price: "

	if ResearchData["OakCost"] > 0:
		PriceText += (str(ResearchData["OakCost"]) + " Oak, ")
	if ResearchData["AppleCost"] > 0:
		PriceText += (str(ResearchData["AppleCost"]) + " Apple, ")
	if ResearchData["MapleCost"] > 0:
		PriceText += (str(ResearchData["MapleCost"]) + " Maple, ")
	if ResearchData["BirchCost"] > 0:
		PriceText += (str(ResearchData["BirchCost"]) + " Birch, ")
	if ResearchData["SpruceCost"] > 0:
		PriceText += (str(ResearchData["SpruceCost"]) + " Spruce, ")
	if ResearchData["ChestnutCost"] > 0:
		PriceText += (str(ResearchData["ChestnutCost"]) + " Chestnut, ")
	if ResearchData["CherryCost"] > 0:
		PriceText += (str(ResearchData["CherryCost"]) + " Cherry, ")
	if ResearchData["AshCost"] > 0:
		PriceText += (str(ResearchData["AshCost"]) + " Ash, ")
	if ResearchData["CedarCost"] > 0:
		PriceText += (str(ResearchData["CedarCost"]) + " Cedar, ")
	if ResearchData["MahoganyCost"] > 0:
		PriceText += (str(ResearchData["MahoganyCost"]) + " Mahogany, ")
	if ResearchData["EbonyCost"] > 0:
		PriceText += (str(ResearchData["EbonyCost"]) + " Ebony, ")
	if ResearchData["DogwoodCost"] > 0:
		PriceText += (str(ResearchData["DogwoodCost"]) + " Dogwood, ")
	if ResearchData["RosewoodCost"] > 0:
		PriceText += (str(ResearchData["RosewoodCost"]) + " Rosewood, ")
	if ResearchData["Ghost GumCost"] > 0:
		PriceText += (str(ResearchData["Ghost GumCost"]) + " Ghost Gum, ")
	if ResearchData["DragonwoodCost"] > 0:
		PriceText += (str(ResearchData["DragonwoodCost"]) + " Dragonwood, ")
		
	return PriceText.left(PriceText.length() - 2)

func setNodePaths():
	NameLabel = $BG/HBox/MC/VBox/MC/TitleLabel
	DescriptionLabel = $BG/HBox/MC/VBox/MC2/EffectLabel
	PriceLabel = $BG/HBox/MC/VBox/MC3/PriceLabel
	ResearchIdLabel = $BG/ResearchIdLabel
