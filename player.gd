extends CharacterBody2D

var movementSpeed = 333.0

func _ready() -> void:
	$AnimatedSprite2D.play("idle")


func _physics_process(delta: float) -> void:
	var movement_vector = Vector2.ZERO
	movement_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	movement_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	movement_vector = movement_vector.normalized()
	velocity = movement_vector * movementSpeed
	move_and_slide()
	
	if (movement_vector.x != 0 || movement_vector.y != 0):
		$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("idle")

func _process(delta: float) -> void:
	pass
