extends RigidBody2D
#Rock

onready var get_Object : Object = null

func _End_Rock():
	queue_free()

func Rock_vs_(object):
	if object.is_in_group("Paper"):
		_End_Rock()

func _on_Rock_body_entered(body)->void:
	if body != get_Object:
		Rock_vs_(body)
