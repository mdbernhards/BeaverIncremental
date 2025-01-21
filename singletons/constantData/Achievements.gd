extends Node

var Achievements = {
	"1" : {
		"Name" : "Have 250k Oak",
		"Description" : "Collect 250k Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > 250000,
	},
	"2" : {
		"Name" : "Have 1m Oak",
		"Description" : "Collect 1m Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 6),
	},
	"3" : {
		"Name" : "Have 10m Oak",
		"Description" : "Collect 10m Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 7),
	},
	"4" : {
		"Name" : "Have 10^9 Oak",
		"Description" : "Collect 10^9 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 9),
	},
	"5" : {
		"Name" : "Have 10^13 Oak",
		"Description" : "Collect 10^13 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 13),
	},
	"6" : {
		"Name" : "Have 10^17 Oak",
		"Description" : "Collect 10^17 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 17),
	},
	"7" : {
		"Name" : "Have 10^23 Oak",
		"Description" : "Collect 10^23 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 23),
	},
	"8" : {
		"Name" : "Have 10^29 Oak",
		"Description" : "Collect 10^29 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] > pow(10, 29),
	},
	"9" : {
		"Name" : "Have 10^6 Apple",
		"Description" : "Collect 10^6 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 6),
	},
	"10" : {
		"Name" : "Have 10^8 Apple",
		"Description" : "Collect 10^8 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 8),
	},
	"11" : {
		"Name" : "Have 10^10 Apple",
		"Description" : "Collect 10^10 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 10),
	},
	"12" : {
		"Name" : "Have 10^13 Apple",
		"Description" : "Collect 10^13 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 13),
	},
	"13" : {
		"Name" : "Have 10^15 Apple",
		"Description" : "Collect 10^15 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 15),
	},
	"14" : {
		"Name" : "Have 10^20 Apple",
		"Description" : "Collect 10^20 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 20),
	},
	"15" : {
		"Name" : "Have 10^25 Apple",
		"Description" : "Collect 10^25 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] > pow(10, 25),
	},
	"16" : {
		"Name" : "Have 10^4 Maple",
		"Description" : "Collect 10^4 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 4),
	},
	"17" : {
		"Name" : "Have 10^7 Maple",
		"Description" : "Collect 10^7 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 7),
	},
	"18" : {
		"Name" : "Have 10^11 Maple",
		"Description" : "Collect 10^11 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 11),
	},
	"19" : {
		"Name" : "Have 10^15 Maple",
		"Description" : "Collect 10^15 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 15),
	},
	"20" : {
		"Name" : "Have 10^18 Maple",
		"Description" : "Collect 10^18 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 18),
	},
	"21" : {
		"Name" : "Have 10^24 Maple",
		"Description" : "Collect 10^24 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 24),
	},
	"22" : {
		"Name" : "Have 10^26 Maple",
		"Description" : "Collect 10^26 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] > pow(10, 26),
	},
	"23" : {
		"Name" : "Have 10^4 Birch",
		"Description" : "Collect 10^4 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] > pow(10, 4),
	},
	"24" : {
		"Name" : "Have 10^5 Birch",
		"Description" : "Collect 10^5 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] > pow(10, 5),
	},
	"25" : {
		"Name" : "Have 10^16 Birch",
		"Description" : "Collect 10^16 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] > pow(10, 16),
	},
	"26" : {
		"Name" : "Have 10^18 Birch",
		"Description" : "Collect 10^18 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] > pow(10, 18),
	},
	"27" : {
		"Name" : "Have 10^19 Birch",
		"Description" : "Collect 10^19 Birch Wood",
		"Trigger" : func(): SaveData.Resources["Birch"]["Count"] > pow(10, 19),
	},
	"28" : {
		"Name" : "Have 10^21 Birch",
		"Description" : "Collect 10^21 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] > pow(10, 21),
	},
	"29" : {
		"Name" : "Have 10^27 Birch",
		"Description" : "Collect 10^27 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] > pow(10, 27),
	},
	"30" : {
		"Name" : "Have 10^5 Spruce",
		"Description" : "Collect 10^5 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 5),
	},
	"31" : {
		"Name" : "Have 10^7 Spruce",
		"Description" : "Collect 10^7 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 7),
	},
	"32" : {
		"Name" : "Have 10^9 Spruce",
		"Description" : "Collect 10^9 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 9),
	},
	"33" : {
		"Name" : "Have 10^11 Spruce",
		"Description" : "Collect 10^11 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 11),
	},
	"34" : {
		"Name" : "Have 10^15 Spruce",
		"Description" : "Collect 10^15 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 15),
	},
	"35" : {
		"Name" : "Have 10^17 Spruce",
		"Description" : "Collect 10^17 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 17),
	},
	"36" : {
		"Name" : "Have 10^24 Spruce",
		"Description" : "Collect 10^24 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] > pow(10, 24),
	},
	"37" : {
		"Name" : "Have 10^6 Chestnut",
		"Description" : "Collect 10^6 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 6),
	},
	"38" : {
		"Name" : "Have 10^8 Chestnut",
		"Description" : "Collect 10^8 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 8),
	},
	"39" : {
		"Name" : "Have 10^12 Chestnut",
		"Description" : "Collect 10^12 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 12),
	},
	"40" : {
		"Name" : "Have 10^17 Chestnut",
		"Description" : "Collect 10^17 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 17),
	},
	"41" : {
		"Name" : "Have 10^20 Chestnut",
		"Description" : "Collect 10^20 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 20),
	},
	"42" : {
		"Name" : "Have 10^22 Chestnut",
		"Description" : "Collect 10^22 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 22),
	},
	"43" : {
		"Name" : "Have 10^24 Chestnut",
		"Description" : "Collect 10^24 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] > pow(10, 24),
	},
	"44" : {
		"Name" : "Have 10^3 Cherry",
		"Description" : "Collect 10^3 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 3),
	},
	"45" : {
		"Name" : "Have 10^5 Cherry",
		"Description" : "Collect 10^5 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 5),
	},
	"46" : {
		"Name" : "Have 10^7 Cherry",
		"Description" : "Collect 10^7 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 7),
	},
	"47" : {
		"Name" : "Have 10^9 Cherry",
		"Description" : "Collect 10^9 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 9),
	},
	"48" : {
		"Name" : "Have 10^11 Cherry",
		"Description" : "Collect 10^11 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 11),
	},
	"49" : {
		"Name" : "Have 10^14 Cherry",
		"Description" : "Collect 10^14 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 14),
	},
	"50" : {
		"Name" : "Have 10^16 Cherry",
		"Description" : "Collect 10^16 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] > pow(10, 16),
	},
	"51" : {
		"Name" : "Have 10^6 Ash",
		"Description" : "Collect 10^6 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 6),
	},
	"52" : {
		"Name" : "Have 10^8 Ash",
		"Description" : "Collect 10^8 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 8),
	},
	"53" : {
		"Name" : "Have 10^10 Ash",
		"Description" : "Collect 10^10 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 10),
	},
	"54" : {
		"Name" : "Have 10^19 Ash",
		"Description" : "Collect 10^19 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 19),
	},
	"55" : {
		"Name" : "Have 10^21 Ash",
		"Description" : "Collect 10^21 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 21),
	},
	"56" : {
		"Name" : "Have 10^24 Ash",
		"Description" : "Collect 10^24 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 24),
	},
	"57" : {
		"Name" : "Have 10^26 Ash",
		"Description" : "Collect 10^26 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] > pow(10, 26),
	},
	"58" : {
		"Name" : "Have 10^3 Cedar",
		"Description" : "Collect 10^3 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 3),
	},
	"59" : {
		"Name" : "Have 10^8 Cedar",
		"Description" : "Collect 10^8 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 8),
	},
	"60" : {
		"Name" : "Have 10^13 Cedar",
		"Description" : "Collect 10^13 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 13),
	},
	"61" : {
		"Name" : "Have 10^20 Cedar",
		"Description" : "Collect 10^20 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 20),
	},
	"62" : {
		"Name" : "Have 10^25 Cedar",
		"Description" : "Collect 10^25 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 25),
	},
	"63" : {
		"Name" : "Have 10^27 Cedar",
		"Description" : "Collect 10^27 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 27),
	},
	"64" : {
		"Name" : "Have 10^29 Cedar",
		"Description" : "Collect 10^29 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] > pow(10, 29),
	},
	"65" : {
		"Name" : "Have 10^4 Mahogany",
		"Description" : "Collect 10^4 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 4),
	},
	"66" : {
		"Name" : "Have 10^12 Mahogany",
		"Description" : "Collect 10^12 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 12),
	},
	"67" : {
		"Name" : "Have 10^14 Mahogany",
		"Description" : "Collect 10^14 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 14),
	},
	"68" : {
		"Name" : "Have 10^19 Mahogany",
		"Description" : "Collect 10^19 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 19),
	},
	"69" : {
		"Name" : "Have 10^22 Mahogany",
		"Description" : "Collect 10^22 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 22),
	},
	"70" : {
		"Name" : "Have 10^24 Mahogany",
		"Description" : "Collect 10^24 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 24),
	},
	"71" : {
		"Name" : "Have 10^26 Mahogany",
		"Description" : "Collect 10^26 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] > pow(10, 26),
	},
	"72" : {
		"Name" : "Have 10^5 Ebony",
		"Description" : "Collect 10^5 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 5),
	},
	"73" : {
		"Name" : "Have 10^7 Ebony",
		"Description" : "Collect 10^7 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 7),
	},
	"74" : {
		"Name" : "Have 10^11 Ebony",
		"Description" : "Collect 10^11 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 11),
	},
	"75" : {
		"Name" : "Have 10^15 Ebony",
		"Description" : "Collect 10^15 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 15),
	},
	"76" : {
		"Name" : "Have 10^21 Ebony",
		"Description" : "Collect 10^21 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 21),
	},
	"77" : {
		"Name" : "Have 10^25 Ebony",
		"Description" : "Collect 10^25 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 25),
	},
	"78" : {
		"Name" : "Have 10^27 Ebony",
		"Description" : "Collect 10^27 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] > pow(10, 27),
	},
	"79" : {
		"Name" : "Have 10^3 Dogwood",
		"Description" : "Collect 10^3 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 3),
	},
	"80" : {
		"Name" : "Have 10^5 Dogwood",
		"Description" : "Collect 10^5 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 5),
	},
	"81" : {
		"Name" : "Have 10^8 Dogwood",
		"Description" : "Collect 10^8 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 8),
	},
	"82" : {
		"Name" : "Have 10^10 Dogwood",
		"Description" : "Collect 10^10 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 10),
	},
	"83" : {
		"Name" : "Have 10^14 Dogwood",
		"Description" : "Collect 10^14 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 14),
	},
	"84" : {
		"Name" : "Have 10^18 Dogwood",
		"Description" : "Collect 10^18 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 18),
	},
	"85" : {
		"Name" : "Have 10^23 Dogwood",
		"Description" : "Collect 10^23 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] > pow(10, 23),
	},
	"86" : {
		"Name" : "Have 10^4 Rosewood",
		"Description" : "Collect 10^4 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 4),
	},
	"87" : {
		"Name" : "Have 10^7 Rosewood",
		"Description" : "Collect 10^7 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 7),
	},
	"88" : {
		"Name" : "Have 10^9 Rosewood",
		"Description" : "Collect 10^9 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 9),
	},
	"89" : {
		"Name" : "Have 10^11 Rosewood",
		"Description" : "Collect 10^11 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 11),
	},
	"90" : {
		"Name" : "Have 10^13 Rosewood",
		"Description" : "Collect 10^13 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 13),
	},
	"91" : {
		"Name" : "Click On This Achievement",
		"Description" : "Click On This Achievement",
		"Trigger" : func(): return null, # Doesn't need a trigger
	},
	"92" : {
		"Name" : "Have 10^17 Rosewood",
		"Description" : "Collect 10^17 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 17),
	},
	"93" : {
		"Name" : "Have 10^20 Rosewood",
		"Description" : "Collect 10^20 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] > pow(10, 20),
	},
	"94" : {
		"Name" : "Have 10^4 Ghost Gum",
		"Description" : "Collect 10^4 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 4),
	},
	"95" : {
		"Name" : "Have 10^7 Ghost Gum",
		"Description" : "Collect 10^7 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 7),
	},
	"96" : {
		"Name" : "Have 10^11 Ghost Gum",
		"Description" : "Collect 10^11 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 11),
	},
	"97" : {
		"Name" : "Have 10^16 Ghost Gum",
		"Description" : "Collect 10^16 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 16),
	},
	"98" : {
		"Name" : "Have 10^20 Ghost Gum",
		"Description" : "Collect 10^20 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 20),
	},
	"99" : {
		"Name" : "Have 10^24 Ghost Gum",
		"Description" : "Collect 10^24 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 24),
	},
	"100" : {
		"Name" : "Have 10^27 Ghost Gum",
		"Description" : "Collect 10^27 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] > pow(10, 27),
	},
	"101" : {
		"Name" : "Have 10^3 Dragonwood",
		"Description" : "Collect 10^3 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 3),
	},
	"102" : {
		"Name" : "Have 10^6 Dragonwood",
		"Description" : "Collect 10^6 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 6),
	},
	"103" : {
		"Name" : "Have 10^9 Dragonwood",
		"Description" : "Collect 10^9 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 9),
	},
	"104" : {
		"Name" : "Have 10^12 Dragonwood",
		"Description" : "Collect 10^12 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 12),
	},
	"105" : {
		"Name" : "Have 10^15 Dragonwood",
		"Description" : "Collect 10^15 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 15),
	},
	"106" : {
		"Name" : "Have 10^20 Dragonwood",
		"Description" : "Collect 10^20 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 20),
	},
	"107" : {
		"Name" : "Have 10^25 Dragonwood",
		"Description" : "Collect 10^25 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] > pow(10, 25),
	},
	"108" : {
		"Name" : "Have 10^3 Gold",
		"Description" : "Collect 10^3 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 3),
	},
	"109" : {
		"Name" : "Have 10^6 Gold",
		"Description" : "Collect 10^6 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 6),
	},
	"110" : {
		"Name" : "Have 10^9 Gold",
		"Description" : "Collect 10^9 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 9),
	},
	"111" : {
		"Name" : "Have 10^12 Gold",
		"Description" : "Collect 10^12 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 12),
	},
	"112" : {
		"Name" : "Have 10^15 Gold",
		"Description" : "Collect 10^15 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 15),
	},
	"113" : {
		"Name" : "Have 10^18 Gold",
		"Description" : "Collect 10^18 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 18),
	},
	"114" : {
		"Name" : "Have 10^21 Gold",
		"Description" : "Collect 10^21 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 21),
	},
	"115" : {
		"Name" : "Have 10^24 Gold",
		"Description" : "Collect 10^24 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 24),
	},
	"116" : {
		"Name" : "Have 10^27 Gold",
		"Description" : "Collect 10^27 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 27),
	},
	"117" : {
		"Name" : "Have 10^30 Gold",
		"Description" : "Collect 10^30 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] > pow(10, 30),
	},
	"118" : {
		"Name" : "Unlock 5 Wood Types",
		"Description" : "Unlock 5 Wood Types",
		"Trigger" : func(): return unlockedWoodCheck(5),
	},
	"119" : {
		"Name" : "Unlock 10 Wood Types",
		"Description" : "Unlock 10 Wood Types",
		"Trigger" : func(): return unlockedWoodCheck(10),
	},
	"120" : {
		"Name" : "Unlock All Wood Types",
		"Description" : "Unlock All Wood Types",
		"Trigger" : func(): return unlockedWoodCheck(15),
	},
	"121" : {
		"Name" : "Unlock Dams",
		"Description" : "Unlock Dams",
		"Trigger" : func(): return Unlocks.Unlocks["Dams"]["Unlocked"],
	},
	"122" : {
		"Name" : "Build 1 Dam",
		"Description" : "Build 1 Dam",
		"Trigger" : func(): return damCountCheck(1),
	},
	"123" : {
		"Name" : "Build 10 Dam",
		"Description" : "Build 10 Dam",
		"Trigger" : func(): return damCountCheck(10),
	},
	"124" : {
		"Name" : "Build 100 Dam",
		"Description" : "Build 100 Dam",
		"Trigger" : func(): return damCountCheck(100),
	},
	"125" : {
		"Name" : "Build 1000 Dam",
		"Description" : "Build 1000 Dam",
		"Trigger" : func(): return damCountCheck(1000),
	},
	"126" : {
		"Name" : "Build 10000 Dam",
		"Description" : "Build 10000 Dam",
		"Trigger" : func(): return damCountCheck(10000),
	},
	"127" : {
		"Name" : "Construct a Small Dam",
		"Description" : "Construct your first Small Dam",
		"Trigger" : func(): return damTypeBuiltCheck(Dams.DamEnum.SmallDam),
	},
	"128" : {
		"Name" : "Construct a Medium Dam",
		"Description" : "Construct your first Medium Dam",
		"Trigger" : func(): return damTypeBuiltCheck(Dams.DamEnum.MediumDam),
	},
	"129" : {
		"Name" : "Construct a Big Dam",
		"Description" : "Construct your first Big Dam",
		"Trigger" : func(): return damTypeBuiltCheck(Dams.DamEnum.BigDam),
	},
	"130" : {
		"Name" : "Construct a Giant Dam",
		"Description" : "Construct your first Giant Dam",
		"Trigger" : func(): return damTypeBuiltCheck(Dams.DamEnum.GiantDam),
	},
	"131" : {
		"Name" : "Construct a Mega Dam",
		"Description" : "Construct your first Mega Dam",
		"Trigger" : func(): return damTypeBuiltCheck(Dams.DamEnum.MegaDam),
	},
	"132" : {
		"Name" : "Build All Dam Types",
		"Description" : "Build at least one of each Dam Type",
		"Trigger" : func(): return checkThatAllDamTypesBuilt(),
	},
	"133" : {
		"Name" : "Unlocked Fishing",
		"Description" : "Unlocked Fishing",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Unlocked"],
	},
	"134" : {
		"Name" : "Unlocked fishing spot 2",
		"Description" : "Unlocked fishing spot 2",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Spot"]["2"],
	},
	"135" : {
		"Name" : "Unlocked fishing spot 3",
		"Description" : "Unlocked fishing spot 3",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Spot"]["3"],
	},
	"136" : {
		"Name" : "Unlocked fishing spot 4",
		"Description" : "Unlocked fishing spot 4",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Spot"]["4"],
	},
	"137" : {
		"Name" : "Unlocked fishing spot 5",
		"Description" : "Unlocked fishing spot 5",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Spot"]["5"],
	},
	"138" : {
		"Name" : "Unlock All Fishing Spots",
		"Description" : "Unlock All five Fishing Spots",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Spot"]["5"] and Unlocks.Unlocks["Fishing"]["Spot"]["4"] and Unlocks.Unlocks["Fishing"]["Spot"]["3"] and Unlocks.Unlocks["Fishing"]["Spot"]["2"] and Unlocks.Unlocks["Fishing"]["Spot"]["1"],
	},
	"139" : { #First finish fishing
		"Name" : "Fish 1 Time",
		"Description" : "Fish 1 Time",
		"Trigger" : func(): return null,
	},
	"140" : {
		"Name" : "Fish 10 Time",
		"Description" : "Fish 10 Time",
		"Trigger" : func(): return null,
	},
	"141" : {
		"Name" : "Fish 100 Time",
		"Description" : "Fish 100 Time",
		"Trigger" : func(): return null,
	},
	"142" : {
		"Name" : "Fish 1000 Time",
		"Description" : "Fish 1000 Time",
		"Trigger" : func(): return null,
	},
	"143" : {
		"Name" : "Fish 10000 Time",
		"Description" : "Fish 10000 Time",
		"Trigger" : func(): return null,
	},
	"144" : {
		"Name" : "Sell 1 Fish",
		"Description" : "Sell 1 Fish",
		"Trigger" : func(): return null,
	},
	"145" : {
		"Name" : "Sell 25 Fish",
		"Description" : "Sell 25 Fish",
		"Trigger" : func(): return null,
	},
	"146" : {
		"Name" : "Sell 500 Fish",
		"Description" : "Sell 500 Fish",
		"Trigger" : func(): return null,
	},
	"147" : {
		"Name" : "Sell 7500 Fish",
		"Description" : "Sell 7500 Fish",
		"Trigger" : func(): return null,
	},
	"148" : {
		"Name" : "Sell 25000 Fish",
		"Description" : "Sell 25000 Fish",
		"Trigger" : func(): return null,
	},
	"149" : {
		"Name" : "Unlock Bait 1",
		"Description" : "Unlock Bait 1",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["1"],
	},
	"150" : {
		"Name" : "Unlock Bait 2",
		"Description" : "Unlock Bait 2",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["2"],
	},
	"151" : {
		"Name" : "Unlock Bait 3",
		"Description" : "Unlock Bait 3",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["3"],
	},
	"152" : {
		"Name" : "Unlock Bait 4",
		"Description" : "Unlock Bait 4",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["4"],
	},
	"153" : {
		"Name" : "Unlock Bait 5",
		"Description" : "Unlock Bait 5",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["5"],
	},
	"154" : {
		"Name" : "Unlock Bait 6",
		"Description" : "Unlock Bait 6",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["6"],
	},
	"155" : {
		"Name" : "Unlock Bait 7",
		"Description" : "Unlock Bait 7",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["7"],
	},
	"156" : {
		"Name" : "Unlock Bait 8",
		"Description" : "Unlock Bait 8",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["8"],
	},
	"157" : {
		"Name" : "Unlock Bait 9",
		"Description" : "Unlock Bait 9",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["9"],
	},
	"158" : {
		"Name" : "Unlock Bait 10",
		"Description" : "Unlock Bait 10",
		"Trigger" : func(): return Unlocks.Unlocks["Fishing"]["Bait"]["10"],
	},
	"159" : {
		"Name" : "Unlock All Baits",
		"Description" : "Unlock All Baits",
		"Trigger" : func(): return checkThatAllBaitsUnlocked(),
	},
	"160" : { # Finish fishing
		"Name" : "Find Electric Eal",
		"Description" : "Find Electric Eal",
		"Trigger" : func(): return null,
	},
	"161" : {
		"Name" : "Find Giant Squid",
		"Description" : "Find Giant Squid",
		"Trigger" : func(): return null,
	},
	"162" : {
		"Name" : "Fish 10 Times in One Ascension",
		"Description" : "Fish 10 Times in One Ascension",
		"Trigger" : func(): return null,
	},
	"163" : {
		"Name" : "Fish 100 Times in One Ascension",
		"Description" : "Fish 100 Times in One Ascension",
		"Trigger" : func(): return null,
	},
	"164" : {
		"Name" : "Fish 250 Times in One Ascension",
		"Description" : "Fish 250 Times in One Ascension",
		"Trigger" : func(): return null,
	},
	"165" : {
		"Name" : "Fish 1000 Times in One Ascension",
		"Description" : "Fish 1000 Times in One Ascension",
		"Trigger" : func(): return null,
	},
	"166" : {
		"Name" : "5 Fish Types Caught",
		"Description" : "5 Fish Types Caught",
		"Trigger" : func(): return null,
	},
	"167" : {
		"Name" : "10 Fish Types Caught",
		"Description" : "10 Fish Types Caught",
		"Trigger" : func(): return null,
	},
	"168" : {
		"Name" : "20 Fish Types Caught",
		"Description" : "20 Fish Types Caught",
		"Trigger" : func(): return null,
	},
	"169" : {
		"Name" : "35 Fish Types Caught",
		"Description" : "35 Fish Types Caught",
		"Trigger" : func(): return null,
	},
	"170" : {
		"Name" : "55 Fish Types Caught",
		"Description" : "55 Fish Types Caught",
		"Trigger" : func(): return null,
	},
	"171" : {
		"Name" : "All Fish Types Caught",
		"Description" : "All Fish Types Caught",
		"Trigger" : func(): return null,
	},
	"172" : {
		"Name" : "Have 100 Woodcamps",
		"Description" : "Have 100 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(100, "Woodcamps"),
	},
	"173" : {
		"Name" : "Have 1000 Woodcamps",
		"Description" : "Have 1000 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(1000, "Woodcamps"),
	},
	"174" : {
		"Name" : "Have 10000 Woodcamps",
		"Description" : "Have 10000 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(10000, "Woodcamps"),
	},
	"175" : {
		"Name" : "Have 100000 Woodcamps",
		"Description" : "Have 100000 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(100000, "Woodcamps"),
	},
	"176" : {
		"Name" : "Have 10^6 Woodcamps",
		"Description" : "Have 10^6 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,6), "Woodcamps"),
	},
	"177" : {
		"Name" : "Have 10^7 Woodcamps",
		"Description" : "Have 10^7 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,7), "Woodcamps"),
	},
	"178" : {
		"Name" : "Have 10^8 Woodcamps",
		"Description" : "Have 10^8 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,8), "Woodcamps"),
	},
	"179" : {
		"Name" : "Have 10^9 Woodcamps",
		"Description" : "Have 10^9 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,9), "Woodcamps"),
	},
	"180" : {
		"Name" : "Have 10^10 Woodcamps",
		"Description" : "Have 10^10 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,10), "Woodcamps"),
	},
	"181" : {
		"Name" : "Have 100 beavers",
		"Description" : "Have 100 beavers",
		"Trigger" : func(): return resourceItemCountCheck(100, "Beavers"),
	},
	"182" : {
		"Name" : "Have 1000 beavers",
		"Description" : "Have 1000 beavers",
		"Trigger" : func(): return resourceItemCountCheck(1000, "Beavers"),
	},
	"183" : {
		"Name" : "Have 10000 beavers",
		"Description" : "Have 10000 beavers",
		"Trigger" : func(): return resourceItemCountCheck(10000, "Beavers"),
	},
	"184" : {
		"Name" : "Have 100000 beavers",
		"Description" : "Have 100000 beavers",
		"Trigger" : func(): return resourceItemCountCheck(100000, "Beavers"),
	},
	"185" : {
		"Name" : "Have 10^6 beavers",
		"Description" : "Have 10^6 beavers",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,6), "Beavers"),
	},
	"186" : {
		"Name" : "Have 10^7 beavers",
		"Description" : "Have 10^7 beavers",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,7), "Beavers"),
	},
	"187" : {
		"Name" : "Have 10^8 beavers",
		"Description" : "Have 10^8 beavers",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,8), "Beavers"),
	},
	"188" : {
		"Name" : "Have 10^9 beavers",
		"Description" : "Have 10^9 beavers",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,9), "Beavers"),
	},
	"189" : {
		"Name" : "Have 10^10 beavers",
		"Description" : "Have 10^10 beavers",
		"Trigger" : func(): return resourceItemCountCheck(pow(10,10), "Beavers"),
	},
	"190" : {
		"Name" : "Total Beavers Bought 500",
		"Description" : "Total Beavers Bought 500",
		"Trigger" : func(): return null,
	},
	"191" : {
		"Name" : "Total Beavers Bought 50000",
		"Description" : "Total Beavers Bought 50000",
		"Trigger" : func(): return null,
	},
	"192" : {
		"Name" : "Total Beavers Bought 5 * 10^6",
		"Description" : "Total Beavers Bought 5 * 10^6",
		"Trigger" : func(): return null,
	},
	"193" : {
		"Name" : "Total Beavers Bought 5 * 10^9",
		"Description" : "Total Beavers Bought 5 * 10^9",
		"Trigger" : func(): return null,
	},
	"194" : {
		"Name" : "Total Beavers Bought 5 * 10^12",
		"Description" : "Total Beavers Bought 5 * 10^12",
		"Trigger" : func(): return null,
	},
	"195" : {
		"Name" : "Total Beavers Bought 5 * 10^15",
		"Description" : "Total Beavers Bought 5 * 10^15",
		"Trigger" : func(): return null,
	},
	"196" : {
		"Name" : "Total Woodcamps Bought 500",
		"Description" : "Total Woodcamps Bought 500",
		"Trigger" : func(): return null,
	},
	"197" : {
		"Name" : "Total Woodcamps Bought 50000",
		"Description" : "Total Woodcamps Bought 50000",
		"Trigger" : func(): return null,
	},
	"198" : {
		"Name" : "Total Woodcamps Bought 5 * 10^6",
		"Description" : "Total Woodcamps Bought 5 * 10^6",
		"Trigger" : func(): return null,
	},
	"199" : {
		"Name" : "Total Woodcamps Bought 5 * 10^9",
		"Description" : "Total Woodcamps Bought 5 * 10^9",
		"Trigger" : func(): return null,
	},
	"200" : {
		"Name" : "Total Woodcamps Bought 5 * 10^12",
		"Description" : "Total Woodcamps Bought 5 * 10^12",
		"Trigger" : func(): return null,
	},
	"201" : {
		"Name" : "Total Woodcamps Bought 5 * 10^15",
		"Description" : "Total Woodcamps Bought 5 * 10^15",
		"Trigger" : func(): return null,
	},
	"202" : {
		"Name" : "Total wood produced 10^8",
		"Description" : "Total wood produced 10^8",
		"Trigger" : func(): return null,
	},
	"203" : {
		"Name" : "Total wood produced 10^11",
		"Description" : "Total wood produced 10^11",
		"Trigger" : func(): return null,
	},
	"204" : {
		"Name" : "Total wood produced 10^14",
		"Description" : "Total wood produced 10^14",
		"Trigger" : func(): return null,
	},
	"205" : {
		"Name" : "Total wood produced 10^17",
		"Description" : "Total wood produced 10^17",
		"Trigger" : func(): return null,
	},
	"206" : {
		"Name" : "Total wood produced 10^20",
		"Description" : "Total wood produced 10^20",
		"Trigger" : func(): return null,
	},
	"207" : {
		"Name" : "Total wood produced 10^23",
		"Description" : "Total wood produced 10^23",
		"Trigger" : func(): return null,
	},
	"208" : {
		"Name" : "Total wood produced 10^26",
		"Description" : "Total wood produced 10^26",
		"Trigger" : func(): return null,
	},
	"209" : {
		"Name" : "Total wood produced 10^29",
		"Description" : "Total wood produced 10^29",
		"Trigger" : func(): return null,
	},
	"210" : {
		"Name" : "Total wood produced 10^32",
		"Description" : "Total wood produced 10^32",
		"Trigger" : func(): return null,
	},
	"211" : {
		"Name" : "Total Wood Sold 1m",
		"Description" : "Total Wood Sold 1m",
		"Trigger" : func(): return null,
	},
	"212" : {
		"Name" : "Total Wood Sold 10^9",
		"Description" : "Total Wood Sold 10^9",
		"Trigger" : func(): return null,
	},
	"213" : {
		"Name" : "Total Wood Sold 10^14",
		"Description" : "Total Wood Sold 10^14",
		"Trigger" : func(): return null,
	},
	"214" : {
		"Name" : "Total Wood Sold 10^19",
		"Description" : "Total Wood Sold 10^19",
		"Trigger" : func(): return null,
	},
	"215" : {
		"Name" : "Total Wood Sold 10^24",
		"Description" : "Total Wood Sold 10^24",
		"Trigger" : func(): return null,
	},
	"216" : {
		"Name" : "Total Gold Gained 10^7",
		"Description" : "Total Gold Gained 10^7",
		"Trigger" : func(): return null,
	},
	"217" : {
		"Name" : "Total Gold Gained 10^11",
		"Description" : "Total Gold Gained 10^11",
		"Trigger" : func(): return null,
	},
	"218" : {
		"Name" : "Total Gold Gained 10^15",
		"Description" : "Total Gold Gained 10^15",
		"Trigger" : func(): return null,
	},
	"219" : {
		"Name" : "Total Gold Gained 10^19",
		"Description" : "Total Gold Gained 10^19",
		"Trigger" : func(): return null,
	},
	"220" : {
		"Name" : "Total Gold Gained 10^23",
		"Description" : "Total Gold Gained 10^23",
		"Trigger" : func(): return null,
	},
	"221" : {
		"Name" : "Total Gold Gained 10^27",
		"Description" : "Total Gold Gained 10^27",
		"Trigger" : func(): return null,
	},
	"222" : {
		"Name" : "Play 1h",
		"Description" : "Thank you!",
		"Trigger" : func(): return playTimeCheck(1),
	},
	"223" : {
		"Name" : "Play 10h",
		"Description" : "Oh god thanks!",
		"Trigger" : func(): return playTimeCheck(10),
	},
	"224" : {
		"Name" : "Play 24h",
		"Description" : "You are going to make me cry",
		"Trigger" : func(): return playTimeCheck(24),
	},
	"225" : {
		"Name" : "Play 100h",
		"Description" : "Wow, myb stop?",
		"Trigger" : func(): return playTimeCheck(100),
	},
	"226" : {
		"Name" : "If your a broke boy just say so",
		"Description" : "Have 0 Wood After Unlocking Achievements",
		"Trigger" : func(): return checkThat0WoodCount(),
	},
	"227" : {
		"Name" : "gold gain per sec +1000",
		"Description" : "gold gain per sec +1000",
		"Trigger" : func(): return goldPerSecondCheck(1000),
	},
	"228" : {
		"Name" : "gold gain per sec +10000",
		"Description" : "gold gain per sec +10000",
		"Trigger" : func(): return goldPerSecondCheck(10000),
	},
	"229" : {
		"Name" : "gold gain per sec +190000",
		"Description" : "gold gain per sec +190000",
		"Trigger" : func(): return goldPerSecondCheck(190000),
	},
	"230" : {
		"Name" : "gold gain per sec +2800000",
		"Description" : "gold gain per sec +2800000",
		"Trigger" : func(): return goldPerSecondCheck(2800000),
	},
	"231" : {
		"Name" : "gold gain per sec +37000000",
		"Description" : "gold gain per sec +37000000",
		"Trigger" : func(): return goldPerSecondCheck(37000000),
	},
	"232" : {
		"Name" : "gold gain per sec +4.6 * 10^7",
		"Description" : "gold gain per sec +4.6 * 10^7",
		"Trigger" : func(): return null,
	},
	"233" : {
		"Name" : "gold gain per sec +5.7 * 10^9",
		"Description" : "gold gain per sec +5.7 * 10^9",
		"Trigger" : func(): return null,
	},
	"234" : {
		"Name" : "gold gain per sec +6.8 * 10^11",
		"Description" : "gold gain per sec +6.8 * 10^11",
		"Trigger" : func(): return null,
	},
	"235" : {
		"Name" : "gold gain per sec +7.9 * 10^13",
		"Description" : "gold gain per sec +7.9 * 10^13",
		"Trigger" : func(): return null,
	},
	"236" : {
		"Name" : "gold gain per sec +9 * 10^15",
		"Description" : "gold gain per sec +9 * 10^15",
		"Trigger" : func(): return null,
	},
	"237" : { # Finish Settings first
		"Name" : "Change All Settings Atleast Once",
		"Description" : "Change All Settings Atleast Once",
		"Trigger" : func(): return null,
	},
	"238" : {
		"Name" : "Construct 5 Dams At The Same Time",
		"Description" : "Construct 5 Dams At The Same Time",
		"Trigger" : func(): return null,
	},
	"239" : {
		"Name" : "Construct 13 Dams At The Same Time",
		"Description" : "Construct 13 Dams At The Same Time",
		"Trigger" : func(): return null,
	},
	"240" : {
		"Name" : "Ascend 1 time",
		"Description" : "Ascend 1 time",
		"Trigger" : func(): return null,
	},
	"241" : {
		"Name" : "Ascend 5 times",
		"Description" : "Ascend 5 times",
		"Trigger" : func(): return null,
	},
	"242" : {
		"Name" : "Ascend 25 times",
		"Description" : "Ascend 25 times",
		"Trigger" : func(): return null,
	},
	"243" : {
		"Name" : "Ascend 75 times",
		"Description" : "Ascend 75 times",
		"Trigger" : func(): return null,
	},
	"244" : {
		"Name" : "Ascend 150 times",
		"Description" : "Ascend 150 times",
		"Trigger" : func(): return null,
	},
	"245" : {
		"Name" : "Click 1 time",
		"Description" : "Click 1 time",
		"Trigger" : func(): return null,
	},
	"246" : {
		"Name" : "Click 100 time",
		"Description" : "Click 100 time",
		"Trigger" : func(): return null,
	},
	"247" : {
		"Name" : "Click 1k time",
		"Description" : "Click 1k time",
		"Trigger" : func(): return null,
	},
	"248" : {
		"Name" : "Click 10k time",
		"Description" : "Click 10k time",
		"Trigger" : func(): return null,
	},
	"249" : {
		"Name" : "Click 100k time",
		"Description" : "Click 100k time",
		"Trigger" : func(): return null,
	},
	"250" : {
		"Name" : "Why Are We Clicking?",
		"Description" : "Manually click 10,000 times in one session",
		"Trigger" : func(): return null,
	},
	"251" : {
		"Name" : "Max LvL 1 Upgrade",
		"Description" : "Max LvL 1 Upgrade",
		"Trigger" : func(): return null,
	},
	"252" : {
		"Name" : "Max LvL 10 Upgrades",
		"Description" : "Max LvL 10 Upgrades",
		"Trigger" : func(): return null,
	},
	"253" : {
		"Name" : "Max LvL 100 Upgrades",
		"Description" : "Max LvL 100 Upgrades",
		"Trigger" : func(): return null,
	},
	"254" : {
		"Name" : "Max LvL All Upgrades",
		"Description" : "Max LvL All Upgrades",
		"Trigger" : func(): return null,
	},
	"255" : {
		"Name" : "Click all buttons in the game",
		"Description" : "Click all buttons in the game",
		"Trigger" : func(): return null,
	},
	"256" : {
		"Name" : "Buy 1 Magic Upgrades",
		"Description" : "Buy 1 Magic Upgrades",
		"Trigger" : func(): return null,
	},
	"257" : {
		"Name" : "Buy 10 Magic Upgrades",
		"Description" : "Buy 10 Magic Upgrades",
		"Trigger" : func(): return null,
	},
	"258" : {
		"Name" : "Buy 30 Magic Upgrades",
		"Description" : "Buy 30 Magic Upgrades",
		"Trigger" : func(): return null,
	},
	"259" : {
		"Name" : "Buy 50 Magic Upgrades",
		"Description" : "Buy 50 Magic Upgrades",
		"Trigger" : func(): return null,
	},
	"260" : {
		"Name" : "Buy All Magic Upgrades",
		"Description" : "Buy All Magic Upgrades",
		"Trigger" : func(): return null,
	},
	"261" : {
		"Name" : "Magic Gathered 10",
		"Description" : "Magic Gathered 10",
		"Trigger" : func(): return SaveData.Magic["Count"] > 10,
	},
	"262" : {
		"Name" : "Magic Gathered 100",
		"Description" : "Magic Gathered 100",
		"Trigger" : func(): return SaveData.Magic["Count"] > 100,
	},
	"263" : {
		"Name" : "Magic Gathered 10^4",
		"Description" : "Magic Gathered 10^4",
		"Trigger" : func(): return SaveData.Magic["Count"] > pow(10, 4),
	},
	"264" : {
		"Name" : "Magic Gathered 10^7",
		"Description" : "Magic Gathered 10^7",
		"Trigger" : func(): return SaveData.Magic["Count"] > pow(10, 7),
	},
	"265" : {
		"Name" : "Magic Gathered 10^9",
		"Description" : "Magic Gathered 10^9",
		"Trigger" : func(): return SaveData.Magic["Count"] > pow(10, 9),
	},
	"266" : {
		"Name" : "Magic Gathered 10^11",
		"Description" : "Magic Gathered 10^11",
		"Trigger" : func(): return SaveData.Magic["Count"] > pow(10, 11),
	},
	"267" : {
		"Name" : "Unlocked Bots",
		"Description" : "Unlocked Bots",
		"Trigger" : func(): return null,
	},
	"268" : {
		"Name" : "Research 20 upgrades in one ascension",
		"Description" : "Research 20 upgrades in one ascension",
		"Trigger" : func(): return null,
	},
	"269" : {
		"Name" : "Research 30 upgrades in one ascension",
		"Description" : "Research 30 upgrades in one ascension",
		"Trigger" : func(): return null,
	},
	"270" : {
		"Name" : "Research 60 upgrades in one ascension",
		"Description" : "Research 60 upgrades in one ascension",
		"Trigger" : func(): return null,
	},
	"271" : {
		"Name" : "Research 80 upgrades in one ascension",
		"Description" : "Research 80 upgrades in one ascension",
		"Trigger" : func(): return null,
	},
	"272" : {
		"Name" : "Total Research Done 50",
		"Description" : "Total Research Done 50",
		"Trigger" : func(): return null,
	},
	"273" : {
		"Name" : "Total Research Done 150",
		"Description" : "Total Research Done 150",
		"Trigger" : func(): return null,
	},
	"274" : {
		"Name" : "Total Research Done 300",
		"Description" : "Total Research Done 300",
		"Trigger" : func(): return null,
	},
	"275" : {
		"Name" : "Total Research Done 500",
		"Description" : "Total Research Done 500",
		"Trigger" : func(): return null,
	},
	"276" : {
		"Name" : "Total Research Done 750",
		"Description" : "Total Research Done 750",
		"Trigger" : func(): return null,
	},
	"277" : {
		"Name" : "Total Research Done 1050",
		"Description" : "Total Research Done 1050",
		"Trigger" : func(): return null,
	},
	"278" : {
		"Name" : "Total Research Done 1500",
		"Description" : "Total Research Done 1500",
		"Trigger" : func(): return null,
	},
	"279" : {
		"Name" : "Total Research Done 2500",
		"Description" : "Total Research Done 2500",
		"Trigger" : func(): return null,
	},
	"280" : {
		"Name" : "Total Upgrades Bought 500",
		"Description" : "Total Upgrades Bought 500",
		"Trigger" : func(): return null,
	},
	"281" : {
		"Name" : "Total Upgrades Bought 2500",
		"Description" : "Total Upgrades Bought 2500",
		"Trigger" : func(): return null,
	},
	"282" : {
		"Name" : "Total Upgrades Bought 5000",
		"Description" : "Total Upgrades Bought 5000",
		"Trigger" : func(): return null,
	},
	"283" : {
		"Name" : "Total Upgrades Bought 10000",
		"Description" : "Total Upgrades Bought 10000",
		"Trigger" : func(): return null,
	},
	"284" : {
		"Name" : "Total Upgrades Bought 20000",
		"Description" : "Total Upgrades Bought 20000",
		"Trigger" : func(): return null,
	},
	"285" : {
		"Name" : "Total Upgrades Bought 30000",
		"Description" : "Total Upgrades Bought 30000",
		"Trigger" : func(): return null,
	},
	"286" : {
		"Name" : "Total Upgrades Bought 50000",
		"Description" : "Total Upgrades Bought 50000",
		"Trigger" : func(): return null,
	},
	"287" : {
		"Name" : "Total Bots Bought 50",
		"Description" : "Total Bots Bought 50",
		"Trigger" : func(): return null,
	},
	"288" : {
		"Name" : "Total Bots Bought 250",
		"Description" : "Total Bots Bought 250",
		"Trigger" : func(): return null,
	},
	"289" : {
		"Name" : "Total Bots Bought 500",
		"Description" : "Total Bots Bought 500",
		"Trigger" : func(): return null,
	},
	"290" : {
		"Name" : "Total Bots Bought 1000",
		"Description" : "Total Bots Bought 1000",
		"Trigger" : func(): return null,
	},
	"291" : {
		"Name" : "Total Bots Bought 2000",
		"Description" : "Total Bots Bought 2000",
		"Trigger" : func(): return null,
	},
	"292" : {
		"Name" : "Total Bots Bought 3000",
		"Description" : "Total Bots Bought 3000",
		"Trigger" : func(): return null,
	},
	"293" : {
		"Name" : "Total Bots Bought 5000",
		"Description" : "Total Bots Bought 5000",
		"Trigger" : func(): return null,
	},
	"294" : {
		"Name" : "10 Achievements Unlocked",
		"Description" : "10 Achievements Unlocked",
		"Trigger" : func(): return null,
	},
	"295" : {
		"Name" : "40 Achievements Unlocked",
		"Description" : "40 Achievements Unlocked",
		"Trigger" : func(): return null,
	},
	"296" : {
		"Name" : "80 Achievements Unlocked",
		"Description" : "80 Achievements Unlocked",
		"Trigger" : func(): return null,
	},
	"297" : {
		"Name" : "130 Achievements Unlocked",
		"Description" : "130 Achievements Unlocked",
		"Trigger" : func(): return null,
	},
	"298" : {
		"Name" : "190 Achievements Unlocked",
		"Description" : "190 Achievements Unlocked",
		"Trigger" : func(): return null,
	},
	"299" : {
		"Name" : "260 Achievements Unlocked",
		"Description" : "260 Achievements Unlocked",
		"Trigger" : func(): return null,
	},
	"300" : {
		"Name" : "All Achievements Unlocked",
		"Description" : "All Achievements Unlocked",
		"Trigger" : func(): return null,
	},
}

func unlockedWoodCheck(countNeeded):
	var unlockedWoodTypes = 0
	
	for woodType in Values.WoodTypes:
		if Unlocks.Unlocks[woodType]["Unlocked"]:
			unlockedWoodTypes += 1
	
	return unlockedWoodTypes >= countNeeded

func damCountCheck(countNeeded):
	var damData = SaveData.DamData
	var damCount = damData[Dams.DamEnum.SmallDam]["Count"] + damData[Dams.DamEnum.MediumDam]["Count"] + damData[Dams.DamEnum.BigDam]["Count"] + damData[Dams.DamEnum.GiantDam]["Count"] + damData[Dams.DamEnum.MegaDam]["Count"]
	
	return damCount >= countNeeded

func damTypeBuiltCheck(damType):
	return SaveData.DamData[damType]["Count"] > 0

func checkThatAllDamTypesBuilt():
	return damTypeBuiltCheck(Dams.DamEnum.SmallDam) + damTypeBuiltCheck(Dams.DamEnum.MediumDam) + damTypeBuiltCheck(Dams.DamEnum.BigDam) + damTypeBuiltCheck(Dams.DamEnum.GiantDam) + damTypeBuiltCheck(Dams.DamEnum.MegaDam)

func checkThatAllBaitsUnlocked():
	return Unlocks.Unlocks["Fishing"]["Bait"]["1"] and Unlocks.Unlocks["Fishing"]["Bait"]["2"] and Unlocks.Unlocks["Fishing"]["Bait"]["3"] and Unlocks.Unlocks["Fishing"]["Bait"]["4"] and Unlocks.Unlocks["Fishing"]["Bait"]["5"] and Unlocks.Unlocks["Fishing"]["Bait"]["6"] and Unlocks.Unlocks["Fishing"]["Bait"]["7"] and Unlocks.Unlocks["Fishing"]["Bait"]["8"] and Unlocks.Unlocks["Fishing"]["Bait"]["9"] and Unlocks.Unlocks["Fishing"]["Bait"]["10"]

func resourceItemCountCheck(countNeeded, type):
	var resourceData = SaveData.Resources
	var woodcampCount = 0
	
	for woodType in Values.WoodTypes:
		woodcampCount += resourceData[woodType][type]
	
	return woodcampCount >= countNeeded

func playTimeCheck(playTime):
	return GameSaves.getCurrentPlayTime() >= playTime * 3600

func checkThat0WoodCount():
	for woodType in Values.WoodTypes:
		if SaveData.Resources[woodType]["Count"] > 0:
			return false
	return true

func goldPerSecondCheck(needed):
	return needed >= Values.ResourceValues["Gold"]["PerSecond"]
