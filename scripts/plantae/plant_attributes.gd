# This resource script defines the attributes specific to plant elements.
extends ElementAttributes

class_name PlantAttributes


@export var growth_rate: float = 1.0
@export var habitat_type: String = "forest"
@export var reproduction_method: String = "seeds"
@export var sunlight_requirements: float = 0.7

@export var length: float = 0.0

# Base growth function
func grow():
	# Common growth logic shared by all plants
	var growth_rate_value = calculate_growth_rate()
	var habitat_type_value = calculate_habitat_type()
	var reproduction_method_value = calculate_reproduction_method()
	var sunlight_requirements_value = calculate_sunlight_requirements()
	var length_value = calculate_length()
	
	# Update the plant's size or other growth-related attributes here
	# You can use the values obtained above in your growth logic
	
	# For example, if you want to calculate growth based on attributes:
	var growth = growth_rate_value * sunlight_requirements_value
	# Update the plant's size or other growth-related attributes here

# These methods are declared as virtual, allowing child classes to override them.
func calculate_growth_rate() -> float:
	return 1.0

func calculate_habitat_type() -> String:
	return "forest"

func calculate_reproduction_method() -> String:
	return "seeds"

func calculate_sunlight_requirements() -> float:
	return 0.7

func calculate_length() -> float:
	return 0.0
