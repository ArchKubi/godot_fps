extends Node

var musicloop = false
var normalMusic = false



onready var music = get_node("playMusic")

func _ready():
	music.stream = load("res://music/defaultMusic.mp3")
	music.play()



func _on_playMusic_finished():
	if musicloop == true:
		music.play()
