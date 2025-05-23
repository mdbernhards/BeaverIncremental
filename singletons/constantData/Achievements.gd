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
		"Name" : "Have 1e8 Oak",
		"Description" : "Collect 1e8 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 8),
	},
	"5" : {
		"Name" : "Have 1e12 Oak",
		"Description" : "Collect 1e12 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 12),
	},
	"6" : {
		"Name" : "Have 1e14 Oak",
		"Description" : "Collect 1e14 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 14),
	},
	"7" : {
		"Name" : "Have 1e16 Oak",
		"Description" : "Collect 1e16 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 16),
	},
	"8" : {
		"Name" : "Have 1e18 Oak",
		"Description" : "Collect 1e18 Oak Wood",
		"Trigger" : func(): return SaveData.Resources["Oak"]["Count"] >= pow(10, 18),
	},
	"9" : {
		"Name" : "Have 1e6 Apple",
		"Description" : "Collect 1e6 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 6),
	},
	"10" : {
		"Name" : "Have 1e7 Apple",
		"Description" : "Collect 1e7 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 7),
	},
	"11" : {
		"Name" : "Have 1e9 Apple",
		"Description" : "Collect 1e9 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 9),
	},
	"12" : {
		"Name" : "Have 1e12 Apple",
		"Description" : "Collect 1e12 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 12),
	},
	"13" : {
		"Name" : "Have 1e14 Apple",
		"Description" : "Collect 1e14 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 14),
	},
	"14" : {
		"Name" : "Have 1e16 Apple",
		"Description" : "Collect 1e16 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 16),
	},
	"15" : {
		"Name" : "Have 1e17 Apple",
		"Description" : "Collect 1e17 Apple Wood",
		"Trigger" : func(): return SaveData.Resources["Apple"]["Count"] >= pow(10, 17),
	},
	"16" : {
		"Name" : "Have 1e4 Maple",
		"Description" : "Collect 1e4 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 4),
	},
	"17" : {
		"Name" : "Have 1e6 Maple",
		"Description" : "Collect 1e6 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 6),
	},
	"18" : {
		"Name" : "Have 1e7 Maple",
		"Description" : "Collect 1e7 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 7),
	},
	"19" : {
		"Name" : "Have 1e11 Maple",
		"Description" : "Collect 1e11 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 11),
	},
	"20" : {
		"Name" : "Have 1e13 Maple",
		"Description" : "Collect 1e13 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 13),
	},
	"21" : {
		"Name" : "Have 1e15 Maple",
		"Description" : "Collect 1e15 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 15),
	},
	"22" : {
		"Name" : "Have 1e17 Maple",
		"Description" : "Collect 1e17 Maple Wood",
		"Trigger" : func(): return SaveData.Resources["Maple"]["Count"] >= pow(10, 17),
	},
	"23" : {
		"Name" : "Have 1e4 Birch",
		"Description" : "Collect 1e4 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 4),
	},
	"24" : {
		"Name" : "Have 1e5 Birch",
		"Description" : "Collect 1e5 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 5),
	},
	"25" : {
		"Name" : "Have 1e7 Birch",
		"Description" : "Collect 1e7 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 7),
	},
	"26" : {
		"Name" : "Have 1e9 Birch",
		"Description" : "Collect 1e9 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 9),
	},
	"27" : {
		"Name" : "Have 1e12 Birch",
		"Description" : "Collect 1e12 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 12),
	},
	"28" : {
		"Name" : "Have 1e13 Birch",
		"Description" : "Collect 1e13 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 13),
	},
	"29" : {
		"Name" : "Have 1e16 Birch",
		"Description" : "Collect 1e16 Birch Wood",
		"Trigger" : func(): return SaveData.Resources["Birch"]["Count"] >= pow(10, 16),
	},
	"30" : {
		"Name" : "Have 1e5 Spruce",
		"Description" : "Collect 1e5 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 5),
	},
	"31" : {
		"Name" : "Have 1e7 Spruce",
		"Description" : "Collect 1e7 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 7),
	},
	"32" : {
		"Name" : "Have 1e8 Spruce",
		"Description" : "Collect 1e8 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 8),
	},
	"33" : {
		"Name" : "Have 1e11 Spruce",
		"Description" : "Collect 1e11 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 11),
	},
	"34" : {
		"Name" : "Have 1e13 Spruce",
		"Description" : "Collect 1e13 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 13),
	},
	"35" : {
		"Name" : "Have 1e14 Spruce",
		"Description" : "Collect 1e14 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 14),
	},
	"36" : {
		"Name" : "Have 1e16 Spruce",
		"Description" : "Collect 1e16 Spruce Wood",
		"Trigger" : func(): return SaveData.Resources["Spruce"]["Count"] >= pow(10, 16),
	},
	"37" : {
		"Name" : "Have 1e3 Chestnut",
		"Description" : "Collect 1e3 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 3),
	},
	"38" : {
		"Name" : "Have 1e5 Chestnut",
		"Description" : "Collect 1e5 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 5),
	},
	"39" : {
		"Name" : "Have 1e6 Chestnut",
		"Description" : "Collect 1e6 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 6),
	},
	"40" : {
		"Name" : "Have 1e10 Chestnut",
		"Description" : "Collect 1e10 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 10),
	},
	"41" : {
		"Name" : "Have 1e11 Chestnut",
		"Description" : "Collect 1e11 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 11),
	},
	"42" : {
		"Name" : "Have 1e13 Chestnut",
		"Description" : "Collect 1e13 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 13),
	},
	"43" : {
		"Name" : "Have 1e15 Chestnut",
		"Description" : "Collect 1e15 Chestnut Wood",
		"Trigger" : func(): return SaveData.Resources["Chestnut"]["Count"] >= pow(10, 15),
	},
	"44" : {
		"Name" : "Have 1e4 Cherry",
		"Description" : "Collect 1e4 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 4),
	},
	"45" : {
		"Name" : "Have 1e5 Cherry",
		"Description" : "Collect 1e5 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 5),
	},
	"46" : {
		"Name" : "Have 1e7 Cherry",
		"Description" : "Collect 1e7 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 7),
	},
	"47" : {
		"Name" : "Have 1e9 Cherry",
		"Description" : "Collect 1e9 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 9),
	},
	"48" : {
		"Name" : "Have 1e11 Cherry",
		"Description" : "Collect 1e11 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 11),
	},
	"49" : {
		"Name" : "Have 1e14 Cherry",
		"Description" : "Collect 1e14 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 14),
	},
	"50" : {
		"Name" : "Have 1e15 Cherry",
		"Description" : "Collect 1e15 Cherry Wood",
		"Trigger" : func(): return SaveData.Resources["Cherry"]["Count"] >= pow(10, 15),
	},
	"51" : {
		"Name" : "Have 1e5 Ash",
		"Description" : "Collect 1e5 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 5),
	},
	"52" : {
		"Name" : "Have 1e7 Ash",
		"Description" : "Collect 1e7 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 7),
	},
	"53" : {
		"Name" : "Have 1e10 Ash",
		"Description" : "Collect 1e10 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 10),
	},
	"54" : {
		"Name" : "Have 1e11 Ash",
		"Description" : "Collect 1e11 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 11),
	},
	"55" : {
		"Name" : "Have 1e13 Ash",
		"Description" : "Collect 1e13 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 13),
	},
	"56" : {
		"Name" : "Have 1e14 Ash",
		"Description" : "Collect 1e14 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 14),
	},
	"57" : {
		"Name" : "Have 1e16 Ash",
		"Description" : "Collect 1e16 Ash Wood",
		"Trigger" : func(): return SaveData.Resources["Ash"]["Count"] >= pow(10, 16),
	},
	"58" : {
		"Name" : "Have 1e3 Cedar",
		"Description" : "Collect 1e3 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 3),
	},
	"59" : {
		"Name" : "Have 1e6 Cedar",
		"Description" : "Collect 1e6 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 6),
	},
	"60" : {
		"Name" : "Have 1e10 Cedar",
		"Description" : "Collect 1e10 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 10),
	},
	"61" : {
		"Name" : "Have 1e12 Cedar",
		"Description" : "Collect 1e12 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 12),
	},
	"62" : {
		"Name" : "Have 1e13 Cedar",
		"Description" : "Collect 1e13 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 13),
	},
	"63" : {
		"Name" : "Have 1e14 Cedar",
		"Description" : "Collect 1e14 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 14),
	},
	"64" : {
		"Name" : "Have 1e17 Cedar",
		"Description" : "Collect 1e17 Cedar Wood",
		"Trigger" : func(): return SaveData.Resources["Cedar"]["Count"] >= pow(10, 17),
	},
	"65" : {
		"Name" : "Have 1e5 Mahogany",
		"Description" : "Collect 1e5 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 5),
	},
	"66" : {
		"Name" : "Have 1e7 Mahogany",
		"Description" : "Collect 1e7 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 7),
	},
	"67" : {
		"Name" : "Have 1e9 Mahogany",
		"Description" : "Collect 1e9 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 9),
	},
	"68" : {
		"Name" : "Have 1e11 Mahogany",
		"Description" : "Collect 1e11 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 11),
	},
	"69" : {
		"Name" : "Have 1e13 Mahogany",
		"Description" : "Collect 1e14 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 13),
	},
	"70" : {
		"Name" : "Have 1e14 Mahogany",
		"Description" : "Collect 1e14 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 14),
	},
	"71" : {
		"Name" : "Have 1e16 Mahogany",
		"Description" : "Collect 1e16 Mahogany Wood",
		"Trigger" : func(): return SaveData.Resources["Mahogany"]["Count"] >= pow(10, 16),
	},
	"72" : {
		"Name" : "Have 1e5 Ebony",
		"Description" : "Collect 1e5 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 5),
	},
	"73" : {
		"Name" : "Have 1e7 Ebony",
		"Description" : "Collect 1e7 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 7),
	},
	"74" : {
		"Name" : "Have 1e11 Ebony",
		"Description" : "Collect 1e11 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 11),
	},
	"75" : {
		"Name" : "Have 1e12 Ebony",
		"Description" : "Collect 1e12 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 12),
	},
	"76" : {
		"Name" : "Have 1e13 Ebony",
		"Description" : "Collect 1e13 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 13),
	},
	"77" : {
		"Name" : "Have 1e16 Ebony",
		"Description" : "Collect 1e16 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 16),
	},
	"78" : {
		"Name" : "Have 1e17 Ebony",
		"Description" : "Collect 1e17 Ebony Wood",
		"Trigger" : func(): return SaveData.Resources["Ebony"]["Count"] >= pow(10, 17),
	},
	"79" : {
		"Name" : "Have 1e7 Dogwood",
		"Description" : "Collect 1e7 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 7),
	},
	"80" : {
		"Name" : "Have 1e8 Dogwood",
		"Description" : "Collect 1e8 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 8),
	},
	"81" : {
		"Name" : "Have 1e9 Dogwood",
		"Description" : "Collect 1e9 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 9),
	},
	"82" : {
		"Name" : "Have 1e10 Dogwood",
		"Description" : "Collect 1e10 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 10),
	},
	"83" : {
		"Name" : "Have 1e11 Dogwood",
		"Description" : "Collect 1e11 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 11),
	},
	"84" : {
		"Name" : "Have 1e12 Dogwood",
		"Description" : "Collect 1e12 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 12),
	},
	"85" : {
		"Name" : "Have 1e13 Dogwood",
		"Description" : "Collect 1e13 Dogwood",
		"Trigger" : func(): return SaveData.Resources["Dogwood"]["Count"] >= pow(10, 13),
	},
	"86" : {
		"Name" : "Have 1e6 Rosewood",
		"Description" : "Collect 1e6 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 6),
	},
	"87" : {
		"Name" : "Have 1e8 Rosewood",
		"Description" : "Collect 1e8 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 8),
	},
	"88" : {
		"Name" : "Have 1e9 Rosewood",
		"Description" : "Collect 1e9 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 9),
	},
	"89" : {
		"Name" : "Have 1e11 Rosewood",
		"Description" : "Collect 1e11 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 11),
	},
	"90" : {
		"Name" : "Have 1e13 Rosewood",
		"Description" : "Collect 1e13 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 13),
	},
	"91" : {
		"Name" : "Click On This Achievement",
		"Description" : "Click On This Achievement",
		"Trigger" : func(): return null, # Doesn't need a trigger
	},
	"92" : {
		"Name" : "Have 1e14 Rosewood",
		"Description" : "Collect 1e14 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 14),
	},
	"93" : {
		"Name" : "Have 1e15 Rosewood",
		"Description" : "Collect 1e15 Rosewood",
		"Trigger" : func(): return SaveData.Resources["Rosewood"]["Count"] >= pow(10, 15),
	},
	"94" : {
		"Name" : "Have 1e6 Ghost Gum",
		"Description" : "Collect 1e6 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 6),
	},
	"95" : {
		"Name" : "Have 1e8 Ghost Gum",
		"Description" : "Collect 1e8 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 8),
	},
	"96" : {
		"Name" : "Have 1e9 Ghost Gum",
		"Description" : "Collect 1e9 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 9),
	},
	"97" : {
		"Name" : "Have 1e10 Ghost Gum",
		"Description" : "Collect 1e10 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 10),
	},
	"98" : {
		"Name" : "Have 1e11 Ghost Gum",
		"Description" : "Collect 1e11 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 11),
	},
	"99" : {
		"Name" : "Have 1e13 Ghost Gum",
		"Description" : "Collect 1e13 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 13),
	},
	"100" : {
		"Name" : "Have 1e14 Ghost Gum",
		"Description" : "Collect 1e14 Ghost Gum Wood",
		"Trigger" : func(): return SaveData.Resources["Ghost Gum"]["Count"] >= pow(10, 14),
	},
	"101" : {
		"Name" : "Have 1e6 Dragonwood",
		"Description" : "Collect 1e6 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 6),
	},
	"102" : {
		"Name" : "Have 1e8 Dragonwood",
		"Description" : "Collect 1e8 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 8),
	},
	"103" : {
		"Name" : "Have 1e9 Dragonwood",
		"Description" : "Collect 1e9 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 9),
	},
	"104" : {
		"Name" : "Have 1e11 Dragonwood",
		"Description" : "Collect 1e11 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 11),
	},
	"105" : {
		"Name" : "Have 1e12 Dragonwood",
		"Description" : "Collect 1e12 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 12),
	},
	"106" : {
		"Name" : "Have 1e13 Dragonwood",
		"Description" : "Collect 1e13 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 13),
	},
	"107" : {
		"Name" : "Have 1e14 Dragonwood",
		"Description" : "Collect 1e14 Dragonwood Wood",
		"Trigger" : func(): return SaveData.Resources["Dragonwood"]["Count"] >= pow(10, 14),
	},
	"108" : {
		"Name" : "Have 1000 Gold",
		"Description" : "Collect 1e3 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 3),
	},
	"109" : {
		"Name" : "Have 1e6 Gold",
		"Description" : "Collect 1e6 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 6),
	},
	"110" : {
		"Name" : "Have 1e7 Gold",
		"Description" : "Collect 1e7 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 7),
	},
	"111" : {
		"Name" : "Have 1e9 Gold",
		"Description" : "Collect 1e9 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 9),
	},
	"112" : {
		"Name" : "Have 1e13 Gold",
		"Description" : "Collect 1e13 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 13),
	},
	"113" : {
		"Name" : "Have 1e16 Gold",
		"Description" : "Collect 1e16 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 16),
	},
	"114" : {
		"Name" : "Have 1e18 Gold",
		"Description" : "Collect 1e18 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 18),
	},
	"115" : {
		"Name" : "Have 1e20 Gold",
		"Description" : "Collect 1e20 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 20),
	},
	"116" : {
		"Name" : "Have 1e23 Gold",
		"Description" : "Collect 1e23 Gold",
		"Trigger" : func(): return SaveData.Gold["Count"] >= pow(10, 23),
	},
	"117" : {
		"Name" : "Have 1e26 Gold",
		"Description" : "Collect 1e26 Gold",
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
		"Name" : "Complete Dam Oak Section",
		"Description" : "Complete Dam Oak Section",
		"Trigger" : func(): return SaveData.FinalDamData["Oak"]["Completed"],
	},
	"123" : {
		"Name" : "Complete Dam Apple Section",
		"Description" : "Complete Dam Apple Section",
		"Trigger" : func(): return SaveData.FinalDamData["Apple"]["Completed"],
	},
	"124" : {
		"Name" : "Complete Dam Maple Section",
		"Description" : "Complete Dam Maple Section",
		"Trigger" : func(): return SaveData.FinalDamData["Maple"]["Completed"],
	},
	"125" : {
		"Name" : "Complete Dam Birch Section",
		"Description" : "Complete Dam Birch Section",
		"Trigger" : func(): return SaveData.FinalDamData["Birch"]["Completed"],
	},
	"126" : {
		"Name" : "Complete Dam Spruce Section",
		"Description" : "Complete Dam Spruce Section",
		"Trigger" : func(): return SaveData.FinalDamData["Spruce"]["Completed"],
	},
	"127" : {
		"Name" : "Complete Dam Chestnut Section",
		"Description" : "Complete Dam Chestnut Section",
		"Trigger" : func(): return SaveData.FinalDamData["Chestnut"]["Completed"],
	},
	"128" : {
		"Name" : "Complete Dam Cherry Section",
		"Description" : "Complete Dam Cherry Section",
		"Trigger" : func(): return SaveData.FinalDamData["Cherry"]["Completed"],
	},
	"129" : {
		"Name" : "Complete Dam Ash Section",
		"Description" : "Complete Dam Ash Section",
		"Trigger" : func(): return SaveData.FinalDamData["Ash"]["Completed"],
	},
	"130" : {
		"Name" : "Complete Dam Cedar Section",
		"Description" : "Complete Dam Cedar Section",
		"Trigger" : func(): return SaveData.FinalDamData["Cedar"]["Completed"],
	},
	"131" : {
		"Name" : "Complete Dam Mahogany Section",
		"Description" : "Complete Dam Mahogany Section",
		"Trigger" : func(): return SaveData.FinalDamData["Mahogany"]["Completed"],
	},
	"132" : {
		"Name" : "Complete Dam Ebony Section",
		"Description" : "Complete Dam Ebony Section",
		"Trigger" : func(): return SaveData.FinalDamData["Ebony"]["Completed"],
	},
	"237" : {
		"Name" : "Complete Dam Dogwood Section",
		"Description" : "Complete Dam Dogwood Section",
		"Trigger" : func(): return SaveData.FinalDamData["Dogwood"]["Completed"],
	},
	"238" : {
		"Name" : "Complete Dam Rosewood Section",
		"Description" : "Complete Dam Rosewood Section",
		"Trigger" : func(): return SaveData.FinalDamData["Rosewood"]["Completed"],
	},
	"239" : {
		"Name" : "Complete Dam Ghost Gum Section",
		"Description" : "Complete Dam Ghost Gum Section",
		"Trigger" : func(): return SaveData.FinalDamData["Ghost Gum"]["Completed"],
	},
	"154" : {
		"Name" : "Build The Final Dam, Complete The Game!",
		"Description" : "gz!",
		"Trigger" : func(): return checkThatAllDamStagesCompleted(),
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
	"137" : { #Check
		"Name" : "Don't Use Bait 5 Times",
		"Description" : "5 Times When Fishing With Bait you get lucky and don't use it!!",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesBaitNotUsed") and SaveData.GeneralInfo["TimesBaitNotUsed"] >= 5,
	},
	"138" : { #Check
		"Name" : "Don't Use Bait 15 Times",
		"Description" : "15 Times When Fishing With Bait you get lucky and don't use it!!",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesBaitNotUsed") and SaveData.GeneralInfo["TimesBaitNotUsed"] >= 15,
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
		"Name" : "Fish 500 Time",
		"Description" : "Fish 500 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 500,
	},
	"143" : {
		"Name" : "Fish 750 Time",
		"Description" : "Fish 750 Time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalFishedCount") and SaveData.GeneralInfo["TotalFishedCount"] >= 750,
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
		"Name" : "Sell 250 Fish",
		"Description" : "Sell 250 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 250,
	},
	"148" : {
		"Name" : "Sell 450 Fish",
		"Description" : "Sell 450 Fish",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishSoldCount") and SaveData.GeneralInfo["FishSoldCount"] >= 450,
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
	"155" : {
		"Name" : "Buy 1 Thing From The Fishing Shop",
		"Description" : "Buy 1 Thing From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 1,
	},
	"156" : {
		"Name" : "Buy 10 Things From The Fishing Shop",
		"Description" : "Buy 10 Things From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 10,
	},
	"157" : {
		"Name" : "Buy 100 Things From The Fishing Shop",
		"Description" : "Buy 100 Things From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 100,
	},
	"158" : {
		"Name" : "Buy 250 Things From The Fishing Shop",
		"Description" : "Buy 250 Things From The Fishing Shop",
		"Trigger" : func(): return SaveData.GeneralInfo.has("FishShopItemsBoughtCount") and SaveData.GeneralInfo["FishShopItemsBoughtCount"] >= 250,
	},
	"251" : {
		"Name" : "Open 1 Magic Lock",
		"Description" : "Open 1 Magic Lock",
		"Trigger" : func(): return magicLocksOpenedCheck(1),
	},
	"252" : {
		"Name" : "Open 10 Magic Locks",
		"Description" : "Open 10 Magic Locks",
		"Trigger" : func(): return magicLocksOpenedCheck(10),
	},
	"253" : {
		"Name" : "Open 40 Magic Locks",
		"Description" : "Open 40 Magic Locks",
		"Trigger" : func(): return magicLocksOpenedCheck(40),
	},
	"254" : {
		"Name" : "Can't Find Me!",
		"Description" : "Click On This Achievement :P",
		"Trigger" : func(): return null, # Doesn't need a trigger
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
		"Name" : "Fish 5 Times in One Ascension",
		"Description" : "Fish 5 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 5,
	},
	"163" : {
		"Name" : "Fish 25 Times in One Ascension",
		"Description" : "Fish 25 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 25,
	},
	"164" : {
		"Name" : "Fish 50 Times in One Ascension",
		"Description" : "Fish 50 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 50,
	},
	"165" : {
		"Name" : "Fish 100 Times in One Ascension",
		"Description" : "Fish 150 Times in One Ascension",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempFishedCount") and SaveData.GeneralInfo["TempFishedCount"] >= 100,
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
		"Name" : "Have 10 Woodcamps",
		"Description" : "Have 10 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(10, "Woodcamps"),
	},
	"173" : {
		"Name" : "Have 75 Woodcamps",
		"Description" : "Have 75 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(75, "Woodcamps"),
	},
	"174" : {
		"Name" : "Have 150 Woodcamps",
		"Description" : "Have 150 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(150, "Woodcamps"),
	},
	"175" : {
		"Name" : "Have 250 Woodcamps",
		"Description" : "Have 250 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(250, "Woodcamps"),
	},
	"176" : {
		"Name" : "Have 400 Woodcamps",
		"Description" : "Have 400 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(400, "Woodcamps"),
	},
	"177" : {
		"Name" : "Have 600 Woodcamps",
		"Description" : "Have 600 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(600, "Woodcamps"),
	},
	"178" : {
		"Name" : "Have 800 Woodcamps",
		"Description" : "Have 800 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(800, "Woodcamps"),
	},
	"179" : {
		"Name" : "Have 900 Woodcamps",
		"Description" : "Have 900 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(900, "Woodcamps"),
	},
	"180" : {
		"Name" : "Have 1000 Woodcamps",
		"Description" : "Have 1000 Woodcamps",
		"Trigger" : func(): return resourceItemCountCheck(1000, "Woodcamps"),
	},
	"181" : {
		"Name" : "Have 50 beavers",
		"Description" : "Have 50 beavers",
		"Trigger" : func(): return resourceItemCountCheck(50, "Beavers"),
	},
	"182" : {
		"Name" : "Have 100 beavers",
		"Description" : "Have 100 beavers",
		"Trigger" : func(): return resourceItemCountCheck(100, "Beavers"),
	},
	"183" : {
		"Name" : "Have 300 beavers",
		"Description" : "Have 300 beavers",
		"Trigger" : func(): return resourceItemCountCheck(300, "Beavers"),
	},
	"184" : {
		"Name" : "Have 500 beavers",
		"Description" : "Have 500 beavers",
		"Trigger" : func(): return resourceItemCountCheck(500, "Beavers"),
	},
	"185" : {
		"Name" : "Have 750 beavers",
		"Description" : "Have 750 beavers",
		"Trigger" : func(): return resourceItemCountCheck(750, "Beavers"),
	},
	"186" : {
		"Name" : "Have 850 beavers",
		"Description" : "Have 850 beavers",
		"Trigger" : func(): return resourceItemCountCheck(850, "Beavers"),
	},
	"187" : {
		"Name" : "Have 950 beavers",
		"Description" : "Have 950 beavers",
		"Trigger" : func(): return resourceItemCountCheck(950, "Beavers"),
	},
	"188" : {
		"Name" : "Have 1050 beavers",
		"Description" : "Have 1050 beavers",
		"Trigger" : func(): return resourceItemCountCheck(1050, "Beavers"),
	},
	"189" : {
		"Name" : "Have 1250 beavers",
		"Description" : "Have 1250 beavers",
		"Trigger" : func(): return resourceItemCountCheck(1250, "Beavers"),
	},
	"190" : {
		"Name" : "Total Beavers Bought 250",
		"Description" : "Total Beavers Bought 250",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 250,
	},
	"191" : {
		"Name" : "Total Beavers Bought 500",
		"Description" : "Total Beavers Bought 500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 500,
	},
	"192" : {
		"Name" : "Total Beavers Bought 1250",
		"Description" : "Total Beavers Bought 1250",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 1250,
	},
	"193" : {
		"Name" : "Total Beavers Bought 2500",
		"Description" : "Total Beavers Bought 2500",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 2500,
	},
	"194" : {
		"Name" : "Total Beavers Bought 5000",
		"Description" : "Total Beavers Bought 5000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 5000,
	},
	"195" : {
		"Name" : "Total Beavers Bought 10000",
		"Description" : "Total Beavers Bought 10000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalBeaversBought") and SaveData.GeneralInfo["TotalBeaversBought"] >= 10000,
	},
	"196" : {
		"Name" : "Total Woodcamps Bought 150",
		"Description" : "Total Woodcamps Bought 150",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 150,
	},
	"197" : {
		"Name" : "Total Woodcamps Bought 350",
		"Description" : "Total Woodcamps Bought 350",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 350,
	},
	"198" : {
		"Name" : "Total Woodcamps Bought 2000",
		"Description" : "Total Woodcamps Bought 2000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 2000,
	},
	"199" : {
		"Name" : "Total Woodcamps Bought 4000",
		"Description" : "Total Woodcamps Bought 4000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 4000,
	},
	"200" : {
		"Name" : "Total Woodcamps Bought 6000",
		"Description" : "Total Woodcamps Bought 6000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 6000,
	},
	"201" : {
		"Name" : "Total Woodcamps Bought 9000",
		"Description" : "Total Woodcamps Bought 9000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodcampsBought") and SaveData.GeneralInfo["TotalWoodcampsBought"] >= 9000,
	},
	"202" : {
		"Name" : "Total wood produced 1e6",
		"Description" : "Total wood produced by woodcamps 1e6",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 6),
	},
	"203" : {
		"Name" : "Total wood produced 1e9",
		"Description" : "Total wood produced by woodcamps 1e9",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 9),
	},
	"204" : {
		"Name" : "Total wood produced 1e12",
		"Description" : "Total wood produced by woodcamps 1e12",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 12),
	},
	"205" : {
		"Name" : "Total wood produced 1e14",
		"Description" : "Total wood produced by woodcamps 1e14",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 14),
	},
	"206" : {
		"Name" : "Total wood produced 1e16",
		"Description" : "Total wood produced by woodcamps 1e16",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 16),
	},
	"207" : {
		"Name" : "Total wood produced 1e17",
		"Description" : "Total wood produced by woodcamps 1e17",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 17),
	},
	"208" : {
		"Name" : "Total wood produced 1e18",
		"Description" : "Total wood produced by woodcamps 1e18",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 18),
	},
	"209" : {
		"Name" : "Total wood produced 1e19",
		"Description" : "Total wood produced by woodcamps 1e19",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 19),
	},
	"210" : {
		"Name" : "Total wood produced 1e20",
		"Description" : "Total wood produced by woodcamps 1e20",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodProduced") and SaveData.GeneralInfo["TotalWoodProduced"] >= pow(10, 20),
	},
	"211" : {
		"Name" : "Total Wood Sold 1m",
		"Description" : "Total Wood Sold 1m",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 6),
	},
	"212" : {
		"Name" : "Total Wood Sold 1e9",
		"Description" : "Total Wood Sold 1e9",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 9),
	},
	"213" : {
		"Name" : "Total Wood Sold 1e11",
		"Description" : "Total Wood Sold 1e11",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 11),
	},
	"214" : {
		"Name" : "Total Wood Sold 1e13",
		"Description" : "Total Wood Sold 1e13",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 13),
	},
	"215" : {
		"Name" : "Total Wood Sold 1e16",
		"Description" : "Total Wood Sold 1e16",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalWoodSold") and SaveData.GeneralInfo["TotalWoodSold"] >= pow(10, 16),
	},
	"216" : {
		"Name" : "Total Gold Gained 1e7",
		"Description" : "Total Gold Gained 1e7",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 7),
	},
	"217" : {
		"Name" : "Total Gold Gained 1e11",
		"Description" : "Total Gold Gained 1e11",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 11),
	},
	"218" : {
		"Name" : "Total Gold Gained 1e15",
		"Description" : "Total Gold Gained 1e15",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 15),
	},
	"219" : {
		"Name" : "Total Gold Gained 1e17",
		"Description" : "Total Gold Gained 1e17",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 17),
	},
	"220" : {
		"Name" : "Total Gold Gained 1e20",
		"Description" : "Total Gold Gained 1e20",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 20),
	},
	"221" : {
		"Name" : "Total Gold Gained 1e22",
		"Description" : "Total Gold Gained 1e22",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalGoldGain") and SaveData.GeneralInfo["TotalGoldGain"] >= pow(10, 22),
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
		"Name" : "Gold Gain per sec +1000",
		"Description" : "Gold Gain per sec +1000",
		"Trigger" : func(): return goldPerSecondCheck(1000),
	},
	"228" : {
		"Name" : "Gold Gain per sec +10000",
		"Description" : "Gold Gain per sec +10000",
		"Trigger" : func(): return goldPerSecondCheck(10000),
	},
	"229" : {
		"Name" : "Gold Gain per sec +190000",
		"Description" : "Gold Gain per sec +190000",
		"Trigger" : func(): return goldPerSecondCheck(190000),
	},
	"230" : {
		"Name" : "Gold Gain per sec +2800000",
		"Description" : "Gold Gain per sec +2800000",
		"Trigger" : func(): return goldPerSecondCheck(2800000),
	},
	"231" : {
		"Name" : "Gold Gain per sec +37000000",
		"Description" : "Gold Gain per sec +37000000",
		"Trigger" : func(): return goldPerSecondCheck(37000000),
	},
	"232" : {
		"Name" : "Gold Gain per sec +4.6e8",
		"Description" : "Gold Gain per sec +4.6e8",
		"Trigger" : func(): return goldPerSecondCheck(4.6 * pow(10, 8)),
	},
	"233" : {
		"Name" : "Gold Gain per sec +5.7e9",
		"Description" : "Gold Gain per sec +5.7e9",
		"Trigger" : func(): return goldPerSecondCheck(5.7 * pow(10, 9)),
	},
	"234" : {
		"Name" : "Gold Gain per sec +6.8e11",
		"Description" : "Gold Gain per sec +6.8e11",
		"Trigger" : func(): return goldPerSecondCheck(6.8 * pow(10, 11)),
	},
	"235" : {
		"Name" : "Gold Gain per sec +7.9e13",
		"Description" : "Gold Gain per sec +7.9e13",
		"Trigger" : func(): return goldPerSecondCheck(7.9 * pow(10, 13)),
	},
	"236" : {
		"Name" : "Gold Gain per sec +9e15",
		"Description" : "Gold Gain per sec +9e15",
		"Trigger" : func(): return goldPerSecondCheck(9 * pow(10, 15)),
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
		"Name" : "Ascend 10 times",
		"Description" : "Ascend 10 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 10,
	},
	"243" : {
		"Name" : "Ascend 15 times",
		"Description" : "Ascend 15 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 15,
	},
	"244" : {
		"Name" : "Ascend 20 times",
		"Description" : "Ascend 20 times",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TimesAscended") and SaveData.GeneralInfo["TimesAscended"] >= 20,
	},
	"245" : {
		"Name" : "Click 1k time",
		"Description" : "Click or Auto Click 1k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 1000,
	},
	"246" : {
		"Name" : "Click 10k time",
		"Description" : "Click or Auto Click 10k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 10000,
	},
	"247" : {
		"Name" : "Click 25k time",
		"Description" : "Click or Auto Click 25k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 25000,
	},
	"248" : {
		"Name" : "Click 50k time",
		"Description" : "Click or Auto Click 50k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 50000,
	},
	"249" : {
		"Name" : "Click 100k time",
		"Description" : "Click or Auto Click 100k time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 100000,
	},
	"159" : {
		"Name" : "Click 1m times",
		"Description" : "Click or Auto Click 1m time",
		"Trigger" : func(): return SaveData.GeneralInfo.has("ClickCount") and SaveData.GeneralInfo["ClickCount"] >= 1000000,
	},
	"250" : {
		"Name" : "Why Are We Clicking?",
		"Description" : "Manually click 10,000 times in one session",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TempClickCount") and SaveData.GeneralInfo["TempClickCount"] >= 100000,
	},
	"255" : {
		"Name" : "Click on me!",
		"Description" : "Thanks For Clicking UwU",
		"Trigger" : func(): return null,
	},
	"256" : {
		"Name" : "Buy 1 Magic Upgrade",
		"Description" : "Buy 1 Magic Upgrade",
		"Trigger" : func(): return magicUpgradesOwnedCheck(1),
	},
	"257" : {
		"Name" : "Buy 25 Magic Upgrades",
		"Description" : "Buy 25 Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(25),
	},
	"258" : {
		"Name" : "Buy 50 Magic Upgrades",
		"Description" : "Buy 50 Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(50),
	},
	"259" : {
		"Name" : "Buy 100 Magic Upgrades",
		"Description" : "Buy 100 Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(100),
	},
	"260" : {
		"Name" : "Buy All Magic Upgrades",
		"Description" : "Buy All Magic Upgrades",
		"Trigger" : func(): return magicUpgradesOwnedCheck(129), # Need to check
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
		"Name" : "Magic Gathered 1e4",
		"Description" : "Magic Gathered 1e4",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 4),
	},
	"264" : {
		"Name" : "Magic Gathered 1e7",
		"Description" : "Magic Gathered 1e7",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 7),
	},
	"265" : {
		"Name" : "Magic Gathered 1e9",
		"Description" : "Magic Gathered 1e9",
		"Trigger" : func(): return SaveData.Magic["Count"] >= pow(10, 9),
	},
	"266" : {
		"Name" : "Magic Gathered 1e11",
		"Description" : "Magic Gathered 1e11",
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
		"Name" : "Total Research Done 2000",
		"Description" : "Total Research Done 2000",
		"Trigger" : func(): return SaveData.GeneralInfo.has("TotalResearchDone") and SaveData.GeneralInfo["TotalResearchDone"] >= 2000,
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

func magicUpgradesOwnedCheck(needed):
	var magicUpgradeCount = 0
	
	for magicUpgrade in SaveData.UnlockedMagicUpgrades:
		if SaveData.UnlockedMagicUpgrades[magicUpgrade]:
			magicUpgradeCount += 1
	
	return needed <= magicUpgradeCount

func magicLocksOpenedCheck(needed):
	var magicLocksOpened = 0
	
	for woodType in Values.WoodTypes:
		for upgradeId in SaveData.Upgrades[woodType]:
			var upgrade = SaveData.Upgrades[woodType][upgradeId]
		
			if upgrade.has("MagicLocked") and !upgrade["MagicLocked"]:
				magicLocksOpened += 1
			
	
	return needed <= magicLocksOpened

func checkThatAllDamStagesCompleted():
	for woodType in Values.WoodTypes:
		if !SaveData.FinalDamData[woodType]["Completed"]:
			return false
	
	return true
