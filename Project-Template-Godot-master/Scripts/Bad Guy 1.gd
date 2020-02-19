extends KinematicBody2D

export var limit_y = 700
export var score = 10
export var speed = 2.0
export var move_probability = .5
export var fire_probability = .3

onready var EnemyBullet = load("res://Scenes/BadGuyBullets.tscn")


var ready = false

var new_position = Vector2(0,0)

func get_new_position():
	var VP = get_viewport_rect().size
	new_position.y = randi() % int(VP.y)
	new_position.x = max(randi() % int(VP.x), int(VP.x) - limit_y)
	$Tween.interpolate_property(self, "position", position, new_position, speed, Tween.TRANS_EXPO, Tween.EASE_IN_OUT)
	ready = true

func die():
	queue_free()

func _ready():
	randomize()
	get_new_position()


func _physics_process(delta):
	if ready:
		$Tween.start()
		ready = false


func _on_Timer_timeout():
	if randf() < move_probability:
		get_new_position()
	if randf() < fire_probability:
		var b = EnemyBullet.instance()
		b.position = position
		b.position.x -= 40
		get_node("/root/Game/Enemy Bullets").add_child(b)
