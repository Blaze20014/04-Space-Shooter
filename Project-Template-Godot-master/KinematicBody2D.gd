extends KinematicBody2D
func _physics_process(delta):
	if Input.is_action_pressed("Fire"):
		var bullet = load("res://Bullet.gd")
		var b = bullet.instance()
		b.position = position
		b.position.x += 5
	if Input.is_action_pressed("Left"):
		if position.x > .554:
			position.x = position.x - 10
	if Input.is_action_pressed("Right"):
		if position.x < 1024.376:
			position.x = position.x + 10