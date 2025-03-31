extends RigidBody3D

var started: bool = false

func clicked():
	set_linear_velocity(Vector3(0, 5, 0))
	started = true


func _on_area_3d_body_entered(body: Node3D) -> void:
	if started:
		queue_free()
