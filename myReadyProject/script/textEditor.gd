extends Control

onready var openFile = get_node("fileManager/OpenFile")
onready var saveFile = get_node("fileManager/saveAsFile")
onready var textEditor = get_node("MainWindow/bottomBar/TextEdit")


func _process(_delta):
	if gl.TextEditorShow == false:
		self.hide()
	else:
		self.show()


func _on_close_pressed():
	gl.TextEditorShow = false
func _on_openFile_pressed():
	openFile.popup_centered()
func _on_saveas_pressed():
	saveFile.popup_centered()

func _on_OpenFile_file_selected(path):
	var f = File.new()
	f.open(path,1)
	textEditor.text = f.get_as_text()

func _on_saveAsFile_file_selected(path):
	var f = File.new()
	f.open(path,2)
	f.store_string(textEditor.text)


func _on_savefile_pressed(path):
	# ı don't know how
	pass

func _on_newfile_pressed():
	textEditor.text = ""
