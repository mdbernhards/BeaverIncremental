extends Node

var Bait

var Spots

class FishObject:
	var Type
	var Name
	var Speed
	var Size
	var Angle
	var LifeTime
	var BounceSpeed
	
	func _init(type, name, speed, size, angle, lifeTime, bounceSpeed) -> void:
		Type = type
		Name = name
		Speed = speed
		Size = size
		Angle = angle
		LifeTime = lifeTime
		BounceSpeed = bounceSpeed

var Fish = { # type, name, speed, size, angle, lifeTime
	FishEnum.Boot : FishObject.new(FishEnum.Boot,"Boot", 0.5, 3, 0.6, 10, 10),
	FishEnum.Seaweed : FishObject.new(FishEnum.Seaweed,"Seaweed", 0.4, 2.4, 0.8, 9, 9),
	FishEnum.ColaBottle : FishObject.new(FishEnum.ColaBottle,"Cola Bottle", 0.7, 2, 0.6, 8, 8),
	FishEnum.Catfish : FishObject.new(FishEnum.Catfish,"Catfish", 1.5, 1.7, 1.1, 5, 5),
	FishEnum.GoldPotI : FishObject.new(FishEnum.GoldPotI,"Gold Pot I", 1, 3, 0.6, 9, 9),
	FishEnum.GoldPotII : FishObject.new(FishEnum.GoldPotII,"Gold Pot II", 2, 2, 1.2, 5, 5),
	FishEnum.GoldPotIII : FishObject.new(FishEnum.GoldPotIII,"Gold Pot III", 3, 1, 2.4, 2, 2),
	FishEnum.GoldFish : FishObject.new(FishEnum.GoldFish,"Gold Fish", 0.4, 3, 0.6, 7, 2),
	FishEnum.MagicPotI : FishObject.new(FishEnum.MagicPotI,"Magic Pot I", 0.4, 3, 0.6, 7, 2),
	FishEnum.MagicPotII : FishObject.new(FishEnum.MagicPotII,"Magic Pot II", 0.4, 3, 0.6, 3, 2),
	FishEnum.MagicPotIII : FishObject.new(FishEnum.MagicPotIII,"Magic Pot III", 0.4, 3, 0.6, 1, 2),
	FishEnum.MagicFish : FishObject.new(FishEnum.MagicFish,"Magic Fish", 0.4, 3, 0.6, 0.6, 2),
	FishEnum.SpeedFish : FishObject.new(FishEnum.SpeedFish,"Speed Fish", 0.4, 3, 0.6, 0.8, 2),
	FishEnum.StorageBox : FishObject.new(FishEnum.StorageBox,"Storage Box", 0.4, 3, 0.6, 5, 5),
	FishEnum.ResearchFish : FishObject.new(FishEnum.ResearchFish,"Research Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.WoodFish : FishObject.new(FishEnum.WoodFish,"Wood Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.DamFish : FishObject.new(FishEnum.DamFish,"Dam Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.LuckyFish : FishObject.new(FishEnum.LuckyFish,"Lucky Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.CrateFish : FishObject.new(FishEnum.CrateFish,"Crate Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.BotFish : FishObject.new(FishEnum.BotFish,"Bot Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.IceFish : FishObject.new(FishEnum.IceFish,"Ice Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.BaitFish : FishObject.new(FishEnum.BaitFish,"Bait Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.ElectricEal : FishObject.new(FishEnum.ElectricEal,"Electric Eal", 0.4, 3, 0.6, 5, 5),
	FishEnum.ElectricJellyfish : FishObject.new(FishEnum.ElectricJellyfish,"Electric Jellyfish", 0.4, 3, 0.6, 5, 5),
	FishEnum.ElectricSponge : FishObject.new(FishEnum.ElectricSponge,"Electric Sponge", 0.4, 3, 0.6, 5, 5),
	FishEnum.ConstructionShark : FishObject.new(FishEnum.ConstructionShark,"Construction Shark", 0.4, 3, 0.6, 5, 5),
	FishEnum.SalmonLumberJack : FishObject.new(FishEnum.SalmonLumberJack,"Salmon Lumber Jack", 0.4, 3, 0.6, 5, 5),
	FishEnum.AscentionFish : FishObject.new(FishEnum.AscentionFish,"Ascention Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.DescentionFish : FishObject.new(FishEnum.DescentionFish,"Descention Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.BigFish : FishObject.new(FishEnum.BigFish,"Big Fish", 0.4, 3, 0.6, 5, 5),
	FishEnum.Clownfish : FishObject.new(FishEnum.Clownfish,"Clownfish", 0.4, 3, 0.6, 5, 5),
	FishEnum.Stick : FishObject.new(FishEnum.Stick,"Stick", 0.4, 3, 0.6, 5, 5),
	FishEnum.OakCrate : FishObject.new(FishEnum.OakCrate,"Oak Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.AppleCrate : FishObject.new(FishEnum.AppleCrate,"Apple Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.MapleCrate : FishObject.new(FishEnum.MapleCrate,"Maple Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.BirchCrate : FishObject.new(FishEnum.BirchCrate,"Birch Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.SpruceCrate : FishObject.new(FishEnum.SpruceCrate,"Spruce Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.ChestnutCrate : FishObject.new(FishEnum.ChestnutCrate,"Chestnut Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.CherryCrate : FishObject.new(FishEnum.CherryCrate,"Cherry Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.AshCrate : FishObject.new(FishEnum.AshCrate,"Ash Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.CedarCrate : FishObject.new(FishEnum.CedarCrate,"Cedar Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.MahoganyCrate : FishObject.new(FishEnum.MahoganyCrate,"Mahogany Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.EbonyCrate : FishObject.new(FishEnum.EbonyCrate,"Ebony Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.DogwoodCrate : FishObject.new(FishEnum.DogwoodCrate,"Dogwood Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.RosewoodCrate : FishObject.new(FishEnum.RosewoodCrate,"Rosewood Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.GhostGumCrate : FishObject.new(FishEnum.GhostGumCrate,"Ghost Gum Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.DragonwoodCrate : FishObject.new(FishEnum.DragonwoodCrate,"Dragonwood Crate", 0.4, 3, 0.6, 5, 5),
	FishEnum.BlueWhale : FishObject.new(FishEnum.BlueWhale,"Blue Whale", 0.4, 3, 0.6, 5, 5),
	FishEnum.MultiplyingFish : FishObject.new(FishEnum.MultiplyingFish,"Multiplying Fish", 0.4, 3, 0.6, 5, 5),
}

enum FishEnum {
	Boot,
	Seaweed,
	ColaBottle,
	Catfish,
	GoldPotI,
	GoldPotII,
	GoldPotIII,
	GoldFish,
	MagicPotI,
	MagicPotII,
	MagicPotIII,
	MagicFish,
	SpeedFish,
	StorageBox,
	ResearchFish,
	WoodFish,
	DamFish,
	LuckyFish,
	CrateFish,
	BotFish,
	IceFish,
	BaitFish,
	ElectricEal,
	ElectricJellyfish,
	ElectricSponge,
	ConstructionShark,
	SalmonLumberJack,
	AscentionFish,
	DescentionFish,
	BigFish,
	Clownfish,
	Stick,
	OakCrate,
	AppleCrate,
	MapleCrate,
	BirchCrate,
	SpruceCrate,
	ChestnutCrate,
	CherryCrate,
	AshCrate,
	CedarCrate,
	MahoganyCrate,
	EbonyCrate,
	DogwoodCrate,
	RosewoodCrate,
	GhostGumCrate,
	DragonwoodCrate,
	BlueWhale,
	MultiplyingFish,
}
