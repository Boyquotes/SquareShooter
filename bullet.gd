extends Sprite2D

var speed = 33.0

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	position += global_transform.x * speed


# Allow us to check if projectile is out the screen bounds and delete it safely
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
