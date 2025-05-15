extends Sprite2D

var current_loc = 10;

var map = {
	0:0,
	1:1,
	2:2,
	3:3,
	4:4,
	5:15,
	6:14,
	7:13,
	8:12,
	9:11,
	10:10,
	11:9,
	12:8,
	13:7,
	14:6,
	15:5,
	16:16,
	17:17,
	18:18,
	19:19,
	20:20,
	}


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().get_nodes_in_group("buttons")[10].call_deferred("_on_pressed")
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("add"):
		current_loc= min(current_loc+1,20)
		print(current_loc)
		get_tree().get_nodes_in_group("buttons")[map.get(current_loc)].call_deferred("_on_pressed")
	if event.is_action_pressed("subs"):
		current_loc= max(current_loc-1,0)
		get_tree().get_nodes_in_group("buttons")[map.get(current_loc)].call_deferred("_on_pressed")
		print(current_loc)
		pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func move(location:Vector2):
	var tween = create_tween()
	print("moving from: ",position,"to: ",location)
	tween.tween_property(self, "position",location,0.2).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_QUAD)
	
