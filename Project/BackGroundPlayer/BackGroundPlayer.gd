extends AnimatedSprite

var win = ""

func idle():
	if win == "":
		set_animation("Idle")
func Rock():
	if win == "Rock":
		set_animation("Rock")
func Paper():
	if win == "Paper":
		set_animation("Paper")
func Scissors():
	if win == "Scissors":
		set_animation("Scissors")

func playAnimiation():
	idle()
	Rock()
	Paper()
	Scissors()
	

func _process(_delta):
	playAnimiation()
