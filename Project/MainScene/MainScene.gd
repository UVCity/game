extends Node2D

onready var GameRules = $GameRules
var _endScene = preload("res://EndScene/EndScene.tscn")
var _endGame :bool = false

func check():
	_endGame = !GameRules.badNullpointerFunction()

func addEndGame():
	if _endGame == true:
		var gameover =  _endScene.instance()
		gameover.position = Vector2(114, 447) 
		add_child(gameover)
		_endGame = false

func _process(_delta:float)-> void:
	check()
	addEndGame()
