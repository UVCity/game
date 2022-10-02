extends StaticBody2D
#Player's Hand

var win = ""
var loose = ""

func endgame(_animation):
	if win == "":
		if _animation == "Rock":
			loose = ("rock")
			queue_free()
		elif _animation == "Paper":
			loose = ("paper")
			queue_free()
		elif _animation == "Scissors":
			loose = ("scissors")
			queue_free()
	else:
		if _animation == "Rock":
			win = ("rock_wins")
		elif _animation == "Paper":
			win = ("paper_wins")
		elif _animation == "Scissors":
			win = ("scissors_wins")

func _physics_process(_delta:float)->void:
	look_at(get_global_mouse_position())
	set_position(get_global_mouse_position())

