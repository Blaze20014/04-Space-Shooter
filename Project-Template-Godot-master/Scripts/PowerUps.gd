extends Node2D

export var probability = 1

onready var PowerUp1 = load("res://Scenes/PowerUp1.tscn")

func _ready():
	randomize()
	


func _on_Timer_timeout():
	if randf() < .33:
		var e = PowerUp1.instance()
		add_child(e)
	elif randf() <.66:
		var e
		add_child(e)
