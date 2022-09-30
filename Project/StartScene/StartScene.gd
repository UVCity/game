extends Node2D

onready var _startGameObject = $Button
var startGame :bool= false

func _on_Button_pressed():
	if _startGameObject.pressed == true:
		startGame = true

func _startGame():
	if startGame == true:
		get_tree().change_scene("res://MainScene/MainScene.tscn")
		print(" Starting Game ...")

func _process(_delta:float)-> void:
	_startGame()
	
