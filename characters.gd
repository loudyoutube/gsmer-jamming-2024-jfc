extends CharacterBody2D

var direction = 1
var speed: int = 70
@onready var pathfollow = get_parent()

func _physics_process(delta: float) -> void:
	patrol(delta)
# Now i need to make a switch statement to chcnge the text of a Label
# and make it visible so they can see a characters demands
# then make a yes or no apear
#make an option to have old dragon instead of new
# persoa based yes or no's to make more money or kill less people

func patrol(delta):
	if direction == 1:
		if pathfollow.get_progress_ratio() == 1:
			await(get_tree().create_timer(0.3).timeout)
			rotation_degrees = lerp(rotation_degrees, 180,.1)#this is for future slime spinning----******
			await(get_tree().create_timer(1).timeout)
			direction = 0
		else:
			pathfollow.progress += speed * delta
	else:
		if pathfollow.get_progress_ratio() == 0:
			await(get_tree().create_timer(0.3).timeout)
			rotation_degrees = lerp(rotation_degrees, 0,.1)#this is for future slime spinning----******
			await(get_tree().create_timer(1).timeout)
			direction = 1
		else:
			pathfollow.progress -= speed * delta
			
