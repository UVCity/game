extends StaticBody2D
#Player's Hand

var win = ""
var loose = ""

func endgame(_animation):
	if win == "Rock":
		if _animation == "Rock":
			win = ("rock_wins")
		
	elif win == "Paper":
		if _animation == "Paper":
			win = ("paper_wins")
	
	elif win == "Scissors":
		if _animation == "Scissors":
			win = ("scissors_wins")
	
	else:
		queue_free()


func _physics_process(_delta:float)->void:
	look_at(get_global_mouse_position())
	set_position(get_global_mouse_position())
