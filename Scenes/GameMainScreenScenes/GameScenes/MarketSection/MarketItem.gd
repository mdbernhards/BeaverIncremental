extends ColorRect

@export var WoodType = "Oak"

# Nodes for selling
var ItemTitleLabel
var CurrentWoodCountLabel
var SellAmountSlider
var SellPrecentigeLabel
var SellAmountLabel
var SellGoldGainLabel
var LeftColorRect

# Nodes for bots
var BotCountLabel
var BotEffectivnesSlider
var BotEffectivnesLabel
var PerSecondWoodSoldLabel
var PerSecondGoldGainLabel
var BotPriceLabel
var RightColorRect
var BotCountRect
var CantAffordRect
var CantAffordRect10
var CantAffordRect100
var CantAffordRect1000
var Buy10xButton
var Buy100xButton
var Buy1000xButton

var WoodLossIfSold
var GoldGainedIfSold

func _ready():
	setNodePaths()
	changeItemType()

func _process(_delta):
	pass

func setCantAffordRects():
	if checkIfCanAfford(1):
		CantAffordRect.visible = false
	else:
		CantAffordRect.visible = true

	if checkIfCanAfford(10):
		CantAffordRect10.visible = false
	else:
		CantAffordRect10.visible = true

	if checkIfCanAfford(100):
		CantAffordRect100.visible = false
	else:
		CantAffordRect100.visible = true

	if checkIfCanAfford(1000):
		CantAffordRect1000.visible = false
	else:
		CantAffordRect1000.visible = true

func changeItemType(woodType = WoodType):
	WoodType = woodType
	
	ItemTitleLabel.text = WoodType
	
	color = Values.ResourceValues[WoodType]["Color"]
	LeftColorRect.color = Values.ResourceValues[WoodType]["SecondaryColor"]
	RightColorRect.color = Values.ResourceValues[WoodType]["SecondaryColor"]
	BotCountRect.color = Values.ResourceValues[WoodType]["Color"]
	
	BotCountLabel.text = str(SaveData.Resources[WoodType]["Bots"])
	BotEffectivnesSlider.value = SaveData.Resources[WoodType]["BotSellPercentage"]

func updateValues():
	WoodLossIfSold = SaveData.Resources[WoodType]["Count"] * SellAmountSlider.value / 100
	GoldGainedIfSold = WoodLossIfSold * Values.ResourceValues[WoodType]["SoldFor"]
	
	CurrentWoodCountLabel.text = str(NumberFormatting.formatNumber(roundi(SaveData.Resources[WoodType]["Count"]))) + " " + WoodType
	SellAmountLabel.text = str(NumberFormatting.formatNumber(roundi(WoodLossIfSold))) + " " + WoodType
	SellGoldGainLabel.text = str(NumberFormatting.formatNumber(roundi(GoldGainedIfSold))) + " Gold"
	BotPriceLabel.text = "Price: " + str(NumberFormatting.formatNumber(roundi(CalculatePrice.getBotCost(SaveData.Resources[WoodType]["Bots"], WoodType)))) + " gold"
	
	PerSecondWoodSoldLabel.text = str(NumberFormatting.formatNumber(roundi(Values.ResourceValues[WoodType]["WoodSoldPerSecond"])))
	PerSecondGoldGainLabel.text = str(NumberFormatting.formatNumber(roundi(Values.ResourceValues[WoodType]["GoldGainPerSecond"])))

func setNodePaths():
	# Nodes for selling
	ItemTitleLabel = $HBox/VBox/LabelHBox/MC/ItemTitleLabel
	CurrentWoodCountLabel = $HBox/VBox/LabelHBox/MC2/WoodCountLabel
	SellAmountSlider = $HBox/VBox/MC/VBox/MC2/SellAmountSlider
	SellPrecentigeLabel = $HBox/VBox/MC/VBox/MC/SellPrecentigeLabel
	SellAmountLabel = $HBox/VBox/MC/VBox/HBox/MC/VBox/MC2/SellAmountLabel
	SellGoldGainLabel = $HBox/VBox/MC/VBox/HBox/MC2/VBox/MC2/GoldGainLabel
	LeftColorRect = $HBox/VBox/MC/LeftColorRect

	# Nodes for bots
	BotCountLabel = $HBox/MC2/VBox/HBox2/MC3/VBox/MC2/BotCountRect/BotCountLabel
	BotEffectivnesSlider = $HBox/MC2/VBox/HBox/MC/BotEffectivnesSlider
	BotEffectivnesLabel = $HBox/MC2/VBox/HBox/MC/MC/BotEffectivnesLabel
	PerSecondWoodSoldLabel = $HBox/MC2/VBox/HBox/MC2/VBox/MC2/PerSecondSoldLabel
	PerSecondGoldGainLabel = $HBox/MC2/VBox/HBox/MC3/VBox/MC2/PerSecondGainLabel
	BotPriceLabel = $HBox/MC2/VBox/HBox2/MC2/VBox/BotPriceLabel
	RightColorRect = $HBox/MC2/RightColorRect
	BotCountRect = $HBox/MC2/VBox/HBox2/MC3/VBox/MC2/BotCountRect
	CantAffordRect = $HBox/MC2/VBox/HBox2/MC2/VBox/HBox/BuyButton/CantAffordRect
	CantAffordRect10 = $"HBox/MC2/VBox/HBox2/MC2/VBox/HBox/Buy10xButton/10CantAffordRect"
	CantAffordRect100 = $"HBox/MC2/VBox/HBox2/MC2/VBox/HBox/Buy100xButton/100CantAffordRect"
	CantAffordRect1000 = $"HBox/MC2/VBox/HBox2/MC2/VBox/HBox/Buy1000xButton/1000CantAffordRect"
	Buy10xButton = $HBox/MC2/VBox/HBox2/MC2/VBox/HBox/Buy10xButton
	Buy100xButton = $HBox/MC2/VBox/HBox2/MC2/VBox/HBox/Buy100xButton
	Buy1000xButton = $HBox/MC2/VBox/HBox2/MC2/VBox/HBox/Buy1000xButton

func _on_sell_amount_slider_value_changed(value):
	SaveData.Resources[WoodType]["MarketSellPercentage"] = value
	SellPrecentigeLabel.text = str(value) + "%"

func _on_bot_effectivnes_slider_value_changed(value):
	SaveData.Resources[WoodType]["BotSellPercentage"] = value
	BotEffectivnesLabel.text = "Effect: " + str(value) + "%"

func _on_sell_button_button_down():
	SaveData.Resources[WoodType]["Count"] -= WoodLossIfSold
	SaveData.Gold["Count"] += GoldGainedIfSold

func checkIfCanAfford(botAmount):
	var price = 0
	
	for n in botAmount:
		price += CalculatePrice.getBotCost(SaveData.Resources[WoodType]["Bots"] + n, WoodType) * Values.ResourceValues[WoodType]["BotPriceMultip"]
	
	if SaveData.Gold["Count"] >= price:
		return true
	else:
		return false

func buyBot(botAmount):
	for n in botAmount:
		var price = CalculatePrice.getBotCost(SaveData.Resources[WoodType]["Bots"], WoodType) * Values.ResourceValues[WoodType]["BotPriceMultip"]
		
		SaveData.Gold["Count"] -= price
		SaveData.Resources[WoodType]["Bots"] += 1
		BotCountLabel.text = str(SaveData.Resources[WoodType]["Bots"])

func _on_buy_button_button_down():
	if checkIfCanAfford(1):
		buyBot(1)

func _on_buy_10x_button_button_down() -> void:
	if checkIfCanAfford(10):
		buyBot(10)

func _on_buy_100x_button_button_down() -> void:
	if checkIfCanAfford(100):
		buyBot(100)

func _on_buy_1000x_button_button_down() -> void:
	if checkIfCanAfford(1000):
		buyBot(1000)

func _on_market_item_timer_timeout() -> void:
	updateValues()
	
	if CantAffordRect:
		setCantAffordRects()
	
	if Unlocks.Unlocks["Market"]["Bots"]["10x Buy"] or Values.DebugMode:
		Buy10xButton.visible = true
	else:
		Buy10xButton.visible = false
	
	if Unlocks.Unlocks["Market"]["Bots"]["100x Buy"] or Values.DebugMode:
		Buy100xButton.visible = true
	else:
		Buy100xButton.visible = false
	
	if Unlocks.Unlocks["Market"]["Bots"]["1000x Buy"] or Values.DebugMode:
		Buy1000xButton.visible = true
	else:
		Buy1000xButton.visible = false
