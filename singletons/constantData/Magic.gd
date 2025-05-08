extends Node

var Magic = {
	"1" : {
		"Name" : "Unlock Achievements",
		"Description" : "Unlock The Achievements section, gain bonuses by collecting achievements",
		"Cost" : 3,
	},
	"1b" : {
		"Name" : "-33% Woodcamp Price",
		"Description" : "All Woodcamp Prices lowered by 33%",
		"Cost" : 10,
	},
	"1bb" : {
		"Name" : "+30% Storage",
		"Description" : "Storage 30% bigger for all wood types",
		"Cost" : 20,
	},
	"1c" : {
		"Name" : "Woodcamps use 15% less",
		"Description" : "Woodcamps use 15% less wood for production",
		"Cost" : 30,
	},
	"2" : {
		"Name" : "37.5% WPS",
		"Description" : "Improve Wood per Second gain by 37.5%",
		"Cost" : 50,
	},
	"2b" : {
		"Name" : "+25 Clasic WPC",
		"Description" : "Flat +25 Wood Per Click for all Classic wood types",
		"Cost" : 65,
	},
	"3" : {
		"Name" : "2x Storage From WC",
		"Description" : "2x The Storage gained from Woodcamps",
		"Cost" : 80,
	},
	"4" : {
		"Name" : "+3 Starting Beavers",
		"Description" : "All wood types start with 3 more beavers",
		"Cost" : 100,
	},
	"4b" : {
		"Name" : "Research 42.5% quicker",
		"Description" : "Research time lowered by 42.5%",
		"Cost" : 130,
	},
	"5" : {
		"Name" : "Per Achievement 0.475% WPS",
		"Description" : "Wood Per Click is improved by 0.475% for each Achievement",
		"Cost" : 170,
	},
	"5b" : {
		"Name" : "Classic Upgrades 30% cheaper",
		"Description" : "All Classic wood type upgrades are 30% cheaper",
		"Cost" : 220,
	},
	"6" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 300,
	},
	"6b" : {
		"Name" : "Starting WC +2",
		"Description" : "All wood types start with +2 Woodcamps",
		"Cost" : 350,
	},
	"7" : {
		"Name" : "Research Times / 2",
		"Description" : "Research Times is Halved",
		"Cost" : 450,
	},
	"8" : {
		"Name" : "0.6% WPC Per Achievement",
		"Description" : "Increase Wood Per Click by 0.6% Per Achievement",
		"Cost" : 650,
	},
	"8a" : {
		"Name" : "Storage 35%",
		"Description" : "Increase Storage by 20%",
		"Cost" : 800,
	},
	"8b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 900,
	},
	"8bb" : {
		"Name" : "-0.25% Research Time Per Ach.",
		"Description" : "Lower Research Time by 0.25% Per Achievement",
		"Cost" : 1000,
	},
	"9" : { # here
		"Name" : "15% WPC To WPS",
		"Description" : "For each wood Type transfer 15% of Wood Per Click to Wood Per Second",
		"Cost" : 1250,
	},
	"10" : {
		"Name" : "Unlock Fishing",
		"Description" : "Unlock The Ability to Fish. Gain Fishing Bonuses",
		"Cost" : 1400,
	},
	"9b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 1575,
	},
	"10b" : {
		"Name" : "Rare Upgrades 85% Cheaper",
		"Description" : "All Rare Wood Type Upgrade become 85% Cheaper",
		"Cost" : 1750,
	},
	"11b" : {
		"Name" : "+5% Fishing Refund",
		"Description" : "+5% Chance That a Fishing Chance gets refunded after use",
		"Cost" : 1940,
	},
	"11" : {
		"Name" : "Gain 30% More Magic",
		"Description" : "Gain 30% More Magic then before",
		"Cost" : 2000,
	},
	"12" : {
		"Name" : "50% Cheaper Woodcamps",
		"Description" : "All Woodcamps become 50% cheaper",
		"Cost" : 2500,
	},
	"10a" : {
		"Name" : "Unlock First 10 Research",
		"Description" : "Unlock First 10 Research Items Permenantly",
		"Cost" : 2750,
	},
	"15" : {
		"Name" : "Fish Sell For 22.5% More",
		"Description" : "Make all fish 22.5% more valuable",
		"Cost" : 3300,
	},
	"16" : {
		"Name" : "Unlock Merchants",
		"Description" : "Unlocks Merchants, sell wood for gold every second",
		"Cost" : 3500,
	},
	"16b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 3900,
	},
	"17" : {
		"Name" : "15% WPC",
		"Description" : "Increase Wood Per Click by 15%",
		"Cost" : 4000,
	},
	"13" : {
		"Name" : "Unlock Research Slot 2",
		"Description" : "Unlock another research slot, Research two at a time",
		"Cost" : 4444,
	},
	"18" : {
		"Name" : "20% Slower Fish",
		"Description" : "Fish Swim 20% Slower",
		"Cost" : 4550,
	},
	"19" : {
		"Name" : "Keep 10 More Research",
		"Description" : "After Ascending keep 10 More Research Items",
		"Cost" : 5100,
	},
	"20" : {
		"Name" : "WC Effects +15%",
		"Description" : "Improve Woodcamp storage and Wood Per Second by 15%",
		"Cost" : 5500,
	},
	"21" : {
		"Name" : "Research 17.5% faster",
		"Description" : "Research takes 17.5% less time",
		"Cost" : 6190,
	},
	"21b" : {
		"Name" : "Classic WPC 2.5x",
		"Description" : "Classic WPC 2.5x",
		"Cost" : 6500,
	},
	"22" : {
		"Name" : "3.5% Lower Tier Storage",
		"Description" : "Add 3.5% of lower tier storage to higher tier storage",
		"Cost" : 7250,
	},
	"23" : {
		"Name" : "Unlock Gold Upgrades",
		"Description" : "Unlock Upgrades that can be bought with gold",
		"Cost" : 8500,
	},
	"24" : {
		"Name" : "Wood Price 1.5x",
		"Description" : "All Wood Prices increased by 50%",
		"Cost" : 9250,
	},
	"24b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 9999,
	},
	"25" : {
		"Name" : "+2 Bait When Buying",
		"Description" : "When Buying Bait Get 2 More",
		"Cost" : 10000,
	},
	"26" : {
		"Name" : "WC Wood Costs -15%",
		"Description" : "Lower the wood used by 15% by Woodcamps",
		"Cost" : 11500,
	},
	"26b" : {
		"Name" : "Classic, Rare WPC 2x",
		"Description" : "Classic, Rare WPC 2x",
		"Cost" : 12500,
	},
	"12b" : {
		"Name" : "Classic WPS 3.5x",
		"Description" : "All Classic Wood WPS Increased 3.5x",
		"Cost" : 13000,
	},
	"27" : {
		"Name" : "Woodcamp Storage 35%",
		"Description" : "Increase the storage from Woodcamps by 35%",
		"Cost" : 15000,
	},
	"27b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 17500,
	},
	"27c" : {
		"Name" : "Rare WPS +37.5%",
		"Description" : "Rare WPS +37.5%",
		"Cost" : 20000,
	},
	"28" : {
		"Name" : "Bonus From First 5 Fish",
		"Description" : "Increase Fish Bonus To Work For The First 5 Fish",
		"Cost" : 25000,
	},
	"29" : {
		"Name" : "Fishing Time 5% Longer",
		"Description" : "Have 5% More Time To Fish",
		"Cost" : 33000,
	},
	"14" : {
		"Name" : "Storage +50%",
		"Description" : "Increase Storage By 50%",
		"Cost" : 45000,
	},
	"30" : {
		"Name" : "Oak WPS 2x",
		"Description" : "Double The Oak Produced Every Second",
		"Cost" : 50000,
	},
	"31" : {
		"Name" : "More Fish Appear 10%",
		"Description" : "When Fishing 10% More Fish Appear",
		"Cost" : 52500,
	},
	"32" : {
		"Name" : "Per Achiev. -0.1% WC Price",
		"Description" : "Lower Woodcamp Price by 0.1% Per Achievement",
		"Cost" : 65000,
	},
	"33" : {
		"Name" : "Unlock Research Slot 3",
		"Description" : "Unlock a third Research slot, to do 3 Research at a time",
		"Cost" : 77777,
	},
	"40" : {
		"Name" : "Unlock Dams",
		"Description" : "Unlock Dams, Large Projects That Need a lot of resources and give Great Bonuses",
		"Cost" : 100000,
	},
	"34" : {
		"Name" : "Magic Effects 2x",
		"Description" : "Double The Effects of Magic Count",
		"Cost" : 125000,
	},
	"35" : {
		"Name" : "5% of Lower Tier Wood WPS",
		"Description" : "Add 5% of Wood Per Second from Lower Tier Wood To Higher Tier Wood",
		"Cost" : 150000,
	},
	"36" : {
		"Name" : "Wood Price +50%",
		"Description" : "Increase All Wood Price By 50%",
		"Cost" : 200000,
	},
	"37" : {
		"Name" : "+2 Bait When Buying",
		"Description" : "When Buying Bait Get 2 More",
		"Cost" : 250000,
	},
	"38" : {
		"Name" : "0.2% Storage Per Achievement",
		"Description" : "Increase All Storage by 0.2% Per Achievement",
		"Cost" : 300000,
	},
	"38a" : {
		"Name" : "Dam Construction Speed 50%",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 50%",
		"Cost" : 333333,
	},
	"38b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 350000,
	},
	"39" : {
		"Name" : "Fish Effects 10% Stronger",
		"Description" : "All Fish effects become 27.5% better",
		"Cost" : 400000,
	},
	"41" : {
		"Name" : "40% Cheaper Merchants",
		"Description" : "Lower All Merchant Prices By 40%",
		"Cost" : 450000,
	},
	"42" : {
		"Name" : "+10 Starting Woodcamps",
		"Description" : "All Wood Types Get +10 Extra Woodcamps",
		"Cost" : 500000,
	},
	"43" : {
		"Name" : "Unlock Auto Research",
		"Description" : "Unlock The Ability To Queue Up Research Automaticly when there are enough Resources",
		"Cost" : 666666,
	},
	"44" : {
		"Name" : "Dam Construction Speed 2x",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 2x",
		"Cost" : 1000000,
	},
	"45" : {
		"Name" : "+15 Starting Beavers",
		"Description" : "All Wood Types Get +15 Extra Beavers",
		"Cost" : 2000000,
	},
	"45b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 2500000,
	},
	"46" : {
		"Name" : "Fish Stay 15% Longer",
		"Description" : "When Fishing fish stay 15% longer on the screen before despawning",
		"Cost" : 3000000,
	},
	"46b" : {
		"Name" : "Classic, Rare Price -20%",
		"Description" : "Classic and Rare Upgrade Price -20%",
		"Cost" : 3500000,
	},
	"46c" : {
		"Name" : "Classic, Rare Storage 25%",
		"Description" : "Classic and Rare Storage increased by 25%",
		"Cost" : 3750000,
	},
	"47" : {
		"Name" : "Keep 10 more research",
		"Description" : "After Ascending keep first 10 Research Items",
		"Cost" : 4250000,
	},
	"47b" : {
		"Name" : "Dam Construction Speed 2.25x",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 2.25x",
		"Cost" : 4750000,
	},
	"48" : {
		"Name" : "Gold Upgrades 55% Cheaper",
		"Description" : "All Gold Upgrades are 55% Cheaper",
		"Cost" : 5000000,
	},
	"48b" : {
		"Name" : "Ebony, Mahogany Storage 3x",
		"Description" : "Ebony and Mahogany Storage 3x",
		"Cost" : 8500000,
	},
	"48c" : {
		"Name" : "Merchant Price -20%",
		"Description" : "Merchant Price -20%",
		"Cost" : 9000000,
	},
	"48d" : {
		"Name" : "Achievement Effects 25%",
		"Description" : "Achievement Effects 25%",
		"Cost" : 10000000,
	},
	"48e" : {
		"Name" : "Classic Upgrades -50%",
		"Description" : "Classic Upgrades -50%",
		"Cost" : 12500000,
	},
	"48f" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 15000000,
	},
	"48g" : {
		"Name" : "Half Research Time",
		"Description" : "Half Research Time",
		"Cost" : 17500000,
	},
	"57" : {
		"Name" : "Keep Gold Upgrades",
		"Description" : "After Ascending keep all Gold Upgrades",
		"Cost" : 18500000,
	},
	"57a" : {
		"Name" : "Classic, Rare WPS x2",
		"Description" : "Classic, Rare WPS x2",
		"Cost" : 19750000,
	},
	"57b" : {
		"Name" : "Oak Merchant Price -75%",
		"Description" : "Oak Merchant Price -75%",
		"Cost" : 23000000,
	},
	"49b" : {
		"Name" : "Autoclicker ticks -0.1 sec",
		"Description" : "Autoclicker ticks take 0.1 second less (default 1 sec)",
		"Cost" : 25500000,
	},
	"49c" : {
		"Name" : "Wood Price 55%",
		"Description" : "Wood Price 55%",
		"Cost" : 40000000,
	},
	"49d" : {
		"Name" : "Spruce, Ash WPS 27.5%",
		"Description" : "Spruce, Ash WPS 27.5%",
		"Cost" : 70000000,
	},
	"51" : {
		"Name" : "Bonus From First 10 Fish",
		"Description" : "Increase Fish Bonus To Work For The First 10 Fish",
		"Cost" : 80000000,
	},
	"51a" : {
		"Name" : "Chestnut, Mahogany Storage 2x",
		"Description" : "Chestnut, Mahogany Storage 2x",
		"Cost" : 120000000,
	},
	"51b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 200000000,
	},
	"51c" : {
		"Name" : "Birch Storage 30%",
		"Description" : "Birch Storage 30%",
		"Cost" : 300000000,
	},
	"51d" : {
		"Name" : "Woodcamp Price -15%",
		"Description" : "Woodcamp Price -15%",
		"Cost" : 420000000,
	},
	"52" : {
		"Name" : "Dam Construction Speed 2.5x",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 2.5x",
		"Cost" : 550000000,
	},
	"52a" : {
		"Name" : "Keep 10 more research",
		"Description" : "After Ascending keep 10 More Research Items",
		"Cost" : 700000000,
	},
	"52b" : {
		"Name" : "Fish Price 2x",
		"Description" : "Fish Price 2x",
		"Cost" : 875000000,
	},
	"52c" : {
		"Name" : "Rare, Mythic Storage 35%",
		"Description" : "Rare, Mythic Storage 35%",
		"Cost" : 1350000000,
	},
	"53" : {
		"Name" : "Merchants Sell 20% More",
		"Description" : "All Merchants Sell 20% More Wood",
		"Cost" : 1750000000,
	},
	"53b" : {
		"Name" : "Achievement Storage 25%",
		"Description" : "Achievement Storage 25%",
		"Cost" : 2000000000,
	},
	"54" : {
		"Name" : "+1 Chance To Fish",
		"Description" : "Adds +1 Chance For Fishing",
		"Cost" : 3000000000,
	},
	"54b" : {
		"Name" : "Rare Upgrades -66%",
		"Description" : "Rare Upgrades 66% Cheaper",
		"Cost" : 3850000000,
	},
	"54a" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 5500000000,
	},
	"54c" : {
		"Name" : "Dam Construction Speed 2x",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 2x",
		"Cost" : 8000000000,
	},
	"56b" : {
		"Name" : "Merchants Sell 2.5x More",
		"Description" : "Merchants Sell 2.5x More",
		"Cost" : 14000000000,
	},
	#"49" : {
	#	"Name" : "Keep Classic Wood Upgrades",
	#	"Description" : "After Ascending keep all Classic Wood Upgrades",
	#	"Cost" : 20000000000,
	#},
	"55b" : {
		"Name" : "Keep 10 more research",
		"Description" : "After Ascending keep 10 More Research Items",
		"Cost" : 22500000000,
	},
	"55c" : {
		"Name" : "2x Classic, Rare Wood Price",
		"Description" : "2x Classic, Rare Wood Price",
		"Cost" : 28500000000,
	},
	"55d" : {
		"Name" : "Magic Effect 15%",
		"Description" : "Magic Effect 15%",
		"Cost" : 39990000000,
	},
	"56a" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 50000000000,
	},
	"56c" : {
		"Name" : "Mythic Upgrades -75%",
		"Description" : "Mythic Upgrades -75%",
		"Cost" : 65000000000,
	},
	"50" : {
		"Name" : "Dam Effects 25%",
		"Description" : "Improve All Dam Section effects by 15%",
		"Cost" : 90000000000,
	},
	"50a" : {
		"Name" : "Achievement Effect 22.5%",
		"Description" : "Achievement Effect 22.5%",
		"Cost" : 100000000000,
	},
	"56d" : {
		"Name" : "Dam Construction Speed 40%",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 40%",
		"Cost" : 175000000000,
	},
	"56e" : {
		"Name" : "Half Research Time",
		"Description" : "Half The Time Research Takes",
		"Cost" : 225000000000,
	},
	"59" : {
		"Name" : "All Upgrades 50% Cheaper",
		"Description" : "Make All Upgrades 50% Cheaper",
		"Cost" : 300000000000,
	},
	"59a" : {
		"Name" : "Magic Storage Effect 17.5%",
		"Description" : "Magic Storage Effect 17.5%",
		"Cost" : 400000000000,
	},
	"59b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 450000000000,
	},
	"59bb" : {
		"Name" : "Dam Construction Speed 35%",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction By 40%",
		"Cost" : 750000000000,
	},
	"60" : {
		"Name" : "Beaver Price -70%",
		"Description" : "Beaver Price -70%",
		"Cost" : 1000000000000,
	},
	#"55" : {
	#	"Name" : "Keep Rare Wood Upgrades",
	#	"Description" : "After Ascending keep all Rare Wood Upgrades",
	#	"Cost" : 1000000000001,
	#},
	"56" : {
		"Name" : "Dam Effects 40%",
		"Description" : "Improve All Dam Section effects by 20%",
		"Cost" : 1500000000000,
	},
	"58" : {
		"Name" : "Improve Magic Effects 2x",
		"Description" : "Double All Magic Effects",
		"Cost" : 1555500000000,
	},
	"60a" : {
		"Name" : "Woodcamp Price -55%",
		"Description" : "Woodcamp Price -55%",
		"Cost" : 2250000000000,
	},
	"60b" : {
		"Name" : "+1 Auto Clicker",
		"Description" : "+1 Auto Clicker, every second clicks for you!",
		"Cost" : 3550000000000,
	},
	"60bb" : {
		"Name" : "Half Research Time",
		"Description" : "Half The Time Research Takes",
		"Cost" : 4440000000000,
	},
	"60c" : {
		"Name" : "Storage x2",
		"Description" : "Storage x2",
		"Cost" : 6000000000000,
	},
	"61" : {
		"Name" : "Dam Construction Speed 3x",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction 3x",
		"Cost" : 8500000000000,
	},
	"59c" : {
		"Name" : "WPC x10",
		"Description" : "WPC x10",
		"Cost" : 15000000000000,
	},
	"59d" : {
		"Name" : "WPS x5",
		"Description" : "WPS x5",
		"Cost" : 20000000000000,
	},
	"61b" : {
		"Name" : "Dam Construction Speed 5x",
		"Description" : "Increases The Speed That Materials are Consumed For Dam Construction 3x",
		"Cost" : 25000000000000,
	},
}
