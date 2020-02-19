extends Node2D

export var max_enemies = 5
export var probability = 1

onready var Enemy1 = load("res://Scenes/Bad Guy 1.tscn")
onready var Enemy2 = load("res://Scenes/Bad Guy 2.tscn")

func _ready():
	randomize()
	


func _on_Timer_timeout():
	if get_child_count() < max_enemies + 1:
		if randf() < probability or get_child_count() == 1:
			if randf() < 0.5:
				var e = Enemy1.instance()
				add_child(e)
			else:
				var e = Enemy2.instance()
				add_child(e)
