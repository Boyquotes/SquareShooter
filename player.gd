extends CharacterBody2D

var movementSpeed = 333.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var movement_vector = Vector2.ZERO
	movement_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	movement_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	movement_vector = movement_vector.normalized()
	print(movement_vector)
	
	velocity = movement_vector * movementSpeed
	move_and_slide()


func _process(delta: float) -> void:
	pass
