extends Node2D

var ready = true
onready var default_timer = $Timer.wait_time
onready var toll = load("res://Scenes/Bullet.tscn")

func _ready():
	pass

func fire(b):
	if ready:
		add_child(b)
		ready = false
		$Timer.start()


func _on_Timer_timeout():
	ready = true
