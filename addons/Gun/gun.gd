extends Node3D

func shoot():
	var tween = create_tween()
	var original_rotation = rotation_degrees
	var recoil_rotation = original_rotation + Vector3(10, 0, 0)  # Rotate slightly up

	# Go up quickly
	tween.tween_property(self, "rotation_degrees", recoil_rotation, 0.1).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	# Return smoothly
	tween.tween_property(self, "rotation_degrees", original_rotation, 0.2).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)
