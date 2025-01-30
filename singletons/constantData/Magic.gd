extends Node

var Magic = {
	"1" : {
		"Name" : "Unlock Achievements",
		"Description" : "Unlock The Achievements section, gain bonuses by collecting achievements",
		"Cost" : 1,
	},
	"1b" : {
		"Name" : "-27.5% Woodcamp Price",
		"Description" : "-25% Woodcamp Price",
		"Cost" : 1,
	},
	"1bb" : {
		"Name" : "+30% Storage",
		"Description" : "-25% Woodcamp Price",
		"Cost" : 2,
	},
	"1c" : {
		"Name" : "Woodcamps use 15% less",
		"Description" : "Woodcamps use 10% less wood",
		"Cost" : 3,
	},
	"2" : {
		"Name" : "35% WPS",
		"Description" : "Improve Wood per Second gain by 20%",
		"Cost" : 5,
	},
	"3" : {
		"Name" : "2x Storage From WC",
		"Description" : "2x The Storage gained from Woodcamps",
		"Cost" : 8,
	},
	"4" : {
		"Name" : "Starting Beavers +2",
		"Description" : "All wood types start with 2 more beavers",
		"Cost" : 10,
	},
	"5" : {
		"Name" : "Per Achievement 0.35% WPS",
		"Description" : "",
		"Cost" : 14,
	},
	"5b" : {
		"Name" : "Upgrades 10% cheaper",
		"Description" : "",
		"Cost" : 20,
	},
	"6" : {
		"Name" : "Unlock Storage Overloading",
		"Description" : "",
		"Cost" : 25,
	},
	"6b" : {
		"Name" : "Starting WC +2",
		"Description" : "All wood types start with 2 Woodcamps",
		"Cost" : 35,
	},
	"7" : {
		"Name" : "Research Times / 2",
		"Description" : "",
		"Cost" : 55,
	},
	"8" : {
		"Name" : "0.05% WPC Per Achievement",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 75,
	},
	"8b" : {
		"Name" : "+1 Autoclicker",
		"Description" : "+1 Autoclicker",
		"Cost" : 75,
	},
	"9" : {
		"Name" : "5% WPC To WPS",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 180,
	},
	"10" : {
		"Name" : "Unlock Fishing",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 250,
	},
	"11" : {
		"Name" : "Gain 30% More Magic",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 400,
	},
	"12" : {
		"Name" : "50% Cheaper Woodcamps",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 600,
	},
	"13" : {
		"Name" : "Unlock Research Slot 2",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 700,
	},
	"14" : {
		"Name" : "2x Storage",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 850,
	},
	"15" : {
		"Name" : "Fish Sell For 22.5% More",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 1100,
	},
	"16" : {
		"Name" : "Unlock Bots",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 1300,
	},
	"16b" : {
		"Name" : "+1 Autoclicker",
		"Description" : "+1 Autoclicker",
		"Cost" : 1500,
	},
	"17" : {
		"Name" : "15% WPC",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 1750,
	},
	"18" : {
		"Name" : "Unlock Fishing Spot",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 2500,
	},
	"19" : {
		"Name" : "Keep First 10 Research",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 3000,
	},
	"20" : {
		"Name" : "WC Effects +15%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 3500,
	},
	"21" : {
		"Name" : "Research 17.5% faster",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 4200,
	},
	"22" : {
		"Name" : "3.5% of Lower Tier Storage Added",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 5000,
	},
	"23" : {
		"Name" : "Unlock Gold Upgrades",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 6100,
	},
	"24" : {
		"Name" : "Wood Price 1.5x",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 7750,
	},
	"24b" : {
		"Name" : "+1 Autoclicker",
		"Description" : "+1 Autoclicker",
		"Cost" : 10000,
	},
	"25" : {
		"Name" : "Unlock Baits",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 11500,
	},
	"26" : {
		"Name" : "Lower WC Production Costs 15%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 13000,
	},
	"27" : {
		"Name" : "35% Storage From Woodcamps",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 15000,
	},
	"28" : {
		"Name" : "Unlock Fishing Spot",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 17000,
	},
	"29" : {
		"Name" : "Bait Effects 15%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 20000,
	},
	"30" : {
		"Name" : "Oak WPS 2x",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 22500,
	},
	"31" : {
		"Name" : "More Fish Appear 25%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 25000,
	},
	"32" : {
		"Name" : "Per Achievement -0.1% WC Price",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 29000,
	},
	"33" : {
		"Name" : "Unlock Research Slot 3",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 35000,
	},
	"34" : {
		"Name" : "Magic Effects 2x",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 45000,
	},
	"35" : {
		"Name" : "Add 5% of Lower Tier Wood WPS",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 56000,
	},
	"36" : {
		"Name" : "Wood Price +50%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 69000,
	},
	"37" : {
		"Name" : "Unlock Fishing Spot",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 77777,
	},
	"38" : {
		"Name" : "0.2% Storage Per Achievement",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 85000,
	},
	"38b" : {
		"Name" : "+1 Autoclicker",
		"Description" : "+1 Autoclicker",
		"Cost" : 100000,
	},
	"39" : {
		"Name" : "Fish Rarer Fish 27.5%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 125000,
	},
	"40" : {
		"Name" : "Unlock Dams",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 150000,
	},
	"41" : {
		"Name" : "40% Cheaper Bots",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 175000,
	},
	"42" : {
		"Name" : "Starting Woodcamps +10",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 225000,
	},
	"43" : {
		"Name" : "Unlock Auto Research",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 275000,
	},
	"44" : {
		"Name" : "Each Dam Gives 1% WPS",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 400000,
	},
	"45" : {
		"Name" : "+10 Beavers",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 500000,
	},
	"46" : {
		"Name" : "Fish Stay 25% Longer",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 800000,
	},
	"47" : {
		"Name" : "Keep 20 more research",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 1000000,
	},
	"48" : {
		"Name" : "Gold Upgrades 35% Cheaper",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 1600000,
	},
	"49" : {
		"Name" : "Keep Classic Wood Upgrades",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 2800000,
	},
	"50" : {
		"Name" : "Dam Effects 15%",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 3500000,
	},
	"51" : {
		"Name" : "Unlock Fishing spot",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 8000000,
	},
	"51b" : {
		"Name" : "+1 Autoclicker",
		"Description" : "+1 Autoclicker",
		"Cost" : 12000000,
	},
	"52" : {
		"Name" : "Each Dam Gives 1% Gold PS",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 15000000,
	},
	"53" : {
		"Name" : "Bots Sell 20% More Wood",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 22000000,
	},
	"54" : {
		"Name" : "Fish Price 2x",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 30000000,
	},
	"55" : {
		"Name" : "Keep Rare Wood Upgrades",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 45000000,
	},
	"56" : {
		"Name" : "Dams 30% Cheaper",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 55000000,
	},
	"57" : {
		"Name" : "Keep Gold Upgrades",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 60000000,
	},
	"58" : {
		"Name" : "Improve Magic Effects 2x",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 70000000,
	},
	"59" : {
		"Name" : "All Upgrades 50% Cheaper",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 80000000,
	},
	"60" : {
		"Name" : "Gain Magic Without Ascention",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 95000000,
	},
	"61" : {
		"Name" : "Unlock Mega Dam",
		"Description" : "Allows building woodcamps, unlocks woodcamp upgrades",
		"Cost" : 1000000000,
	},
}
