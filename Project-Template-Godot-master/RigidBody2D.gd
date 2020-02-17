extends RigidBody2D
func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		position.x = position.x - 10
	if Input.is_action_pressed("Right"):
		position.x = position.x + 10