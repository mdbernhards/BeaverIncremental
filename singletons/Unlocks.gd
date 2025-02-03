extends Node

var OriginalUnlocks

func _process(delta: float) -> void:
	pass

func checkForUnlocks():
	if SaveData.countAchievements() >= 10:
		Unlocks["Oak"]["ButtonBuyMax"] = true
		Unlocks["Research"]["History"] = true
	if SaveData.countAchievements() >= 20:
		Unlocks["Apple"]["ButtonBuyMax"] = true
	if SaveData.countAchievements() >= 30:
		Unlocks["Maple"]["ButtonBuyMax"] = true
		Unlocks["Beavers"]["BuyMax"] = true
	if SaveData.countAchievements() >= 40:
		Unlocks["Birch"]["ButtonBuyMax"] = true
		Unlocks["Oak"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 50:
		Unlocks["Spruce"]["ButtonBuyMax"] = true
		Unlocks["Apple"]["PageBuyMax"] = true
		Unlocks["Woodcamps"]["BuyMax"] = true
	if SaveData.countAchievements() >= 60:
		Unlocks["Chestnut"]["ButtonBuyMax"] = true
		Unlocks["Maple"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 70:
		Unlocks["Cherry"]["ButtonBuyMax"] = true
		Unlocks["Birch"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 80:
		Unlocks["Ash"]["ButtonBuyMax"] = true
		Unlocks["Spruce"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 90:
		Unlocks["Cedar"]["ButtonBuyMax"] = true
		Unlocks["Upgrades"]["ClassicBuyMax"] = true
	if SaveData.countAchievements() >= 110:
		Unlocks["Mahogany"]["ButtonBuyMax"] = true
		Unlocks["Chestnut"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 120:
		Unlocks["Ebony"]["ButtonBuyMax"] = true
		Unlocks["Cherry"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 130:
		Unlocks["Dogwood"]["ButtonBuyMax"] = true
		Unlocks["Gold"]["ButtonBuyMax"] = true
		Unlocks["Ash"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 140:
		Unlocks["Rosewood"]["ButtonBuyMax"] = true
		Unlocks["Cedar"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 150:
		Unlocks["Ghost Gum"]["ButtonBuyMax"] = true
		Unlocks["Mahogany"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 160:
		Unlocks["Dragonwood"]["ButtonBuyMax"] = true
		Unlocks["Upgrades"]["RareBuyMax"] = true
	if SaveData.countAchievements() >= 170:
		Unlocks["Ebony"]["ButtonBuyMax"] = true
	if SaveData.countAchievements() >= 180:
		Unlocks["Dogwood"]["ButtonBuyMax"] = true
		Unlocks["Gold"]["PageBuyMax"] = true
	if SaveData.countAchievements() >= 190:
		Unlocks["Rosewood"]["ButtonBuyMax"] = true
	if SaveData.countAchievements() >= 200:
		Unlocks["Ghost Gum"]["ButtonBuyMax"] = true
	if SaveData.countAchievements() >= 210:
		Unlocks["Dragonwood"]["ButtonBuyMax"] = true
	if SaveData.countAchievements() >= 220:
		Unlocks["Upgrades"]["MythicBuyMax"] = true
	if SaveData.countAchievements() >= 230:
		pass
	if SaveData.countAchievements() >= 240:
		Unlocks["Upgrades"]["KeepGoldUpgrades"] = true
	if SaveData.countAchievements() >= 250:
		pass
	if SaveData.countAchievements() >= 260:
		pass
	if SaveData.countAchievements() >= 270:
		pass
	if SaveData.countAchievements() >= 280:
		pass
	if SaveData.countAchievements() >= 290:
		pass
	if SaveData.countAchievements() >= 300:
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
