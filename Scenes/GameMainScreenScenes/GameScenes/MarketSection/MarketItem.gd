extends ColorRect

@export var WoodType = "Oak"

# Nodes

# Nodes for selling
var ItemTitleLabel
var CurrentWoodCountLabel
var SellAmountSlider
var SellPrecentigeLabel
var SellAmountLabel
var SellGoldGainLabel

# Nodes for bots
var BotCountLabel
var BotEffectivnesSlider
var BotEffectivnesLabel
var PerSecondWoodSoldLabel
var PerSecondGoldGainLabel
var BotPriceLabel

var WoodLossIfSold
var GoldGainedIfSold

func _ready():
	setNodePaths()
	changeItemType()

func _process(_delta):
	updateValues()

func changeItemType(woodType = WoodType):
	WoodType = woodType
	
	ItemTitleLabel.text = WoodType
	color = Values.ResourceValues[WoodType]["Color"]
	BotCountLabel.text = str(SaveData.Resources[WoodType]["Bots"])
	BotEffectivnesSlider.value = SaveData.Resources[WoodType]["BotSellPercentage"]
	
func updateValues():
	WoodLossIfSold = SaveData.Resources[WoodType]["Count"] * SellAmountSlider.value / 100
	GoldGainedIfSold = WoodLossIfSold * Values.ResourceValues[WoodType]["SoldFor"]
	
	CurrentWoodCountLabel.text = str(roundi(SaveData.Resources[WoodType]["Count"])) + " " + WoodType
	SellAmountLabel.text = str(roundi(WoodLossIfSold)) + " " + WoodType
	SellGoldGainLabel.text = str(roundi(GoldGainedIfSold)) + " Gold"
	BotPriceLabel.text = "Price: " + str(roundi(CalculatePrice.getBotCost(SaveData.Resources[WoodType]["Bots"], WoodType))) + " gold"
	
	PerSecondWoodSoldLabel.text = str(roundi(Values.ResourceValues[WoodType]["WoodSoldPerSecond"]))
	PerSecondGoldGainLabel.text = str(roundi(Values.ResourceValues[WoodType]["GoldGainPerSecond"]))

func setNodePaths():
	# Nodes for selling
	ItemTitleLabel = $HBox/VBox/LabelHBox/MC/ItemTitleLabel
	CurrentWoodCountLabel = $HBox/VBox/LabelHBox/MC2/WoodCountLabel
	SellAmountSlider = $HBox/VBox/MC/VBox/MC2/SellAmountSlider
	SellPrecentigeLabel = $HBox/VBox/MC/VBox/MC/SellPrecentigeLabel
	SellAmountLabel = $HBox/VBox/MC/VBox/HBox/MC/VBox/MC2/SellAmountLabel
	SellGoldGainLabel = $HBox/VBox/MC/VBox/HBox/MC2/VBox/MC2/GoldGainLabel

	# Nodes for bots
	BotCountLabel = $HBox/MC2/VBox/HBox2/MC3/VBox/MC2/ColorRect/BotCountLabel
	BotEffectivnesSlider = $HBox/MC2/VBox/HBox/MC/BotEffectivnesSlider
	BotEffectivnesLabel = $HBox/MC2/VBox/HBox/MC/MC/BotEffectivnesLabel
	PerSecondWoodSoldLabel = $HBox/MC2/VBox/HBox/MC2/VBox/MC2/PerSecondSoldLabel
	PerSecondGoldGainLabel = $HBox/MC2/VBox/HBox/MC3/VBox/MC2/PerSecondGainLabel
	BotPriceLabel = $HBox/MC2/VBox/HBox2/MC2/VBox/BotPriceLabel

func _on_sell_amount_slider_value_changed(value):
	SaveData.Resources[WoodType]["MarketSellPercentage"] = value
	SellPrecentigeLabel.text = str(value) + "%"

func _on_buy_button_button_down(): #bot buy
	var price = CalculatePrice.getBotCost(SaveData.Resources[WoodType]["Bots"], WoodType) * Values.ResourceValues[WoodType]["BotPriceMultip"]
	
	if SaveData.Gold["Count"] >= price:
		SaveData.Gold["Count"] -= price
		SaveData.Resources[WoodType]["Bots"] += 1
		BotCountLabel.text = str(SaveData.Resources[WoodType]["Bots"])

func _on_bot_effectivnes_slider_value_changed(value):
	SaveData.Resources[WoodType]["BotSellPercentage"] = value
	BotEffectivnesLabel.text = "Effect: " + str(value) + "%"

func _on_sell_button_button_down():
	SaveData.Resources[WoodType]["Count"] -= WoodLossIfSold
	SaveData.Gold["Count"] += GoldGainedIfSold
