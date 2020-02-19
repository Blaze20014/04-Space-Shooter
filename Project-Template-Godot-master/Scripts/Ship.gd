extends KinematicBody2D

func _ready():
	pass 
func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		position.x = position.x - 10
	if Input.is_action_pressed("Right"):
		position.x = position.x + 10
	if Input.is_action_pressed("Up"):
		position.y = position.y - 10
	if Input.is_action_pressed("Down"):
		position.y = position.y + 10
