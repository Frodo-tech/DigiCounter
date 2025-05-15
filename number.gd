extends TouchScreenButton

var pivot_loc:Vector2 = $Label.get_global_position()

signal place

# Called when the node enters the scene tree for the first time.
func _ready():
	#set_position(Vector2(get_parent().get_size().x/2,get_parent().get_size().x/2))
	await draw
	get_tree().get_root().size_changed.connect(rescale)
	calc_scale()
	#print(get_parent().get_size())
	pass

func calc_scale():
	set_scale(Vector2((get_parent().get_size().x/60),get_parent().get_size().y/60))
	print(get_scale())
func rescale():
	await get_tree().process_frame
	calc_scale()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#print(get_parent().get_size())
	pass


func _on_pressed():
	var pivot_loc:Vector2 = get_global_position()+Vector2(30,30)
	get_tree().call_group("counter", "move", pivot_loc)
	
