extends RigidBody2D
#Paper

onready var get_Object : Object = null

func _End_Paper():
	queue_free()

func Paper_vs_(object):
	if object.is_in_group("Scissors"):
		_End_Paper()

func _on_Paper_body_entered(body)->void:
	if body != get_Object:
		Paper_vs_(body)
