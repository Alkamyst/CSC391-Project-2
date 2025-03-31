extends CollisionShape3D

func _process(delta: float) -> void:
	if get_parent().started:
		rotate_z(.01)
