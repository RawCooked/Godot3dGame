extends Node3D

@onready var gun: Node3D = $"."
var rotate: Vector3 

func shoot():
	gun.rotation.x+=1
		
	
	
	
