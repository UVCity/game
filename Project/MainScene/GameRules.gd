extends Node

export var win = ""
export var loose = "none"

export var points = 0

onready var _player = $PlayersHand
onready var _endTime = $Timer10
onready var _winTime = $Timer2

func badNullpointerFunction():
	return get_node_or_null("PlayersHand") == _player

func _rockpaperscissors(randResult):
	if randResult == 0:
		return "Rock"
	elif randResult == 1:
		return "Paper"
	elif randResult == 2:
		return "Scissors"

func rand():
	return (randi()%3)

func _on_Timer10_timeout():
	if badNullpointerFunction() == true:
		_winTime.start()
		win = _rockpaperscissors(rand())
		_player.win = win

func _on_Timer2_timeout():
	if badNullpointerFunction() == true:
		win = ""
		_player.win = win
		_winTime.stop()

func win_or_loose():
	if _player.win == "rock_wins":
		win = "rock_wins"
		points = points + 1
	elif _player.win == "paper_wins":
		win = "paper_wins"
		points = points + 1
	elif _player.win == "scissors_wins":
		win = "scissors_wins"
		points = points + 1
		
func you_win():
	win_or_loose()
	if win == "rock_wins":
		points = points + 1
		win = ""
	elif win == "paper_wins":
		points = points + 1
		win = ""
	elif win == "scissors_wins":
		points = points + 1
		win = ""
		
func play():
	if badNullpointerFunction() == true:
		you_win()

		
func _process(_delts):
	play()
	print(win , points)
	
