extends Node2D

onready var _endTime = $Timer
var _endScene = preload("res://EndScene/EndScene.tscn")
var _endGame :bool= false



func _on_Timer_timeout():
	 if _endTime.is_stopped() == true:		_endGame = true

func addEndGame():
	if _endGame == true:
		var gameover =  _endScene.instance()
		gameover.position = Vector2(114, 447) 
		add_child(gameover)
		print(_endGame , _endTime.time_left)
		_endGame = false
	
func _process(_delta:float)-> void:
	addEndGame()
