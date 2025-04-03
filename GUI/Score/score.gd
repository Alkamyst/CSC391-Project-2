extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.game_over:
		visible = false
	else:
		visible = true
