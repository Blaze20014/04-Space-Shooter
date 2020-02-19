extends Node2D

func create_asteriod():
	var asteriod1 = load("res://Asteriod.tscn")
	var a = asteriod1.instance()
	a.set_applied_force(Vector2(1000, 0))
	add_child(a)
func _ready():
	pass
func _on_Timer_timeout():
	create_asteriod()