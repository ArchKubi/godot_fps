extends TextEdit

func _ready():
	var python1 = ["while","def","True","False","print","in","or","not","format","if","elif","else","input"]
	for P_python in python1:
		add_keyword_color(P_python, Color(1, 0.175781, 0.948486))
