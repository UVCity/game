extends Node2D

onready var _startGameObject = $Button
var startGame :bool= false
var _ignore

func _on_Button_pressed():
	if _startGameObject.pressed == true:
		startGame = true

func _startGame():
	if startGame == true:
		_ignore = get_tree().change_scene("res://MainScene/MainScene.tscn")
		print(" Starting Game ...")

func _process(_delta:float)-> void:
	_startGame()
	
