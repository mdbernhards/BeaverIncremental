extends Node

var Upgrades = {
	"Oak" : {
		"1" : {
			"Name" : "+Oak Per Click",
			"Description" : "Increases Oak wood gathered per click by 1",
			"Formula" : "idk",
		},
		"2" :  {
			"Name" : "+Oak Storage",
			"Description" : "Increases Oak wood storage capacity by 10",
			"Formula" : "idk",
		},
		"3" :  {
			"Name" : "Double Storage",
			"Description" : "Doubles storage capacity",
			"Formula" : "idk",
		},
		"4" :  {
			"Name" : "Better Wood Click",
			"Description" : "Increases wood gathered per click by an additional 1",
			"Formula" : "idk",
		},
		"5" :  {
			"Name" : "Unlock Apple Wood",
			"Description" : "Unlocks Apple wood for production",
			"Formula" : "idk",
		},
		"6" :  {
			"Name" : "+WPS Oak Woodcamps",
			"Description" : "",
			"Formula" : "idk",
		},
		"7" :  {
			"Name" : "Increase WPS",
			"Description" : "",
			"Formula" : "idk",
		},
		"8" :  {
			"Name" : "Faster Research",
			"Description" : "",
			"Formula" : "idk",
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
			"Name" : "Apple Per Click",
			"Description" : "Increases wood gathered per click by 2",
			"Formula" : "idk",
		},
		"2" :  {
			"Name" : "Apple Storage",
			"Description" : "",
			"Formula" : "idk",
		},
		"3" :  {
			"Name" : "Increase Oak Per Click",
			"Description" : "",
			"Formula" : "idk",
		},
		"4" :  {
			"Name" : "Woodcamps +WPS",
			"Description" : "",
			"Formula" : "idk",
		},
		"5" :  {
			"Name" : "Improve Storage Upgarade",
			"Description" : "",
			"Formula" : "idk",
		},
		"6" :  {
			"Name" : "Unlock Research",
			"Description" : "Unlocks Research",
			"Formula" : "idk",
		},
		"7" :  {
			"Name" : "Better Apple Click",
			"Description" : "",
			"Formula" : "idk",
		},
		"8" :  {
			"Name" : "Increase WPS", # based on WPC
			"Description" : "",
			"Formula" : "idk",
		},
		"9" :  {
			"Name" : "Lower woodcamp costs",
			"Description" : "",
			"Formula" : "idk",
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

func getUpgradeCost(level, woodType, upgradeNr):
	match woodType :
		"Oak" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.29, level) + 1.3 * pow(level, 1.8)) + 22
				"3" :
					return round(pow(1.40, level) + 0.8 * pow(level, 2)) + 7
				"4" :
					return round(pow(1.24, level) + 2 * pow(level, 2.2)) + 7
				"5" :
					return 1
				"6" :
					return round(pow(1.32, level) + 2.5 * pow(level, 1.9))
				"7" :
					10000 + level * 2500
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Apple" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Maple" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Birch" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Spruce" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Chestnut" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Cherry" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Ash" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Cedar" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Mahogany" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Ebony" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Dogwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Rosewood" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Ghost Gum" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Dragonwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"2" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"3" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"4" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"5" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"6" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"7" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"8" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"9" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"10" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"11" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"12" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"13" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"14" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"15" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"16" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"17" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
				"18" :
					return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
