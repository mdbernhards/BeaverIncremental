extends Node

# Notes: think about each playtrough randomising the upgrades that unlock first, ofc based on unlocked mechanics

var UpgradePositions = {
	"Oak" : [1, 2, 3, 5, 4, 7, 16, 6, 14, 10, 11, 12, 13, 9, 15, 8, 17, 18],
	"Apple" : [1, 2, 3, 6, 7, 4, 5, 10, 9, 8, 11, 12, 13, 14, 15, 16, 17, 18],
	"Maple" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Birch" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Spruce" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Chestnut" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Cherry" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Ash" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Cedar" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Mahogany" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Ebony" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Dogwood" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Rosewood" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Ghost Gum" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Dragonwood" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
	"Gold" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
}

var Upgrades = {
	"Oak" : {
		"1" : {
			"Name" : "Oak per Beaver +0.25",
			"Description" : "Increases base Oak gathered by Beaver by 0.25",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Oak storage +100",
			"Description" : "Increases base Oak storage capacity by 100",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +0.5",
			"Description" : "Increases The Oak woodcamp base wood gain by 0.5",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "1.5% wpc tp wps",
			"Description" : "Increases wood gathered per click by an additional 1",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "Unlock Apple Wood",
			"SecondaryName" : "10% cheaper Beavers",
			"Description" : "Unlocks Apple wood for production",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "Per WC +1 Beaver",
			"Description" : "",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "Faster research 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "12% storage from WC",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "7% cheaper WC's",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Upgrades 2.25% cheaper",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "6% Cheaper bots",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "5% More Magic",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : " add 2% WPC to WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Better wood price 0.005",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "2% More Fish",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "4.5% storage",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "Cheaper bots 4%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "Fish price 5%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Apple" : {
		"1" : {
			"Name" : "Apple per Beaver +0.3",
			"Description" : "Increases base Apple gathered by Beaver by 0.3",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Apple storage +110",
			"Description" : "Increases base Apple storage capacity by 110",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +1",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "WPS 4.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "Oak WPS 12.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "Unlock Research",
			"SecondaryName" : "7.5% Storage",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "9% Cheaper Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "1.75x storage",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "WC use 2.5% less wood",
			"Description" : "in wood production use 2.5% less lower tier wood",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Faster research 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "Better wood price +1",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "2% of Oak Production",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "Gold upgrades -0.7% cheaper",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "bots sell +10 wood",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "fish better wood 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "dam effects 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "more fish 0.9%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "WC effects 5%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Maple" : {
		"1" : {
			"Name" : "Maple per Beaver +0.35",
			"Description" : "Increases base Maple gathered by Beaver by 0.35",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Maple storage +120",
			"Description" : "Increases base Maple storage capacity by 120",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +1.5",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "cheaper WC 5%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "per achiv -0.2% WC price",
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
			"Name" : "Birch per Beaver +0.4",
			"Description" : "Increases base Birch gathered by Beaver by 0.4",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Birch storage +130",
			"Description" : "Increases base Birch storage capacity by 130",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +2",
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
			"Name" : "Better wood price 0.5%",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Spruce" : {
		"1" : {
			"Name" : "Birch per Beaver +0.45",
			"Description" : "Increases base Spruce gathered by Beaver by 0.45",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Spruce storage +140",
			"Description" : "Increases base Spruce storage capacity by 140",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +2.5",
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
			"Name" : "Chestnut per Beaver +0.5",
			"Description" : "Increases base Chestnut gathered by Beaver by 0.5",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Chestnut storage +150",
			"Description" : "Increases base Chestnut storage capacity by 150",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +3",
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
			"Name" : "WPC add 2% wps",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Better wood price 0.3%",
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
			"Name" : "Cherry per Beaver +0.55",
			"Description" : "Increases base Cherry gathered by Beaver by 0.55",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Cherry storage +160",
			"Description" : "Increases base Cherry storage capacity by 160",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +3.5",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "faster research 0.2%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "All production +0.3%",
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
			"Name" : "All WC effects 1.5%",
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
			"Name" : "0.09% wps per achievement",
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
			"Name" : "Ash per Beaver +0.6",
			"Description" : "Increases base Ash gathered by Beaver by 0.6",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Ash storage +170",
			"Description" : "Increases base Ash storage capacity by 170",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +4",
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
			"Name" : "Cedar per Beaver +0.65",
			"Description" : "Increases base Cedar gathered by Beaver by 0.65",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Cedar storage +180",
			"Description" : "Increases base Cedar storage capacity by 180",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +4.5",
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
			"Name" : "increase storage by 18%",
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
			"Name" : "Mahogany per Beaver +0.7",
			"Description" : "Increases base Mahogany gathered by Beaver by 0.7",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Mahogany storage +190",
			"Description" : "Increases base Mahogany storage capacity by 190",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +5",
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
			"Name" : "Better wood price 2.6%",
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
			"Name" : "market fish upgrade 1.4%",
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
			"Name" : "each dam 1% wood gain",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ebony" : {
		"1" : {
			"Name" : "Ebony per Beaver +0.75",
			"Description" : "Increases base Ebony gathered by Beaver by 0.75",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Ebony storage +200",
			"Description" : "Increases base Ebony storage capacity by 200",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +5.5",
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
			"Name" : "lvl effect per achivem. 0.02%",
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
			"Name" : "Dogwood per Beaver +0.8",
			"Description" : "Increases base Dogwood gathered by Beaver by 0.8",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Dogwood storage +210",
			"Description" : "Increases base Dogwood storage capacity by 210",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +6",
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
			"Name" : "Wpc 0.2% per achievement",
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
			"Name" : "Rosewood per Beaver +0.85",
			"Description" : "Increases base Rosewood gathered by Beaver by 0.85",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Rosewood storage +220",
			"Description" : "Increases base Rosewood storage capacity by 220",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "wps per woodcamp +6.5",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "cheaper reaserch 1%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "bots sell better price 0.2%",
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
			"Name" : "Ghost Gum per Beaver +0.9",
			"Description" : "Increases base Ghost Gum gathered by Beaver by 0.9",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Ghost Gum storage +230",
			"Description" : "Increases base Ghost Gum storage capacity by 230",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +7",
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
			"Name" : "WPC add 3% WPS",
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
			"Name" : "Dragonwood per Beaver +0.95",
			"Description" : "Increases base Dragonwood gathered by Beaver by 0.95",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Dragonwood storage +240",
			"Description" : "Increases base Dragonwood storage capacity by 240",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Woodcamp WPS +7.5",
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
			"Name" : "Better wood price 3.1%",
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
			"Name" : "Better Beavers 5%",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "Better Woodcamps 8.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "Storage 7.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "Research Time -1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "Base Beavers +7",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "Gold upgrades 0.3% better",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "Better bait 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "Cheaper woodcamps 1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "Better wood price 3%",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Improve magic effects 4.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"11" :  {
			"Name" : "bot effect amount 7%",
			"Description" : "",
			"OtherText" : "",
		},
		"12" :  {
			"Name" : "cheaper bait 2%",
			"Description" : "",
			"OtherText" : "",
		},
		"13" :  {
			"Name" : "Fish stay 0.75% longer",
			"Description" : "",
			"OtherText" : "",
		},
		"14" :  {
			"Name" : "Beaver price -3.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"15" :  {
			"Name" : "Upgrade price -1.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"16" :  {
			"Name" : "Magic production 4%",
			"Description" : "",
			"OtherText" : "",
		},
		"17" :  {
			"Name" : "Fish price 8%",
			"Description" : "",
			"OtherText" : "",
		},
		"18" :  {
			"Name" : "Dam price -2.5%",
			"Description" : "",
			"OtherText" : "",
		},
	},
}
