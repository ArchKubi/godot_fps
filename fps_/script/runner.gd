extends Panel


onready var runnerLabel = get_node("bg/inputRunner")


func _process(_delta):
	if Input.is_action_just_pressed("enter"):

		if "editor" == runnerLabel.text:
			gl.TextEditorShow = true
			gl.RunnerShow = false
			runnerLabel.text = ""
		elif "terminal" == runnerLabel.text:
			gl.TerminalShow = true
			gl.RunnerShow = false
			runnerLabel.text = ""
		elif "timer" == runnerLabel.text:
			gl.TimerShow = true
			gl.RunnerShow = false
			runnerLabel.text = ""
		elif "calculator" == runnerLabel.text:
			gl.CalculatorShow = true
			gl.RunnerShow = false
			runnerLabel.text = ""
		elif "music player" == runnerLabel.text:
			gl.MusicPlayer = true
			gl.RunnerShow = false
			runnerLabel.text = ""



	if gl.RunnerShow == false:
		self.hide()
	else:
		self.show()


func _on_close_pressed():
	gl.RunnerShow = false
