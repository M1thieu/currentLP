extends CharacterBody2D

const SPEED = 100
const GRAVITY = 500
const JUMP_FORCE = -300
const GROUND_RAY_LEN = 10

func _physics_process(delta: float):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")

	velocity.x = input_vector.x * SPEED

	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_FORCE

	velocity.y += GRAVITY * delta

	# Perform collision check
	move_and_slide()

	# Apply leg step logic for the left and right legs
	var leg_left = $Leg_Left
	var leg_right = $Leg_Right

	if input_vector.x < 0:
		leg_left.step(Vector2(100, leg_left.tip.global_position.y))
		leg_right.step(Vector2(100, leg_right.tip.global_position.y))
	elif input_vector.x > 0:
		leg_left.step(Vector2(100, leg_left.tip.global_position.y + 100))
		leg_right.step(Vector2(100, leg_right.tip.global_position.y + 100))
	else:
		leg_left.step(Vector2(100, leg_left.tip.global_position.y))
		leg_right.step(Vector2(100, leg_right.tip.global_position.y))
