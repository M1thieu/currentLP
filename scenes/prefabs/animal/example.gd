class_name LegsExample
extends FABRIKCreature


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	super._process(delta)

	# Debug controls
	global_position = get_global_mouse_position()

	if Input.is_action_pressed("move_left"):
		rotation_degrees -= 90 * delta
	elif Input.is_action_pressed("move_right"):
		rotation_degrees += 90 * delta
