extends Node

func getBeaverCost(beaverCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.399, beaverCount) + 0.82 * pow(beaverCount, 3.43))  + beaverCount * 11   - 3
		"Apple" :
			return round(pow(1.35, beaverCount) + 0.57  * pow(beaverCount, 3.52))  + beaverCount * 9    + 9
		"Maple" :
			return round(pow(1.474, beaverCount) + 1.44 * pow(beaverCount, 3.72))  + beaverCount * 21   + 16
		"Birch" :
			return round(pow(1.485, beaverCount) + 2.21 * pow(beaverCount, 3.85))  + beaverCount * 44   + 35
		"Spruce" :
			return round(pow(1.95, beaverCount) + 3.29  * pow(beaverCount, 5.79))  + beaverCount * 250  + 297
		"Chestnut" :
			return round(pow(2.10, beaverCount) + 3.50  * pow(beaverCount, 6.34))  + beaverCount * 285  + 362
		"Cherry" :
			return round(pow(2.20, beaverCount) + 4.35  * pow(beaverCount, 7.29))  + beaverCount * 493  + 474
		"Ash" :
			return round(pow(2.82, beaverCount) + 16.6  * pow(beaverCount, 6.77))  + beaverCount * 999666  + 1666666
		"Cedar" :
			return round(pow(2.92, beaverCount) + 273   * pow(beaverCount, 7.56))  + beaverCount * 4999666 + 8666666
		"Mahogany" :
			return round(pow(3.21, beaverCount) + 829   * pow(beaverCount, 10.03)) + beaverCount * 1375 + 702
		"Ebony" :
			return round(pow(3.23, beaverCount) + 929   * pow(beaverCount, 11.04)) + beaverCount * 1525 + 812
		"Dogwood" :
			return round(pow(3.36, beaverCount) + 1023  * pow(beaverCount, 12.06)) + beaverCount * 1700 + 1157
		"Rosewood" :
			return round(pow(3.42, beaverCount) + 1132  * pow(beaverCount, 13.11)) + beaverCount * 2600 + 2257
		"Ghost Gum" :
			return round(pow(3.57, beaverCount) + 1226  * pow(beaverCount, 14.19)) + beaverCount * 3700 + 3357
		"Dragonwood" :
			return round(pow(3.74, beaverCount) + 1328  * pow(beaverCount, 15.33)) + beaverCount * 4800 + 4467

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.59, woodcampCount) + 1.41 * pow(woodcampCount, 2.51)) + woodcampCount * 39 + 69
		"Apple" :
			return round(pow(1.43, woodcampCount) + 1.3 * pow(woodcampCount, 2.85)) + woodcampCount * 75 + 109
		"Maple" :
			return round(pow(1.65, woodcampCount) + 1.15 * pow(woodcampCount, 3.55)) + woodcampCount * 195 + 299
		"Birch" :
			return round(pow(1.73, woodcampCount) + 1.78 * pow(woodcampCount, 3.66)) + woodcampCount * 875 + 3713
		"Spruce" :
			return round(pow(1.81, woodcampCount) + 2.19 * pow(woodcampCount, 3.77)) + woodcampCount * 16975 + 15188
		"Chestnut" :
			return round(pow(2.04, woodcampCount) + 2.85 * pow(woodcampCount, 4.21)) + woodcampCount * 54375 + 69423
		"Cherry" :
			return round(pow(2.35, woodcampCount) + 3.45 * pow(woodcampCount, 4.61)) + woodcampCount * 153457 + 169738
		"Ash" :
			return round(pow(2.66, woodcampCount) + 29.9 * pow(woodcampCount, 9.99)) + woodcampCount * 28855575 + 3950568
		"Cedar" :
			return round(pow(2.69, woodcampCount) + 41.4 * pow(woodcampCount, 9.11)) + woodcampCount * 96577599 + 28981187
		"Mahogany" :
			return round(pow(2.72, woodcampCount) + 32.31 * pow(woodcampCount, 11.83)) + woodcampCount * 3185875 + 4591931
		"Ebony" :
			return round(pow(3.37, woodcampCount) + 38.36 * pow(woodcampCount, 13.36)) + woodcampCount * 11116175 + 12122753
		"Dogwood" :
			return round(pow(3.55, woodcampCount) + 49.33 * pow(woodcampCount, 15.62)) + woodcampCount * 74136575 + 47173415
		"Rosewood" :
			return round(pow(4.62, woodcampCount) + 55.26 * pow(woodcampCount, 17.77)) + woodcampCount * 294156775 + 223313957
		"Ghost Gum" :
			return round(pow(5.25, woodcampCount) + 71.19 * pow(woodcampCount, 22.58)) + woodcampCount * 989176875 + 989513958
		"Dragonwood" :
			return round(pow(6.18, woodcampCount) + 88.38 * pow(woodcampCount, 29.91)) + woodcampCount * 5727237075 + 9536714100

func getGoldUpgradeCost(level, upgradeNr): # first number more later, second n third more at the start but later nothing
	match upgradeNr :
		"1" :
			return round(pow(1.46, level) + 2.26 * pow(level, 2.78)) + level   * 427626       + 234341
		"2" :
			return round(pow(1.51, level) + 3.57 * pow(level, 3.24)) + level   * 154431       + 2843245
		"3" :
			return round(pow(1.65, level) + 4.15 * pow(level, 4.53)) + level   * 3254332      + 15432300
		"4" :
			return round(pow(1.75, level) + 5.51 * pow(level, 5.37)) + level   * 33245325     + 652372344
		"5" :
			return round(pow(1.86, level) + 7.42 * pow(level, 6.96)) + level   * 323532242    + 4934267239
		"6" :
			return round(pow(1.93, level) + 8.43 * pow(level, 8.36)) + level   * 5232132145   + 16065221520
		"7" :
			return round(pow(2.13, level) + 9.34 * pow(level, 9.62)) + level   * 16543324320  + 212340054211
		"8" :
			return round(pow(2.37, level) + 11.38 * pow(level, 12.55)) + level * 3232424372   + 8876768345435
		"9" :
			return round(pow(2.48, level) + 12.82 * pow(level, 14.43)) + level * 67891155983  + 50003242323110
		"10" :
			return round(pow(2.53, level) + 16.24 * pow(level, 15.85)) + level * 556611495327 + 250045435123340

func getUpgradeCost(level, woodType, upgradeNr): # first number more later, second n third more at the start but later nothing
	match woodType :
		"Oak" :
			match upgradeNr :
				"1" :
					return round(pow(1.569, level) + 0.66 * pow(level, 3.79)) + level  * 39       + 49
				"2" :
					return round(pow(1.345, level) + 3.895 * pow(level, 2.39)) + level * 25       + 59
				"3" :
					return round(pow(1.575, level) + 3.75 * pow(level, 3.76)) + level  * 899      + 499
				"4" :
					return round(pow(1.345, level) + 1.55 * pow(level, 3.55)) + level  * 800      + 2499
				"5" :
					return round(pow(1.587, level) + 2.35 * pow(level, 3.65)) + level  * 749      + 4549
				"6" :
					return round(pow(1.793, level) + 4.25 * pow(level, 4.76)) + level  * 55500    + 34999
				"7" :
					return round(pow(2.253, level) + 17.53 * pow(level, 5.55)) + level * 165000   + 79500
				"8" :
					return round(pow(2.565, level) + 27.98 * pow(level, 3.97)) + max(1, (level - 1)) * level * 5952772 + 1866890
				"9" :
					return round(pow(3.888, level) + 18.888 * pow(level, 7.11)) + level * 9992772  + 9990000
				"10" :
					return round(pow(1.643, level) + 24.624 * pow(level, 7.85)) + level * 39132772 + 79250000
		"Apple" :
			match upgradeNr :
				"1" :
					return round(pow(1.55, level) + 1.99 * pow(level, 3.65)) + level     * 33        + 9
				"2" :
					return round(pow(1.49, level) + 1.13 * pow(level, 2.46)) + level     * 79        + 39
				"3" :
					return round(pow(1.472, level) + 4.39 * pow(level, 2.85)) + level    * 1535      + 899
				"4" :
					return round(pow(1.458, level) + 0.59 * pow(level, 4.59)) + level    * 2999      + 2999
				"5" :
					return round(pow(1.829, level) + 1.569 * pow(level, 5.39)) + level   * 3950      + 7499
				"6" :
					return round(pow(1.588, level) + 1.75 * pow(level, 2.85)) + level    * 8550      + 25999
				"7" :
					return round(pow(1.865, level) + 55.5 * pow(level, 5.34)) + level    * 45550     + 75499
				"8" :
					return round(pow(3.555, level) + 799.14  * pow(level, 4.55)) + level * 9318128   + 2999999
				"9" :
					return round(pow(2.698, level) + 3645.5 * pow(level, 5.32)) + level  * 28655128  + 19999999
				"10" :
					return round(pow(2.555, level) + 249999 * pow(level, 6.95)) + level * 6594155128 + 999949999
		"Maple" :
			match upgradeNr :
				"1" :
					return round(pow(1.65, level) + 3.428 * pow(level, 3.978)) + level * 35         + 9
				"2" :
					return round(pow(1.45, level) + 6.56 * pow(level, 2.29)) + level   * 79         + 24
				"3" :
					return round(pow(1.73, level) + 3.59 * pow(level, 4.49)) + level   * 2859       + 1989
				"4" :
					return round(pow(1.395, level) + 2.64 * pow(level, 4.21)) + level  * 1952       + 6329
				"5" :
					return round(pow(1.65, level) + 2.465 * pow(level, 2.895)) + level * 1222       + 21000
				"6" :
					return round(pow(1.546, level) + 2.107 * pow(level, 4.09)) + level * 3722       + 41000
				"7" :
					return round(pow(1.454, level) + 888.8 * pow(level, 3.96)) + level * 698622     + 275000
				"8" :
					return round(pow(1.396, level) + 555.5 * pow(level, 4.55)) + level * 25883522   + 8941000
				"9" :
					return round(pow(1.632, level) + 1181  * pow(level, 6.61)) + level * 116626622  + 37332100
				"10" :
					return round(pow(1.756, level) + 100000 * pow(level, 6))   + level * 1999946422 + 188921000
		"Birch" :
			match upgradeNr :
				"1" :
					return round(pow(1.401, level) + 1.078 * pow(level, 4.33)) + level      * 32    + 9
				"2" :
					return round(pow(1.596, level) + 2.235 * pow(level, 3.5)) + level       * 3733  + 2319
				"3" :
					return round(pow(1.629, level) + 4.699 * pow(level, 3.85)) + level      * 8265  + 8599
				"4" :
					return round(pow(1.699, level) + 3.213 * pow(level, 3.75)) + level      * 19000  + 33499
				"5" :
					return round(pow(1.636, level) + 2.754 * pow(level, 4.65)) + level      * 41250  + 94499
				"6" :
					return round(pow(2.312, level) + 4.371 * pow(level, 5.82)) + level      * 92250  + 247999
				"7" :
					return round(pow(1.819, level) + 28.77 * pow(level, 3.55)) + level      * 486250 + 1734499
				"8" :
					return round(pow(2.381, level) + 24235 * pow(level, 7.77)) + level   * 299358128 + 46499999
				"9" :
					return round(pow(2.446, level) + 9944.3 * pow(level, 8.54)) + level  * 623428128 + 96699999
				"10" :
					return round(pow(2.659, level) + 32266.8 * pow(level, 9.9)) + level * 3999899922 + 796921000
		"Spruce" :
			match upgradeNr :
				"1" :
					return round(pow(1.521, level) + 3.344 * pow(level, 3.72)) + level * 932       + 499
				"2" :
					return round(pow(1.647, level) + 3.246 * pow(level, 3.77)) + level * 2833      + 699
				"3" :
					return round(pow(1.731, level) + 3.557 * pow(level, 2.68)) + level * 8265      + 6899
				"4" :
					return round(pow(1.762, level) + 1.456 * pow(level, 3.23)) + level * 32000     + 16499
				"5" :
					return round(pow(1.699, level) + 1.330 * pow(level, 3.42)) + level * 91250     + 45499
				"6" :
					return round(pow(2.495, level) + 98.55 * pow(level, 4.99)) + level * 697250    + 134999
				"7" :
					return round(pow(2.015, level) + 1.400 * pow(level, 4.11)) + level * 816250    + 414499
				"8" :
					return round(pow(2.271, level) + 533.3 * pow(level, 6.32)) + level * 23138128  + 17999999
				"9" :
					return round(pow(2.480, level) + 4953  * pow(level, 7.35)) + level * 93355128  + 57999999
				"10" :
					return round(pow(2.650, level) + 39999 * pow(level, 8.53)) + level * 199999922 + 339821000
		"Chestnut" :
			match upgradeNr :
				"1" :
					return round(pow(1.643, level) + 3.265 * pow(level, 3.02)) + level    * 320     + 90
				"2" :
					return round(pow(1.666, level) + 2.999 * pow(level, 3.33)) + level    * 330     + 190
				"3" :
					return round(pow(1.643, level) + 7.92 * pow(level, 6.45)) + level     * 2650    + 8990
				"4" :
					return round(pow(1.810, level) + 5.361 * pow(level, 7.94)) + level    * 10000   + 14990
				"5" :
					return round(pow(1.698, level) + 59.99 * pow(level, 7.55)) + level    * 13500   + 44990
				"6" :
					return round(pow(1.555, level) + 4.555 * pow(level, 6.11)) + level    * 22500   + 79990
				"7" :
					return round(pow(1.431, level) + 11.289 * pow(level, 11.48)) + level  * 62500   + 144990
				"8" :
					return round(pow(1.801, level) + 99570 * pow(level, 6.66)) + level   * 2581812800 + 699999900
				"9" :
					return round(pow(2.131, level) + 51340 * pow(level, 7.77)) + level  * 735512800  + 329999900
				"10" :
					return round(pow(2.352, level) + 133246 * pow(level, 9.99)) + level * 2839992200 + 7292100000
		"Cherry" :
			match upgradeNr :
				"1" :
					return round(pow(1.436, level) + 1.471 * pow(level, 4.2)) + level     * 5112       + 1119
				"2" :
					return round(pow(1.625, level) + 2.202 * pow(level, 3.35)) + level    * 7533       + 2219
				"3" :
					return round(pow(1.699, level) + 99.66 * pow(level, 6.19)) + level    * 28265      + 7899
				"4" :
					return round(pow(1.635, level) + 666.6 * pow(level, 7.27)) + level    * 498000     + 24499
				"5" :
					return round(pow(1.682, level) + 6.666 * pow(level, 5.22)) + level    * 171250     + 224499
				"6" :
					return round(pow(1.693, level) + 12.545 * pow(level, 6.95)) + level   * 545150     + 4217999
				"7" :
					return round(pow(1.499, level) + 3569.5 * pow(level, 7.86)) + level   * 189178625  + 33114499
				"8" :
					return round(pow(2.437, level) + 35.386 * pow(level, 11.76)) + level  * 312318128  + 2153699999
				"9" :
					return round(pow(2.254, level) + 67.250 * pow(level, 13.45)) + level  * 4567355128 + 23427629999
				"10" :
					return round(pow(2.383, level) + 111.59 * pow(level, 24.56)) + level * 94376549922 + 382345921000
		"Ash" :
			match upgradeNr :
				"1" :
					return round(pow(1.475, level) + 1.333 * pow(level, 3.66)) + level    * 5332         + 2319
				"2" :
					return round(pow(1.445, level) + 3.515 * pow(level, 2.46)) + level    * 3423         + 9343
				"3" :
					return round(pow(1.666, level) + 335.3 * pow(level, 7.79)) + level    * 1888416      + 489239
				"4" :
					return round(pow(1.799, level) + 9.967 * pow(level, 8.08)) + level    * 244320       + 311499
				"5" :
					return round(pow(1.798, level) + 99.555 * pow(level, 7.74)) + level   * 2754530      + 4443499
				"6" :
					return round(pow(1.657, level) + 66.666 * pow(level, 5.73)) + level   * 152553420    + 199312999
				"7" :
					return round(pow(1.567, level) + 2851.4 * pow(level, 6.94)) + level   * 1492214450   + 743214499
				"8" :
					return round(pow(1.667, level) + 77.328 * pow(level, 14.4)) + level   * 112358128    + 4143456999
				"9" :
					return round(pow(1.776, level) + 101.520 * pow(level, 18.94)) + level * 5516454228   + 29342449999
				"10" :
					return round(pow(1.820, level) + 211.254 * pow(level, 33.75)) + level * 93242349922  + 921564443000
		"Cedar" :
			match upgradeNr :
				"1" :
					return round(pow(1.885, level) + 111.600 * pow(level, 3.98)) + level * 244276         + 126479
				"2" :
					return round(pow(2.166, level) + 222.446 * pow(level, 7.05)) + level * 864543         + 646419
				"3" :
					return round(pow(2.494, level) + 5555.55 * pow(level, 5.11)) + level * 3326535        + 1256499
				"4" :
					return round(pow(2.139, level) + 777.221 * pow(level, 6.25)) + level * 4464300        + 5644399
				"5" :
					return round(pow(1.855, level) + 88827.1 * pow(level, 6.55)) + level * 2924664250     + 264432499
				"6" :
					return round(pow(1.657, level) + 111.207 * pow(level, 7.73)) + level * 756443330     + 736447999
				"7" :
					return round(pow(1.971, level) + 222.372 * pow(level, 6.25)) + level * 9425544450    + 5364314499
				"8" :
					return round(pow(2.561, level) + 666.215 * pow(level, 6.66)) + level * 41265564438   + 87423649999
				"9" :
					return round(pow(2.853, level) + 666.384 * pow(level, 6.99)) + level * 742345655128  + 532346899649
				"10" :
					return round(pow(2.787, level) + 555.142 * pow(level, 7.33)) + level * 8636432225922 + 4734569642100
		"Mahogany" :
			match upgradeNr :
				"1" :
					return round(pow(1.521, level) + 1.315 * pow(level, 7.78)) + level     * 3532         + 4943
				"2" :
					return round(pow(1.505, level) + 3.303 * pow(level, 11.99)) + level    * 9333         + 5419
				"3" :
					return round(pow(1.542, level) + 5.517 * pow(level, 7.15)) + level     * 22565        + 34899
				"4" :
					return round(pow(1.658, level) + 7.206 * pow(level, 10.23)) + level    * 175000       + 145399
				"5" :
					return round(pow(1.943, level) + 8.471 * pow(level, 5.35)) + level     * 1451250      + 4492319
				"6" :
					return round(pow(1.680, level) + 9.220 * pow(level, 8.32)) + level     * 73232250     + 79544399
				"7" :
					return round(pow(1.793, level) + 11.362 * pow(level, 12.5)) + level    * 643246250    + 132457449
				"8" :
					return round(pow(2.561, level) + 33.380 * pow(level, 15.26)) + level   * 1817543528   + 9996542499
				"9" :
					return round(pow(2.393, level) + 46.127 * pow(level, 28.11)) + level   * 55175434528  + 29765439999
				"10" :
					return round(pow(2.896, level) + 123.274 * pow(level, 212.19)) + level * 999655544222 + 921034566600
		"Ebony" :
			match upgradeNr :
				"1" :
					return round(pow(1.749, level) + 2.576 * pow(level, 7.04)) + level     * 6432         + 6744
				"2" :
					return round(pow(1.722, level) + 4.486 * pow(level, 14.21)) + level    * 9567         + 14346
				"3" :
					return round(pow(1.413, level) + 7.553 * pow(level, 11.87)) + level    * 23265        + 353326
				"4" :
					return round(pow(1.734, level) + 8.273 * pow(level, 3.44)) + level     * 100540       + 5462344
				"5" :
					return round(pow(1.628, level) + 9.448 * pow(level, 6.23)) + level     * 1123250      + 13243546
				"6" :
					return round(pow(1.836, level) + 12.122 * pow(level, 6.33)) + level    * 45672250     + 845635342
				"7" :
					return round(pow(1.623, level) + 17.350 * pow(level, 6.21)) + level    * 865436250    + 1449943654
				"8" :
					return round(pow(2.574, level) + 48.122 * pow(level, 16.26)) + level   * 7456721828   + 99999235454
				"9" :
					return round(pow(2.882, level) + 99.135 * pow(level, 89.64)) + level   * 55432346128  + 223995439993
				"10" :
					return round(pow(2.479, level) + 212.246 * pow(level, 544.51)) + level * 999743214322 + 3464533452344
		"Dogwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.954, level) + 3.375 * pow(level, 3.64)) + level    * 3552        + 3595
				"2" :
					return round(pow(1.525, level) + 5.409 * pow(level, 10.64)) + level   * 5233        + 34521
				"3" :
					return round(pow(1.557, level) + 8.556 * pow(level, 6.44)) + level    * 23365       + 648993
				"4" :
					return round(pow(1.522, level) + 11.545 * pow(level, 9.75)) + level   * 106600      + 1434939
				"5" :
					return round(pow(1.403, level) + 18.302 * pow(level, 4.72)) + level   * 127450      + 44412399
				"6" :
					return round(pow(1.780, level) + 24.340 * pow(level, 7.46)) + level   * 1452250     + 795323729
				"7" :
					return round(pow(1.624, level) + 27.503 * pow(level, 7.56)) + level   * 65654250    + 12345631449
				"8" :
					return round(pow(2.963, level) + 31.556 * pow(level, 28.43)) + level  * 183224128   + 996544327999
				"9" :
					return round(pow(2.544, level) + 88.401 * pow(level, 67.75)) + level  * 5514554328  + 2942595349939
				"10" :
					return round(pow(2.736, level) + 212.483 * pow(level, 386.1)) + level * 99953234522 + 92434113675000
		"Rosewood" :
			match upgradeNr :
				"1" :
					return round(pow(1.597, level) + 1.434 * pow(level, 7.67)) + level     * 3552         + 4494
				"2" :
					return round(pow(1.655, level) + 3.387 * pow(level, 4.55)) + level     * 8833         + 7159
				"3" :
					return round(pow(1.434, level) + 5.501 * pow(level, 8.9)) + level      * 12465        + 31899
				"4" :
					return round(pow(1.777, level) + 9.267 * pow(level, 8.6)) + level      * 312000       + 143499
				"5" :
					return round(pow(1.434, level) + 14.470 * pow(level, 8.67)) + level    * 5514250      + 4474959
				"6" :
					return round(pow(1.501, level) + 33.348 * pow(level, 8.88)) + level    * 22655550     + 73195499
				"7" :
					return round(pow(1.706, level) + 35.277 * pow(level, 7.65)) + level    * 987656250    + 445614499
				"8" :
					return round(pow(2.477, level) + 75.533 * pow(level, 33.15)) + level   * 5678318128   + 9753123999
				"9" :
					return round(pow(2.522, level) + 174.521 * pow(level, 72.55)) + level  * 55122222328  + 29954999724
				"10" :
					return round(pow(2.555, level) + 333.238 * pow(level, 133.55)) + level * 999543345356 + 921550406377
		"Ghost Gum" :
			match upgradeNr :
				"1" :
					return round(pow(1.825, level) + 4.221 * pow(level, 4.44)) + level    * 1832         + 5459
				"2" :
					return round(pow(1.557, level) + 8.508 * pow(level, 6.53)) + level    * 9933         + 7519
				"3" :
					return round(pow(1.505, level) + 12.117 * pow(level, 6.57)) + level   * 26365        + 82199
				"4" :
					return round(pow(1.603, level) + 16.309 * pow(level, 5.44)) + level   * 471000       + 153499
				"5" :
					return round(pow(1.831, level) + 21.377 * pow(level, 4.55)) + level   * 6817250      + 6724499
				"6" :
					return round(pow(1.959, level) + 31.478 * pow(level, 7.99)) + level   * 88882250     + 23457999
				"7" :
					return round(pow(1.930, level) + 41.311 * pow(level, 6.1)) + level    * 234716250    + 145446996
				"8" :
					return round(pow(2.687, level) + 51.351 * pow(level, 48.61)) + level  * 3834758128   + 9249549939
				"9" :
					return round(pow(2.594, level) + 61.358 * pow(level, 135.25)) + level * 55124535228  + 66784299999
				"10" :
					return round(pow(2.759, level) + 71.190 * pow(level, 424.56)) + level * 172375245522 + 381425403330
		"Dragonwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.463, level) + 2.116 * pow(level, 6.22)) + level    * 3332         + 3529
				"2" :
					return round(pow(1.793, level) + 7.566 * pow(level, 4.26)) + level    * 9333         + 8719
				"3" :
					return round(pow(1.860, level) + 8.286 * pow(level, 8.27)) + level    * 24365        + 83399
				"4" :
					return round(pow(1.993, level) + 15.230 * pow(level, 6.55)) + level   * 221000       + 171499
				"5" :
					return round(pow(1.526, level) + 18.527 * pow(level, 5.99)) + level   * 7531250      + 2142499
				"6" :
					return round(pow(1.414, level) + 41.390 * pow(level, 7.1)) + level    * 45672250     + 7497965
				"7" :
					return round(pow(1.933, level) + 51.584 * pow(level, 13.88)) + level  * 834566250    + 14374919
				"8" :
					return round(pow(2.746, level) + 71.400 * pow(level, 58.66)) + level  * 7534218128   + 967943299
				"9" :
					return round(pow(2.968, level) + 143.571 * pow(level, 175.1)) + level * 85654355128  + 2429597969
				"10" :
					return round(pow(2.979, level) + 251.254 * pow(level, 539.4)) + level * 237321123244 + 13131313030

func getBotCost(botCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.367, botCount) + 19.23 * pow(botCount, 3.39)) + botCount * 25534        + 9999 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Apple" :
			return round(pow(1.414, botCount) + 24.88 * pow(botCount, 3.72)) + botCount * 72315        + 39799 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Maple" :
			return round(pow(1.440, botCount) + 29.98 * pow(botCount, 4.79)) + botCount * 222553       + 132999 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Birch" :
			return round(pow(1.448, botCount) + 32.26 * pow(botCount, 4.81)) + botCount * 792355       + 479949 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Spruce" :
			return round(pow(1.456, botCount) + 35.48 * pow(botCount, 4.83)) + botCount * 2184257      + 767579 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Chestnut" :
			return round(pow(1.467, botCount) + 42.02 * pow(botCount, 5.84)) + botCount * 7227932      + 2333489 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Cherry" :
			return round(pow(1.529, botCount) + 53.43 * pow(botCount, 5.86)) + botCount * 33283425     + 7631794 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Ash" :
			return round(pow(1.594, botCount) + 57.05 * pow(botCount, 5.87)) + botCount * 99327250     + 39699543 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Cedar" :
			return round(pow(1.631, botCount) + 64.40 * pow(botCount, 5.89)) + botCount * 12884825     + 132357923 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Mahogany" :
			return round(pow(1.668, botCount) + 66.33 * pow(botCount, 6.91)) + botCount * 55936225     + 647952345 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Ebony" :
			return round(pow(1.670, botCount) + 74.55 * pow(botCount, 6.93)) + botCount * 491578225    + 2243217532 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Dogwood" :
			return round(pow(1.694, botCount) + 76.81 * pow(botCount, 6.95)) + botCount * 2844671220   + 9379454369 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Rosewood" :
			return round(pow(1.790, botCount) + 85.19 * pow(botCount, 7.97)) + botCount * 8888315250   + 35324579699 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Ghost Gum" :
			return round(pow(1.801, botCount) + 88.15 * pow(botCount, 7.98)) + botCount * 22245222250  + 177234993249 * Values.ResourceValues[woodType]["BotPriceMultip"]
		"Dragonwood" :
			return round(pow(1.873, botCount) + 96.34 * pow(botCount, 7.99)) + botCount * 165486335250 + 929292922994 * Values.ResourceValues[woodType]["BotPriceMultip"]
