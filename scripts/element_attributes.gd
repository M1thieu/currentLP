# element_attributes.gd

# This resource script defines the common attributes shared by different elements.
# It will be extended by other attribute scripts for specific elements.

extends Resource

class_name ElementAttributes

@export var weight: float = 1.0
@export var flexibility: float = 0.5
@export var temperature: float = 25.0
@export var overall_nutrient_requirements: float = 0.5
@export var water_requirements: float = 0.5
@export var light_requirements: float = 0.7
@export var sound_emission: float = 0.0

