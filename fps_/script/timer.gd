extends Control


onready var timerLabel = get_node("MainWindow/bottomBar/timerMinute/timerLabel")
onready var timerStartLabel = get_node("MainWindow/bottomBar/timerMinute/Menu/timerStart/StartLabel")
onready var lapseLabel = get_node("MainWindow/bottomBar/timerMinute/LapsPanel/LapsPanel2/LapsText")
onready var timerNote = get_node("MainWindow/bottomBar/exktra_panel/HistoryH/clNote")
var second = 0
var minute = 0
var hour = 0

var timerStart = false
var timestartText = ""
var timerLabelPluss = ""

var lapseText = ""

func _process(_delta):

	timerLabelPluss = "Second:" + str(int(second)) + "\n" + "Minute:" + str(minute) + "\n" + "Hour:" + str(hour)
	timerLabel.text = timerLabelPluss

	timestartText = "Timer Start this is float Second:> " + str(second) 
	timerStartLabel.text = timestartText

	lapseText = ":-| " + str(second) + " : " + str(minute) + " : " + str(hour) + " |"

	if timerStart == true:
		if second < 60:
			second += 0.01
		else:
			second = 0
			minute += 1
		if minute == 60:
			minute = 0
			hour += 1

	if gl.TimerShow == false:
		self.hide()
	else:
		self.show()


func _on_start_pressed():
	timerStart = true

func _on_stop_pressed():
	timerStart = false

func _on_reset_pressed():
	timerStart = false
	second = 0
	minute = 0
	hour   = 0
	lapseLabel.text = ""

func _on_addLaps_pressed():
	lapseLabel.text += lapseText + "\n"


func _on_close_pressed():
	gl.TimerShow = false
	
func _on_open_pressed():
	$MainWindow/bottomBar/fileManager/OpenFile_timer.popup()
func _on_saveas_pressed():
	$MainWindow/bottomBar/fileManager/saveAsFile_timer.popup()

func _on_saveAsFile_timer_file_selected(path):
	var f = File.new()
	f.open(path,2)
	f.store_string(timerNote.text)
func _on_OpenFile_timer_file_selected(path):
	var f = File.new()
	f.open(path,1)
	timerNote.text = f.get_as_text()



