extends Node

var Phase2IntroText = [
	"You survived....",
	"...",
	"",
	"Just barely",
	"Before you can think of what happend you pass out",
	"...",
	"", 
	"...",
	"", 
	"...", 
	"", 
	"...", 
	"You wake up..",
	"You're in a place you don't recognize with no memories coming back",
	"You remember you are a beaver, but you don't remember what beavers are",
	"",
	"Out of no where you get hit with an overwhelming feeling of lose..",
	"",
	"You shed a single tear",
	"...", 
	"...", 
	"Then you remember",
	"",
	"Beavers don't give up",
	"...", 
	"...", 
	"You won't give up",
	"You won't give up",
	" ",
	"You won't give up so you start walking not being sure where",
	"",
	"...", 
	"",
	"Not being sure why",]

var Phase2WalkingText = [
	"...",
	"...",
	"",
	"",
	"",
	"Walking makes you tired",
	"",
	"*Just keep walking*",
	"",
	"...",
	"",
	"Your legs start hurting",
	"",
	"",
	"",
	" ",
	"Suddenly you want to build a large wooden structure",]

var Phase3IntroText = [
	" ",
	"After walking for so long you start getting hungry",
	"Some water also wouldn't be so bad",
	"...",
	" ",
	"...",
	"You'll look for something good to put in your mouth",
	"You still have to walk",]

var Phase3OutroText = [ #start 10 clicks before
	" ",
	"You keep thinking to your self..",
	"You still have to walk",
	" ",
	" ",
	"...",
	" ",
	"...",
	" ",
	"You feel something calling you",
	"Something is just a bit away",
	" ",
	"You're following the signal",
	" ",
	" ",
	"Finnaly you're here",
	"...",
	"...",
	"...",
	"It's some kind of a temple",
	"You get closer to inspect",
	" ",
	" ",
	"Judging from the beatiful statue of a beaver it's a beaver temple",
	"...",
	"...",
	"You notice there is a place for donations and think to yourself that it might be a good idea to donate some wood",]
	
var Phase4IntroText = [
	" ",
	"You decide to colect some wood",
	"100 should be enough?",
	"...",
	"",
	"",
	"",
	"~a bit faster maybe?~",]
	
var Phase4OutroText = [
	" ",
	"You have finnaly done it",
	"You gather up all the wood and place it in a pile on the donation place",
	"With excitement you wait",
	"...",
	"What will happen?",
	"",
	"...",
	"",
	"...",
	"",
	"Nothing?",
	"...",
	"You can't belive it, you put in so mutch work for nothing, you can't anymore",
	"This gives you so mutch pain, so you decide to leave",
	"",
	" ",
	"Just as you take a few steps you feel the temples powers rushing through you",
	"It's amazing",
	"",
	"You finnaly know your purpise",
	" ",
	"BUILD A DAM",
	" ",
	"",
	"That's all you can think about",
	"It's so exiting, so exiting that you pass out...",]
	# fade out, fade in to the upgrade screen and stat bars existing
	
var phase5IntroText = [
	" ",
	" ",
	"",
	"You wake up",
	"You are ready to do the work",
	"Somehow you know that if you will bring wood to the temple it will reward you",
	" ",
	"You know that the most needed thing for the temple is wood, wood is what it craves.",
	"The temple is already ready to grant you an upgrade for just a small amount of wood",
	"So you get to work",
	" ",
	"",
	" ",
	"",
	" ",
	"",
	"GATHER SOME FOOD TO GET MORE WOOD",]

var WoodGatheringUnlockText = [
	" ",
	" ",
	"You final remembered what beavers do",
	"They gather wood, using their...?",
	"...",
	"...",
	"Axe?",
	" ",
	" ",
	"You gather some materials to build a stone axe",
	"Now you are ready for everything",
	"Ready to show the world the biggest damn ever knowned",]

var ReaserchUnlockText = [
	" ",
	" ",
	"The temple grants you ability to reaserch different topics and to gain important skills",
	"You unlocked Reaserch",
	"You can do one reserch at the time to improve your QOL, it takes time and different resources",]

var randomText = [
	"a wood a day keeps the beaver away ",
	"You smell some good air, you follow to the source to discover wood, you are happy",
	"It's a good day for wood cutting",
	"A beaver never tells his secrets",
	"A beaver always pays his debts",
	"Once a beaver always a beaver",
	"One does not simply beaver",
	"It's beaver country",
	"It's beaver town",
	"One small step for a beaver one giant leap for amphibious rodents",]

var informationText = [
	"From this piece of wood you gathered 1111 wood",
	"You just unlocked an achievement [Epic guy fun time!]",]
	
func WriteToTextLog(text):
	get_tree().get_first_node_in_group("TextLogContainer").WriteToLog(text)
	
func WriteArrayToTextLog(array):
	get_tree().get_first_node_in_group("TextLogContainer").WriteOutAnArray(array)
