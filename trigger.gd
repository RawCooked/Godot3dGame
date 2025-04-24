extends Area3D

var house_light : OmniLight3D

func set_house_light(light: OmniLight3D):
	house_light = light
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "ProtoController":
		closeLight()

func closeLight():
	house_light.light_energy = 0 
