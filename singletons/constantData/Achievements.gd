extends Node

var Achievements = {
	"1" : {
		"Name" : "Have 250k Oak",
		"Description" : "Collect 250k Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > 250000,
	},
	"2" : {
		"Name" : "Have 1m Oak",
		"Description" : "Collect 1m Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 6),
	},
	"3" : {
		"Name" : "Have 10m Oak",
		"Description" : "Collect 10m Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 7),
	},
	"4" : {
		"Name" : "Have 10^9 Oak",
		"Description" : "Collect 10^9 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 9),
	},
	"5" : {
		"Name" : "Have 10^13 Oak",
		"Description" : "Collect 10^13 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 13),
	},
	"6" : {
		"Name" : "Have 10^17 Oak",
		"Description" : "Collect 10^17 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 17),
	},
	"7" : {
		"Name" : "Have 10^23 Oak",
		"Description" : "Collect 10^23 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 23),
	},
	"8" : {
		"Name" : "Have 10^29 Oak",
		"Description" : "Collect 10^29 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 29),
	},
	"9" : {
		"Name" : "Have 10^6 Apple",
		"Description" : "Collect 10^6 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 6),
	},
	"10" : {
		"Name" : "Have 10^8 Apple",
		"Description" : "Collect 10^8 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 8),
	},
	"11" : {
		"Name" : "Have 10^10 Apple",
		"Description" : "Collect 10^10 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 10),
	},
	"12" : {
		"Name" : "Have 10^13 Apple",
		"Description" : "Collect 10^13 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 13),
	},
	"13" : {
		"Name" : "Have 10^15 Apple",
		"Description" : "Collect 10^15 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 15),
	},
	"14" : {
		"Name" : "Have 10^20 Apple",
		"Description" : "Collect 10^20 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 20),
	},
	"15" : {
		"Name" : "Have 10^25 Apple",
		"Description" : "Collect 10^25 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 25),
	},
	"16" : {
		"Name" : "Have 10^4 Maple",
		"Description" : "Collect 10^4 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 4),
	},
	"17" : {
		"Name" : "Have 10^7 Maple",
		"Description" : "Collect 10^7 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 7),
	},
	"18" : {
		"Name" : "Have 10^11 Maple",
		"Description" : "Collect 10^11 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 11),
	},
	"19" : {
		"Name" : "Have 10^15 Maple",
		"Description" : "Collect 10^15 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 15),
	},
	"20" : {
		"Name" : "Have 10^18 Maple",
		"Description" : "Collect 10^18 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 18),
	},
	"21" : {
		"Name" : "Have 10^24 Maple",
		"Description" : "Collect 10^24 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 24),
	},
	"22" : {
		"Name" : "Have 10^26 Maple",
		"Description" : "Collect 10^26 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 26),
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
