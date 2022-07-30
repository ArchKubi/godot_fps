extends Control
onready var editorShow = get_node("SoftwareList/TextEditor_Popup")
onready var time_ = get_node("TopBAR/rightTOP/VB/time")
onready var date_ = get_node("TopBAR/rightTOP/VB/date")

func _process(_delta):
	if Input.is_action_just_pressed("runner"):
		gl.RunnerShow = true
	elif Input.is_action_just_pressed("terminal"):
		gl.TerminalShow = true

	var datetime = OS.get_datetime()
	time_.text = get_time(datetime)
	date_.text = get_date(datetime)

	if gl.soundShow == false:
		$"TopBAR/rightTOP/Sound".hide()
	else:
		$"TopBAR/rightTOP/Sound".show()

func get_time(time):
	var meridiem = "AM"
	var hour = time.hour
	if hour > 12:
		meridiem = "PM"
		hour -= 12
		
	#make sure minutes is always a 2 digit number
	var minute = "%02d" % time.minute
	var time_return = str(hour) +":"+str(minute) + ":" + meridiem
	return time_return

func get_date(date):
	var month = date.month
	var day = date.day
	var year = date.year
	date = str(month) +"/"+ str(day) +"/"+str(year)
	return date


func _on_sound_pressed():
	gl.soundShow = true

func _on_closeVolume_pressed():
	gl.soundShow = false
