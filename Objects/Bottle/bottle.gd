extends RigidBody3D

var started: bool = false
var timer: int = 0
var init_pos_y = 0

func _ready():
	init_pos_y = position.y
	

func _process(delta: float) -> void:
	if not started:
		linear_velocity.y = 0
		position.y = init_pos_y

	#if linear_velocity.y < 0 and started:
	#	timer += 1
	#else:
	#	timer = 0

	#if timer == 75:
	#	Globals.cur_score += 1


func clicked():
	started = true
	Globals.cur_score += 1

	var cap_lower = -2
	var cap_higher = 2

	if global_position.x > 3.5:
		cap_higher = 0
	elif global_position.x < -3.5:
		cap_lower = 0

	set_linear_velocity(Vector3(randf_range(cap_lower, cap_higher), randf_range(4.0, 6.0), 0))


func _on_area_3d_body_entered(body: Node3D) -> void:
	if started:
		Globals.update_high_score()
		Globals.game_over = true
		queue_free()
