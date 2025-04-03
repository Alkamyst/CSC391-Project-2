extends Node

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Fullscreen"):
		if Globals.fullscreen:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			Globals.fullscreen = false
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			Globals.fullscreen = true
