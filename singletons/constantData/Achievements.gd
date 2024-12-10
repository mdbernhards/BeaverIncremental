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
		"Name" : "First",
		"Description" : "First",
	},
	"2" : {
		"Name" : "First",
		"Description" : "First",
	},
	"3" : {
		"Name" : "First",
		"Description" : "First",
	},
	"4" : {
		"Name" : "First",
		"Description" : "First",
	},
	"5" : {
		"Name" : "First",
		"Description" : "First",
	},
	"6" : {
		"Name" : "First",
		"Description" : "First",
	},
	"7" : {
		"Name" : "First",
		"Description" : "First",
	},
	"8" : {
		"Name" : "First",
		"Description" : "First",
	},
	"9" : {
		"Name" : "First",
		"Description" : "First",
	},
	"10" : {
		"Name" : "First",
		"Description" : "First",
	},
}
