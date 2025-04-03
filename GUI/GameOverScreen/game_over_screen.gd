extends Control

@onready var tryAgainSelection = $"Try Again/PanelContainer/Selection1"
@onready var quitSelection = $Quit/PanelContainer2/Selection2
var tryAgain: bool = false
var quit: bool = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.game_over:
		button_func()
		visible = true
	else:
		visible = false
			
# Highlights buttons when hovering over them. Also click functionality
func button_func():
	if tryAgain:
		tryAgainSelection.visible = true
		if Input.is_action_just_pressed("click"):
			get_tree().reload_current_scene()
			Globals.cur_score = 0
			Globals.game_over = false
	else:
		tryAgainSelection.visible = false
		
	if quit:
		quitSelection.visible = true
		if Input.is_action_just_pressed("click"):
			get_tree().quit() 
	else:
		quitSelection.visible = false

func _on_try_again_area_2d_mouse_entered():
	tryAgain = true


func _on_try_again_area_2d_mouse_exited():
	tryAgain = false


func _on_quit_area_2d_mouse_entered():
	quit = true


func _on_quit_area_2d_mouse_exited():
	quit = false
