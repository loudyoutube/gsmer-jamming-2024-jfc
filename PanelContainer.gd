extends PanelContainer


var array = [100,100,100]

func _process(delta):
	if Input.is_action_pressed("add money"):
		array[0]+1
		get_node("$MarginContainer/GridContainer/Moneylabel").text = str("123")
	elif Input.is_action_pressed("addpopulation"):
		array[1]+1
		get_node("$MarginContainer/GridContainer/Populationlabel").text = str(array[1])
	elif Input.is_action_pressed("add depresion"):
		array[2]+1
		get_node("$MarginContainer/GridContainer/Happynesslabel").text = str(array[2])
