extends Node

func getBeaverCost(beaverCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.399, beaverCount) + 0.91 * pow(beaverCount, 3.45)) + beaverCount * 12 - 4
		"Apple" :
			return round(pow(1.35, beaverCount) + 0.5 * pow(beaverCount, 3.61)) + beaverCount * 9 + 9
		"Maple" :
			return round(pow(1.474, beaverCount) + 1.44 * pow(beaverCount, 3.72)) + beaverCount * 21 + 16
		"Birch" :
			return round(pow(1.485, beaverCount) + 2.21 * pow(beaverCount, 3.85)) + beaverCount * 24 + 35
		"Spruce" :
			return round(pow(1.30, beaverCount) + 1.29 * pow(beaverCount, 3.79)) + beaverCount * 20 + 37
		"Chestnut" :
			return round(pow(1.40, beaverCount) + 1.30 * pow(beaverCount, 3.84)) + beaverCount * 25 + 42
		"Cherry" :
			return round(pow(1.30, beaverCount) + 1.35 * pow(beaverCount, 3.89)) + beaverCount * 33 + 44
		"Ash" :
			return round(pow(1.32, beaverCount) + 1.26 * pow(beaverCount, 3.93)) + beaverCount * 50 + 47
		"Cedar" :
			return round(pow(1.22, beaverCount) + 1.35 * pow(beaverCount, 3.96)) + beaverCount * 60 + 47
		"Mahogany" :
			return round(pow(1.21, beaverCount) + 1.29 * pow(beaverCount, 4.03)) + beaverCount * 75 + 52
		"Ebony" :
			return round(pow(1.23, beaverCount) + 1.29 * pow(beaverCount, 4.04)) + beaverCount * 125 + 52
		"Dogwood" :
			return round(pow(1.36, beaverCount) + 1.23 * pow(beaverCount, 4.06)) + beaverCount * 200 + 57
		"Rosewood" :
			return round(pow(1.22, beaverCount) + 1.32 * pow(beaverCount, 4.11)) + beaverCount * 300 + 57
		"Ghost Gum" :
			return round(pow(1.37, beaverCount) + 1.26 * pow(beaverCount, 4.19)) + beaverCount * 400 + 57
		"Dragonwood" :
			return round(pow(1.24, beaverCount) + 1.28 * pow(beaverCount, 4.33)) + beaverCount * 500 + 67

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.61, woodcampCount) + 1.44 * pow(woodcampCount, 2.54)) + woodcampCount * 39 + 69
		"Apple" :
			return round(pow(1.44, woodcampCount) + 1.3 * pow(woodcampCount, 2.9)) + woodcampCount * 75 + 109
		"Maple" :
			return round(pow(1.699, woodcampCount) + 1.19 * pow(woodcampCount, 3.59)) + woodcampCount * 195 + 299
		"Birch" :
			return round(pow(1.71, woodcampCount) + 1.77 * pow(woodcampCount, 3.66)) + woodcampCount * 575 + 1999
		"Spruce" :
			return round(pow(1.21, woodcampCount) + 1.19 * pow(woodcampCount, 2.37)) + woodcampCount * 975 + 6188
		"Chestnut" :
			return round(pow(1.29, woodcampCount) + 1.29 * pow(woodcampCount, 2.37)) + woodcampCount * 4375 + 9423
		"Cherry" :
			return round(pow(1.19, woodcampCount) + 1.29 * pow(woodcampCount, 2.53)) + woodcampCount * 4575 + 9738
		"Ash" :
			return round(pow(1.38, woodcampCount) + 1.3 * pow(woodcampCount, 3.08)) + woodcampCount * 5575 + 10568
		"Cedar" :
			return round(pow(1.24, woodcampCount) + 1.22 * pow(woodcampCount, 3.1)) + woodcampCount * 5775 + 11187
		"Mahogany" :
			return round(pow(1.22, woodcampCount) + 1.31 * pow(woodcampCount, 3.13)) + woodcampCount * 5875 + 11931
		"Ebony" :
			return round(pow(1.37, woodcampCount) + 1.36 * pow(woodcampCount, 3.26)) + woodcampCount * 6175 + 12753
		"Dogwood" :
			return round(pow(1.35, woodcampCount) + 1.33 * pow(woodcampCount, 3.32)) + woodcampCount * 6575 + 13415
		"Rosewood" :
			return round(pow(1.42, woodcampCount) + 1.26 * pow(woodcampCount, 3.57)) + woodcampCount * 6775 + 13957
		"Ghost Gum" :
			return round(pow(1.25, woodcampCount) + 1.19 * pow(woodcampCount, 3.58)) + woodcampCount * 6875 + 13958
		"Dragonwood" :
			return round(pow(1.18, woodcampCount) + 1.38 * pow(woodcampCount, 3.91)) + woodcampCount * 7075 + 14100

func getGoldUpgradeCost(level, upgradeNr): # first number more later, second n third more at the start but later nothing
	match upgradeNr :
		"1" :
			return round(pow(1.36, level) + 2.26 * pow(level, 2.8)) + (level + 1) * 6 + 23
		"2" :
			return round(pow(1.31, level) + 3.5 * pow(level, 2.3)) + (level + 1) * 11 + 28
		"3" :
			return round(pow(1.25, level) + 2.15 * pow(level, 2.3)) + 332 * (level + 1) + 1700
		"4" :
			return round(pow(1.45, level) + 3.5 * pow(level, 3.7)) + (level + 1) * 35 + 64
		"5" :
			return round(pow(1.456, level) + 2.42 * pow(level, 2.96)) + 332 * (level + 1) + 499
		"6" :
			return round(pow(1.443, level) + 3.443 * pow(level, 2.3)) + 32 * (level + 1) * 55 + 16000
		"7" :
			return round(pow(1.5, level) + 4 * pow(level, 2)) + 150 * (level + 1) + 2100
		"8" :
			return round(pow(1.307, level) + 1.438 * pow(level, 2.55)) + 32772 * (level + 1) * 88
		"9" :
			return round(pow(1.381, level) + 1.282 * pow(level, 2.43)) + 266 * (level + 1) * 63 + 50000
		"10" :
			return round(pow(1.373, level) + 1.624 * pow(level, 3.85)) + 552 * (level + 1) * 57 + 25000

func getUpgradeCost(level, woodType, upgradeNr): # first number more later, second n third more at the start but later nothing
	match woodType :
		"Oak" :
			match upgradeNr :
				"1" :
					return round(pow(1.566, level) + 0.63 * pow(level, 3.78)) + level * 39 + 49
				"2" :
					return round(pow(1.345, level) + 3.99 * pow(level, 2.39)) + level * 25 + 59
				"3" :
					return round(pow(1.575, level) + 3.75 * pow(level, 3.76)) + level * 899 + 499
				"4" :
					return round(pow(1.355, level) + 1.65 * pow(level, 3.65)) + level * 900 + 2499
				"5" :
					return round(pow(1.575, level) + 2.35 * pow(level, 3.65)) + level * 749 + 4549
				"6" :
					return round(pow(1.573, level) + 4.05 * pow(level, 4.3)) + level * 55500 + 34999
				"7" :
					return round(pow(1.753, level) + 17.53 * pow(level, 5.55)) + level * 165000 + 79500
				"8" :
					return round(pow(1.107, level) + 1.438 * pow(level, 2.55)) + level * 932772 + 566890
				"9" :
					return round(pow(1.481, level) + 1.282 * pow(level, 2.43)) + level * 1832772 + 3150000
				"10" :
					return round(pow(1.443, level) + 1.624 * pow(level, 3.85)) + level * 9132772 + 19250000
		"Apple" :
			match upgradeNr :
				"1" :
					return round(pow(1.55, level) + 1.99 * pow(level, 3.65)) + level * 33 + 9
				"2" :
					return round(pow(1.45, level) + 1.95 * pow(level, 2.65)) + level * 79 + 39
				"3" :
					return round(pow(1.3, level) + 1.62 * pow(level, 3.03)) + level * 1665 + 899
				"4" :
					return round(pow(1.458, level) + 0.48 * pow(level, 4.49)) + level * 1899 + 2999
				"5" :
					return round(pow(1.476, level) + 1.669 * pow(level, 4.46)) + level * 3950 + 7499
				"6" :
					return round(pow(1.488, level) + 1.7 * pow(level, 2.85)) + level * 7250 + 23999
				"7" :
					return round(pow(1.45, level) + 2.5 * pow(level, 4.1)) + level * 14250 + 55499
				"8" :
					return round(pow(1.141, level) + 1.147 * pow(level, 4.84)) + level * 18128 + 99999
				"9" :
					return round(pow(1.298, level) + 1.375 * pow(level, 2.07)) + level * 55128 + 299999
				"10" :
					return round(pow(1.448, level) + 1.163 * pow(level, 1.84)) + level * 155128 + 499999
		"Maple" :
			match upgradeNr :
				"1" :
					return round(pow(1.65, level) + 3.428 * pow(level, 3.978)) + level * 35 + 9
				"2" :
					return round(pow(1.39, level) + 6.56 * pow(level, 2.29)) + level * 79 + 24
				"3" :
					return round(pow(1.67, level) + 3.37 * pow(level, 4.27)) + level * 2859 + 1989
				"4" :
					return round(pow(1.395, level) + 2.64 * pow(level, 4.21)) + level * 1952 + 6329
				"5" :
					return round(pow(1.32, level) + 2.465 * pow(level, 2.895)) + level * 1222 + 21000
				"6" :
					return round(pow(1.509, level) + 2.107 * pow(level, 4.09)) + level * 3722  + 41000
				"7" :
					return round(pow(1.354, level) + 1.141 * pow(level, 1.67)) + level * 6622  + 75000
				"8" :
					return round(pow(1.396, level) + 1.425 * pow(level, 4.55)) + level * 13522  + 251000
				"9" :
					return round(pow(1.132, level) + 1.102 * pow(level, 4.3)) + level * 26622  + 321000
				"10" :
					return round(pow(1.451, level) + 1.323 * pow(level, 4.31)) + level * 99922  + 921000
		"Birch" :
			match upgradeNr :
				"1" :
					return round(pow(1.401, level) + 1.078 * pow(level, 4.33)) + level * 32 + 9
				"2" :
					return round(pow(1.596, level) + 2.235 * pow(level, 3.5)) + level * 3733 + 2319
				"3" :
					return round(pow(1.477, level) + 3.399 * pow(level, 3.83)) + level * 2165 + 2599
				"4" :
					return round(pow(1.697, level) + 3.213 * pow(level, 3.75)) + level * 6000 + 3499
				"5" :
					return round(pow(1.463, level) + 2.753 * pow(level, 2.25)) + level * 11250 + 24499
				"6" :
					return round(pow(2.192, level) + 4.371 * pow(level, 5.82)) + level * 22250 + 47999
				"7" :
					return round(pow(1.757, level) + 5.312 * pow(level, 2.9)) + level * 86250 + 614499
				"8" :
					return round(pow(1.581, level) + 2.235 * pow(level, 2.42)) + level * 158128 + 1499999
				"9" :
					return round(pow(1.746, level) + 4.399 * pow(level, 2.54)) + level * 428128 + 2699999
				"10" :
					return round(pow(1.559, level) + 1.668 * pow(level, 4.44)) + level * 899922  + 6921000
		"Spruce" :
			match upgradeNr :
				"1" :
					return round(pow(1.111, level) + 1.334 * pow(level, 3.52)) + level * 32 + 9
				"2" :
					return round(pow(1.187, level) + 1.236 * pow(level, 1.74)) + level * 33 + 19
				"3" :
					return round(pow(1.342, level) + 1.157 * pow(level, 2.18)) + level * 265 + 899
				"4" :
					return round(pow(1.142, level) + 1.356 * pow(level, 3.13)) + level * 1000 + 1499
				"5" :
					return round(pow(1.311, level) + 1.230 * pow(level, 3.22)) + level * 1250 + 4499
				"6" :
					return round(pow(1.256, level) + 1.123 * pow(level, 4.25)) + level * 2250 + 7999
				"7" :
					return round(pow(1.103, level) + 1.300 * pow(level, 4.01)) + level * 6250 + 14499
				"8" :
					return round(pow(1.371, level) + 1.223 * pow(level, 3.22)) + level * 18128 + 99999
				"9" :
					return round(pow(1.380, level) + 1.346 * pow(level, 4.25)) + level * 55128 + 299999
				"10" :
					return round(pow(1.150, level) + 1.245 * pow(level, 3.33)) + level * 99922  + 921000
		"Chestnut" :
			match upgradeNr :
				"1" :
					return round(pow(1.143, level) + 1.265 * pow(level, 3.02)) + level * 32 + 9
				"2" :
					return round(pow(1.201, level) + 1.271 * pow(level, 4.54)) + level * 33 + 19
				"3" :
					return round(pow(1.443, level) + 1.592 * pow(level, 2.45)) + level * 265 + 899
				"4" :
					return round(pow(1.410, level) + 1.361 * pow(level, 4.94)) + level * 1000 + 1499
				"5" :
					return round(pow(1.395, level) + 1.172 * pow(level, 3.04)) + level * 1250 + 4499
				"6" :
					return round(pow(1.259, level) + 1.582 * pow(level, 4.2)) + level * 2250 + 7999
				"7" :
					return round(pow(1.431, level) + 1.289 * pow(level, 3.48)) + level * 6250 + 14499
				"8" :
					return round(pow(1.101, level) + 1.570 * pow(level, 4.74)) + level * 18128 + 99999
				"9" :
					return round(pow(1.231, level) + 1.340 * pow(level, 4.91)) + level * 55128 + 299999
				"10" :
					return round(pow(1.252, level) + 1.246 * pow(level, 3.02)) + level * 99922  + 921000
		"Cherry" :
			match upgradeNr :
				"1" :
					return round(pow(1.136, level) + 1.471 * pow(level, 2.2)) + level * 32 + 9
				"2" :
					return round(pow(1.387, level) + 1.302 * pow(level, 4.45)) + level * 33 + 19
				"3" :
					return round(pow(1.490, level) + 1.135 * pow(level, 2.50)) + level * 265 + 899
				"4" :
					return round(pow(1.485, level) + 1.309 * pow(level, 1.94)) + level * 1000 + 1499
				"5" :
					return round(pow(1.282, level) + 1.319 * pow(level, 4.45)) + level * 1250 + 4499
				"6" :
					return round(pow(1.290, level) + 1.540 * pow(level, 2.92)) + level * 2250 + 7999
				"7" :
					return round(pow(1.195, level) + 1.555 * pow(level, 2.63)) + level * 6250 + 14499
				"8" :
					return round(pow(1.137, level) + 1.386 * pow(level, 1.76)) + level * 18128 + 99999
				"9" :
					return round(pow(1.254, level) + 1.250 * pow(level, 3.45)) + level * 55128 + 299999
				"10" :
					return round(pow(1.383, level) + 1.195 * pow(level, 4.56)) + level * 99922  + 921000
		"Ash" :
			match upgradeNr :
				"1" :
					return round(pow(1.170, level) + 1.327 * pow(level, 2.46)) + level * 32 + 9
				"2" :
					return round(pow(1.218, level) + 1.515 * pow(level, 3.46)) + level * 33 + 19
				"3" :
					return round(pow(1.135, level) + 1.167 * pow(level, 3.9)) + level * 265 + 899
				"4" :
					return round(pow(1.499, level) + 1.267 * pow(level, 2.08)) + level * 1000 + 1499
				"5" :
					return round(pow(1.498, level) + 1.355 * pow(level, 3.74)) + level * 1250 + 4499
				"6" :
					return round(pow(1.437, level) + 1.532 * pow(level, 4.63)) + level * 2250 + 7999
				"7" :
					return round(pow(1.457, level) + 1.514 * pow(level, 1.94)) + level * 6250 + 14499
				"8" :
					return round(pow(1.467, level) + 1.328 * pow(level, 4.4)) + level * 18128 + 99999
				"9" :
					return round(pow(1.376, level) + 1.520 * pow(level, 1.94)) + level * 55128 + 299999
				"10" :
					return round(pow(1.320, level) + 1.254 * pow(level, 2.75)) + level * 99922  + 921000
		"Cedar" :
			match upgradeNr :
				"1" :
					return round(pow(1.485, level) + 1.600 * pow(level, 3.98)) + level * 32 + 9
				"2" :
					return round(pow(1.166, level) + 1.446 * pow(level, 4.05)) + level * 33 + 19
				"3" :
					return round(pow(1.494, level) + 1.253 * pow(level, 3.31)) + level * 265 + 899
				"4" :
					return round(pow(1.139, level) + 1.221 * pow(level, 4.74)) + level * 1000 + 1499
				"5" :
					return round(pow(1.455, level) + 1.271 * pow(level, 4.22)) + level * 1250 + 4499
				"6" :
					return round(pow(1.357, level) + 1.207 * pow(level, 1.99)) + level * 2250 + 7999
				"7" :
					return round(pow(1.371, level) + 1.372 * pow(level, 4.15)) + level * 6250 + 14499
				"8" :
					return round(pow(1.361, level) + 1.215 * pow(level, 2.09)) + level * 18128 + 99999
				"9" :
					return round(pow(1.353, level) + 1.384 * pow(level, 2.42)) + level * 55128 + 299999
				"10" :
					return round(pow(1.187, level) + 1.142 * pow(level, 4.11)) + level * 99922  + 921000
		"Mahogany" :
			match upgradeNr :
				"1" :
					return round(pow(1.321, level) + 1.315 * pow(level, 4.78)) + level * 32 + 9
				"2" :
					return round(pow(1.205, level) + 1.303 * pow(level, 1.99)) + level * 33 + 19
				"3" :
					return round(pow(1.342, level) + 1.517 * pow(level, 4.15)) + level * 265 + 899
				"4" :
					return round(pow(1.458, level) + 1.206 * pow(level, 4)) + level * 1000 + 1499
				"5" :
					return round(pow(1.343, level) + 1.471 * pow(level, 2.35)) + level * 1250 + 4499
				"6" :
					return round(pow(1.180, level) + 1.220 * pow(level, 2.32)) + level * 2250 + 7999
				"7" :
					return round(pow(1.293, level) + 1.362 * pow(level, 2.5)) + level * 6250 + 14499
				"8" :
					return round(pow(1.261, level) + 1.380 * pow(level, 3.26)) + level * 18128 + 99999
				"9" :
					return round(pow(1.393, level) + 1.127 * pow(level, 4.11)) + level * 55128 + 299999
				"10" :
					return round(pow(1.296, level) + 1.274 * pow(level, 2.19)) + level * 99922  + 921000
		"Ebony" :
			match upgradeNr :
				"1" :
					return round(pow(1.449, level) + 1.576 * pow(level, 3.04)) + level * 32 + 9
				"2" :
					return round(pow(1.122, level) + 1.486 * pow(level, 4.21)) + level * 33 + 19
				"3" :
					return round(pow(1.313, level) + 1.553 * pow(level, 1.87)) + level * 265 + 899
				"4" :
					return round(pow(1.434, level) + 1.273 * pow(level, 2.44)) + level * 1000 + 1499
				"5" :
					return round(pow(1.28, level) + 1.448 * pow(level, 2)) + level * 1250 + 4499
				"6" :
					return round(pow(1.236, level) + 1.122 * pow(level, 3.33)) + level * 2250 + 7999
				"7" :
					return round(pow(1.223, level) + 1.350 * pow(level, 2.21)) + level * 6250 + 14499
				"8" :
					return round(pow(1.474, level) + 1.122 * pow(level, 4.26)) + level * 18128 + 99999
				"9" :
					return round(pow(1.282, level) + 1.135 * pow(level, 3.64)) + level * 55128 + 299999
				"10" :
					return round(pow(1.479, level) + 1.246 * pow(level, 4.51)) + level * 99922  + 921000
		"Dogwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.254, level) + 1.375 * pow(level, 2.64)) + level * 32 + 9
				"2" :
					return round(pow(1.125, level) + 1.409 * pow(level, 1.64)) + level * 33 + 19
				"3" :
					return round(pow(1.357, level) + 1.556 * pow(level, 4.44)) + level * 265 + 899
				"4" :
					return round(pow(1.122, level) + 1.545 * pow(level, 1.75)) + level * 1000 + 1499
				"5" :
					return round(pow(1.103, level) + 1.302 * pow(level, 3.72)) + level * 1250 + 4499
				"6" :
					return round(pow(1.280, level) + 1.340 * pow(level, 3.46)) + level * 2250 + 7999
				"7" :
					return round(pow(1.424, level) + 1.503 * pow(level, 2.56)) + level * 6250 + 14499
				"8" :
					return round(pow(1.263, level) + 1.556 * pow(level, 4.43)) + level * 18128 + 99999
				"9" :
					return round(pow(1.344, level) + 1.401 * pow(level, 3.75)) + level * 55128 + 299999
				"10" :
					return round(pow(1.436, level) + 1.483 * pow(level, 3.1)) + level * 99922  + 921000
		"Rosewood" :
			match upgradeNr :
				"1" :
					return round(pow(1.297, level) + 1.434 * pow(level, 1.67)) + level * 32 + 9
				"2" :
					return round(pow(1.155, level) + 1.387 * pow(level, 2.55)) + level * 33 + 19
				"3" :
					return round(pow(1.434, level) + 1.501 * pow(level, 4.9)) + level * 265 + 899
				"4" :
					return round(pow(1.477, level) + 1.267 * pow(level, 3.6)) + level * 1000 + 1499
				"5" :
					return round(pow(1.134, level) + 1.470 * pow(level, 1.67)) + level * 1250 + 4499
				"6" :
					return round(pow(1.101, level) + 1.348 * pow(level, 1.88)) + level * 2250 + 7999
				"7" :
					return round(pow(1.306, level) + 1.277 * pow(level, 2.65)) + level * 6250 + 14499
				"8" :
					return round(pow(1.377, level) + 1.533 * pow(level, 3.15)) + level * 18128 + 99999
				"9" :
					return round(pow(1.322, level) + 1.521 * pow(level, 2.55)) + level * 55128 + 299999
				"10" :
					return round(pow(1.455, level) + 1.238 * pow(level, 3.55)) + level * 99922  + 921000
		"Ghost Gum" :
			match upgradeNr :
				"1" :
					return round(pow(1.125, level) + 1.221 * pow(level, 3.44)) + level * 32 + 9
				"2" :
					return round(pow(1.557, level) + 1.508 * pow(level, 4.53)) + level * 33 + 19
				"3" :
					return round(pow(1.505, level) + 1.117 * pow(level, 2.57)) + level * 265 + 899
				"4" :
					return round(pow(1.303, level) + 1.309 * pow(level, 3.44)) + level * 1000 + 1499
				"5" :
					return round(pow(1.331, level) + 1.377 * pow(level, 1.55)) + level * 1250 + 4499
				"6" :
					return round(pow(1.259, level) + 1.478 * pow(level, 2.99)) + level * 2250 + 7999
				"7" :
					return round(pow(1.430, level) + 1.311 * pow(level, 3.1)) + level * 6250 + 14499
				"8" :
					return round(pow(1.387, level) + 1.351 * pow(level, 2.61)) + level * 18128 + 99999
				"9" :
					return round(pow(1.194, level) + 1.358 * pow(level, 2.25)) + level * 55128 + 299999
				"10" :
					return round(pow(1.159, level) + 1.190 * pow(level, 3.56)) + level * 245522  + 344000
		"Dragonwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.463, level) + 1.116 * pow(level, 2.22)) + level * 32 + 9
				"2" :
					return round(pow(1.293, level) + 1.566 * pow(level, 3.26)) + level * 33 + 19
				"3" :
					return round(pow(1.260, level) + 1.286 * pow(level, 2.27)) + level * 265 + 899
				"4" :
					return round(pow(1.593, level) + 1.230 * pow(level, 1.55)) + level * 1000 + 1499
				"5" :
					return round(pow(1.526, level) + 1.527 * pow(level, 2.99)) + level * 1250 + 4499
				"6" :
					return round(pow(1.314, level) + 1.390 * pow(level, 2.1)) + level * 2250 + 7999
				"7" :
					return round(pow(1.133, level) + 1.584 * pow(level, 3.88)) + level * 6250 + 14499
				"8" :
					return round(pow(1.246, level) + 1.400 * pow(level, 4.66)) + level * 18128 + 99999
				"9" :
					return round(pow(1.168, level) + 1.571 * pow(level, 4.1)) + level * 55128 + 299999
				"10" :
					return round(pow(1.279, level) + 1.254 * pow(level, 2.4)) + level * 123244  + 1111000
		"Gold" :
			match upgradeNr :
				"1" :
					return round(pow(1.348, level) + 1.154 * pow(level, 2.8)) + level * 32 + 9
				"2" :
					return round(pow(1.242, level) + 1.181 * pow(level, 2.8)) + level * 33 + 19
				"3" :
					return round(pow(1.482, level) + 1.538 * pow(level, 2.8)) + level * 265 + 899
				"4" :
					return round(pow(1.263, level) + 1.276 * pow(level, 2.8)) + level * 1000 + 1499
				"5" :
					return round(pow(1.141, level) + 1.297 * pow(level, 2.8)) + level * 1250 + 4499
				"6" :
					return round(pow(1.573, level) + 1.195 * pow(level, 2.8)) + level * 2250 + 7999
				"7" :
					return round(pow(1.174, level) + 1.113 * pow(level, 2.8)) + level * 6250 + 14499
				"8" :
					return round(pow(1.416, level) + 1.133 * pow(level, 2.8)) + level * 18128 + 99999
				"9" :
					return round(pow(1.105, level) + 1.381 * pow(level, 2.8)) + level * 55922 + 299999
				"10" :
					return round(pow(1.417, level) + 1.337 * pow(level, 2.8)) + level * 69922  + 721000

func getBotCost(botCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.227, botCount) + 1.123 * pow(botCount, 2.44)) + botCount * 1250 + 4999
		"Apple" :
			return round(pow(1.194, botCount) + 1.488 * pow(botCount, 2.52)) + botCount * 2250 + 7999
		"Maple" :
			return round(pow(1.220, botCount) + 1.398 * pow(botCount, 2.59)) + botCount * 4250 + 12999
		"Birch" :
			return round(pow(1.108, botCount) + 1.126 * pow(botCount, 2.64)) + botCount * 9250 + 17999
		"Spruce" :
			return round(pow(1.126, botCount) + 1.248 * pow(botCount, 2.66)) + botCount * 14250 + 27999
		"Chestnut" :
			return round(pow(1.337, botCount) + 1.102 * pow(botCount, 2.69)) + botCount * 22250 + 43999
		"Cherry" :
			return round(pow(1.429, botCount) + 1.243 * pow(botCount, 2.74)) + botCount * 28250 + 67999
		"Ash" :
			return round(pow(1.494, botCount) + 1.405 * pow(botCount, 2.77)) + botCount * 32250 + 86999
		"Cedar" :
			return round(pow(1.131, botCount) + 1.140 * pow(botCount, 2.80)) + botCount * 48250 + 97999
		"Mahogany" :
			return round(pow(1.128, botCount) + 1.333 * pow(botCount, 2.84)) + botCount * 62250 + 147999
		"Ebony" :
			return round(pow(1.470, botCount) + 1.535 * pow(botCount, 2.86)) + botCount * 82250 + 217999
		"Dogwood" :
			return round(pow(1.394, botCount) + 1.581 * pow(botCount, 2.89)) + botCount * 112250 + 337999
		"Rosewood" :
			return round(pow(1.590, botCount) + 1.319 * pow(botCount, 2.92)) + botCount * 152250 + 457999
		"Ghost Gum" :
			return round(pow(1.301, botCount) + 1.415 * pow(botCount, 2.95)) + botCount * 222250 + 777999
		"Dragonwood" :
			return round(pow(1.173, botCount) + 1.334 * pow(botCount, 2.98)) + botCount * 352250 + 999999
