extends Node

var cur_score: int = 0
var high_score: int = 0
var game_over: bool = false
var fullscreen: bool = false

func update_high_score():
	if cur_score > high_score:
		high_score = cur_score
