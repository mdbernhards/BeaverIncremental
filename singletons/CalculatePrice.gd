extends Node

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.26, woodcampCount) + 1.21 * pow(woodcampCount, 2.68)) + 1200
		"Apple" :
			return round(pow(1.32, woodcampCount) + 1.26 * pow(woodcampCount, 2.64)) + 2200
		"Maple" :
			return round(pow(1.37, woodcampCount) + 1.34 * pow(woodcampCount, 2.59)) + 3469
		"Birch" :
			return round(pow(1.30, woodcampCount) + 1.21 * pow(woodcampCount, 2.83)) + 3479
		"Spruce" :
			return round(pow(1.30, woodcampCount) + 1.29 * pow(woodcampCount, 2.77)) + 3609
		"Chestnut" :
			return round(pow(1.40, woodcampCount) + 1.30 * pow(woodcampCount, 2.72)) + 3969
		"Cherry" :
			return round(pow(1.30, woodcampCount) + 1.35 * pow(woodcampCount, 2.42)) + 4409
		"Ash" :
			return round(pow(1.32, woodcampCount) + 1.26 * pow(woodcampCount, 2.84)) + 4419
		"Cedar" :
			return round(pow(1.22, woodcampCount) + 1.35 * pow(woodcampCount, 2.59)) + 4429
		"Mahogany" :
			return round(pow(1.21, woodcampCount) + 1.29 * pow(woodcampCount, 2.75)) + 4729
		"Ebony" :
			return round(pow(1.23, woodcampCount) + 1.29 * pow(woodcampCount, 2.48)) + 4779
		"Dogwood" :
			return round(pow(1.36, woodcampCount) + 1.23 * pow(woodcampCount, 2.94)) + 4909
		"Rosewood" :
			return round(pow(1.22, woodcampCount) + 1.32 * pow(woodcampCount, 2.43)) + 5209
		"Ghost Gum" :
			return round(pow(1.37, woodcampCount) + 1.26 * pow(woodcampCount, 2.67)) + 5349
		"Dragonwood" :
			return round(pow(1.24, woodcampCount) + 1.28 * pow(woodcampCount, 2.59)) + 5369

func getLevelCost(level, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.32, level) + 1.27 * pow(level, 2.21)) + 2001
		"Apple" :
			return round(pow(1.31, level) + 1.26 * pow(level, 2.24)) + 4735
		"Maple" :
			return round(pow(1.26, level) + 1.42 * pow(level, 2.26)) + 4792
		"Birch" :
			return round(pow(1.31, level) + 1.33 * pow(level, 2.36)) + 6146
		"Spruce" :
			return round(pow(1.21, level) + 1.19 * pow(level, 2.37)) + 6188
		"Chestnut" :
			return round(pow(1.29, level) + 1.29 * pow(level, 2.37)) + 9423
		"Cherry" :
			return round(pow(1.19, level) + 1.29 * pow(level, 2.53)) + 9738
		"Ash" :
			return round(pow(1.38, level) + 1.3 * pow(level, 3.08)) + 10568
		"Cedar" :
			return round(pow(1.24, level) + 1.22 * pow(level, 3.1)) + 11187
		"Mahogany" :
			return round(pow(1.22, level) + 1.31 * pow(level, 3.13)) + 11931
		"Ebony" :
			return round(pow(1.37, level) + 1.36 * pow(level, 3.26)) + 12753
		"Dogwood" :
			return round(pow(1.35, level) + 1.33 * pow(level, 3.32)) + 13415
		"Rosewood" :
			return round(pow(1.42, level) + 1.26 * pow(level, 3.57)) + 13957
		"Ghost Gum" :
			return round(pow(1.25, level) + 1.19 * pow(level, 3.58)) + 13958
		"Dragonwood" :
			return round(pow(1.18, level) + 1.38 * pow(level, 3.91)) + 14100

func getUpgradeCost(level, woodType, upgradeNr): # first number more later, second n third more at the start but later nothing
	match woodType :
		"Oak" :
			match upgradeNr :
				"1" :
					return round(pow(1.26, level) + 1.26 * pow(level, 2.8)) + (level + 1) * 4 + 5
				"2" :
					return round(pow(1.21, level) + 5 * pow(level, 2.3)) + (level + 1) * 11 + 8
				"3" :
					return round(pow(1.16, level) + 1.15 * pow(level, 2.3)) + 4 * (level + 1) * 8 + 2000
				"4" :
					return round(pow(1.5, level) + 3 * pow(level, 3.65)) + (level + 1) * 35 + 16
				"5" :
					return 500
				"6" :
					return round(pow(1.543, level) + 3.443 * pow(level, 2.3)) + 32 * (level + 1) * 55 + 16000
				"7" :
					return round(pow(1.6, level) + 4 * pow(level, 2)) + 150 * (level + 1) + 2100
				"8" :
					return round(pow(1.107, level) + 1.438 * pow(level, 2.55)) + 32772 * (level + 1) * 78
				"9" :
					return round(pow(1.481, level) + 1.282 * pow(level, 2.43)) + 266 * (level + 1) * 63 + 50000
				"10" :
					return round(pow(1.443, level) + 1.624 * pow(level, 3.85)) + 552 * (level + 1) * 57 + 25000
				"11" :
					return round(pow(1.563, level) + 1.357 * pow(level, 4.5)) + 1224 * (level + 1) * 157 + 250000
				"12" :
					return round(pow(1.533, level) + 1.328 * pow(level, 3.44)) + 2248 * (level + 1) * 67 + 100000
				"13" :
					return round(pow(1.187, level) + 1.139 * pow(level, 2.62)) + 4096 * (level + 1) * 69
				"14" :
					return round(pow(1.423, level) + 1.330 * pow(level, 2.86)) + 8192 * (level + 1) * 71
				"15" :
					return round(pow(1.327, level) + 1.347 * pow(level, 1.73)) + 16386 * (level + 1) * 71
				"16" :
					return round(pow(1.5, level) + 4 * pow(level, 3)) + 2350 * (level + 1) + 2200
				"17" :
					return round(pow(1.129, level) + 1.465 * pow(level, 3.16)) + 65544 * (level + 1) * 83
				"18" :
					return round(pow(1.203, level) + 1.157 * pow(level, 1.98)) + 131088 * (level + 1) * 100
		"Apple" :
			match upgradeNr :
				"1" :
					return round(pow(1.5, level) + 1.9 * pow(level, 3.5)) + 1 * (level + 1) * 25 -15
				"2" :
					return round(pow(1.145, level) + 1.47 * pow(level, 2.6)) + (level + 1) * 33 - 14
				"3" :
					return round(pow(1.453, level) + 1.483 * pow(level, 2.41)) + 4 * (level + 1) * 15 + 1900
				"4" :
					return round(pow(1.5, level) + 1.4 * pow(level, 2.4)) + 8 * (level + 1) * 21 + 2400
				"5" :
					return round(pow(1.323, level) + 1.169 * pow(level, 4.13)) + 16 * (level + 1) * 30 + 5000
				"6" :
					return 1000
				"7" :
					return round(pow(1.45, level) + 2.5 * pow(level, 4)) + 100 * (level + 1) + 99
				"8" :
					return round(pow(1.141, level) + 1.147 * pow(level, 4.84)) + 128 * (level + 1) * 48
				"9" :
					return round(pow(1.298, level) + 1.375 * pow(level, 2.07)) + 256 * (level + 1) * 53
				"10" :
					return round(pow(1.448, level) + 1.163 * pow(level, 1.84)) + 512 * (level + 1) * 57
				"11" :
					return round(pow(1.438, level) + 1.107 * pow(level, 4.9)) + 1024 * (level + 1) * 57
				"12" :
					return round(pow(1.296, level) + 1.184 * pow(level, 2.47)) + 2048 * (level + 1) * 61
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
					return round(pow(1.375, level) + 1.410 * pow(level, 2.06)) + 1 * (level + 1) * 7
				"2" :
					return round(pow(1.464, level) + 1.105 * pow(level, 1.83)) + 2 * (level + 1) * 8
				"3" :
					return round(pow(1.496, level) + 1.179 * pow(level, 2.38)) + 4 * (level + 1) * 15 + 1000
				"4" :
					return round(pow(1.280, level) + 1.2 * pow(level, 3)) + 100 * (level + 1) + 200
				"5" :
					return round(pow(1.208, level) + 1.435 * pow(level, 1.67)) + 16 * (level + 1) * 30 + 20000
				"6" :
					return round(pow(1.409, level) + 1.207 * pow(level, 4.09)) + 32 * (level + 1) * 37
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
			return round(pow(1.227, botCount) + 1.123 * pow(botCount, 2.44)) + 1
		"Apple" :
			return round(pow(1.194, botCount) + 1.488 * pow(botCount, 2.52)) + 20
		"Maple" :
			return round(pow(1.220, botCount) + 1.398 * pow(botCount, 2.59)) + 300
		"Birch" :
			return round(pow(1.108, botCount) + 1.126 * pow(botCount, 2.64)) + 4000
		"Spruce" :
			return round(pow(1.126, botCount) + 1.248 * pow(botCount, 2.66)) + 25000
		"Chestnut" :
			return round(pow(1.337, botCount) + 1.102 * pow(botCount, 2.69)) + 69000
		"Cherry" :
			return round(pow(1.429, botCount) + 1.243 * pow(botCount, 2.74)) + 270000
		"Ash" :
			return round(pow(1.494, botCount) + 1.405 * pow(botCount, 2.77)) + 888000
		"Cedar" :
			return round(pow(1.131, botCount) + 1.140 * pow(botCount, 2.80)) + 1900000
		"Mahogany" :
			return round(pow(1.128, botCount) + 1.333 * pow(botCount, 2.84)) + 7110000
		"Ebony" :
			return round(pow(1.470, botCount) + 1.535 * pow(botCount, 2.86)) + 14555000
		"Dogwood" :
			return round(pow(1.394, botCount) + 1.581 * pow(botCount, 2.89)) + 67555000
		"Rosewood" :
			return round(pow(1.590, botCount) + 1.319 * pow(botCount, 2.92)) + 122555000
		"Ghost Gum" :
			return round(pow(1.301, botCount) + 1.415 * pow(botCount, 2.95)) + 642555000
		"Dragonwood" :
			return round(pow(1.173, botCount) + 1.334 * pow(botCount, 2.98)) + 2121215000
