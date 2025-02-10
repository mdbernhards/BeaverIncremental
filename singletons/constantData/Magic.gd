extends Node

var Magic = {
	"1" : {
		"Name" : "Unlock Achievements",
		"Description" : "Unlock The Achievements section, gain bonuses by collecting achievements",
		"Cost" : 1,
	},
	"1b" : {
		"Name" : "-33% Woodcamp Price",
		"Description" : "All Woodcamp Prices lowered by 33%",
		"Cost" : 1,
	},
	"1bb" : {
		"Name" : "+30% Storage",
		"Description" : "Storage 30% bigger for all wood types",
		"Cost" : 2,
	},
	"1c" : {
		"Name" : "Woodcamps use 15% less",
		"Description" : "Woodcamps use 15% less wood for production",
		"Cost" : 3,
	},
	"2" : {
		"Name" : "37.5% WPS",
		"Description" : "Improve Wood per Second gain by 37.5%",
		"Cost" : 5,
	},
	"2b" : {
		"Name" : "+25 Clasic WPC",
		"Description" : "Flat +25 Wood Per Click for all Classic wood types",
		"Cost" : 6,
	},
	"3" : {
		"Name" : "2x Storage From WC",
		"Description" : "2x The Storage gained from Woodcamps",
		"Cost" : 8,
	},
	"4" : {
		"Name" : "+3 Starting Beavers",
		"Description" : "All wood types start with 3 more beavers",
		"Cost" : 10,
	},
	"4b" : {
		"Name" : "Research 42.5% quicker",
		"Description" : "Research time lowered by 42.5%",
		"Cost" : 13,
	},
	"5" : {
		"Name" : "Per Achievement 0.475% WPS",
		"Description" : "Wood Per Click is improved by 0.475% for each Achievement",
		"Cost" : 17,
	},
	"5b" : {
		"Name" : "Classic Upgrades 30% cheaper",
		"Description" : "All Classic wood type upgrades are 30% cheaper",
		"Cost" : 22,
	},
	"6" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 30,
	},
	"6b" : {
		"Name" : "Starting WC +2",
		"Description" : "All wood types start with +2 Woodcamps",
		"Cost" : 35,
	},
	"7" : {
		"Name" : "Research Times / 2",
		"Description" : "Research Times is Halved",
		"Cost" : 55,
	},
	"8" : {
		"Name" : "0.6% WPC Per Achievement",
		"Description" : "Increase Wood Per Click by 0.6% Per Achievement",
		"Cost" : 75,
	},
	"8a" : {
		"Name" : "Storage 20%",
		"Description" : "Increase Storage by 20%",
		"Cost" : 75,
	},
	"8b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 100,
	},
	"8bb" : {
		"Name" : "-0.25% Research Time Per Ach.",
		"Description" : "Lower Research Time by 0.25% Per Achievement",
		"Cost" : 125,
	},
	"9" : {
		"Name" : "15% WPC To WPS",
		"Description" : "For each wood Type transfer 15% of Wood Per Click to Wood Per Second",
		"Cost" : 175,
	},
	"9b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 225,
	},
	"10" : {
		"Name" : "Unlock Fishing",
		"Description" : "Unlock The Ability to Fish. Gain Fishing Bonuses",
		"Cost" : 250,
	},
	"10b" : {
		"Name" : "Rare Upgrades 85% Cheaper",
		"Description" : "All Rare Wood Type Upgrade become 85% Cheaper",
		"Cost" : 325,
	},
	"11" : {
		"Name" : "Gain 30% More Magic",
		"Description" : "Gain 30% More Magic then before",
		"Cost" : 375,
	},
	"12" : {
		"Name" : "50% Cheaper Woodcamps",
		"Description" : "All Woodcamps become 50% cheaper",
		"Cost" : 450,
	},
	"13" : {
		"Name" : "Unlock Research Slot 2",
		"Description" : "Unlock another research slot, Research two at a time",
		"Cost" : 530,
	},
	"14" : {
		"Name" : "2x Storage",
		"Description" : "Double All Storage",
		"Cost" : 600,
	},
	"15" : {
		"Name" : "Fish Sell For 22.5% More",
		"Description" : "Make all fish 22.5% more valuable",
		"Cost" : 700,
	},
	"16" : {
		"Name" : "Unlock Merchants",
		"Description" : "Unlocks Merchants, sell wood for gold every second",
		"Cost" : 760,
	},
	"16b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 880,
	},
	"17" : {
		"Name" : "15% WPC",
		"Description" : "Increase Wood Per Click by 15%",
		"Cost" : 900,
	},
	"18" : {
		"Name" : "Unlock Fishing Spot",
		"Description" : "Unlock another Fishing Spot to fish at",
		"Cost" : 950,
	},
	"19" : {
		"Name" : "Keep First 10 Research",
		"Description" : "After Ascending keep first 10 Research Items",
		"Cost" : 1000,
	},
	"20" : {
		"Name" : "WC Effects +15%",
		"Description" : "Improve Woodcamp storage and Wood Per Second by 15%",
		"Cost" : 1200,
	},
	"21" : {
		"Name" : "Research 17.5% faster",
		"Description" : "Research takes 17.5% less time",
		"Cost" : 1250,
	},
	"22" : {
		"Name" : "3.5% of Lower Tier Storage Added",
		"Description" : "Add 3.5% of lower tier storage to higher tier storage",
		"Cost" : 1400,
	},
	"23" : {
		"Name" : "Unlock Gold Upgrades",
		"Description" : "Unlock Upgrades that can be bought with gold",
		"Cost" : 1440,
	},
	"24" : {
		"Name" : "Wood Price 1.5x",
		"Description" : "All Wood Prices increased by 50%",
		"Cost" : 1550,
	},
	"24b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 1800,
	},
	"25" : {
		"Name" : "Unlock Baits",
		"Description" : "Unlock Baits that when applied increase fishing skills and rewards",
		"Cost" : 2000,
	},
	"26" : {
		"Name" : "Lower WC Production Costs 15%",
		"Description" : "Lower the wood used by 15% by Woodcamps",
		"Cost" : 2250,
	},
	"27" : {
		"Name" : "35% Storage From Woodcamps",
		"Description" : "Increase the storage from Woodcamps by 35%",
		"Cost" : 2275,
	},
	"27b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 2300,
	},
	"28" : {
		"Name" : "Unlock Fishing Spot",
		"Description" : "Unlock another Fishing Spot to fish at",
		"Cost" : 2400,
	},
	"29" : {
		"Name" : "Bait Effects 15%",
		"Description" : "Improve the Bait effects for fishing by 15%",
		"Cost" : 2500,
	},
	"30" : {
		"Name" : "Oak WPS 2x",
		"Description" : "Double The Oak Produced Every Second",
		"Cost" : 2750,
	},
	"31" : {
		"Name" : "More Fish Appear 25%",
		"Description" : "When Fishing 25% More Fish Appear",
		"Cost" : 3000,
	},
	"32" : {
		"Name" : "Per Achievement -0.1% WC Price",
		"Description" : "Lower Woodcamp Price by 0.1% Per Achievement",
		"Cost" : 3300,
	},
	"33" : {
		"Name" : "Unlock Research Slot 3",
		"Description" : "Unlock a third Research slot, to do 3 Research at a time",
		"Cost" : 4000,
	},
	"34" : {
		"Name" : "Magic Effects 2x",
		"Description" : "Double The Effects of Magic Count",
		"Cost" : 4500,
	},
	"35" : {
		"Name" : "Add 5% of Lower Tier Wood WPS",
		"Description" : "Add 5% of Wood Per Second from Lower Tier Wood To Higher Tier Wood",
		"Cost" : 4800,
	},
	"36" : {
		"Name" : "Wood Price +50%",
		"Description" : "Increase All Wood Price By 50%",
		"Cost" : 5000,
	},
	"37" : {
		"Name" : "Unlock Fishing Spot",
		"Description" : "Unlock another Fishing Spot to fish at",
		"Cost" : 7777,
	},
	"38" : {
		"Name" : "0.2% Storage Per Achievement",
		"Description" : "Increase All Storage by 0.2% Per Achievement",
		"Cost" : 8000,
	},
	"38b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 10000,
	},
	"39" : {
		"Name" : "Fish Rarer Fish 27.5%",
		"Description" : "When Fishing Improve Rare Fish Spawn Rate By 27.5%",
		"Cost" : 12500,
	},
	"40" : {
		"Name" : "Unlock Dams",
		"Description" : "Unlock Dams, Large Projects That Need a lot of resources and give Great Bonuses",
		"Cost" : 15000,
	},
	"41" : {
		"Name" : "40% Cheaper Merchants",
		"Description" : "Lower All Merchant Prices By 40%",
		"Cost" : 17500,
	},
	"42" : {
		"Name" : "+10 Starting Woodcamps",
		"Description" : "All Wood Types Get +10 Extra Woodcamps",
		"Cost" : 22500,
	},
	"43" : {
		"Name" : "Unlock Auto Research",
		"Description" : "Unlock The Ability To Queue Up Research Automaticly when there are enough Resources",
		"Cost" : 23500,
	},
	"44" : {
		"Name" : "Each Dam Gives 1% WPS",
		"Description" : "Improve Wood Per Second By 1% for Each Dam Built",
		"Cost" : 30000,
	},
	"45" : {
		"Name" : "+10 Starting Beavers",
		"Description" : "All Wood Types Get +10 Extra Beavers",
		"Cost" : 40000,
	},
	"46" : {
		"Name" : "Fish Stay 25% Longer",
		"Description" : "When Fishing fish stay 25% longer on the screen before despawning",
		"Cost" : 60000,
	},
	"47" : {
		"Name" : "Keep 20 more research",
		"Description" : "After Ascending keep first 20 Research Items",
		"Cost" : 75000,
	},
	"48" : {
		"Name" : "Gold Upgrades 35% Cheaper",
		"Description" : "All Gold Upgrades are 35% Cheaper",
		"Cost" : 80000,
	},
	"49" : {
		"Name" : "Keep Classic Wood Upgrades",
		"Description" : "After Ascending keep all Classic Wood Upgrades",
		"Cost" : 95000,
	},
	"49b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 97500,
	},
	"50" : {
		"Name" : "Dam Effects 15%",
		"Description" : "Improve All Dam effects by 15%",
		"Cost" : 100000,
	},
	"51" : {
		"Name" : "Unlock Fishing spot",
		"Description" : "Unlock another Fishing Spot to fish at",
		"Cost" : 200000,
	},
	"51b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 220000,
	},
	"52" : {
		"Name" : "Each Dam Gives 1% Gold PS",
		"Description" : "Improve Gold Per Second By 1% Per Dam",
		"Cost" : 245000,
	},
	"53" : {
		"Name" : "Merchants Sell 20% More Wood",
		"Description" : "All Merchants Sell 20% More Wood",
		"Cost" : 250000,
	},
	"54" : {
		"Name" : "Fish Price 2x",
		"Description" : "Double All Fish Prices",
		"Cost" : 300000,
	},
	"55" : {
		"Name" : "Keep Rare Wood Upgrades",
		"Description" : "After Ascending keep all Rare Wood Upgrades",
		"Cost" : 450000,
	},
	"56" : {
		"Name" : "Dams 30% Cheaper",
		"Description" : "Make Dams 30% Cheaper To Start Building",
		"Cost" : 550000,
	},
	"57" : {
		"Name" : "Keep Gold Upgrades",
		"Description" : "After Ascending keep all Gold Upgrades",
		"Cost" : 600000,
	},
	"58" : {
		"Name" : "Improve Magic Effects 2x",
		"Description" : "Double All Magic Effects",
		"Cost" : 700000,
	},
	"59" : {
		"Name" : "All Upgrades 50% Cheaper",
		"Description" : "Make All Upgrades 50% Cheaper",
		"Cost" : 800000,
	},
	"60" : {
		"Name" : "Gain Magic Without Ascention",
		"Description" : "Start Making Magic Without Ascending",
		"Cost" : 950000,
	},
	"61" : {
		"Name" : "Unlock Mega Dam",
		"Description" : "Unlock The Ability To Build Mega Dams",
		"Cost" : 1000000,
	},
}
