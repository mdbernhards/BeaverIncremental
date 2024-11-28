extends Node

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.26, woodcampCount) + 1.21 * pow(woodcampCount, 2.68)) + 6
		"Apple" :
			return round(pow(1.32, woodcampCount) + 1.26 * pow(woodcampCount, 2.64)) + 13
		"Maple" :
			return round(pow(1.37, woodcampCount) + 1.34 * pow(woodcampCount, 2.59)) + 15
		"Birch" :
			return round(pow(1.30, woodcampCount) + 1.21 * pow(woodcampCount, 2.83)) + 20
		"Spruce" :
			return round(pow(1.30, woodcampCount) + 1.29 * pow(woodcampCount, 2.77)) + 23
		"Chestnut" :
			return round(pow(1.40, woodcampCount) + 1.30 * pow(woodcampCount, 2.72)) + 23
		"Cherry" :
			return round(pow(1.30, woodcampCount) + 1.35 * pow(woodcampCount, 2.42)) + 25
		"Ash" :
			return round(pow(1.32, woodcampCount) + 1.26 * pow(woodcampCount, 2.84)) + 25
		"Cedar" :
			return round(pow(1.22, woodcampCount) + 1.35 * pow(woodcampCount, 2.59)) + 27
		"Mahogany" :
			return round(pow(1.21, woodcampCount) + 1.29 * pow(woodcampCount, 2.75)) + 29
		"Ebony" :
			return round(pow(1.23, woodcampCount) + 1.29 * pow(woodcampCount, 2.48)) + 41
		"Dogwood" :
			return round(pow(1.36, woodcampCount) + 1.23 * pow(woodcampCount, 2.94)) + 43
		"Rosewood" :
			return round(pow(1.22, woodcampCount) + 1.32 * pow(woodcampCount, 2.43)) + 45
		"Ghost Gum" :
			return round(pow(1.37, woodcampCount) + 1.26 * pow(woodcampCount, 2.67)) + 46
		"Dragonwood" :
			return round(pow(1.24, woodcampCount) + 1.28 * pow(woodcampCount, 2.59)) + 50

func getLevelCost(level, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.32, level) + 1.27 * pow(level, 2.21)) + 4
		"Apple" :
			return round(pow(1.31, level) + 1.26 * pow(level, 2.24)) + 21
		"Maple" :
			return round(pow(1.26, level) + 1.42 * pow(level, 2.26)) + 22
		"Birch" :
			return round(pow(1.31, level) + 1.33 * pow(level, 2.36)) + 23
		"Spruce" :
			return round(pow(1.21, level) + 1.19 * pow(level, 2.37)) + 26
		"Chestnut" :
			return round(pow(1.29, level) + 1.29 * pow(level, 2.37)) + 27
		"Cherry" :
			return round(pow(1.19, level) + 1.29 * pow(level, 2.53)) + 28
		"Ash" :
			return round(pow(1.38, level) + 1.3 * pow(level, 3.08)) + 34
		"Cedar" :
			return round(pow(1.24, level) + 1.22 * pow(level, 3.1)) + 35
		"Mahogany" :
			return round(pow(1.22, level) + 1.31 * pow(level, 3.13)) + 25
		"Ebony" :
			return round(pow(1.37, level) + 1.36 * pow(level, 3.26)) + 39
		"Dogwood" :
			return round(pow(1.35, level) + 1.33 * pow(level, 3.32)) + 40
		"Rosewood" :
			return round(pow(1.42, level) + 1.26 * pow(level, 3.57)) + 40
		"Ghost Gum" :
			return round(pow(1.25, level) + 1.19 * pow(level, 3.58)) + 49
		"Dragonwood" :
			return round(pow(1.18, level) + 1.38 * pow(level, 3.91)) + 50

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
