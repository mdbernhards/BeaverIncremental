extends Node

var Gold = {
		"Count" : 0,
	}

var Magic = {
		"Count" : 10,
	}

var Resources = {
	"Oak" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Apple" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Maple" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Birch" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Spruce" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Chestnut" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Cherry" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Ash" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Cedar" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Mahogany" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Ebony" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Dogwood" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Rosewood" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Ghost Gum" : {
		"Count" : 0,
		"Level" : 1,
		"Woodcamps": 0,
		"Production" : 100, # %
		"MarketSellPercentage": 50, # %
		"BotSellPercentage": 100, # %
		"Bots": 0,
	},
	"Dragonwood" : {
		"Count" : 0,
		"Level" : 1,
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
	"1" : false,
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
	Fishing.FishEnum.Boot : 0,
	Fishing.FishEnum.Seaweed : 0,
	Fishing.FishEnum.ColaBottle : 0,
	Fishing.FishEnum.Catfish : 0,
	Fishing.FishEnum.GoldPotI : 0,
	Fishing.FishEnum.GoldPotII : 0,
	Fishing.FishEnum.GoldPotIII : 0,
	Fishing.FishEnum.GoldFish : 0,
	Fishing.FishEnum.MagicPotI : 0,
	Fishing.FishEnum.MagicPotII : 0,
	Fishing.FishEnum.MagicPotIII : 0,
	Fishing.FishEnum.MagicFish : 0,
	Fishing.FishEnum.SpeedFish : 0,
	Fishing.FishEnum.StorageBox : 0,
	Fishing.FishEnum.ResearchFish : 0,
	Fishing.FishEnum.WoodFish : 0,
	Fishing.FishEnum.DamFish : 0,
	Fishing.FishEnum.LuckyFish : 0,
	Fishing.FishEnum.CrateFish : 0,
	Fishing.FishEnum.BotFish : 0,
	Fishing.FishEnum.IceFish : 0,
	Fishing.FishEnum.BaitFish : 0,
	Fishing.FishEnum.ElectricEal : 0,
	Fishing.FishEnum.ElectricJellyfish : 0,
	Fishing.FishEnum.ElectricSponge : 0,
	Fishing.FishEnum.ConstructionShark : 0,
	Fishing.FishEnum.SalmonLumberJack : 0,
	Fishing.FishEnum.AscentionFish : 0,
	Fishing.FishEnum.DescentionFish : 0,
	Fishing.FishEnum.BigFish : 0,
	Fishing.FishEnum.Clownfish : 0,
	Fishing.FishEnum.Stick : 0,
	Fishing.FishEnum.OakCrate : 0,
	Fishing.FishEnum.AppleCrate : 0,
	Fishing.FishEnum.MapleCrate : 0,
	Fishing.FishEnum.BirchCrate : 0,
	Fishing.FishEnum.SpruceCrate : 0,
	Fishing.FishEnum.ChestnutCrate : 0,
	Fishing.FishEnum.CherryCrate : 0,
	Fishing.FishEnum.AshCrate : 0,
	Fishing.FishEnum.CedarCrate : 0,
	Fishing.FishEnum.MahoganyCrate : 0,
	Fishing.FishEnum.EbonyCrate : 0,
	Fishing.FishEnum.DogwoodCrate : 0,
	Fishing.FishEnum.RosewoodCrate : 0,
	Fishing.FishEnum.GhostGumCrate : 0,
	Fishing.FishEnum.DragonwoodCrate : 0,
	Fishing.FishEnum.BlueWhale : 0,
	Fishing.FishEnum.MultiplyingFish : 0,
}

func countAchivements():
	var achievementCount = 0
	
	for achievementId in UnlockedAchievements:
		if UnlockedAchievements[achievementId]:
			achievementCount += 1
	
	return achievementCount
