extends RigidBody2D

export var health = 10
export var speed = 500
onready var Player = get_node("/root/Game/Ship/Player")

func _ready():
	position = Vector2(get_viewport_rect().size.x, randi() % int(get_viewport_rect().size.y))
	randomize()
	contact_monitor = true
	set_max_contacts_reported(1)
	
func _physics_process(delta):
	var colliding = get_colliding_bodies()
	for c in colliding:
		if c.name == "Player":
			Player.change_Health(health)
		queue_free()

	if position.x > get_viewport_rect().size.x + 10 :
		queue_free()


func _integrate_forces(state):
	state.set_linear_velocity(Vector2(-speed, 0))
	state.set_angular_velocity(0)
