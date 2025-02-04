extends Node

var OriginalUnlocks

func _process(delta: float) -> void:
	pass

func checkForUnlocks():
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Oak"]["ButtonBuyMax"] = true
		Unlocks["Research"]["History"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][15]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][20]:
		Unlocks["Apple"]["ButtonBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Maple"]["ButtonBuyMax"] = true
		Unlocks["Beavers"]["BuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Birch"]["ButtonBuyMax"] = true
		Unlocks["Oak"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Spruce"]["ButtonBuyMax"] = true
		Unlocks["Apple"]["PageBuyMax"] = true
		Unlocks["Woodcamps"]["BuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Chestnut"]["ButtonBuyMax"] = true
		Unlocks["Maple"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Cherry"]["ButtonBuyMax"] = true
		Unlocks["Birch"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Ash"]["ButtonBuyMax"] = true
		Unlocks["Spruce"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Cedar"]["ButtonBuyMax"] = true
		Unlocks["Upgrades"]["ClassicBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Mahogany"]["ButtonBuyMax"] = true
		Unlocks["Chestnut"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Ebony"]["ButtonBuyMax"] = true
		Unlocks["Cherry"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Dogwood"]["ButtonBuyMax"] = true
		Unlocks["Gold"]["ButtonBuyMax"] = true
		Unlocks["Ash"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Rosewood"]["ButtonBuyMax"] = true
		Unlocks["Cedar"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Ghost Gum"]["ButtonBuyMax"] = true
		Unlocks["Mahogany"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Dragonwood"]["ButtonBuyMax"] = true
		Unlocks["Upgrades"]["RareBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Ebony"]["ButtonBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Dogwood"]["ButtonBuyMax"] = true
		Unlocks["Gold"]["PageBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Rosewood"]["ButtonBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Ghost Gum"]["ButtonBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Dragonwood"]["ButtonBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Upgrades"]["MythicBuyMax"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		Unlocks["Upgrades"]["KeepGoldUpgrades"] = true
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][5]:
		pass
	if Unlocks["Achievements"]["AchievementUnlocks"][10]:
		pass

var Unlocks = {
	"Oak" : {
		"Unlocked" : true,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Apple" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Maple" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Birch" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Spruce" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Chestnut" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Cherry" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Ash" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Cedar" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Mahogany" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Ebony" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Dogwood" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Rosewood" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Ghost Gum" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Dragonwood" : {
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Gold" : {
		"Label" : false,
		"Unlocked" : false,
		"ButtonBuyMax" : false,
		"PageBuyMax" : false,
		"1" : false,
		"2" : false,
		"3" : false,
		"4" : false,
		"5" : false,
		"6" : false,
		"7" : false,
		"8" : false,
		"9" : false,
		"10" : false,
	},
	"Upgrades" : {
		"ClassicBuyMax" : false,
		"RareBuyMax" : false,
		"MythicBuyMax" : false,
		"KeepClassicUpgrades" : false,
		"KeepRareUpgrades" : false,
		"KeepMythicUpgrades" : false,
		"KeepGoldUpgrades" : false,
	},
	"Woodcamps" : {
		"Unlocked" : false,
		"BuyMax" : false,
	},
	"Beavers" : {
		"Unlocked" : false,
		"BuyMax" : false,
	},
	"Research" : {
		"Unlocked" : false,
		"History" : false,
		"AutoResearch" : false,
		"ResearchItems" : {},
	},
	"Market" : {
		"Unlocked" : false,
		"Bots" : {
			"Unlocked" : false,
			"10x Buy" : false,
			"100x Buy" : false,
			"1000x Buy" : false,
		},
	},
	"Magic" : {
		"Ascention" : false,
		"Upgrades" : false,
		"PasiveGain" : false,
		"MagicItems" : {},
	},
	"Dams" : {
		"Unlocked" : false,
		"Small Dam" : {
			"Unlocked" : false,
		},
		"Medium Dam" : {
			"Unlocked" : false,
		},
		"Big Dam" : {
			"Unlocked" : false,
		},
		"Giant Dam" : {
			"Unlocked" : false,
		},
		"Mega Dam" : {
			"Unlocked" : false,
		},
	},
	"Achievements" : {
		"Unlocked" : false,
		"AllAchievementsVisible" : false,
		"AchievementUnlocks" : {
			5 : false,
			10 : false,
			15 : false,
			20 : false,
			25 : false,
			30 : false,
			35 : false,
			40 : false,
			45 : false,
			50 : false,
			55 : false,
			60 : false,
			65 : false,
			70 : false,
			75 : false,
			80 : false,
			85 : false,
			90 : false,
			95 : false,
			100 : false,
			105 : false,
			110 : false,
			115 : false,
			120 : false,
			125 : false,
			130 : false,
			135 : false,
			140 : false,
			145 : false,
			150 : false,
			155 : false,
			160 : false,
			165 : false,
			170 : false,
			175 : false,
			180 : false,
			185 : false,
			190 : false,
			195 : false,
			200 : false,
			205 : false,
			210 : false,
			215 : false,
			220 : false,
			225 : false,
			230 : false,
			235 : false,
			240 : false,
			245 : false,
			250 : false,
			255 : false,
			260 : false,
			265 : false,
			270 : false,
			275 : false,
			280 : false,
			285 : false,
			290 : false,
			295 : false,
			300 : false,
		},
	},
	"Fishing" : {
		"Unlocked" : false,
		"Bait" : {
			"Unlocked" : false,
			"1" : false,
			"2" : false,
			"3" : false,
			"4" : false,
			"5" : false,
			"6" : false,
			"7" : false,
			"8" : false,
			"9" : false,
			"10" : false,
			"WoodBait" : false,
		},
		"Spot" : {
			"1" : false,
			"2" : false,
			"3" : false,
			"4" : false,
			"5" : false,
		},
	},
	"Storage" : {
		"Unlimited" : false,
	},
}
