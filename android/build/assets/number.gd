extends TouchScreenButton


# Called when the node enters the scene tree for the first time.
func _ready():
	#set_position(Vector2(get_parent().get_size().x/2,get_parent().get_size().x/2))
	set_scale(Vector2((get_parent().get_custom_minimum_size().x/128),get_parent().get_custom_minimum_size().y/128))
	print(get_parent().get_custom_minimum_size())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
