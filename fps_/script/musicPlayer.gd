extends Control


func _process(_delta):
	if gl.MusicPlayer == false:
		self.hide()
	else:
		self.show()

func _on_close_pressed():
	gl.MusicPlayer = false

func _on_stop_pressed():
	MusicJust.music.stop()

func _on_play_pressed():
	MusicJust.music.play()

func _on_playmusic1_pressed():
	MusicJust.music.stream = load("res://music/defaultMusic.mp3")
	MusicJust.music.play()

func _on_testMusic_pressed():
	MusicJust.music.stream = load("res://music/test.mp3")
	MusicJust.music.play()


func _on_LoopMusic_pressed():
	MusicJust.musicloop = true
	print(MusicJust.musicloop)
