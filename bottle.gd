extends RigidBody3D

var started: bool = false
var timer: int = 0

func _process(delta: float) -> void:
	pass
	#if linear_velocity.y < 0 and started:
	#	timer += 1
	#else:
	#	timer = 0

	#if timer == 75:
	#	Globals.cur_score += 1


func clicked():
	set_linear_velocity(Vector3(0, randf_range(4.0, 6.0), 0))
	started = true
	Globals.cur_score += 1


func _on_area_3d_body_entered(body: Node3D) -> void:
	if started:
		queue_free()
