extends Node

var UpgradePositions = {
	"Oak" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Apple" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Maple" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Birch" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Spruce" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Chestnut" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Cherry" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Ash" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Cedar" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Mahogany" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Ebony" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Dogwood" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Rosewood" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Ghost Gum" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Dragonwood" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
	"Gold" : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
}

var Upgrades = {
	"Oak" : {
		"1" : {
			"Name" : "+0.3 Oak Per Beaver",
			"Description" : "Increases base Oak gathered per Beaver by +0.3",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+100 Oak Storage",
			"Description" : "Increases base Oak storage capacity by 100",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : " +0.5 Woodcamp WPS",
			"Description" : "Increases The Oak woodcamp base wood gain by 0.5",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "Unlock Apple Wood",
			"SecondaryName" : "10% Cheaper Beavers",
			"Description" : "Unlocks Apple wood for production",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "4.5% More Storage",
			"Description" : "Increases wood gathered per click by an additional 1",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+1 Beaver Per WC",
			"Description" : "",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+0.005 Oak Price",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "5% Cheaper Dams",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "1% Faster Research",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "All Upgrades 0.5% Cheaper",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Apple" : {
		"1" : {
			"Name" : "+0.35 Apple Per Beaver",
			"Description" : "Increases base Apple gathered by Beaver by 0.3",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+110 Apple Storage",
			"Description" : "Increases base Apple storage capacity by 110",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+1 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "Unlock Research",
			"SecondaryName" : "7.5% More Storage",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "Oak WPS 12.5%",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+4.5% WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "WC Uses 2.5% Less Wood",
			"Description" : "in wood production use 2.5% less lower tier wood",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "2% Faster Research",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "1.5% Dam Effects",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+5% Fish Price",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Maple" : {
		"1" : {
			"Name" : "+0.4 Maple Per Beaver",
			"Description" : "Increases base Maple gathered by Beaver by 0.35",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+120 Maple Storage",
			"Description" : "Increases base Maple storage capacity by 120",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+1.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "5% Cheaper WC",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+9.5% WC Storage",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "1.1% WPC to WPS",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "9% Cheaper Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "Bots Sell 4% More",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+0.05 Global WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "12% More Magic",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Birch" : {
		"1" : {
			"Name" : "+0.45 Birch Per Beaver",
			"Description" : "Increases base Birch gathered by Beaver by 0.4",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+130 Birch Storage",
			"Description" : "Increases base Birch storage capacity by 130",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+2 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "+100 Storage Per Beaver",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+1.3% WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+3% Storage",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "5% Global Wood Price",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "4% Cheaper Bait",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "3% Cheaper Bots",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+2% Dam Construction Speed",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Spruce" : {
		"1" : {
			"Name" : "+0.5 Birch Per Beaver",
			"Description" : "Increases base Spruce gathered by Beaver by 0.45",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+140 Spruce storage",
			"Description" : "Increases base Spruce storage capacity by 140",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+2.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "6% More Storage",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+2.5% WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+3% WPC Per WC",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "WC Uses 0.5% Less Wood",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "2% Cheaper Dams",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+15 Wood Sold Per Bot",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "Fish Stay 0.15% Longer",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Chestnut" : {
		"1" : {
			"Name" : "+0.55 Chestnut Per Beaver",
			"Description" : "Increases base Chestnut gathered by Beaver by 0.5",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+150 Chestnut Storage",
			"Description" : "Increases base Chestnut storage capacity by 150",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+3 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "+5% WC Effects",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "2% WPC To WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+1 Beaver Per WC",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+100 Chestnut Price",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "+0.75% WPC Per WC",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "0.45% Cheaper Gold Upgrades",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "5% More Magic",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Cherry" : {
		"1" : {
			"Name" : "+0.6 Cherry Per Beaver",
			"Description" : "Increases base Cherry gathered by Beaver by 0.55",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+160 Cherry Storage",
			"Description" : "Increases base Cherry storage capacity by 160",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+3.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "7.5% WPC To WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "3% Cheaper Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+1% Cherry Price",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "12% More Storage",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "0.2% Faster Research",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+0.25% Fish Effects",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+0.25% Gold Gain Per Dam",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ash" : {
		"1" : {
			"Name" : "+0.65 Ash Per Beaver",
			"Description" : "Increases base Ash gathered by Beaver by 0.6",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+170 Ash Storage",
			"Description" : "Increases base Ash storage capacity by 170",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+4 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "17.5% Storage From WC",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "1.9% WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+1 Beaver Per 15 Cherry Beavers",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "5% Cheaper Upgrades",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "0.6% Cheaper Research",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+0.3% Global Wood Price",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "0.85% More Fish",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Cedar" : {
		"1" : {
			"Name" : "+0.7 Cedar Per Beaver",
			"Description" : "Increases base Cedar gathered by Beaver by 0.65",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+180 Cedar Storage",
			"Description" : "Increases base Cedar storage capacity by 180",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+4.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "+1 Beaver Per 5 WC's",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+3% Storage Per Beaver",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "7% Cheaper WC's",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "0.3% WPC To WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "+0.45% Global Wood Price",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "3.5% More Magic",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "1% Cheaper WC Globaly",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Mahogany" : {
		"1" : {
			"Name" : "+0.75 Mahogany Per Beaver",
			"Description" : "Increases base Mahogany gathered by Beaver by 0.7",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+190 Mahogany Storage",
			"Description" : "Increases base Mahogany storage capacity by 190",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "5% Cheaper Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+1 WC Per 20 Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+10% WC Effects",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+0.09% Global WPS Per Achievement",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "+0.6% Global WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "0.09% Faster Dam Construction Per Beaver",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+0.75% Bait Effects",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ebony" : {
		"1" : {
			"Name" : "+0.8 Ebony Per Beaver",
			"Description" : "Increases base Ebony gathered by Beaver by 0.75",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+200 Ebony Storage",
			"Description" : "Increases base Ebony storage capacity by 200",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+5.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "+1 WC Per 10 Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "1.5% WPC TO WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+1 Beaver Per WC",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+10000 Ebony Price",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "3% Slower Fish",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "5% Cheaper Bots",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+0.27% Global WPS",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Dogwood" : {
		"1" : {
			"Name" : "+0.85 Dogwood Per Beaver",
			"Description" : "Increases base Dogwood gathered by Beaver by 0.8",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+210 Dogwood Storage",
			"Description" : "Increases base Dogwood storage capacity by 210",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+6 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "0.75% WPC To WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "WC's Use 3% Less Wood",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+2% Storage Per Beaver",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+6% WPC",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "Bots Sell 5% More Wood",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+7.5% Fish Price",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+0.3% Global Wood Gain Per Dam",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Rosewood" : {
		"1" : {
			"Name" : " +0.9 Rosewood Per Beaver",
			"Description" : "Increases base Rosewood gathered by Beaver by 0.85",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+220 Rosewood Storage",
			"Description" : "Increases base Rosewood storage capacity by 220",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+6.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "20% Cheaper Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "2% More Storage",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "0.2% WPS Per Beaver",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+300 Storage Per Beaver",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "0.3% Faster Research",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+0.07% Global WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "+3% Dam Effects",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Ghost Gum" : {
		"1" : {
			"Name" : "+0.95 Ghost Gum Per Beaver",
			"Description" : "Increases base Ghost Gum gathered by Beaver by 0.9",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+230 Ghost Gum Storage",
			"Description" : "Increases base Ghost Gum storage capacity by 230",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+7 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "Beaver Gets +0.7 Wood Per Woodcamp",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "7% Cheaper Woodcamps",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+7% Storage From WC",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+1 WC Per 7 Beavers",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "+4% Global Wood Price",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+5.5% Global Storage",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "2% Faster Dam Construction",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Dragonwood" : {
		"1" : {
			"Name" : "+1 Dragonwood Per Beaver",
			"Description" : "Increases base Dragonwood gathered by Beaver by 0.95",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "+240 Dragonwood Storage",
			"Description" : "Increases base Dragonwood storage capacity by 240",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "+7.5 Woodcamp WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "WC Uses 8% Less Wood",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+11% WPS",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "+6.5% Storage Per Beaver",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "+1 Beaver Per 10 WC's",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "5% Cheaper Dam Construction",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "5% Cheaper Global Upgrades",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "6% More Magic",
			"Description" : "",
			"OtherText" : "",
		},
	},
	"Gold" : {
		"1" : {
			"Name" : "5% Better Beavers",
			"Description" : "Increases wood gathered per click by 2",
			"OtherText" : "",
		},
		"2" :  {
			"Name" : "8.5% Better Woodcamps",
			"Description" : "",
			"OtherText" : "",
		},
		"3" :  {
			"Name" : "7.5% More Storage",
			"Description" : "",
			"OtherText" : "",
		},
		"4" :  {
			"Name" : "0.5% Faster Research",
			"Description" : "",
			"OtherText" : "",
		},
		"5" :  {
			"Name" : "+3% Wood Price",
			"Description" : "",
			"OtherText" : "",
		},
		"6" :  {
			"Name" : "3.5% Cheaper Beavers",
			"Description" : "Unlocks Research",
			"OtherText" : "",
		},
		"7" :  {
			"Name" : "1.5% Cheaper Woodcamps",
			"Description" : "",
			"OtherText" : "",
		},
		"8" :  {
			"Name" : "3% More Magic",
			"Description" : "",
			"OtherText" : "",
		},
		"9" :  {
			"Name" : "+2.5% Bot Price",
			"Description" : "",
			"OtherText" : "",
		},
		"10" :  {
			"Name" : "2.5% Cheaper Dams",
			"Description" : "",
			"OtherText" : "",
		},
	},
}
