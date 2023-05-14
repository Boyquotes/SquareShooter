extends Node2D

var crosshair

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	crosshair = get_node("crosshair")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	crosshair.position.x = get_global_mouse_position().x
	crosshair.position.y = get_global_mouse_position().y
	
