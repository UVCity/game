extends Node2D

onready var _startGameObject = $Button
var _startGame :bool= false

func _on_Button_pressed():
	if _startGameObject.pressed == true:
		_startGame = true

func _reStartGame():
	if _startGame == true:
		get_tree().change_scene("res://StartScene/StartScene.tscn")
		print(" RE - Starting Game ...")

func _process(_delta:float)-> void:
	_reStartGame()
	
