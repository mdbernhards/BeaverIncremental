extends Node

func getBeaverCost(beaverCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.375, beaverCount) + 1.294 * pow(beaverCount, 3.2)) + beaverCount * 6 + 1
		"Apple" :
			return round(pow(1.35, beaverCount) + 1.277 * pow(beaverCount, 2.96)) + beaverCount * 8 + 9
		"Maple" :
			return round(pow(1.374, beaverCount) + 1.34 * pow(beaverCount, 3.19)) + beaverCount * 11 + 17
		"Birch" :
			return round(pow(1.30, beaverCount) + 1.21 * pow(beaverCount, 2.83)) + beaverCount * 15 + 34
		"Spruce" :
			return round(pow(1.30, beaverCount) + 1.29 * pow(beaverCount, 2.77)) + beaverCount * 20 + 36
		"Chestnut" :
			return round(pow(1.40, beaverCount) + 1.30 * pow(beaverCount, 2.72)) + beaverCount * 25 + 39
		"Cherry" :
			return round(pow(1.30, beaverCount) + 1.35 * pow(beaverCount, 2.42)) + beaverCount * 33 + 44
		"Ash" :
			return round(pow(1.32, beaverCount) + 1.26 * pow(beaverCount, 2.84)) + beaverCount * 50 + 44
		"Cedar" :
			return round(pow(1.22, beaverCount) + 1.35 * pow(beaverCount, 2.59)) + beaverCount * 60 + 44
		"Mahogany" :
			return round(pow(1.21, beaverCount) + 1.29 * pow(beaverCount, 2.75)) + beaverCount * 75 + 47
		"Ebony" :
			return round(pow(1.23, beaverCount) + 1.29 * pow(beaverCount, 2.48)) + beaverCount * 125 + 47
		"Dogwood" :
			return round(pow(1.36, beaverCount) + 1.23 * pow(beaverCount, 2.94)) + beaverCount * 200 + 49
		"Rosewood" :
			return round(pow(1.22, beaverCount) + 1.32 * pow(beaverCount, 2.43)) + beaverCount * 300 + 52
		"Ghost Gum" :
			return round(pow(1.37, beaverCount) + 1.26 * pow(beaverCount, 2.67)) + beaverCount * 400 + 53
		"Dragonwood" :
			return round(pow(1.24, beaverCount) + 1.28 * pow(beaverCount, 2.59)) + beaverCount * 500 + 66

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.7, woodcampCount) + 2.45 * pow(woodcampCount, 2.86)) + woodcampCount * 45 + 99
		"Apple" :
			return round(pow(1.444, woodcampCount) + 1.39 * pow(woodcampCount, 2.99)) + woodcampCount * 95 + 129
		"Maple" :
			return round(pow(1.599, woodcampCount) + 1.55 * pow(woodcampCount, 3.12)) + woodcampCount * 195 + 299
		"Birch" :
			return round(pow(1.61, woodcampCount) + 1.53 * pow(woodcampCount, 3.26)) + woodcampCount * 375 + 1999
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
		"11" :
			return round(pow(1.463, level) + 1.357 * pow(level, 4.5)) + 1224 * (level + 1) * 157 + 250000
		"12" :
			return round(pow(1.433, level) + 1.328 * pow(level, 3.44)) + 2248 * (level + 1) * 67 + 100000
		"13" :
			return round(pow(1.287, level) + 1.139 * pow(level, 2.62)) + 4096 * (level + 1) * 69
		"14" :
			return round(pow(1.423, level) + 1.130 * pow(level, 2.56)) + 892 * (level + 1) + 5000
		"15" :
			return round(pow(1.327, level) + 1.347 * pow(level, 1.73)) + 16386 * (level + 1) * 71
		"16" :
			return round(pow(1.577, level) + 4.75 * pow(level, 3.772)) + 3850 * (level + 1) + 1800
		"17" :
			return round(pow(1.329, level) + 1.465 * pow(level, 3.16)) + 65544 * (level + 1) * 83
		"18" :
			return round(pow(1.303, level) + 1.157 * pow(level, 1.98)) + 131088 * (level + 1) * 100

func getUpgradeCost(level, woodType, upgradeNr): # first number more later, second n third more at the start but later nothing
	match woodType :
		"Oak" :
			match upgradeNr :
				"1" :
					return round(pow(1.566, level) + 1.88 * pow(level, 3.18)) + level * 34 + 29
				"2" :
					return round(pow(1.283, level) + 3.9 * pow(level, 2.04)) + level * 15 + 39
				"3" :
					return round(pow(1.355, level) + 1.65 * pow(level, 3.65)) + 900 * (level + 1) + 1200
				"4" :
					return round(pow(1.575, level) + 3.75 * pow(level, 3.76)) + (level + 1) * 1799 - 1000
				"5" :
					return round(pow(1.57, level) + 2.77 * pow(level, 3.46)) + level * 55 + 499
				"6" :
					return round(pow(1.563, level) + 3.99 * pow(level, 4.15)) + level * 15000 + 10000
				"7" :
					return round(pow(1.61, level) + 4.1 * pow(level, 2.45)) + 275 * level + 2450
				"8" :
					return round(pow(1.107, level) + 1.438 * pow(level, 2.55)) + 32772 * (level + 1) * 88
				"9" :
					return round(pow(1.481, level) + 1.282 * pow(level, 2.43)) + 266 * (level + 1) * 63 + 150000
				"10" :
					return round(pow(1.443, level) + 1.624 * pow(level, 3.85)) + 552 * (level + 1) * 57 + 25000
				"11" :
					return round(pow(1.563, level) + 1.357 * pow(level, 4.5)) + 1224 * (level + 1) * 157 + 250000
				"12" :
					return round(pow(1.533, level) + 1.328 * pow(level, 3.44)) + 2248 * (level + 1) * 67 + 100000
				"13" :
					return round(pow(1.187, level) + 1.139 * pow(level, 2.62)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.42, level) + 2.8 * pow(level, 3.65)) + 7492 * (level + 1) + 2999
				"15" :
					return round(pow(1.327, level) + 1.347 * pow(level, 1.73)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.444, level) + 5.96 * pow(level, 4.17)) + 4850 * level + 5999
				"17" :
					return round(pow(1.129, level) + 1.465 * pow(level, 3.16)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.203, level) + 1.157 * pow(level, 1.98)) + 131088 * (level + 1) * 100
		"Apple" :
			match upgradeNr :
				"1" :
					return round(pow(1.55, level) + 1.95 * pow(level, 3.65)) + level * 32 + 9
				"2" :
					return round(pow(1.4, level) + 1.3 * pow(level, 2.5)) + level * 33 + 19
				"3" :
					return round(pow(1.458, level) + 2.486 * pow(level, 2.54)) + 1000 * (level + 1) + 1499
				"4" :
					return round(pow(1.3, level) + 1.329 * pow(level, 3.27)) + 265 * level + 2999
				"5" :
					return round(pow(1.476, level) + 1.669 * pow(level, 4.46)) + level * 1250 + 4500
				"6" :
					return round(pow(1.488, level) + 1.7 * pow(level, 2.85)) + 1130 * level + 999
				"7" :
					return round(pow(1.45, level) + 2.5 * pow(level, 4.1)) + 100 * (level + 1) + 99
				"8" :
					return round(pow(1.141, level) + 1.147 * pow(level, 4.84)) + 128 * (level + 1) * 48 + 9999999
				"9" :
					return round(pow(1.298, level) + 1.375 * pow(level, 2.07)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.448, level) + 1.163 * pow(level, 1.84)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.558, level) + 2.3 * pow(level, 5.97)) + 4024 * level + 70057
				"12" :
					return round(pow(1.296, level) + 1.184 * pow(level, 2.47)) + 92048 * level + 222161
				"13" :
					return round(pow(1.143, level) + 1.187 * pow(level, 1.65)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.279, level) + 1.401 * pow(level, 3.78)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.329, level) + 1.497 * pow(level, 2.7)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.435, level) + 1.199 * pow(level, 2.58)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.258, level) + 1.406 * pow(level, 3.93)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.484, level) + 1.429 * pow(level, 2.2)) + 131088 * (level + 1) * 100
		"Maple" :
			match upgradeNr :
				"1" :
					return round(pow(1.615, level) + 3.128 * pow(level, 3.678)) + level * 22 + 9
				"2" :
					return round(pow(1.423, level) + 2.63 * pow(level, 3.03)) + 49 * level + 24
				"3" :
					return round(pow(1.527, level) + 1.91 * pow(level, 3.79)) + 225 * level + 1179
				"4" :
					return round(pow(1.395, level) + 2.4 * pow(level, 4)) + 298 * level + 329
				"5" :
					return round(pow(1.32, level) + 2.465 * pow(level, 2.895)) + 799 * level + 21000
				"6" :
					return round(pow(1.509, level) + 2.107 * pow(level, 4.09)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.354, level) + 1.141 * pow(level, 1.67)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.396, level) + 1.425 * pow(level, 4.55)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.132, level) + 1.102 * pow(level, 4.3)) + 256 * (level + 1) * 53
				"10" : # start at row 6
					return round(pow(1.451, level) + 1.323 * pow(level, 4.31)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.366, level) + 1.176 * pow(level, 2.56)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.283, level) + 1.234 * pow(level, 4.7)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.468, level) + 1.383 * pow(level, 3.58)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.463, level) + 1.199 * pow(level, 3)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.454, level) + 1.275 * pow(level, 4.44)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.390, level) + 1.148 * pow(level, 3.25)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.322, level) + 1.333 * pow(level, 3.55)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.214, level) + 1.456 * pow(level, 2.9)) + 131088 * (level + 1) * 100
		"Birch" :
			match upgradeNr :
				"1" :
					return round(pow(1.401, level) + 1.078 * pow(level, 4.33)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.396, level) + 1.235 * pow(level, 2.5)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.212, level) + 1.399 * pow(level, 3.28)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.397, level) + 1.213 * pow(level, 3.05)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.323, level) + 1.323 * pow(level, 1.83)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.192, level) + 1.371 * pow(level, 4.82)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.357, level) + 1.312 * pow(level, 1.9)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.480, level) + 1.235 * pow(level, 2.12)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.246, level) + 1.399 * pow(level, 2.04)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.129, level) + 1.158 * pow(level, 4.44)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.106, level) + 1.288 * pow(level, 1.95)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.273, level) + 1.099 * pow(level, 3.17)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.487, level) + 1.213 * pow(level, 3.42)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.218, level) + 1.288 * pow(level, 2.35)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.289, level) + 1.477 * pow(level, 1.55)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.225, level) + 1.310 * pow(level, 2.42)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.315, level) + 1.230 * pow(level, 2.7)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.474, level) + 1.412 * pow(level, 4.57)) + 131088 * (level + 1) * 100
		"Spruce" :
			match upgradeNr :
				"1" :
					return round(pow(1.111, level) + 1.334 * pow(level, 3.52)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.187, level) + 1.236 * pow(level, 1.74)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.342, level) + 1.157 * pow(level, 2.18)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.142, level) + 1.356 * pow(level, 3.13)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.311, level) + 1.230 * pow(level, 3.22)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.256, level) + 1.123 * pow(level, 4.25)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.103, level) + 1.300 * pow(level, 4.01)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.371, level) + 1.223 * pow(level, 3.22)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.380, level) + 1.346 * pow(level, 4.25)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.150, level) + 1.245 * pow(level, 3.33)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.151, level) + 1.167 * pow(level, 2.05)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.221, level) + 1.214 * pow(level, 3.2)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.475, level) + 1.374 * pow(level, 2.95)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.339, level) + 1.393 * pow(level, 2.35)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.347, level) + 1.126 * pow(level, 4.53)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.312, level) + 1.476 * pow(level, 1.64)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.468, level) + 1.321 * pow(level, 2.33)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.218, level) + 1.135 * pow(level, 4.31)) + 131088 * (level + 1) * 100
		"Chestnut" :
			match upgradeNr :
				"1" :
					return round(pow(1.143, level) + 1.265 * pow(level, 3.02)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.201, level) + 1.271 * pow(level, 4.54)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.443, level) + 1.592 * pow(level, 2.45)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.410, level) + 1.361 * pow(level, 4.94)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.395, level) + 1.172 * pow(level, 3.04)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.259, level) + 1.582 * pow(level, 4.2)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.431, level) + 1.289 * pow(level, 3.48)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.101, level) + 1.570 * pow(level, 4.74)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.231, level) + 1.340 * pow(level, 4.91)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.252, level) + 1.246 * pow(level, 3.02)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.254, level) + 1.207 * pow(level, 3.21)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.486, level) + 1.457 * pow(level, 4.31)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.232, level) + 1.116 * pow(level, 2.51)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.298, level) + 1.503 * pow(level, 4.15)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.129, level) + 1.327 * pow(level, 3.6)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.460, level) + 1.549 * pow(level, 4.8)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.132, level) + 1.559 * pow(level, 3.1)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.415, level) + 1.264 * pow(level, 3.92)) + 131088 * (level + 1) * 100
		"Cherry" :
			match upgradeNr :
				"1" :
					return round(pow(1.136, level) + 1.471 * pow(level, 2.2)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.387, level) + 1.302 * pow(level, 4.45)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.490, level) + 1.135 * pow(level, 2.50)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.485, level) + 1.309 * pow(level, 1.94)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.282, level) + 1.319 * pow(level, 4.45)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.290, level) + 1.540 * pow(level, 2.92)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.195, level) + 1.555 * pow(level, 2.63)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.137, level) + 1.386 * pow(level, 1.76)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.254, level) + 1.250 * pow(level, 3.45)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.383, level) + 1.195 * pow(level, 4.56)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.306, level) + 1.170 * pow(level, 3.37)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.267, level) + 1.192 * pow(level, 1.66)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.108, level) + 1.382 * pow(level, 2)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.230, level) + 1.164 * pow(level, 3.13)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.440, level) + 1.452 * pow(level, 2.15)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.407, level) + 1.356 * pow(level, 3.74)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.271, level) + 1.387 * pow(level, 3.97)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.487, level) + 1.240 * pow(level, 4.8)) + 131088 * (level + 1) * 100
		"Ash" :
			match upgradeNr :
				"1" :
					return round(pow(1.170, level) + 1.327 * pow(level, 2.46)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.218, level) + 1.515 * pow(level, 3.46)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.135, level) + 1.167 * pow(level, 3.9)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.499, level) + 1.267 * pow(level, 2.08)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.498, level) + 1.355 * pow(level, 3.74)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.437, level) + 1.532 * pow(level, 4.63)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.457, level) + 1.514 * pow(level, 1.94)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.467, level) + 1.328 * pow(level, 4.4)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.376, level) + 1.520 * pow(level, 1.94)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.320, level) + 1.254 * pow(level, 2.75)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.360, level) + 1.384 * pow(level, 4.73)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.180, level) + 1.569 * pow(level, 3.06)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.255, level) + 1.239 * pow(level, 4.45)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.367, level) + 1.484 * pow(level, 2.12)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.493, level) + 1.537 * pow(level, 4.01)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.403, level) + 1.310 * pow(level, 2.77)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.202, level) + 1.178 * pow(level, 3.3)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.264, level) + 1.128 * pow(level, 3.94)) + 131088 * (level + 1) * 100
		"Cedar" :
			match upgradeNr :
				"1" :
					return round(pow(1.485, level) + 1.600 * pow(level, 3.98)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.166, level) + 1.446 * pow(level, 4.05)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.494, level) + 1.253 * pow(level, 3.31)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.139, level) + 1.221 * pow(level, 4.74)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.455, level) + 1.271 * pow(level, 4.22)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.357, level) + 1.207 * pow(level, 1.99)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.371, level) + 1.372 * pow(level, 4.15)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.361, level) + 1.215 * pow(level, 2.09)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.353, level) + 1.384 * pow(level, 2.42)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.187, level) + 1.142 * pow(level, 4.11)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.456, level) + 1.333 * pow(level, 4.77)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.383, level) + 1.502 * pow(level, 4.24)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.389, level) + 1.216 * pow(level, 2.09)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.379, level) + 1.400 * pow(level, 3.84)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.278, level) + 1.348 * pow(level, 1.95)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.155, level) + 1.247 * pow(level, 4.33)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.308, level) + 1.338 * pow(level, 1.88)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.270, level) + 1.279 * pow(level, 2.55)) + 131088 * (level + 1) * 100
		"Mahogany" :
			match upgradeNr :
				"1" :
					return round(pow(1.321, level) + 1.315 * pow(level, 4.78)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.205, level) + 1.303 * pow(level, 1.99)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.342, level) + 1.517 * pow(level, 4.15)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.458, level) + 1.206 * pow(level, 4)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.343, level) + 1.471 * pow(level, 2.35)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.180, level) + 1.220 * pow(level, 2.32)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.293, level) + 1.362 * pow(level, 2.5)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.261, level) + 1.380 * pow(level, 3.26)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.393, level) + 1.127 * pow(level, 4.11)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.296, level) + 1.274 * pow(level, 2.19)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.294, level) + 1.199 * pow(level, 1.86)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.414, level) + 1.108 * pow(level, 2.44)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.175, level) + 1.360 * pow(level, 3.55)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.177, level) + 1.207 * pow(level, 2.65)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.265, level) + 1.576 * pow(level, 1.85)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.247, level) + 1.331 * pow(level, 3.12)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.162, level) + 1.468 * pow(level, 2.39)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.483, level) + 1.531 * pow(level, 4.55)) + 131088 * (level + 1) * 100
		"Ebony" :
			match upgradeNr :
				"1" :
					return round(pow(1.449, level) + 1.576 * pow(level, 3.04)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.122, level) + 1.486 * pow(level, 4.21)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.313, level) + 1.553 * pow(level, 1.87)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.434, level) + 1.273 * pow(level, 2.44)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.28, level) + 1.448 * pow(level, 2)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.236, level) + 1.122 * pow(level, 3.33)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.223, level) + 1.350 * pow(level, 2.21)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.474, level) + 1.122 * pow(level, 4.26)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.282, level) + 1.135 * pow(level, 3.64)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.479, level) + 1.246 * pow(level, 4.51)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.408, level) + 1.448 * pow(level, 2.12)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.267, level) + 1.216 * pow(level, 4.22)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.318, level) + 1.228 * pow(level, 3.05)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.366, level) + 1.325 * pow(level, 4.04)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.286, level) + 1.584 * pow(level, 2.77)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.389, level) + 1.289 * pow(level, 4.65)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.28, level) + 1.258 * pow(level, 4.34)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.156, level) + 1.589 * pow(level, 2.45)) + 131088 * (level + 1) * 100
		"Dogwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.254, level) + 1.375 * pow(level, 2.64)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.125, level) + 1.409 * pow(level, 1.64)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.357, level) + 1.556 * pow(level, 4.44)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.122, level) + 1.545 * pow(level, 1.75)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.103, level) + 1.302 * pow(level, 3.72)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.280, level) + 1.340 * pow(level, 3.46)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.424, level) + 1.503 * pow(level, 2.56)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.263, level) + 1.556 * pow(level, 4.43)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.344, level) + 1.401 * pow(level, 3.75)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.436, level) + 1.483 * pow(level, 3.1)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.374, level) + 1.203 * pow(level, 2.66)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.166, level) + 1.262 * pow(level, 2.25)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.419, level) + 1.139 * pow(level, 3.67)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.186, level) + 1.544 * pow(level, 2.2)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.190, level) + 1.201 * pow(level, 1.75)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.463, level) + 1.125 * pow(level, 4.55)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.286, level) + 1.519 * pow(level, 1.66)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.214, level) + 1.287 * pow(level, 3.15)) + 131088 * (level + 1) * 100
		"Rosewood" :
			match upgradeNr :
				"1" :
					return round(pow(1.297, level) + 1.434 * pow(level, 1.67)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.155, level) + 1.387 * pow(level, 2.55)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.434, level) + 1.501 * pow(level, 4.9)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.477, level) + 1.267 * pow(level, 3.6)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.134, level) + 1.470 * pow(level, 1.67)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.101, level) + 1.348 * pow(level, 1.88)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.306, level) + 1.277 * pow(level, 2.65)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.377, level) + 1.533 * pow(level, 3.15)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.322, level) + 1.521 * pow(level, 2.55)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.455, level) + 1.238 * pow(level, 3.55)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.401, level) + 1.119 * pow(level, 2.88)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.117, level) + 1.462 * pow(level, 2.33)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.442, level) + 1.348 * pow(level, 2.8)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.318, level) + 1.277 * pow(level, 4.3)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.401, level) + 1.521 * pow(level, 4.93)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.262, level) + 1.462 * pow(level, 3.6)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.208, level) + 1.290 * pow(level, 1.81)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.431, level) + 1.512 * pow(level, 4)) + 131088 * (level + 1) * 100
		"Ghost Gum" :
			match upgradeNr :
				"1" :
					return round(pow(1.125, level) + 1.221 * pow(level, 3.44)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.557, level) + 1.508 * pow(level, 4.53)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.505, level) + 1.117 * pow(level, 2.57)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.303, level) + 1.309 * pow(level, 3.44)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.331, level) + 1.377 * pow(level, 1.55)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.259, level) + 1.478 * pow(level, 2.99)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.430, level) + 1.311 * pow(level, 3.1)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.387, level) + 1.351 * pow(level, 2.61)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.194, level) + 1.358 * pow(level, 2.25)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.159, level) + 1.190 * pow(level, 3.56)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.589, level) + 1.315 * pow(level, 4.5)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.504, level) + 1.314 * pow(level, 1.77)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.322, level) + 1.538 * pow(level, 4.3)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.148, level) + 1.287 * pow(level, 3.24)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.240, level) + 1.535 * pow(level, 3.11)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.194, level) + 1.550 * pow(level, 1.43)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.596, level) + 1.221 * pow(level, 4.31)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.218, level) + 1.175 * pow(level, 2.58)) + 131088 * (level + 1) * 100
		"Dragonwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.463, level) + 1.116 * pow(level, 2.22)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.293, level) + 1.566 * pow(level, 3.26)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.260, level) + 1.286 * pow(level, 2.27)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.593, level) + 1.230 * pow(level, 1.55)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.526, level) + 1.527 * pow(level, 2.99)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.314, level) + 1.390 * pow(level, 2.1)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.133, level) + 1.584 * pow(level, 3.88)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.246, level) + 1.400 * pow(level, 4.66)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.168, level) + 1.571 * pow(level, 4.1)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.279, level) + 1.254 * pow(level, 2.4)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.176, level) + 1.143 * pow(level, 3.48)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.157, level) + 1.367 * pow(level, 2.8)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.252, level) + 1.475 * pow(level, 3.81)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.118, level) + 1.320 * pow(level, 2.57)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.518, level) + 1.449 * pow(level, 1.68)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.446, level) + 1.344 * pow(level, 2.45)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.372, level) + 1.418 * pow(level, 4.15)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.433, level) + 1.592 * pow(level, 3.33)) + 131088 * (level + 1) * 100
		"Gold" :
			match upgradeNr :
				"1" :
					return round(pow(1.348, level) + 1.154 * pow(level, 2.8)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.242, level) + 1.181 * pow(level, 2.8)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.482, level) + 1.538 * pow(level, 2.8)) + 4 * (level + 1) * 15
				"4" :
					return round(pow(1.263, level) + 1.276 * pow(level, 2.8)) + 8 * (level + 1) * 21
				"5" :
					return round(pow(1.141, level) + 1.297 * pow(level, 2.8)) + 16 * (level + 1) * 30
				"6" :
					return round(pow(1.573, level) + 1.195 * pow(level, 2.8)) + 32 * (level + 1) * 37
				"7" :
					return round(pow(1.174, level) + 1.113 * pow(level, 2.8)) + 64 * (level + 1) * 47
				"8" :
					return round(pow(1.416, level) + 1.133 * pow(level, 2.8)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.105, level) + 1.381 * pow(level, 2.8)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.417, level) + 1.337 * pow(level, 2.8)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.564, level) + 1.222 * pow(level, 2.8)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.468, level) + 1.259 * pow(level, 2.8)) + 2048 * (level + 1) * 61
				"13" :
					return round(pow(1.370, level) + 1.160 * pow(level, 2.8)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.110, level) + 1.283 * pow(level, 2.8)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.445, level) + 1.305 * pow(level, 2.8)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.557, level) + 1.117 * pow(level, 2.8)) + 32772 * (level + 1) * 78
				"17" :
					return round(pow(1.142, level) + 1.284 * pow(level, 2.8)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.259, level) + 1.156 * pow(level, 2.8)) + 131088 * (level + 1) * 100

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
