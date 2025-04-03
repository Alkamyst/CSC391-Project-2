extends Camera3D

@onready var ray_cast_3d = $RayCast3D
var mouse_pos

func _process(delta: float) -> void:
	mouse_pos = get_viewport().get_mouse_position()
	ray_cast_3d.target_position = project_local_ray_normal(mouse_pos) * 100.0
	ray_cast_3d.force_raycast_update()
	
	#print(ray_cast_3d.target_position)	
	
	collision_detection()
		
func collision_detection():
	if ray_cast_3d.is_colliding():
		if ray_cast_3d.get_collider().is_in_group("Bottle"):
			Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
			if Input.is_action_just_pressed("click"):
				ray_cast_3d.get_collider().clicked()
			return
			
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
