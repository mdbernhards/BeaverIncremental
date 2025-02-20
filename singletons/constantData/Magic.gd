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
		"Name" : "Storage 35%",
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
	"9" : { # here
		"Name" : "15% WPC To WPS",
		"Description" : "For each wood Type transfer 15% of Wood Per Click to Wood Per Second",
		"Cost" : 225,
	},
	"10" : {
		"Name" : "Unlock Fishing",
		"Description" : "Unlock The Ability to Fish. Gain Fishing Bonuses",
		"Cost" : 250,
	},
	"9b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 275,
	},
	"10b" : {
		"Name" : "Rare Upgrades 85% Cheaper",
		"Description" : "All Rare Wood Type Upgrade become 85% Cheaper",
		"Cost" : 350,
	},
	"11b" : {
		"Name" : "+20% Refund Chance",
		"Description" : "20% Bigger Chance To Refund A Fishing Chance When Failing To Catch A Fish",
		"Cost" : 440,
	},
	"11" : {
		"Name" : "Gain 30% More Magic",
		"Description" : "Gain 30% More Magic then before",
		"Cost" : 600,
	},
	"12" : {
		"Name" : "50% Cheaper Woodcamps",
		"Description" : "All Woodcamps become 50% cheaper",
		"Cost" : 620,
	},
	"10a" : {
		"Name" : "Unlock First 10 Research",
		"Description" : "Unlock First 10 Research Items Permenantly",
		"Cost" : 750,
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
		"Cost" : 900,
	},
	"17" : {
		"Name" : "15% WPC",
		"Description" : "Increase Wood Per Click by 15%",
		"Cost" : 1000,
	},
	"13" : {
		"Name" : "Unlock Research Slot 2",
		"Description" : "Unlock another research slot, Research two at a time",
		"Cost" : 1200,
	},
	"18" : {
		"Name" : "22% Slower Fish",
		"Description" : "Fish Swim 22% Slower",
		"Cost" : 1550,
	},
	"19" : {
		"Name" : "Keep 10 More Research",
		"Description" : "After Ascending keep 10 More Research Items",
		"Cost" : 1900,
	},
	"20" : {
		"Name" : "WC Effects +15%",
		"Description" : "Improve Woodcamp storage and Wood Per Second by 15%",
		"Cost" : 2300,
	},
	"21" : {
		"Name" : "Research 17.5% faster",
		"Description" : "Research takes 17.5% less time",
		"Cost" : 2890,
	},
	"21b" : {
		"Name" : "Classic WPC 2.5x",
		"Description" : "Classic WPC 2.5x",
		"Cost" : 3500,
	},
	"22" : {
		"Name" : "3.5% Lower Tier Storage",
		"Description" : "Add 3.5% of lower tier storage to higher tier storage",
		"Cost" : 3750,
	},
	"23" : {
		"Name" : "Unlock Gold Upgrades",
		"Description" : "Unlock Upgrades that can be bought with gold",
		"Cost" : 4500,
	},
	"24" : {
		"Name" : "Wood Price 1.5x",
		"Description" : "All Wood Prices increased by 50%",
		"Cost" : 5550,
	},
	"24b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 6250,
	},
	"25" : {
		"Name" : "+2 Bait When Buying",
		"Description" : "When Buying Bait Get 2 More",
		"Cost" : 7000,
	},
	"26" : {
		"Name" : "WC Wood Costs -15%",
		"Description" : "Lower the wood used by 15% by Woodcamps",
		"Cost" : 7750,
	},
	"26b" : {
		"Name" : "Classic, Rare WPC 2x",
		"Description" : "Classic, Rare WPC 2x",
		"Cost" : 8000,
	},
	"12b" : {
		"Name" : "Classic WPS 3.5x",
		"Description" : "All Classic Wood WPS Increased 3.5x",
		"Cost" : 8300,
	},
	"27" : {
		"Name" : "Woodcamp Storage 35%",
		"Description" : "Increase the storage from Woodcamps by 35%",
		"Cost" : 9000,
	},
	"27b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 10000,
	},
	"27c" : {
		"Name" : "Rare WPS +37.5%",
		"Description" : "Rare WPS +37.5%",
		"Cost" : 11000,
	},
	"28" : {
		"Name" : "Bonus From First 5 Fish",
		"Description" : "Increase Fish Bonus To Work For The First 5 Fish",
		"Cost" : 12500,
	},
	"29" : {
		"Name" : "Fishing Time 15% Longer",
		"Description" : "Have 15% More Time To Fish",
		"Cost" : 15000,
	},
	"14" : {
		"Name" : "Storage +50%",
		"Description" : "Increase Storage By 50%",
		"Cost" : 20000,
	},
	"30" : {
		"Name" : "Oak WPS 2x",
		"Description" : "Double The Oak Produced Every Second",
		"Cost" : 27500,
	},
	"31" : {
		"Name" : "More Fish Appear 25%",
		"Description" : "When Fishing 25% More Fish Appear",
		"Cost" : 30000,
	},
	"32" : {
		"Name" : "Per Achievement -0.1% WC Price",
		"Description" : "Lower Woodcamp Price by 0.1% Per Achievement",
		"Cost" : 33000,
	},
	"33" : {
		"Name" : "Unlock Research Slot 3",
		"Description" : "Unlock a third Research slot, to do 3 Research at a time",
		"Cost" : 35000,
	},
	"40" : {
		"Name" : "Unlock Dams",
		"Description" : "Unlock Dams, Large Projects That Need a lot of resources and give Great Bonuses",
		"Cost" : 40000,
	},
	"34" : {
		"Name" : "Magic Effects 2x",
		"Description" : "Double The Effects of Magic Count",
		"Cost" : 45000,
	},
	"35" : {
		"Name" : "Add 5% of Lower Tier Wood WPS",
		"Description" : "Add 5% of Wood Per Second from Lower Tier Wood To Higher Tier Wood",
		"Cost" : 48000,
	},
	"36" : {
		"Name" : "Wood Price +50%",
		"Description" : "Increase All Wood Price By 50%",
		"Cost" : 50000,
	},
	"37" : {
		"Name" : "+2 Bait When Buying",
		"Description" : "When Buying Bait Get 2 More",
		"Cost" : 77777,
	},
	"38" : {
		"Name" : "0.2% Storage Per Achievement",
		"Description" : "Increase All Storage by 0.2% Per Achievement",
		"Cost" : 80000,
	},
	"38b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 100000,
	},
	"39" : {
		"Name" : "Fish Effects 27.5% Stronger",
		"Description" : "All Fish effects become 27.5% better",
		"Cost" : 125000,
	},
	"41" : {
		"Name" : "40% Cheaper Merchants",
		"Description" : "Lower All Merchant Prices By 40%",
		"Cost" : 175000,
	},
	"42" : {
		"Name" : "+10 Starting Woodcamps",
		"Description" : "All Wood Types Get +10 Extra Woodcamps",
		"Cost" : 225000,
	},
	"43" : {
		"Name" : "Unlock Auto Research",
		"Description" : "Unlock The Ability To Queue Up Research Automaticly when there are enough Resources",
		"Cost" : 235000,
	},
	"44" : {
		"Name" : "Each Dam Gives 1% WPS",
		"Description" : "Improve Wood Per Second By 1% for Each Dam Built",
		"Cost" : 300000,
	},
	"45" : {
		"Name" : "+10 Starting Beavers",
		"Description" : "All Wood Types Get +10 Extra Beavers",
		"Cost" : 400000,
	},
	"46" : {
		"Name" : "Fish Stay 25% Longer",
		"Description" : "When Fishing fish stay 25% longer on the screen before despawning",
		"Cost" : 600000,
	},
	"47" : {
		"Name" : "Keep 20 more research",
		"Description" : "After Ascending keep first 20 Research Items",
		"Cost" : 750000,
	},
	"48" : {
		"Name" : "Gold Upgrades 35% Cheaper",
		"Description" : "All Gold Upgrades are 35% Cheaper",
		"Cost" : 800000,
	},
	"49" : {
		"Name" : "Keep Classic Wood Upgrades",
		"Description" : "After Ascending keep all Classic Wood Upgrades",
		"Cost" : 950000,
	},
	"49b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 975000,
	},
	"50" : {
		"Name" : "Dam Effects 15%",
		"Description" : "Improve All Dam effects by 15%",
		"Cost" : 1000000,
	},
	"51" : {
		"Name" : "Bonus From First 20 Fish",
		"Description" : "Increase Fish Bonus To Work For The First 20 Fish",
		"Cost" : 2000000,
	},
	"51b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 2200000,
	},
	"52" : {
		"Name" : "Each Dam Gives 1% Gold PS",
		"Description" : "Improve Gold Per Second By 1% Per Dam",
		"Cost" : 2450000,
	},
	"53" : {
		"Name" : "Merchants Sell 20% More Wood",
		"Description" : "All Merchants Sell 20% More Wood",
		"Cost" : 2500000,
	},
	"54" : {
		"Name" : "+1 Chance To Fish",
		"Description" : "Adds +1 Chance For Fishing",
		"Cost" : 3000000,
	},
	"55" : {
		"Name" : "Keep Rare Wood Upgrades",
		"Description" : "After Ascending keep all Rare Wood Upgrades",
		"Cost" : 4500000,
	},
	"56" : {
		"Name" : "Dams 30% Cheaper",
		"Description" : "Make Dams 30% Cheaper To Start Building",
		"Cost" : 5500000,
	},
	"57" : {
		"Name" : "Keep Gold Upgrades",
		"Description" : "After Ascending keep all Gold Upgrades",
		"Cost" : 6000000,
	},
	"58" : {
		"Name" : "Improve Magic Effects 2x",
		"Description" : "Double All Magic Effects",
		"Cost" : 7000000,
	},
	"59" : {
		"Name" : "All Upgrades 50% Cheaper",
		"Description" : "Make All Upgrades 50% Cheaper",
		"Cost" : 8000000,
	},
	"60" : {
		"Name" : "Gain Magic Without Ascention",
		"Description" : "Start Making Magic Without Ascending",
		"Cost" : 9500000,
	},
	"61" : {
		"Name" : "Unlock Mega Dam",
		"Description" : "Unlock The Ability To Build Mega Dams",
		"Cost" : 10000000,
	},
}
