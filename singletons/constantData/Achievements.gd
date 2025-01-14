extends Node

var Achievements = {
	"1" : {
		"Name" : "Have 250k Oak",
		"Description" : "Collect 250k Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > 250000,
	},
	"2" : {
		"Name" : "Have 1m Oak",
		"Description" : "Collect 1m Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 6),
	},
	"3" : {
		"Name" : "Have 10m Oak",
		"Description" : "Collect 10m Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 7),
	},
	"4" : {
		"Name" : "Have 10^9 Oak",
		"Description" : "Collect 10^9 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 9),
	},
	"5" : {
		"Name" : "Have 10^13 Oak",
		"Description" : "Collect 10^13 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 13),
	},
	"6" : {
		"Name" : "Have 10^17 Oak",
		"Description" : "Collect 10^17 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 17),
	},
	"7" : {
		"Name" : "Have 10^23 Oak",
		"Description" : "Collect 10^23 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 23),
	},
	"8" : {
		"Name" : "Have 10^29 Oak",
		"Description" : "Collect 10^29 Oak Wood",
		"Trigger" : SaveData.Resources["Oak"]["Count"] > pow(10, 29),
	},
	"9" : {
		"Name" : "Have 10^6 Apple",
		"Description" : "Collect 10^6 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 6),
	},
	"10" : {
		"Name" : "Have 10^8 Apple",
		"Description" : "Collect 10^8 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 8),
	},
	"11" : {
		"Name" : "Have 10^10 Apple",
		"Description" : "Collect 10^10 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 10),
	},
	"12" : {
		"Name" : "Have 10^13 Apple",
		"Description" : "Collect 10^13 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 13),
	},
	"13" : {
		"Name" : "Have 10^15 Apple",
		"Description" : "Collect 10^15 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 15),
	},
	"14" : {
		"Name" : "Have 10^20 Apple",
		"Description" : "Collect 10^20 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 20),
	},
	"15" : {
		"Name" : "Have 10^25 Apple",
		"Description" : "Collect 10^25 Apple Wood",
		"Trigger" : SaveData.Resources["Apple"]["Count"] > pow(10, 25),
	},
	"16" : {
		"Name" : "Have 10^4 Maple",
		"Description" : "Collect 10^4 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 4),
	},
	"17" : {
		"Name" : "Have 10^7 Maple",
		"Description" : "Collect 10^7 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 7),
	},
	"18" : {
		"Name" : "Have 10^11 Maple",
		"Description" : "Collect 10^11 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 11),
	},
	"19" : {
		"Name" : "Have 10^15 Maple",
		"Description" : "Collect 10^15 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 15),
	},
	"20" : {
		"Name" : "Have 10^18 Maple",
		"Description" : "Collect 10^18 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 18),
	},
	"21" : {
		"Name" : "Have 10^24 Maple",
		"Description" : "Collect 10^24 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 24),
	},
	"22" : {
		"Name" : "Have 10^26 Maple",
		"Description" : "Collect 10^26 Maple Wood",
		"Trigger" : SaveData.Resources["Maple"]["Count"] > pow(10, 26),
	},
	"23" : {
		"Name" : "Have 10^4 Birch",
		"Description" : "Collect 10^4 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 4),
	},
	"24" : {
		"Name" : "Have 10^5 Birch",
		"Description" : "Collect 10^5 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 5),
	},
	"25" : {
		"Name" : "Have 10^16 Birch",
		"Description" : "Collect 10^16 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 16),
	},
	"26" : {
		"Name" : "Have 10^18 Birch",
		"Description" : "Collect 10^18 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 18),
	},
	"27" : {
		"Name" : "Have 10^19 Birch",
		"Description" : "Collect 10^19 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 19),
	},
	"28" : {
		"Name" : "Have 10^21 Birch",
		"Description" : "Collect 10^21 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 21),
	},
	"29" : {
		"Name" : "Have 10^27 Birch",
		"Description" : "Collect 10^27 Birch Wood",
		"Trigger" : SaveData.Resources["Birch"]["Count"] > pow(10, 27),
	},
	"30" : {
		"Name" : "Have 10^5 Spruce",
		"Description" : "Collect 10^5 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 5),
	},
	"31" : {
		"Name" : "Have 10^7 Spruce",
		"Description" : "Collect 10^7 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 7),
	},
	"32" : {
		"Name" : "Have 10^9 Spruce",
		"Description" : "Collect 10^9 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 9),
	},
	"33" : {
		"Name" : "Have 10^11 Spruce",
		"Description" : "Collect 10^11 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 11),
	},
	"34" : {
		"Name" : "Have 10^15 Spruce",
		"Description" : "Collect 10^15 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 15),
	},
	"35" : {
		"Name" : "Have 10^17 Spruce",
		"Description" : "Collect 10^17 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 17),
	},
	"36" : {
		"Name" : "Have 10^24 Spruce",
		"Description" : "Collect 10^24 Spruce Wood",
		"Trigger" : SaveData.Resources["Spruce"]["Count"] > pow(10, 24),
	},
	"37" : {
		"Name" : "Have 10^6 Chestnut",
		"Description" : "Collect 10^6 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 6),
	},
	"38" : {
		"Name" : "Have 10^8 Chestnut",
		"Description" : "Collect 10^8 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 8),
	},
	"39" : {
		"Name" : "Have 10^12 Chestnut",
		"Description" : "Collect 10^12 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 12),
	},
	"40" : {
		"Name" : "Have 10^17 Chestnut",
		"Description" : "Collect 10^17 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 17),
	},
	"41" : {
		"Name" : "Have 10^20 Chestnut",
		"Description" : "Collect 10^20 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 20),
	},
	"42" : {
		"Name" : "Have 10^22 Chestnut",
		"Description" : "Collect 10^22 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 22),
	},
	"43" : {
		"Name" : "Have 10^24 Chestnut",
		"Description" : "Collect 10^24 Chestnut Wood",
		"Trigger" : SaveData.Resources["Chestnut"]["Count"] > pow(10, 24),
	},
	"44" : {
		"Name" : "Have 10^3 Cherry",
		"Description" : "Collect 10^3 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 3),
	},
	"45" : {
		"Name" : "Have 10^5 Cherry",
		"Description" : "Collect 10^5 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 5),
	},
	"46" : {
		"Name" : "Have 10^7 Cherry",
		"Description" : "Collect 10^7 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 7),
	},
	"47" : {
		"Name" : "Have 10^9 Cherry",
		"Description" : "Collect 10^9 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 9),
	},
	"48" : {
		"Name" : "Have 10^11 Cherry",
		"Description" : "Collect 10^11 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 11),
	},
	"49" : {
		"Name" : "Have 10^14 Cherry",
		"Description" : "Collect 10^14 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 14),
	},
	"50" : {
		"Name" : "Have 10^16 Cherry",
		"Description" : "Collect 10^16 Cherry Wood",
		"Trigger" : SaveData.Resources["Cherry"]["Count"] > pow(10, 16),
	},
	"51" : {
		"Name" : "Have 10^6 Ash",
		"Description" : "Collect 10^6 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 6),
	},
	"52" : {
		"Name" : "Have 10^8 Ash",
		"Description" : "Collect 10^8 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 8),
	},
	"53" : {
		"Name" : "Have 10^10 Ash",
		"Description" : "Collect 10^10 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 10),
	},
	"54" : {
		"Name" : "Have 10^19 Ash",
		"Description" : "Collect 10^19 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 19),
	},
	"55" : {
		"Name" : "Have 10^21 Ash",
		"Description" : "Collect 10^21 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 21),
	},
	"56" : {
		"Name" : "Have 10^24 Ash",
		"Description" : "Collect 10^24 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 24),
	},
	"57" : {
		"Name" : "Have 10^26 Ash",
		"Description" : "Collect 10^26 Ash Wood",
		"Trigger" : SaveData.Resources["Ash"]["Count"] > pow(10, 26),
	},
	"58" : {
		"Name" : "Have 10^3 Cedar",
		"Description" : "Collect 10^3 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 3),
	},
	"59" : {
		"Name" : "Have 10^8 Cedar",
		"Description" : "Collect 10^8 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 8),
	},
	"60" : {
		"Name" : "Have 10^13 Cedar",
		"Description" : "Collect 10^13 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 13),
	},
	"61" : {
		"Name" : "Have 10^20 Cedar",
		"Description" : "Collect 10^20 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 20),
	},
	"62" : {
		"Name" : "Have 10^25 Cedar",
		"Description" : "Collect 10^25 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 25),
	},
	"63" : {
		"Name" : "Have 10^27 Cedar",
		"Description" : "Collect 10^27 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 27),
	},
	"64" : {
		"Name" : "Have 10^29 Cedar",
		"Description" : "Collect 10^29 Cedar Wood",
		"Trigger" : SaveData.Resources["Cedar"]["Count"] > pow(10, 29),
	},
	"65" : {
		"Name" : "Have 10^4 Mahogany",
		"Description" : "Collect 10^4 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 4),
	},
	"66" : {
		"Name" : "Have 10^12 Mahogany",
		"Description" : "Collect 10^12 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 12),
	},
	"67" : {
		"Name" : "Have 10^14 Mahogany",
		"Description" : "Collect 10^14 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 14),
	},
	"68" : {
		"Name" : "Have 10^19 Mahogany",
		"Description" : "Collect 10^19 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 19),
	},
	"69" : {
		"Name" : "Have 10^22 Mahogany",
		"Description" : "Collect 10^22 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 22),
	},
	"70" : {
		"Name" : "Have 10^24 Mahogany",
		"Description" : "Collect 10^24 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 24),
	},
	"71" : {
		"Name" : "Have 10^26 Mahogany",
		"Description" : "Collect 10^26 Mahogany Wood",
		"Trigger" : SaveData.Resources["Mahogany"]["Count"] > pow(10, 26),
	},
	"72" : {
		"Name" : "Have 10^5 Ebony",
		"Description" : "Collect 10^5 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 5),
	},
	"73" : {
		"Name" : "Have 10^7 Ebony",
		"Description" : "Collect 10^7 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 7),
	},
	"74" : {
		"Name" : "Have 10^11 Ebony",
		"Description" : "Collect 10^11 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 11),
	},
	"75" : {
		"Name" : "Have 10^15 Ebony",
		"Description" : "Collect 10^15 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 15),
	},
	"76" : {
		"Name" : "Have 10^21 Ebony",
		"Description" : "Collect 10^21 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 21),
	},
	"77" : {
		"Name" : "Have 10^25 Ebony",
		"Description" : "Collect 10^25 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 25),
	},
	"78" : {
		"Name" : "Have 10^27 Ebony",
		"Description" : "Collect 10^27 Ebony Wood",
		"Trigger" : SaveData.Resources["Ebony"]["Count"] > pow(10, 27),
	},
	"79" : {
		"Name" : "Have 10^3 Dogwood",
		"Description" : "Collect 10^3 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 3),
	},
	"80" : {
		"Name" : "Have 10^5 Dogwood",
		"Description" : "Collect 10^5 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 5),
	},
	"81" : {
		"Name" : "Have 10^8 Dogwood",
		"Description" : "Collect 10^8 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 8),
	},
	"82" : {
		"Name" : "Have 10^10 Dogwood",
		"Description" : "Collect 10^10 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 10),
	},
	"83" : {
		"Name" : "Have 10^14 Dogwood",
		"Description" : "Collect 10^14 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 14),
	},
	"84" : {
		"Name" : "Have 10^18 Dogwood",
		"Description" : "Collect 10^18 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 18),
	},
	"85" : {
		"Name" : "Have 10^23 Dogwood",
		"Description" : "Collect 10^23 Dogwood",
		"Trigger" : SaveData.Resources["Dogwood"]["Count"] > pow(10, 23),
	},
	"86" : {
		"Name" : "Have 10^4 Rosewood",
		"Description" : "Collect 10^4 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 4),
	},
	"87" : {
		"Name" : "Have 10^7 Rosewood",
		"Description" : "Collect 10^7 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 7),
	},
	"88" : {
		"Name" : "Have 10^9 Rosewood",
		"Description" : "Collect 10^9 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 9),
	},
	"89" : {
		"Name" : "Have 10^11 Rosewood",
		"Description" : "Collect 10^11 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 11),
	},
	"90" : {
		"Name" : "Have 10^13 Rosewood",
		"Description" : "Collect 10^13 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 13),
	},
	"91" : {
		"Name" : "Click On This Achievement",
		"Description" : "Click On This Achievement",
		"Trigger" : null,
	},
	"92" : {
		"Name" : "Have 10^17 Rosewood",
		"Description" : "Collect 10^17 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 17),
	},
	"93" : {
		"Name" : "Have 10^20 Rosewood",
		"Description" : "Collect 10^20 Rosewood",
		"Trigger" : SaveData.Resources["Rosewood"]["Count"] > pow(10, 20),
	},
	"94" : {
		"Name" : "Have 10^4 Ghost Gum",
		"Description" : "Collect 10^4 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 4),
	},
	"95" : {
		"Name" : "Have 10^7 Ghost Gum",
		"Description" : "Collect 10^7 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 7),
	},
	"96" : {
		"Name" : "Have 10^11 Ghost Gum",
		"Description" : "Collect 10^11 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 11),
	},
	"97" : {
		"Name" : "Have 10^16 Ghost Gum",
		"Description" : "Collect 10^16 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 16),
	},
	"98" : {
		"Name" : "Have 10^20 Ghost Gum",
		"Description" : "Collect 10^20 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 20),
	},
	"99" : {
		"Name" : "Have 10^24 Ghost Gum",
		"Description" : "Collect 10^24 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 24),
	},
	"100" : {
		"Name" : "Have 10^27 Ghost Gum",
		"Description" : "Collect 10^27 Ghost Gum Wood",
		"Trigger" : SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 27),
	},
	"101" : {
		"Name" : "Have 10^3 Dragonwood",
		"Description" : "Collect 10^3 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 3),
	},
	"102" : {
		"Name" : "Have 10^6 Dragonwood",
		"Description" : "Collect 10^6 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 6),
	},
	"103" : {
		"Name" : "Have 10^9 Dragonwood",
		"Description" : "Collect 10^9 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 9),
	},
	"104" : {
		"Name" : "Have 10^12 Dragonwood",
		"Description" : "Collect 10^12 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 12),
	},
	"105" : {
		"Name" : "Have 10^15 Dragonwood",
		"Description" : "Collect 10^15 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 15),
	},
	"106" : {
		"Name" : "Have 10^20 Dragonwood",
		"Description" : "Collect 10^20 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 20),
	},
	"107" : {
		"Name" : "Have 10^25 Dragonwood",
		"Description" : "Collect 10^25 Dragonwood Wood",
		"Trigger" : SaveData.Resources["Dragonwood"]["Count"] > pow(10, 25),
	},
	"108" : {
		"Name" : "Have 10^3 Gold",
		"Description" : "Collect 10^3 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 3),
	},
	"109" : {
		"Name" : "Have 10^6 Gold",
		"Description" : "Collect 10^6 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 6),
	},
	"110" : {
		"Name" : "Have 10^9 Gold",
		"Description" : "Collect 10^9 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 9),
	},
	"111" : {
		"Name" : "Have 10^12 Gold",
		"Description" : "Collect 10^12 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 12),
	},
	"112" : {
		"Name" : "Have 10^15 Gold",
		"Description" : "Collect 10^15 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 15),
	},
	"113" : {
		"Name" : "Have 10^18 Gold",
		"Description" : "Collect 10^18 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 18),
	},
	"114" : {
		"Name" : "Have 10^21 Gold",
		"Description" : "Collect 10^21 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 21),
	},
	"115" : {
		"Name" : "Have 10^24 Gold",
		"Description" : "Collect 10^24 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 24),
	},
	"116" : {
		"Name" : "Have 10^27 Gold",
		"Description" : "Collect 10^27 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 27),
	},
	"117" : {
		"Name" : "Have 10^30 Gold",
		"Description" : "Collect 10^30 Gold",
		"Trigger" : SaveData.Gold["Count"] > pow(10, 30),
	},
	"118" : {
		"Name" : "Unlock 5 Wood Types",
		"Description" : "Unlock 5 Wood Types",
		"Trigger" : null,
	},
	"119" : {
		"Name" : "Unlock 10 Wood Types",
		"Description" : "Unlock 10 Wood Types",
		"Trigger" : null,
	},
	"120" : {
		"Name" : "Unlock All Wood Types",
		"Description" : "Unlock All Wood Types",
		"Trigger" : null,
	},
	"121" : {
		"Name" : "Unlock Dams",
		"Description" : "Unlock Dams",
		"Trigger" : Unlocks.Unlocks["Dams"]["Unlocked"],
	},
	"122" : {
		"Name" : "Build 1 Dam",
		"Description" : "Build 1 Dam",
		"Trigger" : null,
	},
	"123" : {
		"Name" : "Build 10 Dam",
		"Description" : "Build 10 Dam",
		"Trigger" : null,
	},
	"124" : {
		"Name" : "Build 100 Dam",
		"Description" : "Build 100 Dam",
		"Trigger" : null,
	},
	"125" : {
		"Name" : "Build 1000 Dam",
		"Description" : "Build 1000 Dam",
		"Trigger" : null,
	},
	"126" : {
		"Name" : "Build 10000 Dam",
		"Description" : "Build 10000 Dam",
		"Trigger" : null,
	},
	"127" : {
		"Name" : "Construct The Small Dam",
		"Description" : "First",
		"Trigger" : null,
	},
	"128" : {
		"Name" : "Construct Medium Dam",
		"Description" : "First",
		"Trigger" : null,
	},
	"129" : {
		"Name" : "Construct Big Dam",
		"Description" : "First",
		"Trigger" : null,
	},
	"130" : {
		"Name" : "Construct Giant Dam",
		"Description" : "First",
		"Trigger" : null,
	},
	"131" : {
		"Name" : "Construct Mega Dam",
		"Description" : "First",
		"Trigger" : null,
	},
	"132" : {
		"Name" : "Build All Dam Types",
		"Description" : "First",
		"Trigger" : null,
	},
	"133" : {
		"Name" : "Unlocked Fishing",
		"Description" : "First",
		"Trigger" : null,
	},
	"134" : {
		"Name" : "Unlocked fishing spot 2",
		"Description" : "First",
		"Trigger" : null,
	},
	"135" : {
		"Name" : "Unlocked fishing spot 3",
		"Description" : "First",
		"Trigger" : null,
	},
	"136" : {
		"Name" : "Unlocked fishing spot 4",
		"Description" : "First",
		"Trigger" : null,
	},
	"137" : {
		"Name" : "Unlocked fishing spot 5",
		"Description" : "First",
		"Trigger" : null,
	},
	"138" : {
		"Name" : "Unlock All Fishing Spots",
		"Description" : "First",
		"Trigger" : null,
	},
	"139" : {
		"Name" : "Fish 1 Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"140" : {
		"Name" : "Fish 10 Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"141" : {
		"Name" : "Fish 100 Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"142" : {
		"Name" : "Fish 1000 Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"143" : {
		"Name" : "Fish 10000 Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"144" : {
		"Name" : "Sell 1 Fish",
		"Description" : "First",
		"Trigger" : null,
	},
	"145" : {
		"Name" : "Sell 25 Fish",
		"Description" : "First",
		"Trigger" : null,
	},
	"146" : {
		"Name" : "Sell 500 Fish",
		"Description" : "First",
		"Trigger" : null,
	},
	"147" : {
		"Name" : "Sell 7500 Fish",
		"Description" : "First",
		"Trigger" : null,
	},
	"148" : {
		"Name" : "Sell 25000 Fish",
		"Description" : "First",
		"Trigger" : null,
	},
	"149" : {
		"Name" : "Unlock Bait 1",
		"Description" : "First",
		"Trigger" : null,
	},
	"150" : {
		"Name" : "Unlock Bait 2",
		"Description" : "First",
		"Trigger" : null,
	},
	"151" : {
		"Name" : "Unlock Bait 3",
		"Description" : "First",
		"Trigger" : null,
	},
	"152" : {
		"Name" : "Unlock Bait 4",
		"Description" : "First",
		"Trigger" : null,
	},
	"153" : {
		"Name" : "Unlock Bait 5",
		"Description" : "First",
		"Trigger" : null,
	},
	"154" : {
		"Name" : "Unlock Bait 6",
		"Description" : "First",
		"Trigger" : null,
	},
	"155" : {
		"Name" : "Unlock Bait 7",
		"Description" : "First",
		"Trigger" : null,
	},
	"156" : {
		"Name" : "Unlock Bait 8",
		"Description" : "First",
		"Trigger" : null,
	},
	"157" : {
		"Name" : "Unlock Bait 9",
		"Description" : "First",
		"Trigger" : null,
	},
	"158" : {
		"Name" : "Unlock Bait 10",
		"Description" : "First",
		"Trigger" : null,
	},
	"159" : {
		"Name" : "Unlock All Baits",
		"Description" : "First",
		"Trigger" : null,
	},
	"160" : {
		"Name" : "Find Electric Eal",
		"Description" : "First",
		"Trigger" : null,
	},
	"161" : {
		"Name" : "Find Giant Squid",
		"Description" : "First",
		"Trigger" : null,
	},
	"162" : {
		"Name" : "Fish 10 Times in One Ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"163" : {
		"Name" : "Fish 100 Times in One Ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"164" : {
		"Name" : "Fish 250 Times in One Ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"165" : {
		"Name" : "Fish 1000 Times in One Ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"166" : {
		"Name" : "5 Fish Types Caught",
		"Description" : "First",
		"Trigger" : null,
	},
	"167" : {
		"Name" : "10 Fish Types Caught",
		"Description" : "First",
		"Trigger" : null,
	},
	"168" : {
		"Name" : "20 Fish Types Caught",
		"Description" : "First",
		"Trigger" : null,
	},
	"169" : {
		"Name" : "35 Fish Types Caught",
		"Description" : "First",
		"Trigger" : null,
	},
	"170" : {
		"Name" : "55 Fish Types Caught",
		"Description" : "First",
		"Trigger" : null,
	},
	"171" : {
		"Name" : "All Fish Types Caught",
		"Description" : "First",
		"Trigger" : null,
	},
	"172" : {
		"Name" : "Have 100 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"173" : {
		"Name" : "Have 1000 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"174" : {
		"Name" : "Have 10000 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"175" : {
		"Name" : "Have 100000 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"176" : {
		"Name" : "Have 10^6 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"177" : {
		"Name" : "Have 10^7 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"178" : {
		"Name" : "Have 10^8 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"179" : {
		"Name" : "Have 10^9 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"180" : {
		"Name" : "Have 10^10 Woodcamps",
		"Description" : "First",
		"Trigger" : null,
	},
	"181" : {
		"Name" : "Have 100 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"182" : {
		"Name" : "Have 1000 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"183" : {
		"Name" : "Have 10000 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"184" : {
		"Name" : "Have 100000 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"185" : {
		"Name" : "Have 10^6 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"186" : {
		"Name" : "Have 10^7 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"187" : {
		"Name" : "Have 10^8 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"188" : {
		"Name" : "Have 10^9 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"189" : {
		"Name" : "Have 10^10 beavers",
		"Description" : "First",
		"Trigger" : null,
	},
	"190" : {
		"Name" : "Total Beavers Bought 500",
		"Description" : "First",
		"Trigger" : null,
	},
	"191" : {
		"Name" : "Total Beavers Bought 50000",
		"Description" : "First",
		"Trigger" : null,
	},
	"192" : {
		"Name" : "Total Beavers Bought 5 * 10^6",
		"Description" : "First",
		"Trigger" : null,
	},
	"193" : {
		"Name" : "Total Beavers Bought 5 * 10^9",
		"Description" : "First",
		"Trigger" : null,
	},
	"194" : {
		"Name" : "Total Beavers Bought 5 * 10^12",
		"Description" : "First",
		"Trigger" : null,
	},
	"195" : {
		"Name" : "Total Beavers Bought 5 * 10^15",
		"Description" : "First",
		"Trigger" : null,
	},
	"196" : {
		"Name" : "Total Woodcamps Bought 500",
		"Description" : "First",
		"Trigger" : null,
	},
	"197" : {
		"Name" : "Total Woodcamps Bought 50000",
		"Description" : "First",
		"Trigger" : null,
	},
	"198" : {
		"Name" : "Total Woodcamps Bought 5 * 10^6",
		"Description" : "First",
		"Trigger" : null,
	},
	"199" : {
		"Name" : "Total Woodcamps Bought 5 * 10^9",
		"Description" : "First",
		"Trigger" : null,
	},
	"200" : {
		"Name" : "Total Woodcamps Bought 5 * 10^12",
		"Description" : "First",
		"Trigger" : null,
	},
	"201" : {
		"Name" : "Total Woodcamps Bought 5 * 10^15",
		"Description" : "First",
		"Trigger" : null,
	},
	"202" : {
		"Name" : "Total wood produced 10^8",
		"Description" : "First",
		"Trigger" : null,
	},
	"203" : {
		"Name" : "Total wood produced 10^11",
		"Description" : "First",
		"Trigger" : null,
	},
	"204" : {
		"Name" : "Total wood produced 10^14",
		"Description" : "First",
		"Trigger" : null,
	},
	"205" : {
		"Name" : "Total wood produced 10^17",
		"Description" : "First",
		"Trigger" : null,
	},
	"206" : {
		"Name" : "Total wood produced 10^20",
		"Description" : "First",
		"Trigger" : null,
	},
	"207" : {
		"Name" : "Total wood produced 10^23",
		"Description" : "First",
		"Trigger" : null,
	},
	"208" : {
		"Name" : "Total wood produced 10^26",
		"Description" : "First",
		"Trigger" : null,
	},
	"209" : {
		"Name" : "Total wood produced 10^29",
		"Description" : "First",
		"Trigger" : null,
	},
	"210" : {
		"Name" : "Total wood produced 10^32",
		"Description" : "First",
		"Trigger" : null,
	},
	"211" : {
		"Name" : "Total Wood Sold 1m",
		"Description" : "First",
		"Trigger" : null,
	},
	"212" : {
		"Name" : "Total Wood Sold 10^9",
		"Description" : "First",
		"Trigger" : null,
	},
	"213" : {
		"Name" : "Total Wood Sold 10^14",
		"Description" : "First",
		"Trigger" : null,
	},
	"214" : {
		"Name" : "Total Wood Sold 10^19",
		"Description" : "First",
		"Trigger" : null,
	},
	"215" : {
		"Name" : "Total Wood Sold 10^24",
		"Description" : "First",
		"Trigger" : null,
	},
	"216" : {
		"Name" : "Total Gold Gained 10^7",
		"Description" : "First",
		"Trigger" : null,
	},
	"217" : {
		"Name" : "Total Gold Gained 10^11",
		"Description" : "First",
		"Trigger" : null,
	},
	"218" : {
		"Name" : "Total Gold Gained 10^15",
		"Description" : "First",
		"Trigger" : null,
	},
	"219" : {
		"Name" : "Total Gold Gained 10^19",
		"Description" : "First",
		"Trigger" : null,
	},
	"220" : {
		"Name" : "Total Gold Gained 10^23",
		"Description" : "First",
		"Trigger" : null,
	},
	"221" : {
		"Name" : "Total Gold Gained 10^27",
		"Description" : "First",
		"Trigger" : null,
	},
	"222" : {
		"Name" : "Play 1h",
		"Description" : "First",
		"Trigger" : null,
	},
	"223" : {
		"Name" : "Play 10h",
		"Description" : "First",
		"Trigger" : null,
	},
	"224" : {
		"Name" : "Play 24h",
		"Description" : "First",
		"Trigger" : null,
	},
	"225" : {
		"Name" : "Play 100h",
		"Description" : "First",
		"Trigger" : null,
	},
	"226" : {
		"Name" : "Have 0 Wood After Unlocking Achievements",
		"Description" : "Sell all the produced wood",
		"Trigger" : null,
	},
	"227" : {
		"Name" : "gold gain per sec +1000",
		"Description" : "First",
		"Trigger" : null,
	},
	"228" : {
		"Name" : "gold gain per sec +10000",
		"Description" : "First",
		"Trigger" : null,
	},
	"229" : {
		"Name" : "gold gain per sec +190000",
		"Description" : "First",
		"Trigger" : null,
	},
	"230" : {
		"Name" : "gold gain per sec +2800000",
		"Description" : "First",
		"Trigger" : null,
	},
	"231" : {
		"Name" : "gold gain per sec +37000000",
		"Description" : "First",
		"Trigger" : null,
	},
	"232" : {
		"Name" : "gold gain per sec +4.6 * 10^7",
		"Description" : "First",
		"Trigger" : null,
	},
	"233" : {
		"Name" : "gold gain per sec +5.7 * 10^9",
		"Description" : "First",
		"Trigger" : null,
	},
	"234" : {
		"Name" : "gold gain per sec +6.8 * 10^11",
		"Description" : "First",
		"Trigger" : null,
	},
	"235" : {
		"Name" : "gold gain per sec +7.9 * 10^13",
		"Description" : "First",
		"Trigger" : null,
	},
	"236" : {
		"Name" : "gold gain per sec +9 * 10^15",
		"Description" : "First",
		"Trigger" : null,
	},
	"237" : {
		"Name" : "Change All Settings Atleast Once",
		"Description" : "First",
		"Trigger" : null,
	},
	"238" : {
		"Name" : "Construct 5 Dams At The Same Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"239" : {
		"Name" : "Construct 13 Dams At The Same Time",
		"Description" : "First",
		"Trigger" : null,
	},
	"240" : {
		"Name" : "Ascend 1 time",
		"Description" : "First",
		"Trigger" : null,
	},
	"241" : {
		"Name" : "Ascend 5 times",
		"Description" : "First",
		"Trigger" : null,
	},
	"242" : {
		"Name" : "Ascend 25 times",
		"Description" : "First",
		"Trigger" : null,
	},
	"243" : {
		"Name" : "Ascend 75 times",
		"Description" : "First",
		"Trigger" : null,
	},
	"244" : {
		"Name" : "Ascend 150 times",
		"Description" : "First",
		"Trigger" : null,
	},
	"245" : {
		"Name" : "Click 1 time",
		"Description" : "First",
		"Trigger" : null,
	},
	"246" : {
		"Name" : "Click 100 time",
		"Description" : "First",
		"Trigger" : null,
	},
	"247" : {
		"Name" : "Click 1k time",
		"Description" : "First",
		"Trigger" : null,
	},
	"248" : {
		"Name" : "Click 10k time",
		"Description" : "First",
		"Trigger" : null,
	},
	"249" : {
		"Name" : "Click 100k time",
		"Description" : "First",
		"Trigger" : null,
	},
	"250" : {
		"Name" : "Why Are We Clicking?",
		"Description" : "Manually click 10,000 times in one session",
		"Trigger" : null,
	},
	"251" : {
		"Name" : "1 Upgrade Max LvL",
		"Description" : "First",
		"Trigger" : null,
	},
	"252" : {
		"Name" : "10 Upgrades Max LvL",
		"Description" : "First",
		"Trigger" : null,
	},
	"253" : {
		"Name" : "100 Upgrades Max LvL",
		"Description" : "First",
		"Trigger" : null,
	},
	"254" : {
		"Name" : "All Upgrades Max LvL",
		"Description" : "First",
		"Trigger" : null,
	},
	"255" : {
		"Name" : "Click all buttons in the game",
		"Description" : "First",
		"Trigger" : null,
	},
	"256" : {
		"Name" : "Buy 1 Magic Upgrades",
		"Description" : "First",
		"Trigger" : null,
	},
	"257" : {
		"Name" : "Buy 10 Magic Upgrades",
		"Description" : "First",
		"Trigger" : null,
	},
	"258" : {
		"Name" : "Buy 30 Magic Upgrades",
		"Description" : "First",
		"Trigger" : null,
	},
	"259" : {
		"Name" : "Buy 50 Magic Upgrades",
		"Description" : "First",
		"Trigger" : null,
	},
	"260" : {
		"Name" : "Buy All Magic Upgrades",
		"Description" : "First",
		"Trigger" : null,
	},
	"261" : {
		"Name" : "Magic Gathered 10",
		"Description" : "First",
		"Trigger" : null,
	},
	"262" : {
		"Name" : "Magic Gathered 100",
		"Description" : "First",
		"Trigger" : null,
	},
	"263" : {
		"Name" : "Magic Gathered 10^4",
		"Description" : "First",
		"Trigger" : null,
	},
	"264" : {
		"Name" : "Magic Gathered 10^7",
		"Description" : "First",
		"Trigger" : null,
	},
	"265" : {
		"Name" : "Magic Gathered 10^9",
		"Description" : "First",
		"Trigger" : null,
	},
	"266" : {
		"Name" : "Magic Gathered 10^11",
		"Description" : "First",
		"Trigger" : null,
	},
	"267" : {
		"Name" : "Unlocked Bots",
		"Description" : "First",
		"Trigger" : null,
	},
	"268" : {
		"Name" : "Research 20 upgrades in one ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"269" : {
		"Name" : "Research 30 upgrades in one ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"270" : {
		"Name" : "Research 60 upgrades in one ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"271" : {
		"Name" : "Research 80 upgrades in one ascension",
		"Description" : "First",
		"Trigger" : null,
	},
	"272" : {
		"Name" : "Total Research Done 50",
		"Description" : "First",
		"Trigger" : null,
	},
	"273" : {
		"Name" : "Total Research Done 150",
		"Description" : "First",
		"Trigger" : null,
	},
	"274" : {
		"Name" : "Total Research Done 300",
		"Description" : "First",
		"Trigger" : null,
	},
	"275" : {
		"Name" : "Total Research Done 500",
		"Description" : "First",
		"Trigger" : null,
	},
	"276" : {
		"Name" : "Total Research Done 750",
		"Description" : "First",
		"Trigger" : null,
	},
	"277" : {
		"Name" : "Total Research Done 1050",
		"Description" : "First",
		"Trigger" : null,
	},
	"278" : {
		"Name" : "Total Research Done 1500",
		"Description" : "First",
		"Trigger" : null,
	},
	"279" : {
		"Name" : "Total Research Done 2500",
		"Description" : "First",
		"Trigger" : null,
	},
	"280" : {
		"Name" : "Total Upgrades Bought 500",
		"Description" : "First",
		"Trigger" : null,
	},
	"281" : {
		"Name" : "Total Upgrades Bought 2500",
		"Description" : "First",
		"Trigger" : null,
	},
	"282" : {
		"Name" : "Total Upgrades Bought 5000",
		"Description" : "First",
		"Trigger" : null,
	},
	"283" : {
		"Name" : "Total Upgrades Bought 10000",
		"Description" : "First",
		"Trigger" : null,
	},
	"284" : {
		"Name" : "Total Upgrades Bought 20000",
		"Description" : "First",
		"Trigger" : null,
	},
	"285" : {
		"Name" : "Total Upgrades Bought 30000",
		"Description" : "First",
		"Trigger" : null,
	},
	"286" : {
		"Name" : "Total Upgrades Bought 50000",
		"Description" : "First",
		"Trigger" : null,
	},
	"287" : {
		"Name" : "Total Bots Bought 50",
		"Description" : "First",
		"Trigger" : null,
	},
	"288" : {
		"Name" : "Total Bots Bought 250",
		"Description" : "First",
		"Trigger" : null,
	},
	"289" : {
		"Name" : "Total Bots Bought 500",
		"Description" : "First",
		"Trigger" : null,
	},
	"290" : {
		"Name" : "Total Bots Bought 1000",
		"Description" : "First",
		"Trigger" : null,
	},
	"291" : {
		"Name" : "Total Bots Bought 2000",
		"Description" : "First",
		"Trigger" : null,
	},
	"292" : {
		"Name" : "Total Bots Bought 3000",
		"Description" : "First",
		"Trigger" : null,
	},
	"293" : {
		"Name" : "Total Bots Bought 5000",
		"Description" : "First",
		"Trigger" : null,
	},
	"294" : {
		"Name" : "10 Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
	"295" : {
		"Name" : "40 Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
	"296" : {
		"Name" : "80 Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
	"297" : {
		"Name" : "130 Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
	"298" : {
		"Name" : "190 Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
	"299" : {
		"Name" : "260 Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
	"300" : {
		"Name" : "All Achievements Unlocked",
		"Description" : "First",
		"Trigger" : null,
	},
}
