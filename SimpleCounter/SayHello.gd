extends Panel

var _counter: int = 0

func _ready():
	get_node("ButtonReset").connect("pressed", self, "_reset_values")
	get_node("ButtonDecrease").connect("pressed", self, "_decrease_values")
	get_node("ButtonIncrease").connect("pressed", self, "_increase_values")
		
func _reset_values():
	_counter = 0
	get_node("Label").text = str(_counter)

func _decrease_values():
	_counter -= 1
	get_node("Label").text = str(_counter)
	
func _increase_values():
	_counter += 1
	get_node("Label").text = str(_counter)
