extends Node

# Don't reset Magic, FoS and Achievements, and others with upgrades
var OriginalGold
var OriginalResources
var OriginalUpgrades
var OriginalUnlockedResearch
var OriginalResearchInfo
var OriginalDamData
var OriginalCaughtFish
var OriginalBait
var OriginalMagic
var OriginalUnlockedMagicUpgrades
var OriginalUnlockedAchievements
var OriginalUnlockedFeatsOfStrength
var OriginalGeneralInfo
var OriginalMaxResourceCount

func _ready():
	getOriginalValues()

func getOriginalValues():
	OriginalGold = Gold.duplicate(true)
	OriginalResources = Resources.duplicate(true)
	OriginalUpgrades = Upgrades.duplicate(true)
	OriginalUnlockedResearch = UnlockedResearch.duplicate(true)
	OriginalDamData = DamData.duplicate(true)
	OriginalCaughtFish = CaughtFish.duplicate(true)
	OriginalBait = Bait.duplicate(true)
	OriginalResearchInfo = ResearchInfo.duplicate(true)
	OriginalMagic = Magic.duplicate(true)
	OriginalUnlockedMagicUpgrades = UnlockedMagicUpgrades.duplicate(true)
	OriginalUnlockedAchievements = UnlockedAchievements.duplicate(true)
	OriginalGeneralInfo = GeneralInfo.duplicate(true)
	OriginalMaxResourceCount = MaxResourceCount.duplicate(true)
	Unlocks.OriginalUnlocks = Unlocks.Unlocks.duplicate(true)

func resetValues():
	
	var tempUpgrades = Upgrades.duplicate(true)
	Upgrades = OriginalUpgrades.duplicate(true)
	
	if Unlocks.Unlocks["Upgrades"]["KeepClassicUpgrades"]:
		Upgrades["Oak"] = tempUpgrades["Oak"].duplicate(true)
		Upgrades["Apple"] = tempUpgrades["Apple"].duplicate(true)
		Upgrades["Maple"] = tempUpgrades["Maple"].duplicate(true)
		Upgrades["Birch"] = tempUpgrades["Birch"].duplicate(true)
		Upgrades["Spruce"] = tempUpgrades["Spruce"].duplicate(true)
	
	if Unlocks.Unlocks["Upgrades"]["KeepRareUpgrades"]:
		Upgrades["Chestnut"] = tempUpgrades["Chestnut"].duplicate(true)
		Upgrades["Cherry"] = tempUpgrades["Cherry"].duplicate(true)
		Upgrades["Ash"] = tempUpgrades["Ash"].duplicate(true)
		Upgrades["Cedar"] = tempUpgrades["Cedar"].duplicate(true)
		Upgrades["Mahogany"] = tempUpgrades["Mahogany"].duplicate(true)
	
	if Unlocks.Unlocks["Upgrades"]["KeepMythicUpgrades"]:
		Upgrades["Ebony"] = tempUpgrades["Ebony"].duplicate(true)
		Upgrades["Dogwood"] = tempUpgrades["Dogwood"].duplicate(true)
		Upgrades["Rosewood"] = tempUpgrades["Rosewood"].duplicate(true)
		Upgrades["Ghost Gum"] = tempUpgrades["Ghost Gum"].duplicate(true)
		Upgrades["Dragonwood"] = tempUpgrades["Dragonwood"].duplicate(true)
	
	if Unlocks.Unlocks["Upgrades"]["KeepGoldUpgrades"]:
		Upgrades["Gold"] = tempUpgrades["Gold"].duplicate(true)
	
	Gold = OriginalGold.duplicate(true)
	Resources = OriginalResources.duplicate(true)
	UnlockedResearch = OriginalUnlockedResearch.duplicate(true)
	DamData = OriginalDamData.duplicate(true)
	CaughtFish = OriginalCaughtFish.duplicate(true)
	Bait = OriginalBait.duplicate(true)
	ResearchInfo = OriginalResearchInfo.duplicate(true)
	MaxResourceCount = OriginalMaxResourceCount.duplicate(true)
	Unlocks.Unlocks = Unlocks.OriginalUnlocks.duplicate(true)
	
	recalculateValues()

func recalculateValues():
	CalculateValues.calculateAllValues()
	get_tree().get_first_node_in_group("ResearchSection").resetResearch()
	get_tree().get_first_node_in_group("ResourcePage").updateBars()
	get_tree().get_first_node_in_group("Settings").updateSettings()
	get_tree().get_first_node_in_group("MagicSection").setMagicItems()
	get_tree().get_first_node_in_group("DamSection").setDamConstruction()

var Gold = {
	"Count" : 0,
}

var Resources = {
	"Oak" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 100, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Apple" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 100, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Maple" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 100, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Birch" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 100, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Spruce" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Chestnut" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Cherry" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Ash" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Cedar" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Mahogany" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Ebony" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Dogwood" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Rosewood" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Ghost Gum" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Dragonwood" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
}

var Upgrades = {
	"Oak" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Apple" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Maple" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Birch" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Spruce" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Chestnut" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Cherry" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Ash" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Cedar" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Mahogany" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Ebony" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Dogwood" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Rosewood" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Ghost Gum" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Dragonwood" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
	"Gold" : {
		"1" : {
			"Level" : 0,
		},
		"2" :  {
			"Level" : 0,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 0,
		},
		"5" :  {
			"Level" : 0,
		},
		"6" :  {
			"Level" : 0,
		},
		"7" :  {
			"Level" : 0,
		},
		"8" :  {
			"Level" : 0,
		},
		"9" :  {
			"Level" : 0,
		},
		"10" :  {
			"Level" : 0,
		},
		"11" :  {
			"Level" : 0,
		},
		"12" :  {
			"Level" : 0,
		},
		"13" :  {
			"Level" : 0,
		},
		"14" :  {
			"Level" : 0,
		},
		"15" :  {
			"Level" : 0,
		},
		"16" :  {
			"Level" : 0,
		},
		"17" :  {
			"Level" : 0,
		},
		"18" :  {
			"Level" : 0,
		},
	},
}

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

var UnlockedResearch = {
	"1" : false,
	"2" : false,
	"3" : false,
}

var ResearchInfo = {
	"CurrentResearch" : {},
	"Queue" : [],
	"PreUnlockedResearch" : 0,
}

var DamData = {
	Dams.DamEnum.SmallDam : {
		"AvailableBuilds" : 1,
		"Count" : 0,
		"ConstructionSpeedPrecentige" : [100,100,100],
		"BuildingSlots" : {
			Dams.ItemNumberEnum.one : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.two : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.three : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
		},
	},
	Dams.DamEnum.MediumDam : {
		"AvailableBuilds" : 1,
		"Count" : 0,
		"ConstructionSpeedPrecentige" : [100,100,100],
		"BuildingSlots" : {
			Dams.ItemNumberEnum.one : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.two : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.three : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
		},
	},
	Dams.DamEnum.BigDam : {
		"AvailableBuilds" : 1,
		"Count" : 0,
		"ConstructionSpeedPrecentige" : [100,100,100],
		"BuildingSlots" : {
			Dams.ItemNumberEnum.one : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.two : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.three : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
		},
	},
	Dams.DamEnum.GiantDam : {
		"AvailableBuilds" : 1,
		"Count" : 0,
		"ConstructionSpeedPrecentige" : [100,100,100],
		"BuildingSlots" : {
			Dams.ItemNumberEnum.one : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.two : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.three : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
		},
	},
	Dams.DamEnum.MegaDam : {
		"AvailableBuilds" : 1,
		"Count" : 0,
		"ConstructionSpeedPrecentige" : [100,100,100],
		"BuildingSlots" : {
			Dams.ItemNumberEnum.one : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.two : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
			Dams.ItemNumberEnum.three : {
				"Stage" : 0,
				"Constructing" : false,
				"ResourcesCollected" : {},
			},
		},
	},
}

var CaughtFish = {
	Fishing.FishEnum.Boot : {
		"Count" : 0,
		"Caught" : false, # at least once
	},
	Fishing.FishEnum.Seaweed : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ColaBottle : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.Catfish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.GoldPotI : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.GoldPotII : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.GoldPotIII : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.GoldFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MagicPotI : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MagicPotII : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MagicPotIII : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MagicFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.SpeedFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.StorageBox : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ResearchFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.WoodFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.DamFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.LuckyFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.CrateFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.BotFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.IceFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.BaitFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ElectricEal : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ElectricJellyfish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ElectricSponge : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ConstructionShark : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.SalmonLumberJack : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.AscentionFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.DescentionFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.BigFish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.Clownfish : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.Stick : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.OakCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.AppleCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MapleCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.BirchCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.SpruceCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.ChestnutCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.CherryCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.AshCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.CedarCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MahoganyCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.EbonyCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.DogwoodCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.RosewoodCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.GhostGumCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.DragonwoodCrate : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.BlueWhale : {
		"Count" : 0,
		"Caught" : false,
	},
	Fishing.FishEnum.MultiplyingFish : {
		"Count" : 0,
		"Caught" : false,
	},
}

var Bait = {
	Fishing.BaitEnum.NoBait : {
		"Count" : 0,
		"Unlocked" : true,
	},
	Fishing.BaitEnum.Leaf : {
		"Count" : 0,
		"Unlocked" : true,
	},
	Fishing.BaitEnum.Worm : {
		"Count" : 0,
		"Unlocked" : true,
	},
	Fishing.BaitEnum.Jig : {
		"Count" : 5,
		"Unlocked" : true,
	},
	Fishing.BaitEnum.Cricket : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.Catarpiller : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.Leech : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.CrateAtractor : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.GiantSquidsTentacle : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.WyvernsFeather : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.DevilsTongue : {
		"Count" : 0,
		"Unlocked" : false,
	},
	Fishing.BaitEnum.ShinyWorm : {
		"Count" : 0,
		"Unlocked" : false,
	},
}

var Magic = {
	"Count" : 0,
}

var UnlockedMagicUpgrades = {
	"1" : false,
	"2" : false,
	"3" : false,
	"4" : false,
	"5" : false,
	"6" : false,
	"7" : false,
	"8" : false,
	"9" : false,
	"10" : false,
	"11" : false,
	"12" : false,
	"13" : false,
	"14" : false,
	"15" : false,
	"16" : false,
	"17" : false,
	"18" : false,
	"19" : false,
	"20" : false,
	"21" : false,
	"22" : false,
	"23" : false,
	"24" : false,
	"25" : false,
	"26" : false,
	"27" : false,
	"28" : false,
	"29" : false,
	"30" : false,
}

var UnlockedAchievements = {
	"1" : false,
	"2" : false,
	"3" : false,
}

var GeneralInfo = {
	"SaveName" : false,
	"TimePlayed" : 0,
	"SaveStartedDate" : false,
	"LastTimePlayedDate" : false,
	"LastTimeSaved" : true,
	"MasterVolume" : false,
	"MusicVolume" : false,
	"AchievementCount" : countAchivements(),
	"NumberNotation" : NumberFormatting.NotationTypesEnum.Default
}

var SavesInfo = {
}

func countAchivements():
	var achievementCount = 0
	
	for achievementId in UnlockedAchievements:
		if UnlockedAchievements[achievementId]:
			achievementCount += 1
	
	return achievementCount
