extends Node2D
onready var _time = $Timer

onready var _rock = preload("res://Rock/Rock.tscn")
onready var _paper = preload("res://Paper/Paper.tscn")
onready var _scissors = preload("res://Scissors/Scissors.tscn")

func rand():
	return (randi()%3)
	
func _rockpaperscissors(randResult):
	if randResult == 0:
		return _rock
	if randResult == 1:
		return _paper
	if randResult == 2:
		return _scissors

func gift():
	var _object = _rockpaperscissors(rand()).instance()
	_object.position = Vector2(0,0)
	return _object
	
func function2():
	for i in get_child_count():
		var c = get_child(i)
		c.add_child(gift())

func spawn():
	if _time.time_left < 0.1:
		function2()

func _process(_delta:float)->void:
	spawn()


