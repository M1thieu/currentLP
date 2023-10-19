extends Node2D
class_name Animal

enum states {
	GROUND,
	AIR,
	WATER
}

enum kingdoms {
	ANIMALIA,
	PLANTAE,
	FUNGI,
	PROTISTA,
	MONERA
}

enum sizes {
	SMALL,
	MEDIUM,
	BIG
}

enum animal_type {
	MAMMAL,
	BIRD,
	REPTILE,
	FISH,
	BUG,
	ARACHNID
}

enum gender {
	NO_GENDER, # For bacteria and stuff
	MALE,
	FEMALE
}

# Survivability in certain environments
enum env_traits {
	CAMOUFLAGE,
	BURROWING,
	SWIMMING,
	SUPERSONIC_EARS
}

# Social status
enum social {
	SUPER_AGGRESSIVE, # This makes it aggressive to other entities of the same species
	AGGGRESSIVE,
	PACIFIC,
	NEUTRAL,
}

# Possible actions depending on brain_size
var behaviours = ["STAY", "BREATHE", "MOVE_EYES", "MOVE_BODY", "CALCUTALE_WATER", "HUNGER", "HUNT", "GATHER", "THINK"]

# TODO: Mephitidae

var legs: int
var fins: int
var ai_state: String
var brain_size: int
var speed: float
var speed_ratio: float
var blood_type: String
var env_traits_list: Array
var social_type = social.PACIFIC # Default initializer
var gestation_time: int # Measured in days
var genetic_dominance = gender.FEMALE

func ai(brain_size: int):
	var cons = floor(brain_size / 10)
	var n: float
	for i in cons:
		# sums up random weights
		var w = randf_range(0, 1)
		n += w
		
	# return an index to th behaviours array.
	return n
