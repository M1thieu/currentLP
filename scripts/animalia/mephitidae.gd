extends Animal #extends resource

@export var kingdom = kingdoms.ANIMALIA
@export var type = animal_type.MAMMAL
@export var size = sizes.MEDIUM
@export var state = states.GROUND

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
	legs = 4
	fins = 0
	brain_size = 45
	speed_ratio = 1.234
	speed = legs * speed_ratio
	blood_type = "Warm"
	
	var result_ai = ai(brain_size)
	
	ai_state = behaviours[result_ai]
	print(ai_state)
	print(result_ai)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().reload_current_scene()
