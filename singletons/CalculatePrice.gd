extends Node

func getBeaverCost(beaverCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.399, beaverCount) + 0.82 * pow(beaverCount, 3.43)) + beaverCount  * 11           - 3
		"Apple" :
			return round(pow(1.35, beaverCount) + 0.57  * pow(beaverCount, 3.52)) + beaverCount  * 9            + 9
		"Maple" :
			return round(pow(1.474, beaverCount) + 1.44 * pow(beaverCount, 3.72)) + beaverCount  * 21           + 16
		"Birch" :
			return round(pow(1.485, beaverCount) + 2.21 * pow(beaverCount, 3.85)) + beaverCount  * 44           + 35
		"Spruce" :
			return round(pow(1.95, beaverCount) + 3.29  * pow(beaverCount, 5.79)) + beaverCount  * 250          + 297
		"Chestnut" :
			return round(pow(2.10, beaverCount) + 3.50  * pow(beaverCount, 6.34)) + beaverCount  * 285          + 362
		"Cherry" :
			return round(pow(2.20, beaverCount) + 4.35  * pow(beaverCount, 7.29)) + beaverCount  * 493          + 474
		"Ash" :
			return round(pow(2.82, beaverCount) + 16.6  * pow(beaverCount, 6.77)) + beaverCount  * 999666       + 1666666
		"Cedar" :
			return round(pow(2.92, beaverCount) + 273 * pow(beaverCount, 7.03)) + beaverCount    * 4999666      + 8666666
		"Mahogany" :
			return round(pow(3.01, beaverCount) + 2111 * pow(beaverCount, 7.12)) + beaverCount   * 399264666    + 24864666
		"Ebony" :
			return round(pow(3.23, beaverCount) + 6294 * pow(beaverCount, 7.15)) + beaverCount   * 846661525    + 212661525
		"Dogwood" :
			return round(pow(3.36, beaverCount) + 26236 * pow(beaverCount, 7.56)) + beaverCount  * 2400966634   + 855766634
		"Rosewood" :
			return round(pow(3.42, beaverCount) + 75113 * pow(beaverCount, 7.82)) + beaverCount  * 7615252600   + 2257252600
		"Ghost Gum" :
			return round(pow(3.57, beaverCount) + 374522 * pow(beaverCount, 7.99)) + beaverCount * 57004666152  + 31574666152
		"Dragonwood" :
			return round(pow(3.74, beaverCount) + 658313 * pow(beaverCount, 8.11)) + beaverCount * 235966624800 + 94676624800

func getWoodcampCost(woodcampCount, woodType):
	match woodType :
		"Oak" :
			return round(pow(1.59, woodcampCount) + 1.41 * pow(woodcampCount, 2.51)) + woodcampCount    * 39           + 69
		"Apple" :
			return round(pow(1.43, woodcampCount) + 1.3 * pow(woodcampCount, 2.85)) + woodcampCount     * 75           + 109
		"Maple" :
			return round(pow(1.65, woodcampCount) + 1.15 * pow(woodcampCount, 3.55)) + woodcampCount    * 195          + 299
		"Birch" :
			return round(pow(1.73, woodcampCount) + 1.78 * pow(woodcampCount, 3.66)) + woodcampCount    * 875          + 3713
		"Spruce" :
			return round(pow(1.81, woodcampCount) + 2.19 * pow(woodcampCount, 3.77)) + woodcampCount    * 16975        + 15188
		"Chestnut" :
			return round(pow(2.04, woodcampCount) + 2.85 * pow(woodcampCount, 4.21)) + woodcampCount    * 54375        + 69423
		"Cherry" :
			return round(pow(2.35, woodcampCount) + 3.45 * pow(woodcampCount, 4.61)) + woodcampCount    * 153457       + 169738
		"Ash" :
			return round(pow(2.66, woodcampCount) + 29.9 * pow(woodcampCount, 9.99)) + woodcampCount    * 28855575     + 3950568
		"Cedar" :
			return round(pow(2.69, woodcampCount) + 534 * pow(woodcampCount, 9.11)) + woodcampCount    * 96577599     + 28981187
		"Mahogany" :
			return round(pow(2.72, woodcampCount) + 2231 * pow(woodcampCount, 9.83)) + woodcampCount    * 318542875    + 94591931
		"Ebony" :
			return round(pow(3.37, woodcampCount) + 9836 * pow(woodcampCount, 10.36)) + woodcampCount   * 1115316175   + 472122753
		"Dogwood" :
			return round(pow(3.55, woodcampCount) + 36933 * pow(woodcampCount, 10.82)) + woodcampCount  * 7415336575   + 4788173415
		"Rosewood" :
			return round(pow(4.62, woodcampCount) + 185526 * pow(woodcampCount, 11.47)) + woodcampCount * 29456156775  + 22365313957
		"Ghost Gum" :
			return round(pow(5.25, woodcampCount) + 714319 * pow(woodcampCount, 12.28)) + woodcampCount * 98917776875  + 98869513958
		"Dragonwood" :
			return round(pow(6.18, woodcampCount) + 2978838 * pow(woodcampCount, 12.7)) + woodcampCount * 572743237075 + 344536714100

func getGoldUpgradeCost(level, upgradeNr): # first number more later, second n third more at the start but later nothing
	match upgradeNr :
		"1" :
			return round(pow(1.75, level) + 3560 * pow(level, 6.78)) + level   * 627626         + 234341
		"2" :
			return round(pow(1.79, level) + 6970 * pow(level, 7.55)) + level   * 7554431        + 2843245
		"3" :
			return round(pow(1.83, level) + 9150 * pow(level, 7.93)) + level   * 43254332       + 15432300
		"4" :
			return round(pow(1.85, level) + 12510 * pow(level, 8.37)) + level  * 3533245325     + 652372344
		"5" :
			return round(pow(1.88, level) + 16420 * pow(level, 8.96)) + level  * 25323532242    + 4934267239
		"6" :
			return round(pow(1.92, level) + 18430 * pow(level, 9.36)) + level  * 85232132145    + 12065221520
		"7" :
			return round(pow(1.95, level) + 29340 * pow(level, 9.62)) + level  * 216543324320   + 92340054211
		"8" :
			return round(pow(1.99, level) + 41380 * pow(level, 10.55)) + level * 853232424372   + 287676834543
		"9" :
			return round(pow(2.03, level) + 52820 * pow(level, 11.43)) + level * 3367891155983  + 9400324232311
		"10" :
			return round(pow(2.07, level) + 66240 * pow(level, 11.85)) + level * 15556611495327 + 25004543512334

func getUpgradeCost(level, woodType, upgradeNr): # first number more later, second n third more at the start but later nothing
	match woodType :
		"Oak" :
			match upgradeNr :
				"1" :
					return round(pow(1.569, level) + 0.66 * pow(level, 3.79)) + level                        * 39       + 49
				"2" :
					return round(pow(1.345, level) + 3.895 * pow(level, 2.39)) + level                       * 25       + 59
				"3" :
					return round(pow(1.575, level) + 3.75 * pow(level, 3.76)) + level                        * 899      + 499
				"4" :
					return round(pow(1.345, level) + 1.55 * pow(level, 3.55)) + level                        * 800      + 2499
				"5" :
					return round(pow(1.587, level) + 2.35 * pow(level, 3.65)) + level                        * 749      + 4549
				"6" :
					return round(pow(1.793, level) + 4.25 * pow(level, 4.76)) + level                        * 55500    + 34999
				"7" :
					return round(pow(2.253, level) + 17.53 * pow(level, 5.55)) + level                       * 165000   + 79500
				"8" :
					return round(pow(2.565, level) + 27.98 * pow(level, 3.97)) + max(1, (level - 1)) * level * 5952772  + 1866890
				"9" :
					return round(pow(3.888, level) + 18.888 * pow(level, 7.11)) + level                      * 9992772  + 9990000
				"10" :
					return round(pow(1.643, level) + 24.624 * pow(level, 7.85)) + level                      * 39132772 + 79250000
		"Apple" :
			match upgradeNr :
				"1" :
					return round(pow(1.55, level) + 1.99 * pow(level, 3.65)) + level    * 33         + 9
				"2" :
					return round(pow(1.49, level) + 1.13 * pow(level, 2.46)) + level    * 79         + 39
				"3" :
					return round(pow(1.472, level) + 4.39 * pow(level, 2.85)) + level   * 1535       + 899
				"4" :
					return round(pow(1.458, level) + 0.59 * pow(level, 4.59)) + level   * 2999       + 2999
				"5" :
					return round(pow(1.839, level) + 2.869 * pow(level, 5.42)) + level  * 3950       + 7499
				"6" :
					return round(pow(1.588, level) + 1.75 * pow(level, 2.85)) + level   * 8550       + 25999
				"7" :
					return round(pow(1.865, level) + 55.5 * pow(level, 5.34)) + level   * 45550      + 75499
				"8" :
					return round(pow(3.555, level) + 799.14 * pow(level, 4.55)) + level * 9318128    + 2999999
				"9" :
					return round(pow(2.698, level) + 3645.5 * pow(level, 5.32)) + level * 28655128   + 19999999
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
					return round(pow(2.315, level) + 100000 * pow(level, 6))   + level * 1999946422 + 188921000
		"Birch" :
			match upgradeNr :
				"1" :
					return round(pow(1.401, level) + 1.078 * pow(level, 4.33)) + level  * 32         + 9
				"2" :
					return round(pow(1.596, level) + 2.235 * pow(level, 3.5)) + level   * 3733       + 2319
				"3" :
					return round(pow(1.629, level) + 4.699 * pow(level, 3.85)) + level  * 8265       + 8599
				"4" :
					return round(pow(1.699, level) + 3.213 * pow(level, 3.75)) + level  * 19000      + 33499
				"5" :
					return round(pow(1.636, level) + 2.754 * pow(level, 4.65)) + level  * 41250      + 94499
				"6" :
					return round(pow(2.312, level) + 4.371 * pow(level, 5.82)) + level  * 92250      + 247999
				"7" :
					return round(pow(1.819, level) + 28.77 * pow(level, 3.55)) + level  * 486250     + 1734499
				"8" :
					return round(pow(2.381, level) + 24235 * pow(level, 7.77)) + level  * 299358128  + 46499999
				"9" :
					return round(pow(2.446, level) + 9944.3 * pow(level, 8.54)) + level * 623428128  + 96699999
				"10" :
					return round(pow(2.659, level) + 322668 * pow(level, 7.96)) + level * 5999899922 + 796921000
		"Spruce" :
			match upgradeNr :
				"1" :
					return round(pow(1.521, level) + 3.344 * pow(level, 3.72)) + level  * 932        + 499
				"2" :
					return round(pow(1.647, level) + 3.246 * pow(level, 3.77)) + level  * 2833       + 699
				"3" :
					return round(pow(1.731, level) + 3.557 * pow(level, 2.68)) + level  * 8265       + 6899
				"4" :
					return round(pow(1.777, level) + 1.456 * pow(level, 3.23)) + level  * 32000      + 16499
				"5" :
					return round(pow(1.699, level) + 1.330 * pow(level, 3.42)) + level  * 91250      + 45499
				"6" :
					return round(pow(2.495, level) + 98.55 * pow(level, 4.99)) + level  * 697250     + 134999
				"7" :
					return round(pow(2.015, level) + 1.400 * pow(level, 4.11)) + level  * 816250     + 414499
				"8" :
					return round(pow(2.271, level) + 533.3 * pow(level, 6.32)) + level  * 23138128   + 17999999
				"9" :
					return round(pow(2.480, level) + 2113535 * pow(level, 6)) + level   * 2153355128 + 587999999
				"10" :
					return round(pow(2.650, level) + 3942999 * pow(level, 6.4)) + level * 4199999922 + 1639821000
		"Chestnut" :
			match upgradeNr :
				"1" :
					return round(pow(1.643, level) + 3.265 * pow(level, 3.02)) + level * 320        + 90
				"2" :
					return round(pow(1.666, level) + 2.999 * pow(level, 3.33)) + level * 330        + 190
				"3" :
					return round(pow(1.643, level) + 7.92 * pow(level, 6.45)) + level  * 2650       + 8990
				"4" :
					return round(pow(1.810, level) + 5.361 * pow(level, 7.94)) + level * 10000      + 14990
				"5" :
					return round(pow(1.698, level) + 59.99 * pow(level, 7.55)) + level * 13500      + 44990
				"6" :
					return round(pow(1.555, level) + 4.555 * pow(level, 6.11)) + level * 22500      + 79990
				"7" :
					return round(pow(1.431, level) + 11.28 * pow(level, 11.4)) + level * 62500      + 144990
				"8" :
					return round(pow(1.801, level) + 99570 * pow(level, 6.66)) + level * 2581812800 + 699999900
				"9" :
					return round(pow(2.131, level) + 51340 * pow(level, 7.77)) + level * 735512800  + 329999900
				"10" :
					return round(pow(2.46, level) + 9993246 * pow(level, 8.02)) + level * 9939992200 + 9292100000
		"Cherry" :
			match upgradeNr :
				"1" :
					return round(pow(1.436, level) + 1.471 * pow(level, 4.2)) + level    * 5112        + 1119
				"2" :
					return round(pow(1.625, level) + 2.202 * pow(level, 3.35)) + level   * 7533        + 2219
				"3" :
					return round(pow(1.699, level) + 99.66 * pow(level, 6.19)) + level   * 28265       + 7899
				"4" :
					return round(pow(1.635, level) + 666.6 * pow(level, 7.27)) + level   * 498000      + 24499
				"5" :
					return round(pow(1.682, level) + 6.666 * pow(level, 5.22)) + level   * 171250      + 224499
				"6" :
					return round(pow(1.737, level) + 12.545 * pow(level, 6.95)) + level  * 545150      + 4217999
				"7" :
					return round(pow(2.631, level) + 3569.5 * pow(level, 7.86)) + level  * 189178625   + 33114499
				"8" :
					return round(pow(2.437, level) + 35.386 * pow(level, 11.76)) + level * 312318128   + 2153699999
				"9" :
					return round(pow(2.254, level) + 67.250 * pow(level, 13.45)) + level * 4567355128  + 23427629999
				"10" :
					return round(pow(9.583, level) + 91159 * pow(level, 25.56)) + level * 999943765459922 + 3333823459215000
		"Ash" :
			match upgradeNr :
				"1" :
					return round(pow(1.475, level) + 1.333 * pow(level, 3.66)) + level    * 5332        + 2319
				"2" :
					return round(pow(1.445, level) + 3.515 * pow(level, 2.46)) + level    * 3423        + 9343
				"3" :
					return round(pow(1.666, level) + 335.3 * pow(level, 7.79)) + level    * 1888416     + 489239
				"4" :
					return round(pow(2.064, level) + 99.99 * pow(level, 9.46)) + level    * 254320      + 311499
				"5" :
					return round(pow(1.798, level) + 99.555 * pow(level, 7.74)) + level   * 2754530     + 4443499
				"6" :
					return round(pow(1.758, level) + 222.66 * pow(level, 6.49)) + level   * 692553420   + 199312999
				"7" :
					return round(pow(1.572, level) + 4852.4 * pow(level, 6.99)) + level   * 1592214450  + 743214499
				"8" :
					return round(pow(1.667, level) + 77.328 * pow(level, 14.4)) + level   * 112358128   + 4143456999
				"9" :
					return round(pow(1.776, level) + 101.520 * pow(level, 18.94)) + level * 5516454228  + 29342449999
				"10" :
					return round(pow(1.820, level) + 211.254 * pow(level, 33.75)) + level * 93242349922 + 921564443000
		"Cedar" :
			match upgradeNr :
				"1" :
					return round(pow(1.885, level) + 161.600 * pow(level, 5.32)) + level * 244276        + 126479
				"2" :
					return round(pow(2.166, level) + 222.446 * pow(level, 7.05)) + level * 864543        + 646419
				"3" :
					return round(pow(2.494, level) + 6975.55 * pow(level, 5.88)) + level * 3326535       + 1256499
				"4" :
					return round(pow(2.139, level) + 777.221 * pow(level, 6.25)) + level * 4464300       + 5644399
				"5" :
					return round(pow(1.866, level) + 99999.9 * pow(level, 6.66)) + level * 2994664250    + 264432499
				"6" :
					return round(pow(1.699, level) + 149.207 * pow(level, 7.77)) + level * 7777443330     + 736447999
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
					return round(pow(1.521, level) + 151.315 * pow(level, 5.28)) + level  * 3534420       + 2249430
				"2" :
					return round(pow(1.505, level) + 213.303 * pow(level, 5.99)) + level  * 24793330      + 15254190
				"3" :
					return round(pow(1.542, level) + 9517.17 * pow(level, 7.15)) + level  * 56422560      + 31548990
				"4" :
					return round(pow(1.658, level) + 997.206 * pow(level, 9.23)) + level  * 91750000      + 51453990
				"5" :
					return round(pow(1.943, level) + 99998.4 * pow(level, 5.95)) + level  * 95451250      + 144923190
				"6" :
					return round(pow(1.999, level) + 145.520 * pow(level, 8.35)) + level  * 94232250      + 395443990
				"7" :
					return round(pow(1.793, level) + 266.362 * pow(level, 8.5)) + level   * 1243246250    + 632457449
				"8" :
					return round(pow(2.561, level) + 777.380 * pow(level, 9.26)) + level  * 75817543528   + 29996542499
				"9" :
					return round(pow(2.393, level) + 795.127 * pow(level, 10.11)) + level * 255175434528  + 129765439999
				"10" :
					return round(pow(2.896, level) + 800.274 * pow(level, 11.19)) + level * 3999655544222 + 1921034566600
		"Ebony" :
			match upgradeNr :
				"1" :
					return round(pow(1.899, level) + 222.576 * pow(level, 7.14)) + level  * 6114327        + 3467442
				"2" :
					return round(pow(1.822, level) + 311.486 * pow(level, 6.21)) + level  * 29215675       + 21143464
				"3" :
					return round(pow(1.513, level) + 11947.5 * pow(level, 8.88)) + level  * 165232654      + 63533262
				"4" :
					return round(pow(1.744, level) + 1348.27 * pow(level, 3.44)) + level  * 451005403      + 154623444
				"5" :
					return round(pow(1.788, level) + 347423  * pow(level, 6.23)) + level  * 7311232502     + 1232435462
				"6" :
					return round(pow(2.035, level) + 211.111 * pow(level, 6.34)) + level  * 12456227501    + 1945635342
				"7" :
					return round(pow(2.133, level) + 9999.53 * pow(level, 9.19)) + level  * 999543662503   + 129499436544
				"8" :
					return round(pow(2.674, level) + 3948.22 * pow(level, 8.46)) + level  * 2994567218284  + 499992354543
				"9" :
					return round(pow(2.882, level) + 999.135 * pow(level, 9.64)) + level  * 5543235461285  + 2239954399932
				"10" :
					return round(pow(2.479, level) + 1212.24 * pow(level, 11.51)) + level * 96997432143226 + 34645334523443
		"Dogwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.954, level) + 333.375 * pow(level, 5.64)) + level * 9355524        + 5535955
				"2" :
					return round(pow(1.525, level) + 385.409 * pow(level, 9.64)) + level * 75432335       + 33445215
				"3" :
					return round(pow(1.557, level) + 14228.5 * pow(level, 6.44)) + level * 246346365      + 96489933
				"4" :
					return round(pow(1.522, level) + 53211.5 * pow(level, 9.75)) + level * 851063600      + 314349395
				"5" :
					return round(pow(1.888, level) + 383023  * pow(level, 5.72)) + level * 9731275450     + 3444123993
				"6" :
					return round(pow(2.099, level) + 555.555 * pow(level, 7.57)) + level * 43714523250    + 8953237296
				"7" :
					return round(pow(1.624, level) + 827.503 * pow(level, 7.56)) + level * 465165452506   + 23456314495
				"8" :
					return round(pow(2.963, level) + 1423155 * pow(level, 7.43)) + level * 3318325241328  + 996544327992
				"9" :
					return round(pow(2.544, level) + 9996880 * pow(level, 7.22)) + level * 9545145543285  + 4425953499393
				"10" :
					return round(pow(2.736, level) + 7812.48 * pow(level, 9.11)) + level * 14959353234522 + 54341136750006
		"Rosewood" :
			match upgradeNr :
				"1" :
					return round(pow(1.597, level) + 641.4346 * pow(level, 7.67)) + level * 17235524       + 9244948
				"2" :
					return round(pow(1.655, level) + 983.3878 * pow(level, 4.55)) + level * 183283353      + 74171595
				"3" :
					return round(pow(1.434, level) + 34125.50 * pow(level, 7.9)) + level  * 537124465      + 218954914
				"4" :
					return round(pow(1.777, level) + 259267.2 * pow(level, 8.3)) + level  * 2312304050     + 745143495
				"5" :
					return round(pow(1.434, level) + 714470.3 * pow(level, 8.67)) + level * 25514254350    + 7344749596
				"6" :
					return round(pow(1.501, level) + 3334.494 * pow(level, 8.88)) + level * 67226553550    + 14731954991
				"7" :
					return round(pow(1.706, level) + 5555.277 * pow(level, 7.67)) + level * 99876526250    + 44566144992
				"8" :
					return round(pow(2.477, level) + 3275.533 * pow(level, 7.15)) + level * 564783181628   + 1497531239993
				"9" :
					return round(pow(2.522, level) + 21745.21 * pow(level, 9.55)) + level * 1551224222328  + 65299549997244
				"10" :
					return round(pow(2.555, level) + 33333.23 * pow(level, 11.5)) + level * 29699543345356 + 921557040863775
		"Ghost Gum" :
			match upgradeNr :
				"1" :
					return round(pow(1.825, level) + 4221.327 * pow(level, 4.44)) + level  * 31418832       + 17755459
				"2" :
					return round(pow(1.557, level) + 8508.932 * pow(level, 6.53)) + level  * 395479533      + 155193451
				"3" :
					return round(pow(2.805, level) + 75211.45 * pow(level, 7.87)) + level  * 5893726365     + 625821969
				"4" :
					return round(pow(1.973, level) + 666309.5 * pow(level, 5.55)) + level  * 19741781000    + 1534432959
				"5" :
					return round(pow(1.831, level) + 2121377  * pow(level, 4.55)) + level  * 49568178250    + 14637244939
				"6" :
					return round(pow(1.959, level) + 9314.784 * pow(level, 7.99)) + level  * 114858882250   + 23456579979
				"7" :
					return round(pow(1.977, level) + 55311.23 * pow(level, 6.31)) + level   * 172347716250   + 91454469696
				"8" :
					return round(pow(2.687, level) + 99513.51 * pow(level, 8.61)) + level * 5938346658128  + 2692495496939
				"9" :
					return round(pow(2.594, level) + 61343.58 * pow(level, 11.25)) + level * 33551246535228 + 99667842999959
				"10" :
					return round(pow(2.759, level) + 86411.92 * pow(level, 12.56)) + level * 54723752745522 + 183814254073330
		"Dragonwood" :
			match upgradeNr :
				"1" :
					return round(pow(1.463, level) + 8462.116 * pow(level, 6.22)) + level * 63643332       + 25296745
				"2" :
					return round(pow(1.793, level) + 23667.56 * pow(level, 4.26)) + level * 711229333      + 234558719
				"3" :
					return round(pow(1.860, level) + 24568.26 * pow(level, 8.27)) + level * 2125443365     + 853443399
				"4" :
					return round(pow(1.993, level) + 935615.2 * pow(level, 6.55)) + level * 9754221000     + 3463171499
				"5" :
					return round(pow(1.526, level) + 4751418. * pow(level, 5.99)) + level * 98675315250    + 32142469591
				"6" :
					return round(pow(1.414, level) + 41390.42 * pow(level, 7.1)) + level  * 235345672250   + 71429537965
				"7" :
					return round(pow(1.933, level) + 42351.58 * pow(level, 11.8)) + level * 386345466250   + 143735314919
				"8" :
					return round(pow(2.746, level) + 51400.22 * pow(level, 12.6)) + level * 1975354218128  + 4967941321299
				"9" :
					return round(pow(2.968, level) + 214357.1 * pow(level, 15.1)) + level * 8856654355128  + 173424294597969
				"10" :
					return round(pow(2.979, level) + 251325.4 * pow(level, 16.4)) + level * 92373211723244 + 3251313163123030

func getBotCost(botCount, woodType):
	match woodType :
		"Oak" :
			return round((pow(1.367, botCount) + 21.23 * pow(botCount, 4.27) + botCount * 25534        + 9999) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Apple" :
			return round((pow(1.414, botCount) + 26.88 * pow(botCount, 4.66) + botCount * 72315        + 39799) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Maple" :
			return round((pow(1.440, botCount) + 31.98 * pow(botCount, 4.99) + botCount * 222553       + 132999) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Birch" :
			return round((pow(1.448, botCount) + 33.26 * pow(botCount, 5.33) + botCount * 792355       + 479949) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Spruce" :
			return round((pow(1.456, botCount) + 37.48 * pow(botCount, 5.66) + botCount * 2184257      + 767579) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Chestnut" :
			return round((pow(1.467, botCount) + 46.02 * pow(botCount, 5.99) + botCount * 7227932      + 2333489) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Cherry" :
			return round((pow(1.529, botCount) + 63.43 * pow(botCount, 6.33) + botCount * 33283425     + 7631794) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Ash" :
			return round((pow(1.594, botCount) + 77.05 * pow(botCount, 6.44) + botCount * 99327250     + 39699543) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Cedar" :
			return round((pow(1.631, botCount) + 144.3 * pow(botCount, 6.66) + botCount * 12884825     + 132357923) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Mahogany" :
			return round((pow(1.668, botCount) + 663.3 * pow(botCount, 7.11) + botCount * 55936225     + 647952345) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Ebony" :
			return round((pow(1.670, botCount) + 1745  * pow(botCount, 7.33) + botCount * 491578225    + 2243217532) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Dogwood" :
			return round((pow(1.694, botCount) + 2681  * pow(botCount, 7.66) + botCount * 2844671220   + 9379454369) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Rosewood" :
			return round((pow(1.790, botCount) + 8519  * pow(botCount, 7.99) + botCount * 8888315250   + 35324579699) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Ghost Gum" :
			return round((pow(1.801, botCount) + 28815 * pow(botCount, 8.33) + botCount * 22245222250  + 177234993249) * Values.ResourceValues[woodType]["BotPriceMultip"])
		"Dragonwood" :
			return round((pow(1.873, botCount) + 96334 * pow(botCount, 8.66) + botCount * 165486335250 + 929292922994) * Values.ResourceValues[woodType]["BotPriceMultip"])
