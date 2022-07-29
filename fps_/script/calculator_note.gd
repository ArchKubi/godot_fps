extends Panel


onready var calculatorNote = get_node("HistoryH/clNote")

var defaulText = """
1-> number1 2-> - + / * 3-> number2 4-> =
1-> = 2-> number1 or - + / * 3-> number2 -> =

this is example note basic math
"""


func _ready():
	calculatorNote.text = defaulText


func _on_clear_pressed():
	calculatorNote.text = ""

func _on_open_pressed():
	$fileManager/OpenFile_cal.popup()
func _on_saveas_pressed():
	$fileManager/saveAsFile_cal.popup()

func _on_OpenFile_cal_file_selected(path):
	var f = File.new()
	f.open(path,1)
	calculatorNote.text = f.get_as_text()

func _on_saveAsFile_cal_file_selected(path):
	var f = File.new()
	f.open(path,2)
	f.store_string(calculatorNote.text)

func _on_save_pressed():
	pass # Replace with function body.
