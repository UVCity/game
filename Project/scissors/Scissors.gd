extends RigidBody2D
#Scissors

onready var get_Object : Object = null

func _End_Scissors():
	queue_free()

func Scissors_vs_(object):
	if object.is_in_group("Rock"):
		_End_Scissors()

func _on_Scissors_body_entered(body)->void:
	if body != get_Object:
		Scissors_vs_(body)
