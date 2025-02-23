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
	
	for woodType in Values.WoodTypes:
		var resourceCost = ResearchData[woodType + "Cost"]
		if resourceCost > 0:
			PriceText += str(NumberFormatting.formatNumber(resourceCost)) + " " + woodType + ", "
	
	return PriceText.left(PriceText.length() - 2)

func setNodePaths():
	NameLabel = $BG/HBox/MC/VBox/MC/TitleLabel
	DescriptionLabel = $BG/HBox/MC/VBox/MC2/EffectLabel
	PriceLabel = $BG/HBox/MC/VBox/MC3/PriceLabel
	ResearchIdLabel = $BG/ResearchIdLabel
