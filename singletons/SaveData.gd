extends Node

# Don't reset Magic, FoS and Achievements, and others with upgrades

var OriginalGold
var OriginalResources
var OriginalUpgrades
var OriginalUnlockedResearch
var OriginalUnlockedMagicUpgrades
var OriginalUnlockedDams
var OriginalCaughtFish
var OriginalBait

func _ready():
	getOriginalValues()

func getOriginalValues():
	OriginalGold = Gold.duplicate(true)
	OriginalResources = Resources.duplicate(true)
	OriginalUpgrades = Upgrades.duplicate(true)
	OriginalUnlockedResearch = UnlockedResearch.duplicate(true)
	OriginalUnlockedMagicUpgrades = UnlockedMagicUpgrades.duplicate(true)
	OriginalUnlockedDams = UnlockedDams.duplicate(true)
	OriginalCaughtFish = CaughtFish.duplicate(true)
	OriginalBait = Bait.duplicate(true)

func resetValues():
	Gold = OriginalGold.duplicate(true)
	Resources = OriginalResources.duplicate(true)
	Upgrades = OriginalUpgrades.duplicate(true)
	UnlockedResearch = OriginalUnlockedResearch.duplicate(true)
	UnlockedMagicUpgrades = OriginalUnlockedMagicUpgrades.duplicate(true)
	UnlockedDams = OriginalUnlockedDams.duplicate(true)
	CaughtFish = OriginalCaughtFish.duplicate(true)
	Bait = OriginalBait.duplicate(true)
	
	CalculateValues.calculateAllValues()
	get_tree().get_first_node_in_group("ResearchSection").resetResearch()

var Gold = {
	"Count" : 9999999999,
}

var Magic = {
	"Count" : 10,
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

var TestUnlockedResearch = {
	"1" : true,
	"2" : true,
	"3" : true,
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
	"31" : false,
	"32" : false,
	"33" : false,
	"34" : false,
	"35" : false,
	"36" : false,
	"37" : false,
	"38" : false,
	"39" : false,
	"40" : false,
	"41" : false,
	"42" : false,
	"43" : false,
	"44" : false,
	"45" : false,
	"46" : false,
	"47" : false,
	"48" : false,
	"49" : false,
	"50" : false,
	"51" : false,
	"52" : false,
	"53" : false,
	"54" : false,
	"55" : false,
	"56" : false,
	"57" : false,
	"58" : false,
	"59" : false,
	"60" : false,
	"61" : false,
	"62" : false,
	"63" : false,
	"64" : false,
	"65" : false,
	"65b" : false,
	"66" : false,
	"67" : false,
	"68" : false,
	"69" : false,
	"70" : false,
	"71" : false,
}

var TestResources = {
	"Oak" : {
		"Count" : 1000,
		"Beavers" : 20,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Apple" : {
		"Count" : 3000,
		"Beavers" : 7,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Maple" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Birch" : {
		"Count" : 0,
		"Beavers" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
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

var TestUpgrades = {
	"Oak" : {
		"1" : {
			"Level" : 11,
		},
		"2" :  {
			"Level" : 13,
		},
		"3" :  {
			"Level" : 0,
		},
		"4" :  {
			"Level" : 6,
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

var UnlockedResearch = {
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
	"31" : false,
	"32" : false,
	"33" : false,
	"34" : false,
	"35" : false,
	"36" : false,
	"37" : false,
	"38" : false,
	"39" : false,
	"40" : false,
	"41" : false,
	"42" : false,
	"43" : false,
	"44" : false,
	"45" : false,
	"46" : false,
	"47" : false,
	"48" : false,
	"49" : false,
	"50" : false,
	"51" : false,
	"52" : false,
	"53" : false,
	"54" : false,
	"55" : false,
	"56" : false,
	"57" : false,
	"58" : false,
	"59" : false,
	"60" : false,
	"61" : false,
	"62" : false,
	"63" : false,
	"64" : false,
	"65" : false,
	"65b" : false,
	"66" : false,
	"67" : false,
	"68" : false,
	"69" : false,
	"70" : false,
	"71" : false,
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
	"1" : true,
	"2" : false,
	"3" : false,
	"4" : false,
	"5" : false,
	"6" : false,
	"7" : false,
}

var UnlockedFeatsOfStrength = {
	"1" : false,
	"2" : false,
	"3" : false,
	"4" : false,
	"5" : false,
	"6" : false,
	"7" : false,
}

var UnlockedDams = {
	"1" : false,
	"2" : false,
	"3" : false,
	"4" : false,
}

var GeneralInfo = {
	"SaveName" : false,
	"TimePlayed" : false,
	"SaveStartedDate" : false,
	"LastTimePlayedDate" : false,
	"LastTimeSaved" : true,
	"MasterVolume" : false,
	"MusicVolume" : false,
	"AchievementCount" : countAchivements(),
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

func countAchivements():
	var achievementCount = 0
	
	for achievementId in UnlockedAchievements:
		if UnlockedAchievements[achievementId]:
			achievementCount += 1
	
	return achievementCount
