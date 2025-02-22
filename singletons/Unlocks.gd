extends Node

var OriginalUnlocks

func _process(_delta: float) -> void:
	pass

func checkForUnlocks():
	var num = 5
	
	if !Unlocks["Achievements"].has("AchievementUnlocks") or !Unlocks["Achievements"]["AchievementUnlocks"].has(5):
		Unlocks["Achievements"]["AchievementUnlocks"] = {}
		
		while num < 301:
			Unlocks["Achievements"]["AchievementUnlocks"][num] = false
			num += 5
	
	var achievementCount = SaveData.countAchievements()
	
	while num < 301:
		if !Unlocks["Achievements"]["AchievementUnlocks"].has(num):
			Unlocks["Achievements"]["AchievementUnlocks"][num] = false
		elif !Unlocks["Achievements"]["AchievementUnlocks"][num] and achievementCount >= num:
			Unlocks["Achievements"]["AchievementUnlocks"][num] = true
			get_tree().get_first_node_in_group("TextLogSection").writeToLog(str(num) + " Achievements Unlocked")
			# When finished update to add the effects
		num += 5
	
	if achievementCount >= 5:
		Unlocks["Beavers"]["BuyMax"] = true
	if achievementCount >= 10:
		Unlocks["Oak"]["ButtonBuyMax"] = true
		Unlocks["Research"]["History"] = true
	if achievementCount >= 15:
		Unlocks["Woodcamps"]["BuyMax"] = true
	if achievementCount >= 20:
		Unlocks["Apple"]["ButtonBuyMax"] = true
	if achievementCount >= 25:
		Unlocks["Oak"]["PageBuyMax"] = true
	if achievementCount >= 30:
		Unlocks["Maple"]["ButtonBuyMax"] = true
	if achievementCount >= 35:
		Unlocks["Apple"]["PageBuyMax"] = true
	if achievementCount >= 40:
		Unlocks["Birch"]["ButtonBuyMax"] = true
	if achievementCount >= 45:
		Unlocks["Maple"]["PageBuyMax"] = true
	if achievementCount >= 50:
		Unlocks["Spruce"]["ButtonBuyMax"] = true
	if achievementCount >= 55:
		Unlocks["Birch"]["PageBuyMax"] = true
	if achievementCount >= 60:
		Unlocks["Chestnut"]["ButtonBuyMax"] = true
	if achievementCount >= 65:
		Unlocks["Spruce"]["PageBuyMax"] = true
	if achievementCount >= 70:
		Unlocks["Cherry"]["ButtonBuyMax"] = true
	if achievementCount >= 75:
		Unlocks["Upgrades"]["ClassicBuyMax"] = true
	if achievementCount >= 80:
		Unlocks["Ash"]["ButtonBuyMax"] = true
	if achievementCount >= 85:
		Unlocks["Chestnut"]["PageBuyMax"] = true
	if achievementCount >= 90:
		Unlocks["Cedar"]["ButtonBuyMax"] = true
	if achievementCount >= 95:
		Unlocks["Cherry"]["PageBuyMax"] = true
	if achievementCount >= 110:
		Unlocks["Mahogany"]["ButtonBuyMax"] = true
	if achievementCount >= 115:
		Unlocks["Ash"]["PageBuyMax"] = true
	if achievementCount >= 120:
		Unlocks["Ebony"]["ButtonBuyMax"] = true
	if achievementCount >= 125:
		Unlocks["Gold"]["ButtonBuyMax"] = true
	if achievementCount >= 130:
		Unlocks["Dogwood"]["ButtonBuyMax"] = true
	if achievementCount >= 135:
		Unlocks["Cedar"]["PageBuyMax"] = true
	if achievementCount >= 140:
		Unlocks["Rosewood"]["ButtonBuyMax"] = true
	if achievementCount >= 145:
		Unlocks["Mahogany"]["PageBuyMax"] = true
	if achievementCount >= 150:
		Unlocks["Ghost Gum"]["ButtonBuyMax"] = true
	if achievementCount >= 155:
		Unlocks["Upgrades"]["RareBuyMax"] = true
	if achievementCount >= 160:
		Unlocks["Dragonwood"]["ButtonBuyMax"] = true
	if achievementCount >= 165:
		pass
	if achievementCount >= 170:
		Unlocks["Ebony"]["ButtonBuyMax"] = true
	if achievementCount >= 175:
		Unlocks["Gold"]["PageBuyMax"] = true
	if achievementCount >= 180:
		Unlocks["Dogwood"]["ButtonBuyMax"] = true
	if achievementCount >= 185:
		pass
	if achievementCount >= 190:
		Unlocks["Rosewood"]["ButtonBuyMax"] = true
	if achievementCount >= 195:
		pass
	if achievementCount >= 200:
		Unlocks["Ghost Gum"]["ButtonBuyMax"] = true
	if achievementCount >= 205:
		pass
	if achievementCount >= 210:
		Unlocks["Dragonwood"]["ButtonBuyMax"] = true
	if achievementCount >= 215:
		pass
	if achievementCount >= 220:
		Unlocks["Upgrades"]["MythicBuyMax"] = true
	if achievementCount >= 225:
		pass
	if achievementCount >= 230:
		pass
	if achievementCount >= 235:
		pass
	if achievementCount >= 240:
		pass #Unlocks["Upgrades"]["KeepGoldUpgrades"] = true
	if achievementCount >= 245:
		pass
	if achievementCount >= 250:
		pass
	if achievementCount >= 255:
		pass
	if achievementCount >= 260:
		pass
	if achievementCount >= 265:
		pass
	if achievementCount >= 270:
		pass
	if achievementCount >= 275:
		pass
	if achievementCount >= 280:
		pass
	if achievementCount >= 285:
		pass
	if achievementCount >= 290:
		pass
	if achievementCount >= 295:
		pass
	if achievementCount >= 300:
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
		"Shop" : {
			"Unlocked" : false,
		},
	},
	"Storage" : {
		"Unlimited" : false,
	},
}
