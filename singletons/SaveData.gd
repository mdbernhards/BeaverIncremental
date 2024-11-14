extends Node

var Gold = {
		"Count" : 0,
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
		"10" : false,
		"11" : false,
		"12" : false,
		"13" : false,
		"14" : false,
		"15" : false,
		"16" : false,
		"17" : false,
		"18" : false,
	},
	"Maple" : {
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
	},
	"Birch" : {
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
	},
	"Spruce" : {
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
	},
	"Chestnut" : {
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
	},
	"Cherry" : {
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
	},
	"Ash" : {
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
	},
	"Cedar" : {
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
	},
	"Mahogany" : {
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
	},
	"Ebony" : {
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
	},
	"Dogwood" : {
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
	},
	"Rosewood" : {
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
	},
	"Ghost Gum" : {
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
	},
	"Dragonwood" : {
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
}

var UnlockedMagicUpgrades = {
	"1" : false,
	"2" : false,
	"3" : false,
	"4" : false,
	"5" : false,
	"6" : false,
	"7" : false,
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
}
