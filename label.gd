extends Label

func _process(delta: float) -> void:
	text = str(Globals.cur_score)
