extends Node2D
onready var _time = $Timer

onready var _rock = preload("res://Rock/Rock.tscn")
onready var _paper = preload("res://Paper/Paper.tscn")
onready var _scissors = preload("res://Scissors/Scissors.tscn")

func rand():
	return (randi()%3)

func randVector():
	var value_between_1_and_6 = (rand()+rand())
	var multiply_value = (value_between_1_and_6*value_between_1_and_6)
	var rand_vector = (Vector2( (multiply_value*multiply_value), (multiply_value*multiply_value) ) )
	return rand_vector

func _rockpaperscissors(randResult):
	if randResult == 0:
		return _rock
	if randResult == 1:
		return _paper
	if randResult == 2:
		return _scissors

func gift():
	var _object = _rockpaperscissors(rand()).instance()
	_object.position = randVector()
	return _object

func spawn():
	if _time.time_left < 0.021:
		add_child(gift())
		
func _process(_delta:float)->void:
	randomize()
	spawn()
