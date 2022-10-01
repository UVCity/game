extends StaticBody2D
#Player's Hand

func endgame(_animation):
	queue_free()

func _physics_process(_delta:float)->void:
	look_at(get_global_mouse_position())
	set_position(get_global_mouse_position())
