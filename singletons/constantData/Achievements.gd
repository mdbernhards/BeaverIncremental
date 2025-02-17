extends Node

var Achievements = {
	"1" : {
		"Name" : "Have 250k Oak",
		"Description" : "Collect 250k Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= 250000,
	},
	"2" : {
		"Name" : "Have 1m Oak",
		"Description" : "Collect 1m Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 6),
	},
	"3" : {
		"Name" : "Have 10m Oak",
		"Description" : "Collect 10m Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 7),
	},
	"4" : {
		"Name" : "Have 10^8 Oak",
		"Description" : "Collect 10^8 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 8),
	},
	"5" : {
		"Name" : "Have 10^12 Oak",
		"Description" : "Collect 10^12 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 12),
	},
	"6" : {
		"Name" : "Have 10^15 Oak",
		"Description" : "Collect 10^15 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 15),
	},
	"7" : {
		"Name" : "Have 10^20 Oak",
		"Description" : "Collect 10^20 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 20),
	},
	"8" : {
		"Name" : "Have 10^24 Oak",
		"Description" : "Collect 10^24 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 24),
	},
	"9" : {
		"Name" : "Have 10^6 Apple",
		"Description" : "Collect 10^6 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 6),
	},
	"10" : {
		"Name" : "Have 10^7 Apple",
		"Description" : "Collect 10^7 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 7),
	},
	"11" : {
		"Name" : "Have 10^9 Apple",
		"Description" : "Collect 10^9 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 9),
	},
	"12" : {
		"Name" : "Have 10^12 Apple",
		"Description" : "Collect 10^12 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 12),
	},
	"13" : {
		"Name" : "Have 10^15 Apple",
		"Description" : "Collect 10^15 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 15),
	},
	"14" : {
		"Name" : "Have 10^19 Apple",
		"Description" : "Collect 10^19 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 19),
	},
	"15" : {
		"Name" : "Have 10^24 Apple",
		"Description" : "Collect 10^24 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 24),
	},
	"16" : {
		"Name" : "Have 10^4 Maple",
		"Description" : "Collect 10^4 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 4),
	},
	"17" : {
		"Name" : "Have 10^6 Maple",
		"Description" : "Collect 10^6 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 6),
	},
	"18" : {
		"Name" : "Have 10^7 Maple",
		"Description" : "Collect 10^7 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 7),
	},
	"19" : {
		"Name" : "Have 10^11 Maple",
		"Description" : "Collect 10^11 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 11),
	},
	"20" : {
		"Name" : "Have 10^13 Maple",
		"Description" : "Collect 10^13 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 13),
	},
	"21" : {
		"Name" : "Have 10^18 Maple",
		"Description" : "Collect 10^18 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 18),
	},
	"22" : {
		"Name" : "Have 10^25 Maple",
		"Description" : "Collect 10^25 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 25),
	},
	"23" : {
		"Name" : "Have 10^4 Birch",
		"Description" : "Collect 10^4 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 4),
	},
	"24" : {
		"Name" : "Have 10^5 Birch",
		"Description" : "Collect 10^5 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 5),
	},
	"25" : {
		"Name" : "Have 10^7 Birch",
		"Description" : "Collect 10^7 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 7),
	},
	"26" : {
		"Name" : "Have 10^9 Birch",
		"Description" : "Collect 10^9 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 9),
	},
	"27" : {
		"Name" : "Have 10^14 Birch",
		"Description" : "Collect 10^14 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 14),
	},
	"28" : {
		"Name" : "Have 10^19 Birch",
		"Description" : "Collect 10^19 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 19),
	},
	"29" : {
		"Name" : "Have 10^26 Birch",
		"Description" : "Collect 10^26 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 26),
	},
	"30" : {
		"Name" : "Have 10^5 Spruce",
		"Description" : "Collect 10^5 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 5),
	},
	"31" : {
		"Name" : "Have 10^7 Spruce",
		"Description" : "Collect 10^7 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 7),
	},
	"32" : {
		"Name" : "Have 10^8 Spruce",
		"Description" : "Collect 10^8 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 8),
	},
	"33" : {
		"Name" : "Have 10^11 Spruce",
		"Description" : "Collect 10^11 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 11),
	},
	"34" : {
		"Name" : "Have 10^15 Spruce",
		"Description" : "Collect 10^15 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 15),
	},
	"35" : {
		"Name" : "Have 10^17 Spruce",
		"Description" : "Collect 10^17 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 17),
	},
	"36" : {
		"Name" : "Have 10^21 Spruce",
		"Description" : "Collect 10^21 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 21),
	},
	"37" : {
		"Name" : "Have 10^3 Chestnut",
		"Description" : "Collect 10^3 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 3),
	},
	"38" : {
		"Name" : "Have 10^5 Chestnut",
		"Description" : "Collect 10^5 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 5),
	},
	"39" : {
		"Name" : "Have 10^6 Chestnut",
		"Description" : "Collect 10^6 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 6),
	},
	"40" : {
		"Name" : "Have 10^10 Chestnut",
		"Description" : "Collect 10^10 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 10),
	},
	"41" : {
		"Name" : "Have 10^14 Chestnut",
		"Description" : "Collect 10^14 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 14),
	},
	"42" : {
		"Name" : "Have 10^18 Chestnut",
		"Description" : "Collect 10^18 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 18),
	},
	"43" : {
		"Name" : "Have 10^22 Chestnut",
		"Description" : "Collect 10^22 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 22),
	},
	"44" : {
		"Name" : "Have 10^4 Cherry",
		"Description" : "Collect 10^4 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 4),
	},
	"45" : {
		"Name" : "Have 10^5 Cherry",
		"Description" : "Collect 10^5 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 5),
	},
	"46" : {
		"Name" : "Have 10^7 Cherry",
		"Description" : "Collect 10^7 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 7),
	},
	"47" : {
		"Name" : "Have 10^9 Cherry",
		"Description" : "Collect 10^9 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 9),
	},
	"48" : {
		"Name" : "Have 10^11 Cherry",
		"Description" : "Collect 10^11 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 11),
	},
	"49" : {
		"Name" : "Have 10^14 Cherry",
		"Description" : "Collect 10^14 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 14),
	},
	"50" : {
		"Name" : "Have 10^16 Cherry",
		"Description" : "Collect 10^16 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 16),
	},
	"51" : {
		"Name" : "Have 10^5 Ash",
		"Description" : "Collect 10^5 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 5),
	},
	"52" : {
		"Name" : "Have 10^7 Ash",
		"Description" : "Collect 10^7 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 7),
	},
	"53" : {
		"Name" : "Have 10^10 Ash",
		"Description" : "Collect 10^10 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 10),
	},
	"54" : {
		"Name" : "Have 10^19 Ash",
		"Description" : "Collect 10^19 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 19),
	},
	"55" : {
		"Name" : "Have 10^21 Ash",
		"Description" : "Collect 10^21 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 21),
	},
	"56" : {
		"Name" : "Have 10^24 Ash",
		"Description" : "Collect 10^24 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 24),
	},
	"57" : {
		"Name" : "Have 10^26 Ash",
		"Description" : "Collect 10^26 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 26),
	},
	"58" : {
		"Name" : "Have 10^3 Cedar",
		"Description" : "Collect 10^3 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 3),
	},
	"59" : {
		"Name" : "Have 10^6 Cedar",
		"Description" : "Collect 10^6 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 6),
	},
	"60" : {
		"Name" : "Have 10^10 Cedar",
		"Description" : "Collect 10^10 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 10),
	},
	"61" : {
		"Name" : "Have 10^13 Cedar",
		"Description" : "Collect 10^13 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 13),
	},
	"62" : {
		"Name" : "Have 10^17 Cedar",
		"Description" : "Collect 10^17 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 17),
	},
	"63" : {
		"Name" : "Have 10^22 Cedar",
		"Description" : "Collect 10^22 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 22),
	},
	"64" : {
		"Name" : "Have 10^28 Cedar",
		"Description" : "Collect 10^28 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 28),
	},
	"65" : {
		"Name" : "Have 10^4 Mahogany",
		"Description" : "Collect 10^4 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 4),
	},
	"66" : {
		"Name" : "Have 10^5 Mahogany",
		"Description" : "Collect 10^5 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 5),
	},
	"67" : {
		"Name" : "Have 10^6 Mahogany",
		"Description" : "Collect 10^6 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 6),
	},
	"68" : {
		"Name" : "Have 10^9 Mahogany",
		"Description" : "Collect 10^9 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 9),
	},
	"69" : {
		"Name" : "Have 10^14 Mahogany",
		"Description" : "Collect 10^14 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 14),
	},
	"70" : {
		"Name" : "Have 10^19 Mahogany",
		"Description" : "Collect 10^19 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 19),
	},
	"71" : {
		"Name" : "Have 10^25 Mahogany",
		"Description" : "Collect 10^25 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 25),
	},
	"72" : {
		"Name" : "Have 10^5 Ebony",
		"Description" : "Collect 10^5 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 5),
	},
	"73" : {
		"Name" : "Have 10^7 Ebony",
		"Description" : "Collect 10^7 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 7),
	},
	"74" : {
		"Name" : "Have 10^11 Ebony",
		"Description" : "Collect 10^11 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 11),
	},
	"75" : {
		"Name" : "Have 10^14 Ebony",
		"Description" : "Collect 10^14 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 14),
	},
	"76" : {
		"Name" : "Have 10^18 Ebony",
		"Description" : "Collect 10^18 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 18),
	},
	"77" : {
		"Name" : "Have 10^22 Ebony",
		"Description" : "Collect 10^22 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 22),
	},
	"78" : {
		"Name" : "Have 10^25 Ebony",
		"Description" : "Collect 10^25 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 25),
	},
	"79" : {
		"Name" : "Have 10^3 Dogwood",
		"Description" : "Collect 10^3 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 3),
	},
	"80" : {
		"Name" : "Have 10^5 Dogwood",
		"Description" : "Collect 10^5 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 5),
	},
	"81" : {
		"Name" : "Have 10^6 Dogwood",
		"Description" : "Collect 10^6 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 6),
	},
	"82" : {
		"Name" : "Have 10^7 Dogwood",
		"Description" : "Collect 10^7 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 7),
	},
	"83" : {
		"Name" : "Have 10^9 Dogwood",
		"Description" : "Collect 10^9 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 9),
	},
	"84" : {
		"Name" : "Have 10^13 Dogwood",
		"Description" : "Collect 10^13 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 13),
	},
	"85" : {
		"Name" : "Have 10^18 Dogwood",
		"Description" : "Collect 10^18 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 18),
	},
	"86" : {
		"Name" : "Have 10^4 Rosewood",
		"Description" : "Collect 10^4 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 4),
	},
	"87" : {
		"Name" : "Have 10^6 Rosewood",
		"Description" : "Collect 10^6 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 6),
	},
	"88" : {
		"Name" : "Have 10^9 Rosewood",
		"Description" : "Collect 10^9 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 9),
	},
	"89" : {
		"Name" : "Have 10^11 Rosewood",
		"Description" : "Collect 10^11 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 11),
	},
	"90" : {
		"Name" : "Have 10^13 Rosewood",
		"Description" : "Collect 10^13 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 13),
	},
	"91" : {
		"Name" : "Click On This Achievement",
		"Description" : "Click On This Achievement",
		"Trigger" : func(): return null, # Doesn't need a trigger
	},
	"92" : {
		"Name" : "Have 10^17 Rosewood",
		"Description" : "Collect 10^17 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 17),
	},
	"93" : {
		"Name" : "Have 10^20 Rosewood",
		"Description" : "Collect 10^20 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 20),
	},
	"94" : {
		"Name" : "Have 10^5 Ghost Gum",
		"Description" : "Collect 10^5 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 5),
	},
	"95" : {
		"Name" : "Have 10^7 Ghost Gum",
		"Description" : "Collect 10^7 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 7),
	},
	"96" : {
		"Name" : "Have 10^11 Ghost Gum",
		"Description" : "Collect 10^11 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 11),
	},
	"97" : {
		"Name" : "Have 10^16 Ghost Gum",
		"Description" : "Collect 10^16 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 16),
	},
	"98" : {
		"Name" : "Have 10^20 Ghost Gum",
		"Description" : "Collect 10^20 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 20),
	},
	"99" : {
		"Name" : "Have 10^24 Ghost Gum",
		"Description" : "Collect 10^24 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 24),
	},
	"100" : {
		"Name" : "Have 10^25 Ghost Gum",
		"Description" : "Collect 10^25 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 25),
	},
	"101" : {
		"Name" : "Have 10^3 Dragonwood",
		"Description" : "Collect 10^3 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 3),
	},
	"102" : {
		"Name" : "Have 10^6 Dragonwood",
		"Description" : "Collect 10^6 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 6),
	},
	"103" : {
		"Name" : "Have 10^9 Dragonwood",
		"Description" : "Collect 10^9 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 9),
	},
	"104" : {
		"Name" : "Have 10^12 Dragonwood",
		"Description" : "Collect 10^12 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 12),
	},
	"105" : {
		"Name" : "Have 10^15 Dragonwood",
		"Description" : "Collect 10^15 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 15),
	},
	"106" : {
		"Name" : "Have 10^20 Dragonwood",
		"Description" : "Collect 10^20 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 20),
	},
	"107" : {
		"Name" : "Have 10^24 Dragonwood",
		"Description" : "Collect 10^24 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 24),
	},
	"108" : {
		"Name" : "Have 1000 Gold",
		"Description" : "Collect 10^3 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 3),
	},
	"109" : {
		"Name" : "Have 10^6 Gold",
		"Description" : "Collect 10^6 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 6),
	},
	"110" : {
		"Name" : "Have 10^7 Gold",
		"Description" : "Collect 10^7 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 7),
	},
	"111" : {
		"Name" : "Have 10^9 Gold",
		"Description" : "Collect 10^9 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 9),
	},
	"112" : {
		"Name" : "Have 10^13 Gold",
		"Description" : "Collect 10^13 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 13),
	},
	"113" : {
		"Name" : "Have 10^16 Gold",
		"Description" : "Collect 10^16 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 16),
	},
	"114" : {
		"Name" : "Have 10^18 Gold",
		"Description" : "Collect 10^18 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 18),
	},
	"115" : {
		"Name" : "Have 10^20 Gold",
		"Description" : "Collect 10^20 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 20),
	},
	"116" : {
		"Name" : "Have 10^23 Gold",
		"Description" : "Collect 10^23 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 23),
	},
	"117" : {
		"Name" : "Have 10^26 Gold",
		"Description" : "Collect 10^26 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 26),
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
		"Name" : "1 Autoclicker",
		"Description" : "Have Atleast 1 Autoclicker",
		"Trigger" : func(): return SaveData.GeneralInfo["AutoClickers"] >= 1,
	},
	"135" : {
		"Name" : "5 Autoclickers",
		"Description" : "Have Atleast 5 Autoclickers",
		"Trigger" : func(): return SaveData.GeneralInfo["AutoClickers"] >= 5,
	},
	"136" : {
		"Name" : "10 Autoclickers",
		"Description" : "Have Atleast 10 Autoclickers",
		"Trigger" : func(): return SaveData.GeneralInfo["AutoClickers"] >= 10,
	},
	"137" : {
		"Name" : "Don't Use Bait 10 Times",
		"Description" : "10 Times When Fishing With Bait, Don't Use It!",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesBaitNotUsed") and SaveData.GeneralInfo["TimesBaitNotUsed"] >= 10,
	},
	"138" : {
		"Name" : "Don't Use Bait 100 Times",
		"Description" : "100 Times When Fishing With Bait, Don't Use It!",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesBaitNotUsed") and SaveData.GeneralInfo["TimesBaitNotUsed"] >= 100,
	},
	"139" : {
		"Name" : "Fish 1 Time",
		"Description" : "Fish 1 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 1,
	},
	"140" : {
		"Name" : "Fish 10 Time",
		"Description" : "Fish 10 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 10,
	},
	"141" : {
		"Name" : "Fish 100 Time",
		"Description" : "Fish 100 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 100,
	},
	"142" : {
		"Name" : "Fish 1000 Time",
		"Description" : "Fish 1000 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 1000,
	},
	"143" : {
		"Name" : "Fish 10000 Time",
		"Description" : "Fish 10000 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 10000,
	},
	"144" : {
		"Name" : "Sell 1 Fish",
		"Description" : "Sell 1 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 1,
	},
	"145" : {
		"Name" : "Sell 15 Fish",
		"Description" : "Sell 15 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 15,
	},
	"146" : {
		"Name" : "Sell 100 Fish",
		"Description" : "Sell 100 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 100,
	},
	"147" : {
		"Name" : "Sell 2000 Fish",
		"Description" : "Sell 2000 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 2000,
	},
	"148" : {
		"Name" : "Sell 7500 Fish",
		"Description" : "Sell 7500 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 7500,
	},
	"149" : {
		"Name" : "Unlock Worm Bait",
		"Description" : "Unlock Worm Bait",
		"Trigger" : func(): return SaveData.ShopItems[Fishing.ShopItemEnum.Worm]["Unlocked"],
	},
	"150" : {
		"Name" : "Unlock Cricket Bait",
		"Description" : "Unlock Cricket Bait",
		"Trigger" : func(): return SaveData.ShopItems[Fishing.ShopItemEnum.Cricket]["Unlocked"],
	},
	"151" : {
		"Name" : "Unlock Jig Bait",
		"Description" : "Unlock Jig Bait",
		"Trigger" : func(): return SaveData.ShopItems[Fishing.ShopItemEnum.Jig]["Unlocked"],
	},
	"152" : {
		"Name" : "Unlock Leech Bait",
		"Description" : "Unlock Leech Bait",
		"Trigger" : func(): return SaveData.ShopItems[Fishing.ShopItemEnum.Leech]["Unlocked"],
	},
	"153" : {
		"Name" : "Unlock Wyverns Feather Bait",
		"Description" : "Unlock Wyverns Feather Bait",
		"Trigger" : func(): return SaveData.ShopItems[Fishing.ShopItemEnum.WyvernsFeather]["Unlocked"],
	},
	"154" : {
		"Name" : "Unlock All Baits",
		"Description" : "Unlock All Baits",
		"Trigger" : func(): return checkThatAllBaitsUnlocked(),
	},
	"155" : { # Replace
		"Name" : "Buy 1 Thing From The Fishing Shop",
		"Description" : "Buy 1 Thing From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 1,
	},
	"156" : { # Replace
		"Name" : "Buy 10 Things From The Fishing Shop",
		"Description" : "Buy 10 Things From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 10,
	},
	"157" : { # Replace
		"Name" : "Buy 100 Things From The Fishing Shop",
		"Description" : "Buy 100 Things From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 100,
	},
	"158" : { # Replace
		"Name" : "Buy 250 Things From The Fishing Shop",
		"Description" : "Buy 250 Things From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 250,
	},
	"159" : { # Replace
		"Name" : "Unlock Bait 10",
		"Description" : "Unlock Bait 10",
		"Trigger" : func(): return false,
	},
	"251" : { # Prob Change
		"Name" : "Max LvL 1 Upgrade",
		"Description" : "Max LvL 1 Upgrade",
		"Trigger" : func(): return null,
	},
	"252" : { # Prob Change
		"Name" : "Max LvL 10 Upgrades",
		"Description" : "Max LvL 10 Upgrades",
		"Trigger" : func(): return null,
	},
	"253" : { # Prob Change
		"Name" : "Max LvL 100 Upgrades",
		"Description" : "Max LvL 100 Upgrades",
		"Trigger" : func(): return null,
	},
	"254" : { # Prob Change
		"Name" : "Max LvL All Upgrades",
		"Description" : "Max LvL All Upgrades",
		"Trigger" : func(): return null,
	},
	"160" : {
		"Name" : "Find The Electric Eal",
		"Description" : "Find The Electric Eal",
		"Trigger" : func(): return SaveData.CaughtFish[Fishing.FishEnum.ElectricEal].has("Caught") and SaveData.CaughtFish[Fishing.FishEnum.ElectricEal]["Caught"],
	},
	"161" : {
		"Name" : "Find The Blue Whale",
		"Description" : "Find The Blue Whale",
		"Trigger" : func(): return SaveData.CaughtFish[Fishing.FishEnum.BlueWhale].has("Caught") and SaveData.CaughtFish[Fishing.FishEnum.BlueWhale]["Caught"],
	},
	"162" : {
		"Name" : "Fish 10 Times in One Ascension",
		"Description" : "Fish 10 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 10,
	},
	"163" : {
		"Name" : "Fish 100 Times in One Ascension",
		"Description" : "Fish 100 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 100,
	},
	"164" : {
		"Name" : "Fish 250 Times in One Ascension",
		"Description" : "Fish 250 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 250,
	},
	"165" : {
		"Name" : "Fish 1000 Times in One Ascension",
		"Description" : "Fish 1000 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 1000,
	},
	"166" : {
		"Name" : "5 Fish Types Caught",
		"Description" : "5 Fish Types Caught",
		"Trigger" : func(): return fishTypesCaughtCountCheck(5),
	},
	"167" : {
		"Name" : "10 Fish Types Caught",
		"Description" : "10 Fish Types Caught",
		"Trigger" : func(): return fishTypesCaughtCountCheck(10),
	},
	"168" : {
		"Name" : "20 Fish Types Caught",
		"Description" : "20 Fish Types Caught",
		"Trigger" : func(): return fishTypesCaughtCountCheck(20),
	},
	"169" : {
		"Name" : "30 Fish Types Caught",
		"Description" : "30 Fish Types Caught",
		"Trigger" : func(): return fishTypesCaughtCountCheck(30),
	},
	"170" : {
		"Name" : "40 Fish Types Caught",
		"Description" : "40 Fish Types Caught",
		"Trigger" : func(): return fishTypesCaughtCountCheck(40),
	},
	"171" : {
		"Name" : "All Fish Types Caught",
		"Description" : "All Fish Types Caught",
		"Trigger" : func(): return fishTypesCaughtCountCheck(49),
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
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 500,
	},
	"191" : {
		"Name" : "Total Beavers Bought 50000",
		"Description" : "Total Beavers Bought 50000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 50000,
	},
	"192" : {
		"Name" : "Total Beavers Bought 5 * 10^6",
		"Description" : "Total Beavers Bought 5 * 10^6",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 5 * pow(10, 6),
	},
	"193" : {
		"Name" : "Total Beavers Bought 5 * 10^9",
		"Description" : "Total Beavers Bought 5 * 10^9",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 5 * pow(10, 9),
	},
	"194" : {
		"Name" : "Total Beavers Bought 5 * 10^12",
		"Description" : "Total Beavers Bought 5 * 10^12",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 5 * pow(10, 12),
	},
	"195" : {
		"Name" : "Total Beavers Bought 5 * 10^15",
		"Description" : "Total Beavers Bought 5 * 10^15",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 5 * pow(10, 15),
	},
	"196" : {
		"Name" : "Total Woodcamps Bought 500",
		"Description" : "Total Woodcamps Bought 500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 5 * pow(10, 2),
	},
	"197" : {
		"Name" : "Total Woodcamps Bought 50000",
		"Description" : "Total Woodcamps Bought 50000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 5 * pow(10, 4),
	},
	"198" : {
		"Name" : "Total Woodcamps Bought 5 * 10^6",
		"Description" : "Total Woodcamps Bought 5 * 10^6",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 5 * pow(10, 6),
	},
	"199" : {
		"Name" : "Total Woodcamps Bought 5 * 10^9",
		"Description" : "Total Woodcamps Bought 5 * 10^9",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 5 * pow(10, 9),
	},
	"200" : {
		"Name" : "Total Woodcamps Bought 5 * 10^12",
		"Description" : "Total Woodcamps Bought 5 * 10^12",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 5 * pow(10, 12),
	},
	"201" : {
		"Name" : "Total Woodcamps Bought 5 * 10^15",
		"Description" : "Total Woodcamps Bought 5 * 10^15",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 5 * pow(10, 15),
	},
	"202" : {
		"Name" : "Total wood produced 10^8",
		"Description" : "Total wood produced by woodcamps 10^8",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 8),
	},
	"203" : {
		"Name" : "Total wood produced 10^11",
		"Description" : "Total wood produced by woodcamps 10^11",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 11),
	},
	"204" : {
		"Name" : "Total wood produced 10^14",
		"Description" : "Total wood produced by woodcamps 10^14",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 14),
	},
	"205" : {
		"Name" : "Total wood produced 10^17",
		"Description" : "Total wood produced by woodcamps 10^17",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 17),
	},
	"206" : {
		"Name" : "Total wood produced 10^20",
		"Description" : "Total wood produced by woodcamps 10^20",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 20),
	},
	"207" : {
		"Name" : "Total wood produced 10^23",
		"Description" : "Total wood produced by woodcamps 10^23",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 23),
	},
	"208" : {
		"Name" : "Total wood produced 10^26",
		"Description" : "Total wood produced by woodcamps 10^26",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 26),
	},
	"209" : {
		"Name" : "Total wood produced 10^29",
		"Description" : "Total wood produced by woodcamps 10^29",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 29),
	},
	"210" : {
		"Name" : "Total wood produced 10^32",
		"Description" : "Total wood produced by woodcamps 10^32",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 32),
	},
	"211" : {
		"Name" : "Total Wood Sold 1m",
		"Description" : "Total Wood Sold 1m",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 6),
	},
	"212" : {
		"Name" : "Total Wood Sold 10^9",
		"Description" : "Total Wood Sold 10^9",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 9),
	},
	"213" : {
		"Name" : "Total Wood Sold 10^14",
		"Description" : "Total Wood Sold 10^14",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 14),
	},
	"214" : {
		"Name" : "Total Wood Sold 10^19",
		"Description" : "Total Wood Sold 10^19",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 19),
	},
	"215" : {
		"Name" : "Total Wood Sold 10^24",
		"Description" : "Total Wood Sold 10^24",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 24),
	},
	"216" : {
		"Name" : "Total Gold Gained 10^7",
		"Description" : "Total Gold Gained 10^7",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 7),
	},
	"217" : {
		"Name" : "Total Gold Gained 10^11",
		"Description" : "Total Gold Gained 10^11",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 11),
	},
	"218" : {
		"Name" : "Total Gold Gained 10^15",
		"Description" : "Total Gold Gained 10^15",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 15),
	},
	"219" : {
		"Name" : "Total Gold Gained 10^19",
		"Description" : "Total Gold Gained 10^19",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 19),
	},
	"220" : {
		"Name" : "Total Gold Gained 10^23",
		"Description" : "Total Gold Gained 10^23",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 23),
	},
	"221" : {
		"Name" : "Total Gold Gained 10^27",
		"Description" : "Total Gold Gained 10^27",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 27),
	},
	"222" : {
		"Name" : "Play 10h",
		"Description" : "Thank you!",
		"Trigger" : func(): return playTimeCheck(10),
	},
	"223" : {
		"Name" : "Play 24h",
		"Description" : "Oh god thanks!",
		"Trigger" : func(): return playTimeCheck(24),
	},
	"224" : {
		"Name" : "Play 100h",
		"Description" : "You are going to make me cry",
		"Trigger" : func(): return playTimeCheck(100),
	},
	"225" : {
		"Name" : "Play 250h",
		"Description" : "Wow, myb stop?",
		"Trigger" : func(): return playTimeCheck(250),
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
		"Trigger" : func(): return goldPerSecondCheck(4.6 * pow(10, 7)),
	},
	"233" : {
		"Name" : "gold gain per sec +5.7 * 10^9",
		"Description" : "gold gain per sec +5.7 * 10^9",
		"Trigger" : func(): return goldPerSecondCheck(5.7 * pow(10, 9)),
	},
	"234" : {
		"Name" : "gold gain per sec +6.8 * 10^11",
		"Description" : "gold gain per sec +6.8 * 10^11",
		"Trigger" : func(): return goldPerSecondCheck(6.8 * pow(10, 11)),
	},
	"235" : {
		"Name" : "gold gain per sec +7.9 * 10^13",
		"Description" : "gold gain per sec +7.9 * 10^13",
		"Trigger" : func(): return goldPerSecondCheck(7.9 * pow(10, 13)),
	},
	"236" : {
		"Name" : "gold gain per sec +9 * 10^15",
		"Description" : "gold gain per sec +9 * 10^15",
		"Trigger" : func(): return goldPerSecondCheck(9 * pow(10, 15)),
	},
	"237" : { # Finish Settings first
		"Name" : "Change All Settings Atleast Once",
		"Description" : "Change All Settings Atleast Once",
		"Trigger" : func(): return null,
	},
	"238" : {
		"Name" : "Construct 5 Dams At The Same Time",
		"Description" : "Construct 5 Dams At The Same Time",
		"Trigger" : func(): return currentDamConstructionCheck(5),
	},
	"239" : {
		"Name" : "Construct 13 Dams At The Same Time",
		"Description" : "Construct 13 Dams At The Same Time",
		"Trigger" : func(): return currentDamConstructionCheck(13),
	},
	"240" : {
		"Name" : "Ascend 1 time",
		"Description" : "Ascend 1 time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 1,
	},
	"241" : {
		"Name" : "Ascend 5 times",
		"Description" : "Ascend 5 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 5,
	},
	"242" : {
		"Name" : "Ascend 25 times",
		"Description" : "Ascend 25 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 25,
	},
	"243" : {
		"Name" : "Ascend 75 times",
		"Description" : "Ascend 75 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 75,
	},
	"244" : {
		"Name" : "Ascend 150 times",
		"Description" : "Ascend 150 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 150,
	},
	"245" : {
		"Name" : "Click 1k time",
		"Description" : "Click 1k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 1000,
	},
	"246" : {
		"Name" : "Click 10k time",
		"Description" : "Click 10k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 10000,
	},
	"247" : {
		"Name" : "Click 25k time",
		"Description" : "Click 25k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 25000,
	},
	"248" : {
		"Name" : "Click 50k time",
		"Description" : "Click 50k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 50000,
	},
	"249" : {
		"Name" : "Click 100k time",
		"Description" : "Click 100k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 100000,
	},
	"250" : {
		"Name" : "Why Are We Clicking?",
		"Description" : "Manually click 10,000 times in one session",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempClickCount") and SaveData.GeneralInfo["TempClickCount"] >= 100000,
	},
	"255" : {# First Need To Finish The Game
		"Name" : "Click all buttons in the game",
		"Description" : "Click all buttons in the game",
		"Trigger" : func(): return null,
	},
	"256" : {
		"Name" : "Buy 1 Magic Upgrade",
		"Description" : "Buy 1 Magic Upgrade",
		"Trigger" : func(): return magicUpgradesOwnedCheck(1),
	},
	"257" : {
		"Name" : "Buy 10 Magic Upgrades",
		"Description" : "Buy 10 Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(10),
	},
	"258" : {
		"Name" : "Buy 30 Magic Upgrades",
		"Description" : "Buy 30 Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(30),
	},
	"259" : {
		"Name" : "Buy 50 Magic Upgrades",
		"Description" : "Buy 50 Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(50),
	},
	"260" : {
		"Name" : "Buy All Magic Upgrades",
		"Description" : "Buy All Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(70), # Need to check
	},
	"261" : {
		"Name" : "Magic Gathered 10",
		"Description" : "Magic Gathered 10",
		"Trigger" : func(): return SaveData.Magic["Count"] >= 10,
	},
	"262" : {
		"Name" : "Magic Gathered 100",
		"Description" : "Magic Gathered 100",
		"Trigger" : func(): return SaveData.Magic["Count"] >= 100,
	},
	"263" : {
		"Name" : "Magic Gathered 10^4",
		"Description" : "Magic Gathered 10^4",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 4),
	},
	"264" : {
		"Name" : "Magic Gathered 10^7",
		"Description" : "Magic Gathered 10^7",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 7),
	},
	"265" : {
		"Name" : "Magic Gathered 10^9",
		"Description" : "Magic Gathered 10^9",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 9),
	},
	"266" : {
		"Name" : "Magic Gathered 10^11",
		"Description" : "Magic Gathered 10^11",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 11),
	},
	"267" : {
		"Name" : "Unlocked Merchants",
		"Description" : "Unlocked Merchants",
		"Trigger" : func(): return Unlocks.Unlocks["Market"]["Bots"]["Unlocked"],
	},
	"268" : {
		"Name" : "Research 20 upgrades in one ascension",
		"Description" : "Research 20 upgrades in one ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempResearchDone") and SaveData.GeneralInfo["TempResearchDone"] >= 20,
	},
	"269" : {
		"Name" : "Research 40 upgrades in one ascension",
		"Description" : "Research 40 upgrades in one ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempResearchDone") and SaveData.GeneralInfo["TempResearchDone"] >= 40,
	},
	"270" : {
		"Name" : "Research 75 upgrades in one ascension",
		"Description" : "Research 75 upgrades in one ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempResearchDone") and SaveData.GeneralInfo["TempResearchDone"] >= 75,
	},
	"271" : {
		"Name" : "Research 130 upgrades in one ascension",
		"Description" : "Research 130 upgrades in one ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempResearchDone") and SaveData.GeneralInfo["TempResearchDone"] >= 130,
	},
	"272" : {
		"Name" : "Total Research Done 50",
		"Description" : "Total Research Done 50",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 50,
	},
	"273" : {
		"Name" : "Total Research Done 150",
		"Description" : "Total Research Done 150",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 150,
	},
	"274" : {
		"Name" : "Total Research Done 300",
		"Description" : "Total Research Done 300",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 300,
	},
	"275" : {
		"Name" : "Total Research Done 500",
		"Description" : "Total Research Done 500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 500,
	},
	"276" : {
		"Name" : "Total Research Done 750",
		"Description" : "Total Research Done 750",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 750,
	},
	"277" : {
		"Name" : "Total Research Done 1050",
		"Description" : "Total Research Done 1050",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 1050,
	},
	"278" : {
		"Name" : "Total Research Done 1500",
		"Description" : "Total Research Done 1500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 1500,
	},
	"279" : {
		"Name" : "Total Research Done 2500",
		"Description" : "Total Research Done 2500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 2500,
	},
	"280" : {
		"Name" : "Total Upgrades Bought 500",
		"Description" : "Total Upgrades Bought 500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 500,
	},
	"281" : {
		"Name" : "Total Upgrades Bought 2500",
		"Description" : "Total Upgrades Bought 2500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 2500,
	},
	"282" : {
		"Name" : "Total Upgrades Bought 5000",
		"Description" : "Total Upgrades Bought 5000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 5000,
	},
	"283" : {
		"Name" : "Total Upgrades Bought 10000",
		"Description" : "Total Upgrades Bought 10000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 10000,
	},
	"284" : {
		"Name" : "Total Upgrades Bought 20000",
		"Description" : "Total Upgrades Bought 20000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 20000,
	},
	"285" : {
		"Name" : "Total Upgrades Bought 30000",
		"Description" : "Total Upgrades Bought 30000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 30000,
	},
	"286" : {
		"Name" : "Total Upgrades Bought 50000",
		"Description" : "Total Upgrades Bought 50000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalUpgradesBought") and SaveData.GeneralInfo["TotalUpgradesBought"] >= 50000,
	},
	"287" : {
		"Name" : "Total Merchants Bought 50",
		"Description" : "Total Merchants Bought 50",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 50,
	},
	"288" : {
		"Name" : "Total Merchants Bought 250",
		"Description" : "Total Merchants Bought 250",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 250,
	},
	"289" : {
		"Name" : "Total Merchants Bought 500",
		"Description" : "Total Merchants Bought 500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 500,
	},
	"290" : {
		"Name" : "Total Merchants Bought 1000",
		"Description" : "Total Merchants Bought 1000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 1000,
	},
	"291" : {
		"Name" : "Total Merchants Bought 2000",
		"Description" : "Total Merchants Bought 2000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 2000,
	},
	"292" : {
		"Name" : "Total Merchants Bought 3000",
		"Description" : "Total Merchants Bought 3000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 3000,
	},
	"293" : {
		"Name" : "Total Merchants Bought 5000",
		"Description" : "Total Merchants Bought 5000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBotsBought") and SaveData.GeneralInfo["TotalBotsBought"] >= 5000,
	},
	"294" : {
		"Name" : "10 Achievements Unlocked",
		"Description" : "10 Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 10,
	},
	"295" : {
		"Name" : "40 Achievements Unlocked",
		"Description" : "40 Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 40,
	},
	"296" : {
		"Name" : "80 Achievements Unlocked",
		"Description" : "80 Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 80,
	},
	"297" : {
		"Name" : "130 Achievements Unlocked",
		"Description" : "130 Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 130,
	},
	"298" : {
		"Name" : "190 Achievements Unlocked",
		"Description" : "190 Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 190,
	},
	"299" : {
		"Name" : "260 Achievements Unlocked",
		"Description" : "260 Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 260,
	},
	"300" : {
		"Name" : "All Achievements Unlocked",
		"Description" : "All Achievements Unlocked",
		"Trigger" : func(): return SaveData.countAchievements() >= 299,
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
	return damTypeBuiltCheck(Dams.DamEnum.SmallDam) and damTypeBuiltCheck(Dams.DamEnum.MediumDam) and damTypeBuiltCheck(Dams.DamEnum.BigDam) and damTypeBuiltCheck(Dams.DamEnum.GiantDam) and damTypeBuiltCheck(Dams.DamEnum.MegaDam)

func checkThatAllBaitsUnlocked():
	return SaveData.ShopItems[Fishing.ShopItemEnum.Worm]["Unlocked"] and SaveData.ShopItems[Fishing.ShopItemEnum.Cricket]["Unlocked"] and SaveData.ShopItems[Fishing.ShopItemEnum.Jig]["Unlocked"] and SaveData.ShopItems[Fishing.ShopItemEnum.Leech]["Unlocked"] and SaveData.ShopItems[Fishing.ShopItemEnum.WyvernsFeather]["Unlocked"]

func resourceItemCountCheck(countNeeded, type):
	var resourceData = SaveData.Resources
	var woodcampCount = 0
	
	for woodType in Values.WoodTypes:
		if Unlocks.Unlocks[woodType]["Unlocked"]:
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
	var goldGainPerSec = 0
	
	for woodType in Values.WoodTypes:
		goldGainPerSec += Values.ResourceValues[woodType]["GoldGainPerSecond"]
	
	return needed <= goldGainPerSec

func fishTypesCaughtCountCheck(needed):
	var fishTypesCaught = 0
	
	for fishType in SaveData.CaughtFish:
		if SaveData.CaughtFish[fishType].has("Caught") and SaveData.CaughtFish[fishType]["Caught"]:
			fishTypesCaught += 1
	
	return fishTypesCaught >= needed

func countDams():
	var constructionCount = 0

func currentDamConstructionCheck(needed):
	var constructionCount = 0
	
	for damType in SaveData.DamData:
		for damSlot in SaveData.DamData[damType]["BuildingSlots"]:
			if SaveData.DamData[damType]["BuildingSlots"][damSlot]["Constructing"]:
				constructionCount += 1
	
	return needed <= constructionCount

func magicUpgradesOwnedCheck(needed):
	var magicUpgradeCount = 0
	
	for magicUpgrade in SaveData.UnlockedMagicUpgrades:
		if SaveData.UnlockedMagicUpgrades[magicUpgrade]:
			magicUpgradeCount += 1
	
	return needed <= magicUpgradeCount
