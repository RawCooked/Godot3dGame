extends Node3D

@onready var house_light = $House/CSGCombiner3D/OmniLight3D
@onready var trigger = $LightTrigger

func _ready():
	house_light.light_energy = 5
	trigger.set_house_light(house_light)
	
