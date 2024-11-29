extends Node

var Upgrades = {
	"Oak" : {
		"1" : {
			"Name" : "Oak Per Click +1",
			"Description" : "Increases Oak wood gathered per click by 1",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Oak storage +100",
			"Description" : "Increases Oak wood storage capacity by 10",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "WPS per WC +1",
			"Description" : "Doubles storage capacity",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "Better Oak click",
			"Description" : "Increases wood gathered per click by an additional 1",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "Unlock Apple Wood",
			"Description" : "Unlocks Apple wood for production",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "WPS based on WPC",
			"Description" : "",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "Faster research 0.4%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "6% storage from WC",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "Levels cheaper 0.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Upgrades 1.5% cheaper",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "Cheaper bots 0.03%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "Per level +storage 0.18%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "Cheaper per achiv",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Better wood price 0.1",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "WPC 2% per level",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "Multiply storage",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "Cheaper bots 2.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "Fish price 2%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Apple" : {
		"1" : {
			"Name" : "Apple per click +2",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Apple storage +20",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "WPS per WC +2",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "7% storage from WCs",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "WPS 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "Unlock Research",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "Better Apple Click",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "multiply storage",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "use 1% less wood",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Faster research 0.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "Better wood price 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "2% of lower WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "levels cheaper 0.6%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "bots sell +10 wood",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "fish better wood 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "dam effects 0.15%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "more fish 0.9%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "level effects 4%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Maple" : {
		"1" : {
			"Name" : "Maple per click +3",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Maple storage +30",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per WC +3",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "cheaper WC 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "WPC add 1% wps",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "7.5% storage from WC",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "cheaper reaserch 0.7%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "0.15% wps per level",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "levels cheaper 0.8%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "increase wps 0.05%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "bots sell 4% more",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "1.1% of wpc to wps",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "cheaper bait 4%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Better wood price 5%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "lvl effect per fish 0.15%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "fish give more storage",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "produce more magic 12%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Birch" : {
		"1" : {
			"Name" : "Birch per click +4",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Birch storage +40",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per WC +4",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "multiply storage",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "WPC from research 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "level wpc 4%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "4% more WPC",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "ascending more magic 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "WPS 1.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "cheaper bait 2.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "Improve fish effects 0.11%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "+0.17% storage per level ",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "lower production cost 3.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "bots sell +20 wood",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "amount of fish",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "Better wood price 4%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "cheaper dams 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "wood price 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Spruce" : {
		"1" : {
			"Name" : "Spruce per click +5",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Spruce storage +50",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per WC +5",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "WC increase wpc 6%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "wps 2.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "cheaper reaserch 0.6%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "All upgrades 1% cheaper",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "level effect on gold 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "Better wood price 10",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "increase storage by 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "all WC effects 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "fish give more storage",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "levels effects 10%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "cheaper bait 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "fish stay longer 0.15%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "bots sell 15 more wood",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "magic upgrades 0.33% cheaper",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Chestnut" : {
		"1" : {
			"Name" : "Chestnut per click +6",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Chestnut storage +60",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per WC +6",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "cheaper reaserch 0.9%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "level WPS 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "fish add magic gain",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "all WC effects 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "Better wood price 5.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "more fish appear 0.35%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "1% of lower wood production",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "amount of fish",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "fish stay longer 0.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "all WC effects 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "bots sell better price 0.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "1% storage to lower tiers",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "lvl effect per fish 0.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "WC increase wpc 4.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "WPS 1.9%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Cherry" : {
		"1" : {
			"Name" : "Cherry per click +7",
			"Description" : "Increases wood gathered per click by 7",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Cherry storage +70",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +7",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "faster research 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "All production upgrades 0.3% effect",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "levels cheaper 0.4%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "levels effects 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "increase storage by 12%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "ascending gain more magic 4%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "wood per click add 2% wps",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "0.2% wps per level",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "each dam 0.6% gold gain",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "amount of achivements",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Better wood price 50",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "Improve fish effects 0.09%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "increase wpc 0.15%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "count of achiv increase wps",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "woodcamps increase wpc 2%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ash" : {
		"1" : {
			"Name" : "Ash per click +8",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Ash storage +80",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +8",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "faster research 0.6%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "levels effects 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "magic upgrades 0.66% cheaper",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "cheaper bots 2.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "dam effects 0.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "fish sell for more 2.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "bots sell 8% more",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "woodcamps increase wpc 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "cheaper on amount of achiv",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "level wps 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "cheaper bots on achiev 0.06%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "wood fish works 3% better",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "lower wood production costs 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "cheaper bots 0.05%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "bait effects 0.75%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Cedar" : {
		"1" : {
			"Name" : "Cedar per click +9",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Cedar storage +90",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +9",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "wpc from research 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "per level give storage 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "better wood click",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "lower wood production costs 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "1.1% of this storage added to lower tier storage",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "better fish 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "amount of achivements",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "lvl effect per fish 0.13%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "cheaper bots 2.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "increase wpc 0.07%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "woodcamps increase wpc 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "market fish upgrade 1.4%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "produce more magic 10%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "Increase WPS based on WPC",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "dam effects 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Mahogany" : {
		"1" : {
			"Name" : "Mahogany per click +10",
			"Description" : "Increases wood gathered per click by 10",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Mahogany storage +100",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +10",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "wood per click 4% increase per level",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "cheaper bots 2.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "cheaper reaserch 0.8%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "lvl effect per achivem. 0.01%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "fish stay longer 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "cheaper woodcamps 2.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "increase storage by 6%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "amount of achivements",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "bots sell better price 0.4%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "Unlock wood bait",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "levels cheaper 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "increase storage by 18%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "bait effects 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "lvl effect per achivem. 0.02%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ebony" : {
		"1" : {
			"Name" : "Ebony per click +11",
			"Description" : "Increases wood gathered per click by 11",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Ebony storage +110",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +11",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "cheaper bots on achiev 0.05%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "multiply storage",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "wps from research 2%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "level wpc 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "each dam 0.8% wood gain",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "all woodcamps effects 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "6% more wood per click",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "each dam 1% wood gain",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "Better wood price 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "increase storage by 24%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "cheaper woodcamps 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "fish better wood 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "bots sell 6% more",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "Improve magic effects 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Dogwood" : {
		"1" : {
			"Name" : "Dogwood per click +12",
			"Description" : "Increases wood gathered per click by 12",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Dogwood storage +120",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +12",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "faster research 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "bots sell better price 0.6%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "5% more wood per click",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "1.2% of this storage added to lower tier storage",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "add 3.3% of wpc to wps",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "Unlock woody lake",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "gold upgrades 0.2% better",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "levels cheaper 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "cheaper on amount of achiv",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "FoS better all bot sell 0.02%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "more fish appear 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "3% of lower wood production",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "bots sell better price 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "FoS increas. Bot gold gain 2%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Rosewood" : {
		"1" : {
			"Name" : "Rosewood per click +13",
			"Description" : "Increases wood gathered per click by 13",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Rosewood storage +130",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +13",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "cheaper reaserch 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "wood per click add 3% wps",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "levels effects 8%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "4% storage from woodcamps",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "add 2.2% of wpc to wps",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "cheaper bots 2.4%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "Improve fish effects 0.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "amount of fish",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "bait effects 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Improve magic effects 1.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "0.1% wps per level",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "Better wood price 1000",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "per level give storage 0.16%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "achive. increases magic gain",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ghost Gum" : {
		"1" : {
			"Name" : "Ghost Gum per click +14",
			"Description" : "Increases wood gathered per click by 14",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Ghost Gum storage +140",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +14",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "faster research 0.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "8% storage from woodcamps",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "wps 0.7%",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "per level give storage 0.19%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "amount of achivements",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "cheaper bots 2.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "levels cheaper 0.7%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "better fish 1.3%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "fish give more storage",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "bots sell 5 more wood",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "cheaper woodcamps 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "market fish upgrade 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "fish sell for more 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "cheaper dams 1%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Dragonwood" : {
		"1" : {
			"Name" : "Apple per click +15",
			"Description" : "Increases wood gathered per click by 15",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Apple storage +150",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +15",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "FoS better all bot sell 0.05%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "wps from research 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "each dam 0.4% gold gain",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "more fish appear 0.7%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "cheaper woodcamps 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "bots sell better price 0.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Improve magic effects 0.7%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "amount of fish",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "increase this tiers storage by 4%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "levels effects 6%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "amount of fish",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "better wood click",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "increase wps 0.06%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "levels cheaper 0.9%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "produce more magic 5%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Gold" : {
		"1" : {
			"Name" : "Apple per click +2",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Apple storage +20",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +2",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "7% storage from woodcamps",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "Increase Oak per click 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "Unlock Research",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "Better Apple Click",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "multiply storage",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "lower wood production costs 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "faster research 0.1%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "Better wood price 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "add 2% of lower wood production",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "levels cheaper 0.6%",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "bots sell 10 more wood",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "fish better wood 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "dam effects 0.15%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "more fish appear 0.9%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "levels effects 4%",
			"Description" : "",
			"OtherText" : "",
		},
	},
}
