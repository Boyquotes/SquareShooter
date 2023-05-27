extends Node2D

var bullet : PackedScene = preload("res://bullet.tscn")
var crosshair : Sprite2D
var player : CharacterBody2D

func _ready() -> void:
	crosshair = get_node("crosshair")
	player = get_node("player")


func _process(delta: float) -> void:
	crosshair.position.x = get_global_mouse_position().x
	crosshair.position.y = get_global_mouse_position().y
	
	if Input.is_action_just_pressed("lmb"):
		print("Shot fired!")
		var bullet_instance = bullet.instantiate()
		# Create bullet instance, set it rotation to the crosshair position, and add it to the scene
		bullet_instance.position = Vector2(player.position.x, player.position.y)
		bullet_instance.look_at(crosshair.position)
		add_child(bullet_instance)
