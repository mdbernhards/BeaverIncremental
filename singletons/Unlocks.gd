extends Node

func _process(delta: float) -> void:
	checkForUnlocks()

func checkForUnlocks():
	if SaveData.Resources["Oak"]["Count"] > 5:
		Unlocks["Oak"]["1"]["Unlocked"] = true
	if SaveData.Resources["Oak"]["Count"] > 15:
		Unlocks["Oak"]["2"]["Unlocked"] = true

var Unlocks = {
	"Oak" : {
		"Unlocked" : true,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Apple" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Maple" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Birch" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Spruce" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Chestnut" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Cherry" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Ash" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Cedar" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Mahogany" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Ebony" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Dogwood" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Rosewood" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Ghost Gum" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Dragonwood" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Gold" : {
		"Unlocked" : false,
		"1" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"2" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"3" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"4" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"5" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"6" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"7" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"8" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"9" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"10" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"11" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"12" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"13" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"14" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"15" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"16" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"17" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"18" : {
			"Unlocked" : false,
			"BuyMax" : false,
		},
		"BuyMax" : false,
	},
	"Upgrades" : {
		"ClassicBuyMax" : false,
		"RareBuyMax" : false,
		"MythicBuyMax" : false,
	},
	"Woodcamps" : {
		"Unlocked" : false,
		"BuyMax" : false,
	},
	"Levels" : {
		"Unlocked" : false,
		"BuyMax" : false,
	},
	"Research" : {
		"Unlocked" : false,
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
		"BuyMax" : false, # Have a queue system
	},
	"Market" : {
		"Unlocked" : false,
		"Bots" : {
			"Unlocked" : false,
			"10x Buy" : false,
			"100x Buy" : false,
			"1000x Buy" : false,
		},
	},
	"Magic" : {
		"Ascention" : false,
		"Upgrades" : false,
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
	},
	"Dams" : {
		"Unlocked" : false,
		"Medium Dam" : false,
		"Big Dam" : false,
		"Giant Dam" : false,
	},
	"Achievements" : false,
	"FoS" : false,
	"Fishing" : {
		"Unlocked" : false,
		"Bait" : {
			"1" : false,
			"2" : false,
			"3" : false,
			"4" : false,
			"5" : false,
			"6" : false,
			"7" : false,
			"8" : false,
			"9" : false,
			"WoodBait" : false,
		},
		"Spot" : {
			"1" : false,
			"2" : false,
			"3" : false,
			"4" : false,
			"WoodyLake" : false,
		},
	},
}
