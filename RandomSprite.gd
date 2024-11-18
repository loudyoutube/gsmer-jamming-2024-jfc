extends Sprite2D


var frames = texture.get_width() / region_rect.size.x

func _ready() :
	var random_index = randi_range(0, frames - 1)
	region_rect.position.x = random_index * region_rect.size.x
# I want a linear path tha tfollos until a signal from the yes or no choice to go back out of sight

