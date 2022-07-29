extends Control

onready var debugLog = get_node("MainWindow/bottomBar/DebugLog/log")
onready var mathPanel = get_node("MainWindow/bottomBar/calculator_panel/mathBG/math_panel")

var number1 = str("")
var number1_ready = true
var numbe2 = str("")
var numbe2_ready = false
var mathEnd = 0
var math = " : "
var MathShow = ""
var debugLogShow = ""
var mathEnding = false
var fakeNumber1 = "0"
var fakeNumber2 = "0"

func _process(_delta):

## number1 anad 2 is emty fake number1 and 2 show 0 number
	if number1 == "":
		fakeNumber1 = "0"
	else:
		fakeNumber1 = ""
	if numbe2 == "":
		fakeNumber2 = "0"
	else:
		fakeNumber2 = ""

	if gl.CalculatorShow == false:
		self.hide()
	else:
		self.show()

## debug Log is just error or funny message
	debugLogShow = " "
	debugLog.text = debugLogShow
## mathShow is math screen
	MathShow = number1 + fakeNumber1 + math + numbe2 + fakeNumber2 + " = " + str(mathEnd)
	mathPanel.text = MathShow

	if gl.CalculatorShow == true:
		pass # maybe


## numbers
func _on_1_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "1"
		elif numbe2_ready == true:
			numbe2 += "1"
func _on_2_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "2"
		elif numbe2_ready == true:
			numbe2 += "2"
func _on_3_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "3"
		elif numbe2_ready == true:
			numbe2 += "3"
func _on_4_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "4"
		elif numbe2_ready == true:
			numbe2 += "4"
func _on_5_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "5"
		elif numbe2_ready == true:
			numbe2 += "5"
func _on_6_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "6"
		elif numbe2_ready == true:
			numbe2 += "6"
func _on_7_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "7"
		elif numbe2_ready == true:
			numbe2 += "7"
func _on_8_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "8"
		elif numbe2_ready == true:
			numbe2 += "8"
func _on_9_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "9"
		elif numbe2_ready == true:
			numbe2 += "9"
func _on_0_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "0"
		elif numbe2_ready == true:
			numbe2 += "0"
func _on_dot_pressed():
	if mathEnding == false:
		if number1_ready == true:
			number1 += "."
		elif numbe2_ready == true:
			numbe2 += "."


## math
func _on_plus_pressed():
	if number1_ready == true:
		numbe2_ready = true
		number1_ready = false
		math = "+"
func _on_eksi_pressed():
	if number1_ready == true:
		numbe2_ready = true
		number1_ready = false
		math = "-"
func _on_bolu_pressed():
	if number1_ready == true:
		numbe2_ready = true
		number1_ready = false
		math = "/"
func _on_carpi_pressed():
	if number1_ready == true:
		numbe2_ready = true
		number1_ready = false
		math = "*"
func _on_yuzde_pressed():
	if number1_ready == true:
		numbe2_ready = true
		number1_ready = false
		math = "%"


## clear or keep math
func _on_and_pressed():
	if mathEnding == true:
		number1 = str(mathEnd)
		numbe2 = ""
		numbe2_ready = false
		number1_ready = true
		math = " : "
		mathEnding = false
func _on_clear_pressed():
	if mathEnding == true or mathEnding == false:
		number1 = ""
		numbe2 = ""
		mathEnd = 0
		numbe2_ready = false
		number1_ready = true
		math = " : "
		mathEnding = false


## math Ending = true
func _on_equel_pressed():
	if numbe2_ready == true:
			if math == "+":
				mathEnd = float(number1) + float(numbe2)
				numbe2_ready = false
				mathEnding = true
			elif math == "-":
				mathEnd = float(number1) - float(numbe2)
				numbe2_ready = false
				mathEnding = true
			elif math == "*":
				mathEnd = float(number1) * float(numbe2)
				numbe2_ready = false
				mathEnding = true
			elif math == "/":
				mathEnd = float(number1) / float(numbe2)
				numbe2_ready = false
				mathEnding = true
			elif math == "%":
				mathEnd = int(number1) % int(numbe2)
				numbe2_ready = false
				mathEnding = true

## 
func _on_question_mark_pressed():
	pass


func _on_close_pressed():
	gl.CalculatorShow = false


func _on_saveas_pressed():
	pass # Replace with function body.
