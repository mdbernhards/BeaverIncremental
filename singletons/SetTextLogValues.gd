extends Node

var PhaseTwoIntroText = [
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
	"You won't give up so you start walking not being sure where",
	"Not being sure why",]

var PhaseTwoWalkingText = [
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

var PhaseThreeIntroText = [
	" ",
	"After walking for so long you start getting hungry",
	"Some water also wouldn't be so bad",
	"...",
	" ",
	"...",
	"You'll look for something good to put in your mouth",
	"You still have to walk",]

var PhaseThreeOutroText = [ #start 10 clicks before
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
	
var PhaseFourIntroText = [
	" ",
	"You decide to colect some wood",
	"100 should be enough?",
	"...",
	"",
	"",
	"",
	"~a bit faster maybe?~",]
	
var PhaseFourOutroText = [
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
	
var phaseFiveIntroText = [
	" ",
	"You wake up",]
# you wake up, ready to begin the work, you somehow know that if you will bring wood to the temple it will revard you
# you know that the most needed thing for the temple is wood, wood is what it craves.
# The temple is already ready to grant you an upgrade for just a small amount of wood
# You get to work

# Later next text par to ka tagad var veikt dažādus reaserch (reaserch unlock), kuri aizņem vairāk laika un vairāk resursus
# The temple grants you ability to reaserch different topics and to gain important skills

# Vajag bebru sistēmu kur tu reqruto un saliec kur tu gribi lai viņi strādā, tas būtu iemesls ēdienam un dzērienam exponensiāli paplašināties
# Ūdeni un varbūt ēdienu arī izmantot reasercham, kkādam upgradem, metalurgija, tur vajag ūdeni	
	
	# Beaver quotes
	# a beaver never tells his seacrets
	# a beaver always pays his debts
	# once a beaver always a beaver
	# One does not simply beaver
	# it's beaver town
	# it's beaver country
	# one small step for a beaver one giant leap for amphibious rodents 
	
func WriteToTextLog(text):
	get_tree().get_first_node_in_group("TextLogContainer").WriteToLog(text)
