extends Node

## DONT CHANGE DEFAULT VALUES IN CODE (only here),  plz remember 
## Use only for calculating actual values, with upgrades and effects in mind

# per click
var DefaultWoodPerClick = 0
var DefaultWaterPerTick = 1
var DefaultFoodPerTick = 1

# Bonus resource
var DefaultChanceOfWoodPerFoodTick = 20 #45%
var DefaultPossibleWoodPerFoodTick = [1, 3]

# per bonus click
var DefaultWaterPerBonusClick = 5
var DefaultFoodPerBonusClick = 5
var DefaultWoodPerBonusClick = 5

# Chance that any bonus resource gets spawned each click / tick
var DefaultChanceOfSpawningBonusResource = 5 # %

# storage limit
var DefaultFoodLimit = 10
var DefaultWaterLimit = 10
var DefaultWoodLimit = 100

# action length (in s) add .1 for action to finish
var DefaultWaterLength = 2.1
var DefaultFoodLength = 3.1

var DefaultProductionValue = 1 #100%

# Status effects to production (shows by how many % production gets lowered
var HungerImpact = 0.2 # 20 %
var StarvingImpact = 0.4 # 40 %
var ThirstyImpact = 0.2 # 20 %
var DehydratedImpact = 0.4 # 40 %

## Clicks needed in GameValues.IntroClickCount for unlocking new content
var Phase2StartClicksNeeded = 3
var Phase2MidClicksNeeded = 6
var Phase3StartClicksNeeded = 9
var Phase3MidClicksNeeded = 12
var Phase4StartClicksNeeded = 15
var Phase5StartClicksNeeded = 18

# How long does it take for intro button to appear after each click
var IntroRefreshLength = 1

# Text log printing speed for text arrays (speed of one line being printed)
var TextLogMessageSpeed = 0.5 # s
