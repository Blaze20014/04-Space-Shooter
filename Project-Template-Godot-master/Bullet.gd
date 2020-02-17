extends RigidBody2D
export var speed = 500

func _ready():
	var contact_moniter = true
	set_max_contacts_reported(4)
	

func _physics_process(delta):
	var colliding = get_colliding_bodies()
	for c in colliding:
		pass

func _integrate_forces(state):
	state.set_linear_velocity(Vector2(speed, 0))
	state.set_angular_velocity(0)