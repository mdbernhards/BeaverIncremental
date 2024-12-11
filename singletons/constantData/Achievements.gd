extends Node

var Achievements = {
	"1" : {
		"Name" : "Unlock 5 wood types",
		"Description" : "First",
	},
	"2" : {
		"Name" : "Unlock 10 wood types",
		"Description" : "First",
	},
	"3" : {
		"Name" : "Unlock all wood types",
		"Description" : "First",
	},
	"4" : {
		"Name" : "click on this achievement",
		"Description" : "First",
	},
	"5" : {
		"Name" : "Unlocked Bots",
		"Description" : "First",
	},
	"6" : {
		"Name" : "Unlocked Dam construction",
		"Description" : "First",
	},
	"7" : {
		"Name" : "Unlocked Fishing",
		"Description" : "First",
	},
	"8" : {
		"Name" : "Unlocked fishing spot 1",
		"Description" : "First",
	},
	"9" : {
		"Name" : "Unlocked fishing spot 2",
		"Description" : "First",
	},
	"10" : {
		"Name" : "Unlocked fishing spot 3",
		"Description" : "First",
	},
	"11" : {
		"Name" : "Unlocked fishing spot 4",
		"Description" : "First",
	},
	"12" : {
		"Name" : "Unlocked fishing spot 5",
		"Description" : "First",
	},
	"13" : {
		"Name" : "Have 100 woodcamps",
		"Description" : "First",
	},
	"14" : {
		"Name" : "Have 1000 woodcamps",
		"Description" : "First",
	},
	"15" : {
		"Name" : "Have 10000 woodcamps",
		"Description" : "First",
	},
	"16" : {
		"Name" : "Have 100000 woodcamps",
		"Description" : "First",
	},
	"17" : {
		"Name" : "Have 10^6 woodcamps",
		"Description" : "First",
	},
	"18" : {
		"Name" : "Have 10^7 woodcamps",
		"Description" : "First",
	},
	"19" : {
		"Name" : "Have 10^8 woodcamps",
		"Description" : "First",
	},
	"20" : {
		"Name" : "Have 10^9 woodcamps",
		"Description" : "First",
	},
	"21" : {
		"Name" : "Have 10^10 woodcamps",
		"Description" : "First",
	},
	"22" : {
		"Name" : "Have 100 beavers",
		"Description" : "First",
	},
	"23" : {
		"Name" : "Have 1000 beavers",
		"Description" : "First",
	},
	"24" : {
		"Name" : "Have 10000 beavers",
		"Description" : "First",
	},
	"25" : {
		"Name" : "Have 100000 beavers",
		"Description" : "First",
	},
	"26" : {
		"Name" : "24 h played",
		"Description" : "First",
	},
	"27" : {
		"Name" : "Total wood produced 10^8",
		"Description" : "First",
	},
	"28" : {
		"Name" : "Total wood produced 10^9",
		"Description" : "First",
	},
	"29" : {
		"Name" : "Total wood produced 10^10",
		"Description" : "First",
	},
	"30" : {
		"Name" : "Total wood produced 10^11",
		"Description" : "First",
	},
	"31" : {
		"Name" : "Total wood produced 10^12",
		"Description" : "First",
	},
	"32" : {
		"Name" : "Total wood produced 10^13",
		"Description" : "First",
	},
	"33" : {
		"Name" : "Total wood produced 10^14",
		"Description" : "First",
	},
	"34" : {
		"Name" : "Total wood produced 10^15",
		"Description" : "First",
	},
	"35" : {
		"Name" : "Construct the small dam",
		"Description" : "First",
	},
	"36" : {
		"Name" : "Construct medium dam",
		"Description" : "First",
	},
	"37" : {
		"Name" : "Construct Big Dam",
		"Description" : "First",
	},
	"38" : {
		"Name" : "Construct Giant Dam / Mega Dam",
		"Description" : "First",
	},
	"39" : {
		"Name" : "Sell all the produced wood with bots",
		"Description" : "First",
	},
	"40" : {
		"Name" : "Find electric eal",
		"Description" : "First",
	},
	"41" : {
		"Name" : "Find Giant squid",
		"Description" : "First",
	},
	"42" : {
		"Name" : "Unlock all baits",
		"Description" : "First",
	},
	"43" : {
		"Name" : "Unlocked fishing spot 1",
		"Description" : "First",
	},
	"44" : {
		"Name" : "Unlocked fishing spot 2",
		"Description" : "First",
	},
	"45" : {
		"Name" : "Unlocked fishing spot 3",
		"Description" : "First",
	},
	"46" : {
		"Name" : "Unlocked fishing spot 4",
		"Description" : "First",
	},
	"47" : {
		"Name" : "Unlocked fishing spot 5",
		"Description" : "First",
	},
	"48" : {
		"Name" : "gold gain per sec +1000",
		"Description" : "First",
	},
	"49" : {
		"Name" : "gold gain per sec +10000",
		"Description" : "First",
	},
	"50" : {
		"Name" : "gold gain per sec +190000",
		"Description" : "First",
	},
	"51" : {
		"Name" : "gold gain per sec +2800000",
		"Description" : "First",
	},
	"52" : {
		"Name" : "gold gain per sec +37000000",
		"Description" : "First",
	},
	"53" : {
		"Name" : "gold gain per sec +460000000",
		"Description" : "First",
	},
	"54" : {
		"Name" : "Ascend 1 time",
		"Description" : "First",
	},
	"55" : {
		"Name" : "Ascend 5 times",
		"Description" : "First",
	},
	"56" : {
		"Name" : "Ascend 25 times",
		"Description" : "First",
	},
	"57" : {
		"Name" : "Ascend 75 times",
		"Description" : "First",
	},
	"58" : {
		"Name" : "Ascend 150 times",
		"Description" : "First",
	},
	"59" : {
		"Name" : "Click 1 time",
		"Description" : "First",
	},
	"60" : {
		"Name" : "Why Are We Clicking?",
		"Description" : "Manually click 10,000 times in one session",
	},
	"61" : {
		"Name" : "All upgrades lvl 100",
		"Description" : "First",
	},
	"62" : {
		"Name" : "Click all buttons in the game",
		"Description" : "First",
	},
	"63" : {
		"Name" : "Buy all magic upgrades",
		"Description" : "First",
	},
}

var FeatsOfStrength = {
	"1" : {
		"Name" : "Total Beavers",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "100 Beavers",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "1000 Beavers",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "10000 Beavers",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "50000 Beavers",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "250000 Beavers",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "1000000 Beavers",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "10000000 Beavers",
				"Unlocked" = false,
			},
		},
	}, 
	"2" : {
		"Name" : "Total Woodcamps", # Don't Reset on Ascension
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "100 Woodcamps",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "1000 Woodcamps",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "10000 Woodcamps",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "50000 Woodcamps",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "250000 Woodcamps",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "1000000 Woodcamps",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "10000000 Woodcamps",
				"Unlocked" = false,
			},
		},
	},
	"3" : {
		"Name" : "Total Wood Gained",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "100k",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "1m",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "1t",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "10^12",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "10^15",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "10^18",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "10^21",
				"Unlocked" = false,
			},
		},
	},
	"4" : {
		"Name" : "Total Wood Sold With Bots",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "10k",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "100k",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "1b",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "10^11",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "10^14",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "10^17",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "10^20",
				"Unlocked" = false,
			},
		},
	},
	"5" : {
		"Name" : "Total Gold gained",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "10k",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "100k",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "1m",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "10^9",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "10^11",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "10^14",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "10^16",
				"Unlocked" = false,
			},
		},
	},
	"6" : {
		"Name" : "Gold Gain Per Second",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1k",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "100k",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "100m",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "1t",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "10^12",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "10^14",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "10^16",
				"Unlocked" = false,
			},
		},
	},
	"7" : {
		"Name" : "Total Reaserch Done",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "20",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "60",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "130",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "250",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "400",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "750",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "1000",
				"Unlocked" = false,
			},
		},
	},
	"8" : {
		"Name" : "Total Upgrades bought",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "500",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "2500",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "5000",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "10000",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "20000",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "30000",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "50000",
				"Unlocked" = false,
			},
		},
	},
	"9" : {
		"Name" : "Total Bots Bought",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "100",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "400",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "950",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "2000",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "3000",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "5000",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "7500",
				"Unlocked" = false,
			},
		},
	},
	"10" : {
		"Name" : "Times Ascended",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "3",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "10",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "20",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "35",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "50",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "75",
				"Unlocked" = false,
			},
		},
	},
	"11" : {
		"Name" : "Magic Upgrades Bought",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "5",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "10",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "15",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "20",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "25",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "30",
				"Unlocked" = false,
			},
		},
	},
	"12" : {
		"Name" : "Total Magic Gathered",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "15",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "100",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "1000",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "10000",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "50000",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "250000",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "1000000",
				"Unlocked" = false,
			},
		},
	},
	"13" : {
		"Name" : "Total Dams Built",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "5",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "25",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "80",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "200",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "500",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "1250",
				"Unlocked" = false,
			},
		},
	},
	"14" : {
		"Name" : "Fish types caught",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "10",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "20",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "30",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "40",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "50",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "70",
				"Unlocked" = false,
			},
		},
	},
	"15" : {
		"Name" : "Total Times Fished",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "35",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "75",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "125",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "250",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "500",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "1000",
				"Unlocked" = false,
			},
		},
	},
	"16" : {
		"Name" : "Times clicked",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "10000",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "30000",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "60000",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "100000",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "150000",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "210000",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "300000",
				"Unlocked" = false,
			},
		},
	},
	"17" : {
		"Name" : "Time played",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "5h",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "10h",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "20h",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "30h",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "50h",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "70h",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "100h",
				"Unlocked" = false,
			},
		},
	},
	"18" : {
		"Name" : "Achievements Unlocked",
		"Description" : "First",
		"Stages" : {
			"1" : {
				"Name" = "1",
				"Unlocked" = false,
			},
			"2" : {
				"Name" = "10",
				"Unlocked" = false,
			},
			"3" : {
				"Name" = "20",
				"Unlocked" = false,
			},
			"4" : {
				"Name" = "30",
				"Unlocked" = false,
			},
			"5" : {
				"Name" = "40",
				"Unlocked" = false,
			},
			"6" : {
				"Name" = "50",
				"Unlocked" = false,
			},
			"7" : {
				"Name" = "60",
				"Unlocked" = false,
			},
		},
	},
}
