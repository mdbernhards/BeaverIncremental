extends Node

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 4
		"Apple" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Maple" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Birch" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Spruce" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Chestnut" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Cherry" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Ash" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Cedar" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Mahogany" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Ebony" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Dogwood" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Rosewood" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Ghost Gum" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7
		"Dragonwood" :
			return round(pow(1.28, woodcampCount) + 1.3 * pow(woodcampCount, 2.8)) + 7

func getLevelCost(level, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 3
		"Apple" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Maple" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Birch" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Spruce" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Chestnut" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Cherry" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Ash" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Cedar" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Mahogany" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Ebony" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Dogwood" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Rosewood" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Ghost Gum" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7
		"Dragonwood" :
			return round(pow(1.28, level) + 1.3 * pow(level, 2.8)) + 7

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
					return 10000 + level * 2500
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
		"Gold" :
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

func getBotCost(botCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 1
		"Apple" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 2
		"Maple" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 3
		"Birch" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 4
		"Spruce" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 5
		"Chestnut" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 6
		"Cherry" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 7
		"Ash" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 888
		"Cedar" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 9
		"Mahogany" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 111
		"Ebony" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 137
		"Dogwood" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 167
		"Rosewood" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 1127
		"Ghost Gum" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 2222
		"Dragonwood" :
			return round(pow(1.28, botCount) + 1.3 * pow(botCount, 2.8)) + 3333
